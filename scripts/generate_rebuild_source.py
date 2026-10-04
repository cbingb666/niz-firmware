#!/usr/bin/env python3
"""One-time export of editable GNU Thumb assembly and all ROM data.

This reads the recovered image only when explicitly regenerating sources.
The normal build works from firmware/src/rom.S alone, without any input binary.
"""
from collections import Counter
import csv
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]


def label(address):
    return f".Lrom_{address:08x}"


def assembly(instruction, data):
    mnemonic, _, operands = instruction.partition(" ")
    operands = operands.strip()
    halfword = int.from_bytes(data[:2], "little")
    # GNU as selects the imm8 alias when Rd == Rn; ARMCC used imm3 encoding.
    # Keep the architectural operands editable, with an explicit encoding macro.
    if len(data) == 2 and halfword & 0xfe00 in (0x1c00, 0x1e00):
        operation = "thumb_adds_imm3" if halfword & 0xfe00 == 0x1c00 else "thumb_subs_imm3"
        return f"{operation} {halfword & 7},{(halfword >> 3) & 7},{(halfword >> 6) & 7}"
    if mnemonic == "nop" and halfword == 0xbf00:
        return "thumb_nop_hint"
    if mnemonic in ("ldr", "adr"):
        target = re.fullmatch(r"(r\d+),\[(0x[0-9a-fA-F]+)\]", operands)
        if target:
            return f"{mnemonic}.n {target[1]},{label(int(target[2],16))}"
    if mnemonic in ("b", "bl", "beq", "bne", "bgt", "bge", "blt", "ble",
                    "bhi", "bls", "bcs", "bcc", "bmi", "bpl"):
        width = "" if mnemonic == "bl" else ".n"
        return f"{mnemonic}{width} {label(int(operands,16))}"
    if mnemonic == "muls":
        left, right = operands.split(",")
        return f"muls {left},{right},{left}"
    if mnemonic == "rsbs":
        return f"rsbs {operands},#0"
    return instruction


def main():
    image = (ROOT / "recovered/firmware/firmware.bin").read_bytes()
    instructions = {}
    excluded = []
    for line in (ROOT / "recovered/firmware/decompiled/listing.asm").read_text().splitlines():
        address, encoded, instruction = line.split(None, 2)
        address = int(address, 16)
        data = bytes.fromhex(encoded)
        assert image[address:address+len(data)] == data
        # These bytes are the USB descriptor at 0xcf20, not executable NEON code.
        if address >= 0xbd58:
            excluded.append({"address": hex(address), "reason": "Constant tables and USB descriptors after final code function"})
            continue
        instructions[address] = (data, instruction)
    functions = {}
    for row in csv.DictReader((ROOT / "recovered/firmware/decompiled/functions.tsv").open(), delimiter="\t"):
        address = int(row["address"], 16)
        name = row["name"]
        if address == 0xc8:
            name = "main_runtime_thunk"
        functions[address] = re.sub(r"[^A-Za-z0-9_]", "_", name)
    symbols = {}
    for row in csv.DictReader((ROOT / "analysis/annotations/labels.tsv").open(), delimiter="\t"):
        address = int(row["address"], 16)
        if address < len(image):
            symbols[address] = row["name"]
    targets = {0, len(image), *functions, *symbols}
    for data, instruction in instructions.values():
        targets.update(int(x,16) for x in re.findall(r"(?<!#)0x([0-9a-fA-F]+)", instruction))
    output = ["/* Reconstructed complete ROM: executable instructions plus explicit data. */",
              "/* Generated once; normal builds do not read or include a firmware binary. */",
              ".syntax unified", ".cpu cortex-m0", ".thumb",
              ".macro thumb_adds_imm3 rd,rn,imm", "    .inst.n (0x1c00 | (\\imm << 6) | (\\rn << 3) | \\rd)", ".endm",
              ".macro thumb_subs_imm3 rd,rn,imm", "    .inst.n (0x1e00 | (\\imm << 6) | (\\rn << 3) | \\rd)", ".endm",
              ".macro thumb_nop_hint", "    .inst.n 0xbf00", ".endm",
              ".section .rom,\"ax\",%progbits", ".balign 4", ""]
    address = 0
    counts = Counter()
    while address < len(image):
        if address == 0x5e4c:
            output += ["#if NIZ_C_SCAN", ".global ec_process_scan_records", ".type ec_process_scan_records,%function",
                       ".thumb_func", "ec_process_scan_records:", label(address) + ":",
                       "    ldr r0,.Lscan_c_target", "    bx r0", ".Lscan_c_target:",
                       "    .word ec_process_scan_records_c", "#else"]
        if address == 0x5e54:
            output.append("#endif")
        if address in functions:
            name = functions[address]
            output += ["", f"/* Function at 0x{address:08x}: {name} */", f".global {name}",
                       f".type {name},%function", ".thumb_func", name + ":"]
        if address in symbols:
            output += [f".global {symbols[address]}", f".type {symbols[address]},%object", symbols[address] + ":"]
        output.append(label(address) + ":")
        if address in instructions:
            data, instruction = instructions[address]
            assembled = assembly(instruction, data)
            output.append(f"    {assembled:45s} /* 0x{address:08x}: {data.hex()} ; {instruction} */")
            if assembled.startswith("thumb_"):
                counts["explicit_encoding_macros"] += 1
            counts["mnemonic_instructions"] += 1
            counts["instruction_bytes"] += len(data)
            address += len(data)
        else:
            end = min(address + 16, len(image))
            cuts = [a for a in targets.union(instructions) if address < a < end]
            if cuts:
                end = min(cuts)
            data = image[address:end]
            output.append("    .byte " + ",".join(f"0x{x:02x}" for x in data) + f" /* ROM data 0x{address:08x} */")
            counts["data_bytes"] += len(data)
            address = end
    output += [label(len(image)) + ":", ".global __aeabi_uidiv", ".thumb_set __aeabi_uidiv,aeabi_uidivmod",
               ".global __aeabi_idiv", ".thumb_set __aeabi_idiv,aeabi_idivmod", ""]
    destination = ROOT / "firmware/src"
    destination.mkdir(parents=True, exist_ok=True)
    (destination / "rom.S").write_text("\n".join(output))
    provenance = {"source_image_size": len(image), **counts, "excluded_false_disassembly": excluded,
                  "normal_build_requires_original_image": False, "opaque_instruction_encodings": []}
    (ROOT / "firmware/source_manifest.json").write_text(json.dumps(provenance, indent=2) + "\n")
    print(json.dumps(provenance, indent=2))


if __name__ == "__main__":
    main()
