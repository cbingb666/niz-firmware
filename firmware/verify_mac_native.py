#!/usr/bin/env python3
"""Execute the native variant's real ARM dispatch; never open hardware."""
import hashlib
import json
from pathlib import Path
import struct
from check import decode_package, STOCK_IMAGE_SHA256
from build import mac_native_version
from verify_update import verify_complete, verify_rejections
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_MODE_MCLASS, UC_HOOK_CODE
from unicorn.arm_const import (UC_CPU_ARM_CORTEX_M0, UC_ARM_REG_R0, UC_ARM_REG_R1,
    UC_ARM_REG_PC, UC_ARM_REG_SP, UC_ARM_REG_LR, UC_ARM_REG_R4, UC_ARM_REG_R5,
    UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11)
ROOT = Path(__file__).resolve().parent
USAGES = {222: 0x29f, 223: 0x2a0, 224: 0x221, 225: 0xcf, 226: 0x9b,
          227: 0x7a, 228: 0x79, 229: 0xb4, 230: 0xb3}
REGS = [UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7,
        UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11]

class Target:
    def __init__(self, image):
        self.image = image
        self.uc = Uc(UC_ARCH_ARM, UC_MODE_THUMB | UC_MODE_MCLASS)
        self.uc.ctl_set_cpu_model(UC_CPU_ARM_CORTEX_M0)
        for address, size in [(0, 0x11000), (0x20000000, 0x5000),
                              (0x40000000, 0x100000), (0x50000000, 0x10000), (0xe000e000, 0x2000)]:
            self.uc.mem_map(address, size)
        self.uc.mem_write(0, image)
        self.reports = []
        self.delays = []
        self.uc.hook_add(UC_HOOK_CODE, self.hook)
        self.reset()

    def hook(self, uc, address, size, _):
        if address == 0x4054:
            self.delays.append(uc.reg_read(UC_ARM_REG_R0))
            uc.reg_write(UC_ARM_REG_PC, uc.reg_read(UC_ARM_REG_LR))
        if address == 0xae10:
            uc.reg_write(UC_ARM_REG_PC, uc.reg_read(UC_ARM_REG_LR))
        if address in (0xaa18, 0x6010, 0xacd8):
            payload = bytes(uc.mem_read(uc.reg_read(UC_ARM_REG_R0), uc.reg_read(UC_ARM_REG_R1)))
            self.reports.append((address, payload))
            uc.reg_write(UC_ARM_REG_PC, uc.reg_read(UC_ARM_REG_LR))

    def expected(self, code, usage, pressed):
        if code in (227, 228): return bytes([6, (1 if code == 227 else 2) if pressed else 0])
        return bytes([5 if code == 226 else 1]) + struct.pack('<H', usage if pressed else 0)

    def reset(self):
        self.uc.mem_write(0x20000000, bytes(0x5000))
        self.uc.mem_write(0x20000000, self.image[0xcce0:0xcce0 + 0x470])
        self.uc.mem_write(0x20000c60, b'\x06')
        self.reports.clear()
        self.delays.clear()

    def call(self, address, *args):
        expected = [0x12340000+i for i in range(8)]
        for reg, value in zip(REGS, expected): self.uc.reg_write(reg, value)
        for reg, value in zip((UC_ARM_REG_R0, UC_ARM_REG_R1), args): self.uc.reg_write(reg, value)
        self.uc.reg_write(UC_ARM_REG_SP, 0x20004180)
        self.uc.reg_write(UC_ARM_REG_LR, 0x10001)
        self.uc.emu_start(address | 1, 0x10000, count=200000)
        assert self.uc.reg_read(UC_ARM_REG_PC) == 0x10000, (hex(address), hex(self.uc.reg_read(UC_ARM_REG_PC)))
        assert self.uc.reg_read(UC_ARM_REG_SP) == 0x20004180
        assert [self.uc.reg_read(reg) for reg in REGS] == expected

    def state(self): return bytes(self.uc.mem_read(0x20000000, 0x4000))

    def dispatch(self, code, pressed):
        self.uc.mem_write(0x20000c5e, b'\x01') # keyboard enabled
        self.uc.mem_write(0x20000cb8, b'\x02') # first programmable set
        self.uc.mem_write(0x20000f29, b'\x01\x00') # nonzero record pointer
        self.uc.mem_write(0x200013cd, bytes([0, 1, code])) # direct, one internal code
        # Actual event count/event buffer and transport locations from ROM literals.
        count = struct.unpack_from('<I', self.image, 0x4eac)[0]
        event = struct.unpack_from('<I', self.image, 0x4ecc)[0]
        self.uc.mem_write(count, b'\x01')
        self.uc.mem_write(event, bytes([0x81 if pressed else 1]))
        self.uc.mem_write(0x20000c5c, b'\x01') # wired
        self.uc.mem_write(0x20000c5d, b'\x01') # USB, not PS/2
        self.call(0x4ab4)

def verify():
    stock = (ROOT/'build/stock/firmware.bin').read_bytes()
    image = (ROOT/'build/mac_native/firmware.bin').read_bytes()
    build = json.loads((ROOT/'build/mac_native/build.json').read_text())
    raw = (ROOT/'build/mac_native'/build['update_package']).read_bytes()
    assert hashlib.sha256(stock).hexdigest() == STOCK_IMAGE_SHA256
    decoded, package = decode_package(raw)
    assert decoded == image
    allowed = [(0x329c, 0x32a4), (0x526c, 0x526e), (0x58d0, 0x58d2),
               (0xa258, 0xa260), (0x877c, 0x8780), (0xce9f, 0xcea1),
               (0xceda, 0xcedc), (0xceec, 0xcef0), (0xcef8, 0xcefa)]
    assert all(a == b or any(lo <= i < hi for lo, hi in allowed)
               for i, (a, b) in enumerate(zip(stock, image)))
    release, version = mac_native_version()
    version_pointer = struct.unpack_from('<I', image, 0x877c)[0]
    assert version_pointer >= len(stock)
    assert image[version_pointer:image.index(0, version_pointer)] == version.encode('ascii')
    assert image[0xc648:0xc662] == stock[0xc648:0xc662]
    pointer = struct.unpack_from('<I', image, 0xceec)[0]
    length = struct.unpack_from('<I', image, 0xcef8)[0]
    descriptor = image[pointer:pointer+length]
    assert length == 216 and pointer >= len(stock)
    assert descriptor[:25] == bytes.fromhex('050c0901a101850119002aa002150026a002950175108100c0')
    assert descriptor[25:161] == stock[0xcd25:0xcdad]
    assert descriptor[161:185] == bytes.fromhex('05010980a10185051900299b1500269b00950175108100c0')
    assert descriptor[185:] == bytes.fromhex('05010906a101850605ff0909090815002501750195028102750695018101c0')
    assert int.from_bytes(image[0xce9f:0xcea1], 'little') == length
    assert int.from_bytes(image[0xceda:0xcedc], 'little') == length
    target = Target(image)
    target.call(0x8740)
    expected_version = b'\x00\xf9' + version.encode('ascii')
    expected_version += bytes(64 - len(expected_version))
    assert target.reports == [(0xacd8, expected_version)]
    for code, usage in USAGES.items():
        target.reset()
        for pressed in (1, 0):
            target.call(0xa258, pressed, code)
            assert target.reports[-1] == (0xaa18, target.expected(code, usage, pressed))
        target.reset()
        for pressed in (1, 0): target.call(0x329c, pressed, code)
        expected = [] if code == 226 else [(0x6010, b'\xf1'+struct.pack('<H', usage)), (0x6010, b'\xf1\x00\x00')]
        assert target.reports == expected
        target.reset()
        target.dispatch(code, True)
        target.dispatch(code, False)
        assert target.reports == [(0xaa18, target.expected(code, usage, True)),
                                  (0xaa18, target.expected(code, usage, False))], (code, target.reports)
    target.reset()
    target.uc.mem_write(0x40060010, struct.pack('<I', 2))
    target.call(0xa258, 1, 222)
    assert target.delays == [1, 50]
    assert target.uc.mem_read(0x40060010, 4) == struct.pack('<I', 2)
    target.uc.mem_write(0x40060010, bytes(4))
    # Compare all stock keyboard/media codes and F13-F24 through actual trampolines.
    old = Target(stock)
    cases = 0
    for entry in (0xa258, 0x329c):
        for code in list(range(126)) + list(range(204, 222)):
            old.reset(); target.reset()
            target.uc.mem_write(0x20000000, stock[0xcce0:0xcce0+0x470])
            for pressed in (1, 0):
                old.call(entry, pressed, code); target.call(entry, pressed, code)
                # Stack scratch may differ; global application state must match.
                assert old.state() == target.state(), (entry, code)
                assert old.reports == target.reports, (entry, code)
                cases += 1
    stock_package = (ROOT/'build/stock/66EC_RGB_BLE_stock_rebuilt.bin').read_bytes()
    result = dict(package, version=version, release=release, full_f9_version_verified=True,
                  image_sha256=hashlib.sha256(image).hexdigest(),
                  package_sha256=hashlib.sha256(raw).hexdigest(), package_size=len(raw),
                  native_usb_actions=9, arm_press_release_and_matrix_dispatch=True,
                  legacy_press_release_comparisons=cases, descriptor_size=length,
                  stock_rom_changes=[[hex(lo),hex(hi)] for lo,hi in allowed],
                  ble_dnd_supported=False, macos_hardware_verified=False,
                  stock_to_mac_update=verify_complete(image, raw, stock),
                  mac_to_stock_update=verify_complete(stock, stock_package, image),
                  update_rejections=verify_rejections(image, raw))
    (ROOT/'build/mac_native/verification.json').write_text(json.dumps(result, indent=2)+'\n')
    print(json.dumps(result, indent=2))
    return result

if __name__ == '__main__': verify()
