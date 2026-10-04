#!/usr/bin/env python3
"""Independently decode and validate both rebuilt firmware update packages."""
from collections import Counter
import hashlib
import json
from pathlib import Path

from Crypto.Cipher import DES

ROOT = Path(__file__).resolve().parent
STOCK_IMAGE_SHA256 = "8ecb2cef8172ca37a5e42a75b2748af6a8c930c174c5ae6c67776207d13fa43a"
STOCK_PACKAGE_SHA256 = "b5dca0a3de1f36778c4ce5deb41d019d95221f654ef783ff6b837553092397fa"


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def decode_package(raw):
    """Decoder is separate from package.py; does not call the encoder."""
    assert raw.endswith(b"\r\n"), "Missing final CRLF"
    lines = raw[:-2].split(b"\r\n")
    image = bytearray()
    types = Counter()
    entry = None
    eof = False
    for number, line in enumerate(lines, 1):
        assert not eof, f"Record after EOF: {number}"
        assert line[:1] == b":" and line == line.upper(), f"Invalid wrapper line: {number}"
        wrapped = bytes.fromhex(line[1:].decode("ascii"))
        size, encrypted = wrapped[0], wrapped[1:]
        assert 5 <= size <= 21 and len(wrapped) <= 62, f"Invalid record size: {number}"
        assert len(encrypted) == (size + 7) // 8 * 8, f"Invalid ciphertext length: {number}"
        padded = DES.new(bytes.fromhex("7600000000000000"), DES.MODE_ECB).decrypt(encrypted)
        record = padded[:size]
        assert not any(padded[size:]), f"Nonzero DES padding: {number}"
        assert record[0] + 5 == size and sum(record) % 256 == 0, f"Invalid HEX checksum: {number}"
        count, address, kind = record[0], int.from_bytes(record[1:3], "big"), record[3]
        types[kind] += 1
        if kind == 4:
            assert number == 1 and record == bytes.fromhex("020000040000fa"), "Unexpected address extension"
        elif kind == 0:
            assert entry is None and count > 0 and address == len(image), "Non-contiguous data or data after entry"
            image.extend(record[4:-1])
        elif kind == 5:
            assert entry is None and count == 4 and address == 0, "Invalid entry record"
            entry = int.from_bytes(record[4:8], "big")
        elif kind == 1:
            assert record == bytes.fromhex("00000001ff"), "Invalid EOF"
            eof = True
        else:
            raise AssertionError(f"Unsupported HEX type {kind}")
    assert eof and types[4] == 1 and types[5] == 1 and types[1] == 1, "Missing mandatory records"
    assert 0xc0 <= len(image) <= 0xfffc and len(image) % 4 == 0, "Invalid EEPROM image length"
    sp = int.from_bytes(image[:4], "little")
    reset = int.from_bytes(image[4:8], "little")
    assert sp == 0x20004180 and reset == entry == 0xf1, "Changed reset vectors"
    return bytes(image), {"records": len(lines), "record_types": dict(types),
                         "all_checksums_and_padding_valid": True, "addresses_contiguous": True,
                         "entry_matches_reset_vector": True, "fits_eeprom_staging_area": True}


def verify():
    report = {}
    images = {}
    for variant in ("stock", "c_scan"):
        directory = ROOT / "build" / variant
        image = (directory / "firmware.bin").read_bytes()
        raw = (directory / f"66EC_RGB_BLE_{variant}_rebuilt.bin").read_bytes()
        decoded, details = decode_package(raw)
        assert decoded == image, f"{variant}: packaged data differs from the built image"
        details.update(image_size=len(image), image_sha256=sha256(image),
                       package_size=len(raw), package_sha256=sha256(raw), package_decodes_to_built_image=True)
        report[variant] = details
        images[variant] = image
    assert sha256(images["stock"]) == STOCK_IMAGE_SHA256, "Stock image is not byte-identical to the original"
    assert report["stock"]["package_sha256"] == STOCK_PACKAGE_SHA256, "Stock package differs from the original"
    stock, modified = images["stock"], images["c_scan"]
    assert modified[:0x5e4c] == stock[:0x5e4c], "ROM before the C bridge moved"
    assert modified[0x5e54:len(stock)] == stock[0x5e54:], "ROM after the C bridge moved"
    assert modified[0x5e4c:0x5e50] == bytes.fromhex("00480047"), "Invalid Thumb bridge"
    destination = int.from_bytes(modified[0x5e50:0x5e54], "little")
    assert destination & 1 and len(stock) <= (destination & ~1) < len(modified), "Bridge target outside appended C code"
    report["stock"]["original_image_and_package_byte_identity"] = True
    report["c_scan"].update(original_rom_changed_range="0x00005e4c..0x00005e53",
                            original_rom_outside_bridge_unchanged=True,
                            appended_bytes=len(modified)-len(stock), c_entry=hex(destination & ~1))
    assert ".incbin" not in (ROOT / "src/rom.S").read_text(), "Assembly source imports an opaque binary"
    report["normal_build_needs_original_input_files"] = False
    report["physical_flash_verified"] = False
    (ROOT / "build/verification.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))
    return report


if __name__ == "__main__":
    verify()
