#!/usr/bin/env python3
"""Recover the NiZ DES-wrapped Intel HEX image without contacting a keyboard."""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path

from Crypto.Cipher import DES

# ROM 0x00009364 contains 0x00000076. The DES implementation at 0x00007ecc
# copies only its first key byte and clears the other seven. DES ignores parity
# bits, so 7700000000000000 is an equivalent key used during initial discovery.
KEY = bytes.fromhex("7600000000000000")
DEFAULT_INPUT = "66EC(RGB)BLe_V1.5.1_20230520.bin"


def decode_record(line: str, number: int) -> bytes:
    if not line.startswith(":"):
        raise ValueError(f"line {number}: missing colon")
    try:
        wrapped = bytes.fromhex(line[1:])
    except ValueError as error:
        raise ValueError(f"line {number}: invalid hex") from error
    if not wrapped:
        raise ValueError(f"line {number}: empty record")
    size, encrypted = wrapped[0], wrapped[1:]
    if size < 5 or len(encrypted) != ((size + 7) // 8) * 8:
        raise ValueError(f"line {number}: invalid padded length")
    padded = DES.new(KEY, DES.MODE_ECB).decrypt(encrypted)
    record = padded[:size]
    if any(padded[size:]):
        raise ValueError(f"line {number}: nonzero padding")
    if record[0] + 5 != size or sum(record) % 256:
        raise ValueError(f"line {number}: invalid Intel HEX length/checksum")
    return record


def recover(source: Path, destination: Path) -> dict:
    raw = source.read_bytes()
    records = [decode_record(line, i) for i, line in
               enumerate(raw.decode("ascii").splitlines(), 1)]
    memory, upper, entry, eof = {}, 0, None, False
    for i, r in enumerate(records, 1):
        if eof:
            raise ValueError(f"line {i}: record after EOF")
        count, offset, kind = r[0], int.from_bytes(r[1:3], "big"), r[3]
        payload = r[4:-1]
        if kind == 0:
            for j, value in enumerate(payload):
                address = upper + offset + j
                if address in memory:
                    raise ValueError(f"line {i}: overlapping address {address:#x}")
                memory[address] = value
        elif kind == 4 and count == 2 and offset == 0:
            upper = int.from_bytes(payload, "big") << 16
        elif kind == 5 and count == 4 and offset == 0:
            entry = int.from_bytes(payload, "big")
        elif kind == 1 and count == 0 and offset == 0:
            eof = True
        else:
            raise ValueError(f"line {i}: unsupported record type {kind:#x}")
    if not eof or not memory:
        raise ValueError("missing EOF or empty image")
    start, end = min(memory), max(memory) + 1
    gaps = end - start - len(memory)
    if gaps:
        raise ValueError(f"image contains {gaps} unmapped bytes; refusing to invent bytes")
    image = bytes(memory[i] for i in range(start, end))
    # Independent format checks above + reproduce every byte of the vendor wrapper.
    cipher = DES.new(KEY, DES.MODE_ECB)
    roundtrip = b"".join(
        (":" + f"{len(r):02X}" + cipher.encrypt(
            r + bytes((-len(r)) % 8)).hex().upper() + "\r\n").encode("ascii")
        for r in records)
    if raw != roundtrip:
        raise ValueError("decoded records do not reproduce the original wrapper exactly")
    destination.mkdir(parents=True, exist_ok=True)
    (destination / "firmware.hex").write_bytes(b"".join(
        (":" + r.hex().upper() + "\r\n").encode("ascii") for r in records))
    (destination / "firmware.bin").write_bytes(image)
    manifest = {
        "input": source.name,
        "input_sha256": hashlib.sha256(raw).hexdigest(),
        "image_sha256": hashlib.sha256(image).hexdigest(),
        "algorithm": "DES-ECB, zero padding, one length byte before each ciphertext",
        "des_equivalent_key_hex": KEY.hex(),
        "key_literal_address": "0x00009364",
        "firmware_des_function_address": "0x00007ecc",
        "record_count": len(records),
        "record_types": dict(Counter(r[3] for r in records)),
        "all_record_checksums_valid": True,
        "exact_wrapper_roundtrip": True,
        "image_base": hex(start),
        "image_end_exclusive": hex(end),
        "image_size": len(image),
        "missing_bytes": gaps,
        "hex_start_linear_address": hex(entry) if entry is not None else None,
        "initial_sp": hex(int.from_bytes(image[:4], "little")),
        "reset_vector": hex(int.from_bytes(image[4:8], "little")),
    }
    (destination / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n")
    return manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", nargs="?", type=Path, default=Path(DEFAULT_INPUT))
    parser.add_argument("-o", "--output", type=Path, default=Path("recovered/firmware"))
    args = parser.parse_args()
    print(json.dumps(recover(args.input, args.output), indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
