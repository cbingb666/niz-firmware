#!/usr/bin/env python3
"""Cross-check reconstruction against the actual Cortex-M0 instructions.

Runs only emulated code in RAM; contains no USB/device/flash access.
On macOS the Unicorn JIT may need execution outside the filesystem sandbox.
"""
import argparse
import ctypes
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import time

from Crypto.Cipher import DES
from unicorn import Uc, UC_ARCH_ARM, UC_ARCH_X86, UC_MODE_32, UC_MODE_THUMB, UC_MODE_MCLASS
from unicorn.x86_const import UC_X86_REG_EAX, UC_X86_REG_ESP, UC_X86_REG_EIP
import pefile
from unicorn.arm_const import (
    UC_CPU_ARM_CORTEX_M0, UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2,
    UC_ARM_REG_R3, UC_ARM_REG_PC, UC_ARM_REG_SP, UC_ARM_REG_LR,
)

from decode_firmware import KEY, DEFAULT_INPUT
from niz_protocol import firmware_report

ROOT = Path(__file__).resolve().parents[1]
STOP = 0x10000


class Machine:
    def __init__(self, image):
        self.uc = Uc(UC_ARCH_ARM, UC_MODE_THUMB | UC_MODE_MCLASS)
        self.uc.ctl_set_cpu_model(UC_CPU_ARM_CORTEX_M0)
        self.uc.mem_map(0, 0x11000)
        self.uc.mem_write(0, image)
        self.uc.mem_map(0x20000000, 0x5000)
        self.uc.mem_map(0x400e0000, 0x1000)
        self.uc.mem_map(0x50004000, 0x1000)

    def call(self, address, *args):
        for reg, arg in zip((UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3), args):
            self.uc.reg_write(reg, arg)
        self.uc.reg_write(UC_ARM_REG_SP, 0x20004800)
        self.uc.reg_write(UC_ARM_REG_LR, STOP | 1)
        self.uc.emu_start(address | 1, STOP, count=2_000_000)
        if self.uc.reg_read(UC_ARM_REG_PC) != STOP:
            raise RuntimeError(f"{address:#x}: instruction budget exhausted")
        return self.uc.reg_read(UC_ARM_REG_R0)

    def write(self, address, data):
        self.uc.mem_write(address, data)

    def read(self, address, size):
        return bytes(self.uc.mem_read(address, size))


class ScanState(ctypes.Structure):
    _fields_ = [("baseline", ctypes.c_uint8 * 66), ("threshold", ctypes.c_uint8 * 66),
                ("debounce", ctypes.c_uint8 * 66), ("pressed", ctypes.c_uint16 * 11)]


def verify_des(machine, lines):
    cipher = DES.new(KEY, DES.MODE_ECB)
    blocks = 0
    # Nonzero bytes after byte 0 deliberately test the firmware's key-copy behavior.
    machine.write(0x20001200, KEY[:1] + b"EXTRA12")
    for number, line in enumerate(lines, 1):
        data = bytes.fromhex(line[3:])
        machine.write(0x20000100, data)
        result = machine.call(0x7ecc, 0x20000100, 0x20001000, len(data), 0x20001200)
        assert result == 1, number
        assert machine.read(0x20001000, len(data)) == cipher.decrypt(data), number
        blocks += len(data) // 8
    return {"records": len(lines), "des_blocks": blocks, "all_match": True,
            "firmware_des_entry": "0x00007ecc", "key_uses_first_byte_only": True}


def verify_scan(machine, image, destination):
    destination.mkdir(parents=True, exist_ok=True)
    library = destination / "libkey_scan.dylib"
    subprocess.run(["clang", "-std=c11", "-Wall", "-Wextra", "-Werror", "-dynamiclib",
                    str(ROOT / "recovered/readable/key_scan.c"), "-o", str(library)], check=True)
    c = ctypes.CDLL(str(library)).niz_process_scan_record
    c.argtypes = [ctypes.POINTER(ScanState), ctypes.c_uint, ctypes.POINTER(ctypes.c_uint8),
                  ctypes.c_uint, ctypes.POINTER(ctypes.c_uint8)]
    c.restype = ctypes.c_uint
    frames = 0
    # All 66 positions, both compensation modes, below/at/within thresholds, press/release.
    for rgb in (0, 1):
        for position in range(66):
            row, col = divmod(position, 6)
            state = ScanState()
            state.baseline[:] = [10] * 66
            state.threshold[:] = [20] * 66
            machine.write(0x20000000, bytes(0x5000))
            machine.write(0x20001b1c, bytes(state.baseline))
            machine.write(0x20001ba0, bytes(state.threshold))
            machine.write(0x20000cba, bytes([rgb]))
            for value in (29, 29, 30, 30, 30, 28, 27, 26, 26, 26):
                samples = [10] * 6
                samples[col] = value
                machine.write(0x2000310a, bytes([row] + samples))
                machine.write(0x20000376, b"\x01")
                machine.write(0x20000360, b"\x00")
                machine.call(0x5e4c)
                count = machine.read(0x20000360, 1)[0]
                actual = machine.read(0x20000ee7, count)
                out = (ctypes.c_uint8 * 6)()
                number = c(ctypes.byref(state), row, (ctypes.c_uint8 * 6)(*samples), rgb, out)
                assert actual == bytes(out[:number]), (rgb, position, value, actual, bytes(out[:number]))
                assert machine.read(0x20001ada, 66) == bytes(state.debounce), (rgb, position, value)
                assert machine.read(0x20001ac4, 22) == struct.pack("<11H", *state.pressed)
                frames += 1
            assert bytes(state.debounce) == bytes(66)
            assert list(state.pressed) == [0] * 11
    return {"positions": 66, "rgb_modes": 2, "frames_compared": frames,
            "events_debounce_and_pressed_bits_all_match": True, "firmware_entry": "0x00005e4c"}


def verify_adc(machine):
    pins = [0x500042b0, 0x500042ac, 0x500042a8, 0x500042a4, 0x500042a0, 0x5000423c]
    for column in range(6):
        machine.write(0x400e0020, struct.pack("<I", 0))
        machine.write(0x400e0030, struct.pack("<I", 1))
        machine.write(0x400e000c, struct.pack("<I", 0xabcd))
        assert machine.call(0x74cc, column) == (0xabcd & 0x3ff)
        assert all(machine.read(pin, 4) == struct.pack("<I", 1) for pin in pins)
    for row in range(11):
        machine.call(0x681c, row)
        for pin, value in zip([0x500042c0, 0x500042c4, 0x500042c8, 0x50004234, 0x50004238],
                              [row & 1, (row >> 1) & 1, (row >> 2) & 1, row >> 3, int(row < 8)]):
            assert int.from_bytes(machine.read(pin, 4), "little") == value, (row, pin)
    return {"adc_columns_checked": 6, "row_select_states_checked": 11,
            "all_match": True, "entries": ["0x000074cc", "0x0000681c"]}


def verify_host_parser(lines):
    pe = pefile.PE(str(ROOT / "66EC(XRGB)BleHWI.dll"))
    machine = Uc(UC_ARCH_X86, UC_MODE_32)
    machine.mem_map(0x10000000, pe.OPTIONAL_HEADER.SizeOfImage)
    machine.mem_write(0x10000000, pe.get_memory_mapped_image())
    machine.mem_map(0x20000000, 0x10000)
    machine.mem_map(0x30000000, 0x10000)
    for number, line in enumerate(lines, 1):
        machine.mem_write(0x30000000, line[1:].encode("ascii") + b"\0")
        machine.mem_write(0x20008000, struct.pack("<II", 0x10014000, 0x30001000))
        machine.reg_write(UC_X86_REG_EAX, 0x30000000)
        machine.reg_write(UC_X86_REG_ESP, 0x20008000)
        machine.emu_start(0x10003b70, 0x10014000, count=200_000)
        assert machine.reg_read(UC_X86_REG_EIP) == 0x10014000, number
        pointer = machine.reg_read(UC_X86_REG_EAX)
        assert bytes(machine.mem_read(pointer, 64)) == firmware_report(line)[1:], number
    return {"records_compared": len(lines), "all_64_byte_payloads_match": True,
            "dll_parser_entry": "0x10003b70"}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=ROOT / "analysis/verification")
    args = parser.parse_args()
    image = (ROOT / "recovered/firmware/firmware.bin").read_bytes()
    lines = (ROOT / DEFAULT_INPUT).read_text().splitlines()
    machine = Machine(image)
    start = time.perf_counter()
    result = {"image_sha256": hashlib.sha256(image).hexdigest()}
    result["des"] = verify_des(machine, lines)
    print("Firmware DES matches independent DES for every record", flush=True)
    result["key_scan"] = verify_scan(machine, image, args.output)
    print("Readable C matches the ARM instructions for key scan scenarios", flush=True)
    result["adc_and_row_select"] = verify_adc(machine)
    result["host_parser"] = verify_host_parser(lines)
    result["elapsed_seconds"] = round(time.perf_counter() - start, 3)
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "results.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
