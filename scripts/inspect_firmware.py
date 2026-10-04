#!/usr/bin/env python3
"""Export verified fixed tables/descriptors from this specific NiZ firmware image."""
import csv
import hashlib
import json
from pathlib import Path
import struct

ROOT = Path(__file__).resolve().parents[1]


def configuration(image, address):
    total = int.from_bytes(image[address + 2:address + 4], "little")
    result = {"address": hex(address), "size": total, "interfaces": []}
    interface = None
    offset = 0
    while offset < total:
        size, kind = image[address + offset:address + offset + 2]
        if size < 2 or offset + size > total:
            raise ValueError(f"invalid descriptor at {address+offset:#x}")
        data = image[address + offset:address + offset + size]
        if kind == 4:
            interface = {"number": data[2], "class": data[5], "subclass": data[6],
                         "protocol": data[7], "string_index": data[8], "endpoints": []}
            result["interfaces"].append(interface)
        elif kind == 5:
            interface["endpoints"].append({"address": hex(data[2]), "attributes": data[3],
                                          "max_packet": int.from_bytes(data[4:6], "little"),
                                          "interval_ms": data[6]})
        elif kind == 0x21:
            interface["report_descriptor_size"] = int.from_bytes(data[7:9], "little")
        offset += size
    return result


def main():
    image = (ROOT / "recovered/firmware/firmware.bin").read_bytes()
    assert hashlib.sha256(image).hexdigest() == "8ecb2cef8172ca37a5e42a75b2748af6a8c930c174c5ae6c67776207d13fa43a"
    output = ROOT / "recovered/firmware/tables"
    output.mkdir(parents=True, exist_ok=True)
    matrix = image[0xc47a:0xc47a + 66]
    defaults = image[0xc4bc:0xc4bc + 198]
    colors = image[0xc582:0xc582 + 198]
    assert sorted(matrix) == list(range(1, 67))
    with (output / "default_keymap.csv").open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(["matrix_row", "matrix_column", "physical_key_id", "internal_code_0", "internal_code_1", "internal_code_2"])
        for i, key in enumerate(matrix):
            writer.writerow([i // 6, i % 6, key] + [f"0x{x:02x}" for x in defaults[(key-1)*3:key*3]])
    with (output / "default_rgb.csv").open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(["physical_key_id", "channel_0", "channel_1", "channel_2"])
        for i in range(66):
            writer.writerow([i+1, *colors[i*3:i*3+3]])
    arrays = [("niz_default_internal_codes", 0xc4bc, defaults),
              ("niz_default_rgb_channels", 0xc582, colors)]
    text = ["/* Extracted constants; internal key codes are not USB HID usages. */", "#include <stdint.h>", ""]
    for name, address, data in arrays:
        text += [f"/* ROM {address:#010x} */", f"const uint8_t {name}[{len(data)}] = {{"]
        for i in range(0, len(data), 18):
            text.append("    " + ", ".join(f"0x{x:02x}" for x in data[i:i+18]) + ",")
        text += ["};", ""]
    (ROOT / "recovered/readable/tables.c").write_text("\n".join(text))
    strings = []
    pointer = 0xcf47
    while pointer < 0xcfc5:
        size, kind = image[pointer:pointer+2]
        if kind != 3 or size < 2:
            break
        body = image[pointer+2:pointer+size]
        strings.append({"index": len(strings), "address": hex(pointer),
                        "value": body.decode("utf-16le") if strings else "language 0x0409"})
        pointer += size
    d = image[0xce3b:0xce3b+18]
    metadata = {
        "version_string": image[0xc648:image.index(0, 0xc648)].decode("ascii"),
        "des_key_literal_address": "0x00009364",
        "des_key_literal_u32": hex(struct.unpack_from("<I", image, 0x9364)[0]),
        "device": {"address": "0x0000ce3b", "usb_bcd": hex(int.from_bytes(d[2:4], "little")),
                   "vid": f"0x{int.from_bytes(d[8:10], 'little'):04x}",
                   "pid": f"0x{int.from_bytes(d[10:12], 'little'):04x}", "ep0_max_packet": d[7]},
        "configuration_full": configuration(image, 0xce4d),
        "configuration_alternate": configuration(image, 0xcea8),
        "usb_strings": strings,
        "matrix": {"rows": 11, "columns": 6, "physical_key_id_address": "0x0000c47a"},
        "default_internal_code_table_address": "0x0000c4bc",
        "default_rgb_table_address": "0x0000c582",
    }
    for name, address, size in [("usb_device_descriptor", 0xce3b, 18),
                                ("usb_full_configuration", 0xce4d, 91),
                                ("usb_alternate_configuration", 0xcea8, 59),
                                ("usb_programming_report_descriptor", 0xcf20, 39)]:
        (output / (name + ".bin")).write_bytes(image[address:address+size])
    (output / "metadata.json").write_text(json.dumps(metadata, indent=2, ensure_ascii=False) + "\n")
    print(json.dumps(metadata, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
