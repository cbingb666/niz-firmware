#!/usr/bin/env python3
"""Execute the rebuilt ARM update receiver against simulated EEPROM.

DES, HEX validation, page splitting, readback checks, accumulated checksum and
completion-header code execute unchanged. Only physical I2C EEPROM access,
indicators, watchdog and the final configuration-flash operation are hooked.
There is no USB or physical-device access.
"""
import hashlib
import json
from pathlib import Path
import struct

from Crypto.Cipher import DES
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_MODE_MCLASS, UC_HOOK_CODE
from unicorn.arm_const import (
    UC_CPU_ARM_CORTEX_M0, UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2,
    UC_ARM_REG_PC, UC_ARM_REG_SP, UC_ARM_REG_LR,
)

ROOT = Path(__file__).resolve().parent
STOP = 0x10000
TIMERS = (0x40010000, 0x40010020, 0x40110000)


class Receiver:
    def __init__(self, image):
        self.uc = Uc(UC_ARCH_ARM, UC_MODE_THUMB | UC_MODE_MCLASS)
        self.uc.ctl_set_cpu_model(UC_CPU_ARM_CORTEX_M0)
        self.uc.mem_map(0, 0x11000)
        self.uc.mem_write(0, image)
        self.uc.mem_map(0x20000000, 0x5000)
        for address in (0x40010000, 0x40110000):
            self.uc.mem_map(address, 0x1000)
        self.eeprom = bytearray([0xff] * 0x10000)
        self.page_writes = 0
        self.page_crossings = 0
        self.responses = []
        self.configuration_program_requested = False
        self.corrupt_readback = False
        callbacks = {0x42c4: self.write_page, 0x43a4: self.read_byte,
                     0x6730: self.return_from_hook, 0x6778: self.return_from_hook,
                     0xae10: self.return_from_hook, 0xacd8: self.host_response,
                     0x66a8: self.program_configuration}
        for address, callback in callbacks.items():
            self.uc.hook_add(UC_HOOK_CODE, callback, begin=address, end=address)
        self.uc.mem_write(0x20000c56, b"\1")
        self.uc.mem_write(0x20000cba, b"\1")
        for address in TIMERS:
            self.uc.mem_write(address, struct.pack("<I", 0x40000000))

    def return_from_hook(self, uc, address, size, data):
        uc.reg_write(UC_ARM_REG_PC, uc.reg_read(UC_ARM_REG_LR))

    def write_page(self, uc, address, size, data):
        pointer, count, offset = (uc.reg_read(reg) for reg in (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2))
        assert 0 < count <= 128 and 0 <= offset < offset + count <= 0x10000, "EEPROM write outside capacity"
        assert offset // 128 == (offset + count - 1) // 128, "EEPROM page boundary crossed"
        self.eeprom[offset:offset+count] = bytes(uc.mem_read(pointer, count))
        self.page_writes += 1
        self.return_from_hook(uc, address, size, data)

    def read_byte(self, uc, address, size, data):
        offset = uc.reg_read(UC_ARM_REG_R0)
        assert 0 <= offset < 0x10000, "EEPROM read outside capacity"
        uc.reg_write(UC_ARM_REG_R0, self.eeprom[offset] ^ int(self.corrupt_readback))
        self.return_from_hook(uc, address, size, data)

    def host_response(self, uc, address, size, data):
        pointer, count = uc.reg_read(UC_ARM_REG_R0), uc.reg_read(UC_ARM_REG_R1)
        self.responses.append(bytes(uc.mem_read(pointer, count)))
        self.return_from_hook(uc, address, size, data)

    def program_configuration(self, uc, address, size, data):
        self.configuration_program_requested = True
        uc.emu_stop()

    def send(self, wrapped):
        # These are exactly the payload bytes after HID prefix 00 3A.
        assert len(wrapped) <= 62
        self.uc.mem_write(0x20003000, wrapped + bytes(64-len(wrapped)))
        self.uc.reg_write(UC_ARM_REG_R0, 0x20003000)
        self.uc.reg_write(UC_ARM_REG_SP, 0x20004180)
        self.uc.reg_write(UC_ARM_REG_LR, STOP | 1)
        self.uc.emu_start(0x918d, STOP, count=2_000_000)
        assert self.configuration_program_requested or self.uc.reg_read(UC_ARM_REG_PC) == STOP, "Receiver failed to return"

    def number(self, address, size):
        return int.from_bytes(self.uc.mem_read(address, size), "little")


def wrapped_records(raw):
    return [bytes.fromhex(line[1:]) for line in raw.decode("ascii").splitlines()]


def verify_complete(image, packed):
    receiver = Receiver(image)
    records = wrapped_records(packed)
    for number, record in enumerate(records):
        receiver.send(record)
        assert receiver.number(0x200003a4, 1) == 0, f"Rejected update record {number+1}"
        if number == 0:
            assert receiver.number(0x20000c56, 1) == 0, "Scan was not suspended"
            assert all(receiver.number(address, 4) & 0x40000000 == 0 for address in TIMERS), "Timers still enabled"
    assert receiver.eeprom[4:4+len(image)] == image, "Staged bytes differ from the built image"
    assert receiver.eeprom[:4] == b"\xcc\xcc" + len(image).to_bytes(2, "big"), "Incorrect completion header"
    assert receiver.number(0x200003a8, 4) == len(image), "Incorrect accumulated length"
    assert receiver.number(0x200003ac, 4) == sum(image), "Incorrect accumulated checksum"
    assert receiver.number(0x20000cb9, 1) == 1 and receiver.configuration_program_requested, "Completion stage was not requested"
    assert receiver.responses == [], "Successful update emitted an error response"
    return {"records_accepted": len(records), "staged_image_size": len(image),
            "staged_image_sha256": hashlib.sha256(receiver.eeprom[4:4+len(image)]).hexdigest(),
            "eeprom_page_writes": receiver.page_writes, "no_page_boundary_crossings": True,
            "all_readbacks_and_final_checksum_valid": True, "completion_header_valid": True,
            "configuration_program_requested": True}


def verify_rejections(image, packed):
    records = wrapped_records(packed)
    cases = {}
    for name in ("hex_checksum", "out_of_order_address", "write_readback", "final_staging_checksum"):
        receiver = Receiver(image)
        receiver.send(records[0])
        if name == "hex_checksum":
            cipher = DES.new(bytes.fromhex("7600000000000000"), DES.MODE_ECB)
            plaintext = bytearray(cipher.decrypt(records[1][1:]))
            plaintext[records[1][0]-1] ^= 1
            receiver.send(records[1][:1] + cipher.encrypt(bytes(plaintext)))
        elif name == "out_of_order_address":
            receiver.send(records[2])
        else:
            receiver.corrupt_readback = name == "write_readback"
            receiver.send(records[1])
            receiver.corrupt_readback = False
            if name == "final_staging_checksum":
                receiver.eeprom[4] ^= 1
        receiver.send(records[-1])
        expected = 0xa1 if name == "final_staging_checksum" else 0xa0
        assert len(receiver.responses) == 1 and receiver.responses[0][:3] == bytes([0, 0x3a, expected]), name
        assert not receiver.configuration_program_requested and receiver.eeprom[:4] == b"\xff" * 4, name
        assert receiver.number(0x20000c56, 1) == 1, "Scan did not resume after rejected update"
        cases[name] = {"rejected": True, "response": f"00 3A {expected:02X}", "no_completion_marker": True}
    return cases


def verify():
    result = {"arm_update_entry": "0x0000918c", "eeprom_is_simulated": True,
              "hardware_callbacks_hooked": ["eeprom_write_page", "eeprom_read_u8", "indicators",
                                            "watchdog_feed", "usb_send_host_payload", "configuration_flash"],
              "physical_usb_transfer_verified": False, "ldrom_aprom_programming_verified": False}
    for variant in ("stock", "c_scan"):
        directory = ROOT / "build" / variant
        image = (directory / "firmware.bin").read_bytes()
        packed = (directory / f"66EC_RGB_BLE_{variant}_rebuilt.bin").read_bytes()
        result[variant] = verify_complete(image, packed)
        result[variant]["error_path_checks"] = verify_rejections(image, packed)
        print(f"{variant}: all {result[variant]['records_accepted']} update records accepted; completion and rejection checks passed", flush=True)
    result["all_passed"] = True
    (ROOT / "build/update_verification.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))
    return result


if __name__ == "__main__":
    verify()
