"""Compiler-to-dist behavior from a source-only checkout; no hardware or JIT."""
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "firmware"))
from build import toolchain_directory


class PackageOutputTests(unittest.TestCase):
    def setUp(self):
        self.scratch = tempfile.TemporaryDirectory(prefix="niz-dist-output-")
        self.addCleanup(self.scratch.cleanup)
        self.project = Path(self.scratch.name) / "firmware"
        shutil.copytree(ROOT / "firmware", self.project,
                       ignore=shutil.ignore_patterns("build", "dist", ".tools", "__pycache__"))
        self.toolchain = str(toolchain_directory(None))
        self.assertEqual(list(self.project.rglob("*.bin")), [])

    def compile(self, variant):
        result = subprocess.run([sys.executable, str(self.project / "build.py"), "--variant", variant,
                                 "--toolchain", self.toolchain], cwd=self.scratch.name,
                                capture_output=True, text=True)
        self.assertEqual(result.returncode, 0, result.stderr)
        return json.loads(result.stdout)

    def test_all_variants_create_updater_packages_in_fixed_dist_directories(self):
        for variant in ("stock", "c_scan", "mac_native"):
            info = self.compile(variant)
            directory = self.project / "dist" if variant == "stock" else self.project / "dist/experimental"
            package = directory / info["update_package"]
            self.assertEqual(package.read_bytes(), (self.project / "build" / variant / package.name).read_bytes())
            self.assertEqual(info["dist_package"], str(package.relative_to(self.project)))
            self.assertEqual(hashlib.sha256(package.read_bytes()).hexdigest(), info["update_package_sha256"])
            record = json.loads(package.with_suffix(".build.json").read_text())
            self.assertTrue(record["package_format_verified"])
            self.assertFalse(record["hardware_verified"])
            self.assertIn(info["update_package_sha256"] + "  " + package.name, (directory / "SHA256SUMS").read_text())

    def test_changed_build_does_not_reuse_stale_arm_verification(self):
        info = self.compile("mac_native")
        package = self.project / info["dist_package"]
        report = package.with_suffix(".verification.json")
        old = {"package_sha256": "0" * 64, "image_sha256": "0" * 64}
        report.write_text(json.dumps(old))
        (self.project / "build/mac_native/verification.json").write_text(json.dumps(old))
        checksums = package.parent / "SHA256SUMS"
        with checksums.open("a") as stream:
            stream.write(hashlib.sha256(report.read_bytes()).hexdigest() + "  " + report.name + "\n")
        self.compile("mac_native")
        self.assertFalse(report.exists())
        self.assertNotIn(report.name, checksums.read_text())
        archived = list((package.parent / "superseded").glob("*.json"))
        self.assertEqual(len(archived), 1)
        self.assertEqual(json.loads(archived[0].read_text()), old)

    def test_failed_compilation_preserves_the_last_dist_package(self):
        info = self.compile("mac_native")
        package = self.project / info["dist_package"]
        before = package.read_bytes()
        with (self.project / "src/rom.S").open("a") as stream:
            stream.write('\n.error "intentional compiler failure"\n')
        result = subprocess.run([sys.executable, str(self.project / "build.py"), "--variant", "mac_native",
                                 "--toolchain", self.toolchain], capture_output=True, text=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertEqual(package.read_bytes(), before)


if __name__ == "__main__": unittest.main()
