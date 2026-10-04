#!/usr/bin/env python3
"""Recreate or refresh the NiZ Ghidra projects and analysis exports."""
import argparse
import json
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[1]


def analyze(installation, host=False):
    project_root = ROOT / "analysis/ghidra-project"
    project_root.mkdir(parents=True, exist_ok=True)
    name = "NizHWI" if host else "NizFirmware"
    input_path = ROOT / ("66EC(XRGB)BleHWI.dll" if host else "recovered/firmware/firmware.bin")
    output = ROOT / ("recovered/host/decompiled" if host else "recovered/firmware/decompiled")
    scripts = str(ROOT / "scripts/ghidra")
    command = [str(installation / "support/analyzeHeadless"), str(project_root), name]
    if (project_root / (name + ".gpr")).exists():
        command += ["-process", input_path.name]
        command += ["-preScript", "AnnotateHost.java"] if host else [
            "-preScript", "AnnotateFirmware.java", str(ROOT / "analysis/annotations")]
    else:
        command += ["-import", str(input_path)]
        if host:
            command += ["-postScript", "AnnotateHost.java"]
        else:
            command += ["-loader", "BinaryLoader", "-processor", "ARM:LE:32:Cortex",
                        "-cspec", "default", "-loader-baseAddr", "0",
                        "-preScript", "PrepareFirmware.java",
                        "-postScript", "AnnotateFirmware.java", str(ROOT / "analysis/annotations")]
    command += ["-scriptPath", scripts, "-postScript", "ExportRecovered.java", str(output), "-max-cpu", "4"]
    subprocess.run(command, cwd=ROOT, check=True)
    summary = json.loads((output / "summary.json").read_text())
    if summary["functions"] < 200 or summary["decompiled"] != summary["functions"]:
        raise RuntimeError(f"incomplete export: {summary}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("installation", type=Path, help="Ghidra installation directory")
    args = parser.parse_args()
    installation = args.installation.expanduser().resolve()
    if not (installation / "support/analyzeHeadless").is_file():
        parser.error("installation must contain support/analyzeHeadless")
    analyze(installation)
    analyze(installation, host=True)


if __name__ == "__main__":
    main()
