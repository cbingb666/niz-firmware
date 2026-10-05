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
from check import decode_package

ROOT = Path(__file__).resolve().parent
TOOLCHAIN_NAME = "arm-gnu-toolchain-15.2.rel1-darwin-arm64-arm-none-eabi"


def mac_native_version():
    metadata = json.loads((ROOT / "mac_native_version.json").read_text())
    release = f"V{metadata['base_version']}-{metadata['custom_marker']}.{metadata['revision']}"
    wire = f"{metadata['family']};{release};V{metadata['hardware_version']};"
    # F9 carries two prefix bytes, the ASCII string and a terminating NUL.
    if len(wire.encode("ascii")) > 61 or any(character in wire for character in ('"', '\\', '\n', '\r')):
        raise ValueError("Mac firmware version does not fit its HID response")
    return release, wire


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


def write_dist_package(output, info, packed):
    """Every successful build writes its updater package to one fixed location."""
    destination = ROOT / "dist"
    if info["variant"] != "stock": destination /= "experimental"
    destination.mkdir(parents=True, exist_ok=True)
    package = destination / info["update_package"]
    info["dist_package"] = str(package.relative_to(ROOT))
    build_record = package.with_suffix(".build.json")
    checksums_path = destination / "SHA256SUMS"
    checksums = {}
    if checksums_path.exists():
        for line in checksums_path.read_text().splitlines():
            digest, filename = line.split("  ", 1)
            checksums[filename] = digest
    artifacts = {package: packed, build_record: (json.dumps(info, indent=2) + "\n").encode()}
    if info["variant"] == "mac_native":
        source = output / "verification.json"
        verification = json.loads(source.read_text()) if source.exists() else {}
        report = package.with_suffix(".verification.json")
        if verification.get("package_sha256") == info["update_package_sha256"] and verification.get("image_sha256") == info["sha256"]:
            artifacts[report] = source.read_bytes()
        elif report.exists():
            # Retain old evidence without attributing it to newly changed bytes.
            archive = destination / "superseded"
            archive.mkdir(exist_ok=True)
            archived = archive / (report.stem + "." + hashlib.sha256(report.read_bytes()).hexdigest() + ".json")
            report.replace(archived)
            checksums.pop(report.name, None)
    for path, content in artifacts.items():
        temporary = path.with_suffix(path.suffix + ".tmp")
        temporary.write_bytes(content)
        temporary.replace(path)
        checksums[path.name] = hashlib.sha256(content).hexdigest()
    checksums_path.write_text("".join(f"{digest}  {filename}\n" for filename, digest in sorted(checksums.items())))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--variant", choices=("stock", "c_scan", "mac_native"), default="stock")
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
    release, version = mac_native_version() if args.variant == "mac_native" else ("", "")
    if args.variant == "c_scan": sources.append(str(ROOT / "src/scan.c"))
    if args.variant == "mac_native": sources.extend([str(ROOT / "src/mac_native.c"), str(ROOT / "src/mac_native.S")])
    result = subprocess.run([gcc, "-mcpu=cortex-m0", "-mthumb", "-mfloat-abi=soft", "-nostdlib",
                    "-Os", "-ffreestanding", "-fno-builtin", "-fno-unwind-tables", "-fno-asynchronous-unwind-tables",
                    "-fstack-usage", "-Wall", "-Wextra", "-Werror", f"-DNIZ_C_SCAN={int(args.variant == 'c_scan')}",
                    f"-DNIZ_MAC_NATIVE={int(args.variant == 'mac_native')}",
                    f'-DNIZ_MAC_NATIVE_VERSION="{version}"',
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
    package_name = f"66EC_RGB_BLE_{release}.bin" if args.variant == "mac_native" else f"66EC_RGB_BLE_{args.variant}_rebuilt.bin"
    packed = package_image(image)
    decoded, _ = decode_package(packed)
    if decoded != image:
        raise RuntimeError("Updater package does not decode to the compiled image")
    (output / package_name).write_bytes(packed)
    info = {"variant": args.variant, "image_size": len(image),
            "sha256": hashlib.sha256(image).hexdigest(), "sources": [str(Path(s).relative_to(ROOT)) for s in sources],
            "fixed_rom_layout_verified": True,
            "package_format_verified": True,
            "hardware_verified": False,
            "original_binary_read_during_build": False,
            "update_package": package_name, "update_package_sha256": hashlib.sha256(packed).hexdigest(),
            "toolchain_bin": str(toolchain),
            "compiler": subprocess.check_output([gcc, "--version"], text=True).splitlines()[0]}
    if args.variant == "mac_native": info.update(release=release, version=version)
    write_dist_package(output, info, packed)
    (output / "build.json").write_text(json.dumps(info, indent=2) + "\n")
    print(json.dumps(info, indent=2))


if __name__ == "__main__":
    main()
