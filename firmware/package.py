"""Encode the exact vendor DES-wrapped Intel HEX update format."""
from Crypto.Cipher import DES

KEY = bytes.fromhex("7600000000000000")
MAX_STAGED_IMAGE = 0xfffc


def validate_image(image):
    if len(image) < 0xc0 or len(image) > MAX_STAGED_IMAGE or len(image) % 4:
        raise ValueError("Image must be word-aligned and fit the EEPROM staging area")
    sp = int.from_bytes(image[:4], "little")
    entry = int.from_bytes(image[4:8], "little")
    if not 0x20000000 < sp <= 0x20005000 or sp % 8:
        raise ValueError("Invalid initial stack pointer for the recovered SRAM layout")
    if entry & 1 != 1 or not 0xc0 <= (entry & ~1) < len(image):
        raise ValueError("Reset vector must point to Thumb code in this image")
    return entry


def intel_record(kind, address, data=b""):
    prefix = bytes([len(data)]) + address.to_bytes(2,"big") + bytes([kind]) + data
    return prefix + bytes([(-sum(prefix)) & 255])


def records_for_image(image):
    entry = validate_image(image)
    yield intel_record(4,0,b"\0\0")
    for address in range(0,len(image),16):
        yield intel_record(0,address,image[address:address+16])
    yield intel_record(5,0,entry.to_bytes(4,"big"))
    yield intel_record(1,0)


def package_image(image):
    cipher = DES.new(KEY, DES.MODE_ECB)
    lines = []
    for record in records_for_image(image):
        padded = record + bytes((-len(record)) % 8)
        lines.append(":" + f"{len(record):02X}" + cipher.encrypt(padded).hex().upper())
    return ("\r\n".join(lines) + "\r\n").encode("ascii")


def standard_hex(image):
    return b"".join((":" + record.hex().upper() + "\r\n").encode("ascii")
                    for record in records_for_image(image))
