#!/usr/bin/env python3
"""Build the complete reconstructed Cortex-M0 firmware from source."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
from package import package_image, standard_hex

ROOT = Path(__file__).resolve().parent
TOOLCHAIN_NAME = "arm-gnu-toolchain-15.2.rel1-darwin-arm64-arm-none-eabi"


def toolchain_directory(explicit):
    candidates = [explicit, os.environ.get("NIZ_ARM_GNU")]
    compiler = shutil.which("arm-none-eabi-gcc")
    if compiler:
        candidates.append(str(Path(compiler).parent))
    candidates.append(str(ROOT / ".tools" / TOOLCHAIN_NAME / "bin"))
    candidates.append("/tmp/niz-arm-toolchain/arm-gnu-toolchain-15.2.rel1-darwin-arm64-arm-none-eabi/bin")
    for candidate in candidates:
        if candidate:
            path = Path(candidate).expanduser().resolve()
            if not (path / "arm-none-eabi-gcc").is_file():
                path /= "bin"
            if (path / "arm-none-eabi-gcc").is_file():
                return path
    raise RuntimeError("Arm GNU toolchain missing. Set NIZ_ARM_GNU to its installation or bin directory.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--variant", choices=("stock", "c_scan"), default="stock")
    parser.add_argument("--toolchain", help="Arm GNU installation or bin directory")
    args = parser.parse_args()
    toolchain = toolchain_directory(args.toolchain)
    output = ROOT / "build" / args.variant
    output.mkdir(parents=True, exist_ok=True)
    gcc = str(toolchain / "arm-none-eabi-gcc")
    objcopy = str(toolchain / "arm-none-eabi-objcopy")
    objdump = str(toolchain / "arm-none-eabi-objdump")
    elf = output / "firmware.elf"
    sources = [str(ROOT / "src/rom.S")]
    if args.variant == "c_scan": sources.append(str(ROOT / "src/scan.c"))
    result = subprocess.run([gcc, "-mcpu=cortex-m0", "-mthumb", "-mfloat-abi=soft", "-nostdlib",
                    "-Os", "-ffreestanding", "-fno-builtin", "-fno-unwind-tables", "-fno-asynchronous-unwind-tables",
                    "-fstack-usage", "-Wall", "-Wextra", "-Werror", f"-DNIZ_C_SCAN={int(args.variant == 'c_scan')}",
                    "-Wa,-L", "-Wl,--build-id=none", "-Wl,-T," + str(ROOT / "linker.ld"),
                    "-Wl,-Map," + str(output / "firmware.map"),
                    *sources, "-o", str(elf)], capture_output=True, text=True)
    (output / "compiler.log").write_text(result.stdout + result.stderr)
    if result.returncode:
        errors = [line for line in result.stderr.splitlines() if "Error:" in line or "error:" in line]
        raise RuntimeError("Compilation failed; see compiler.log\n" + "\n".join(errors[:50]))
    nm = subprocess.check_output([str(toolchain / "arm-none-eabi-nm"),"-n",str(elf)],text=True)
    for line in nm.splitlines():
        fields=line.split()
        if len(fields)==3 and fields[2].startswith(".Lrom_"):
            expected=int(fields[2][6:],16)
            if int(fields[0],16)!=expected:
                raise RuntimeError(f"ROM layout moved at {fields[2]}: expected {expected:#x}, got {fields[0]}")
    subprocess.run([objcopy, "-O", "binary", str(elf), str(output / "firmware.bin")], check=True)
    subprocess.run([objcopy, "-O", "ihex", str(elf), str(output / "firmware.hex")], check=True)
    with (output / "firmware.disassembly.txt").open("w") as stream:
        subprocess.run([objdump, "-d", "-S", str(elf)], stdout=stream, check=True)
    image = (output / "firmware.bin").read_bytes()
    (output / "firmware.hex").write_bytes(standard_hex(image))
    package_name = f"66EC_RGB_BLE_{args.variant}_rebuilt.bin"
    packed = package_image(image)
    (output / package_name).write_bytes(packed)
    info = {"variant": args.variant, "image_size": len(image),
            "sha256": hashlib.sha256(image).hexdigest(), "sources": [str(Path(s).relative_to(ROOT)) for s in sources],
            "fixed_rom_layout_verified": True,
            "original_binary_read_during_build": False,
            "update_package": package_name, "update_package_sha256": hashlib.sha256(packed).hexdigest(),
            "toolchain_bin": str(toolchain),
            "compiler": subprocess.check_output([gcc, "--version"], text=True).splitlines()[0]}
    (output / "build.json").write_text(json.dumps(info, indent=2) + "\n")
    print(json.dumps(info, indent=2))


if __name__ == "__main__":
    main()
