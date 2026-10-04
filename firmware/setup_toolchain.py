#!/usr/bin/env python3
"""Install the checksum-pinned Arm GNU toolchain inside this source project."""
import argparse
import hashlib
import json
from pathlib import Path
import platform
import shutil
import tarfile
import urllib.request

ROOT = Path(__file__).resolve().parent


def digest(path):
    result = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            result.update(chunk)
    return result.hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--archive", type=Path, help="Use an already downloaded official archive")
    args = parser.parse_args()
    if (platform.system(), platform.machine()) != ("Darwin", "arm64"):
        raise SystemExit("This lock file pins macOS arm64. Install Arm GNU 15.2.rel1 for your host and set NIZ_ARM_GNU.")
    lock = json.loads((ROOT / "toolchain.lock.json").read_text())
    tools = ROOT / ".tools"
    tools.mkdir(exist_ok=True)
    archive = args.archive or tools / Path(lock["url"]).name
    if not archive.exists():
        temporary = archive.with_suffix(archive.suffix + ".part")
        print("Downloading the official Arm archive...", flush=True)
        with urllib.request.urlopen(lock["url"], timeout=60) as source, temporary.open("wb") as destination:
            shutil.copyfileobj(source, destination)
        temporary.replace(archive)
    if digest(archive) != lock["sha256"]:
        raise SystemExit("Archive SHA-256 differs from toolchain.lock.json; refusing to extract")
    directory = tools / Path(lock["url"]).name.removesuffix(".tar.xz")
    if not (directory / "bin/arm-none-eabi-gcc").exists():
        with tarfile.open(archive) as package:
            package.extractall(tools, filter="data")
    if not (directory / "bin/arm-none-eabi-gcc").is_file():
        raise SystemExit("The extracted compiler is missing")
    print(directory / "bin")


if __name__ == "__main__":
    main()
