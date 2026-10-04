"""Acceptance check for the source-to-image boundary requested by the user."""
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
ORIGINAL_IMAGE_SHA256 = "8ecb2cef8172ca37a5e42a75b2748af6a8c930c174c5ae6c67776207d13fa43a"


class FirmwareBuildTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        for variant in ("stock", "c_scan"):
            subprocess.run([sys.executable, str(ROOT / "firmware/build.py"), "--variant", variant],
                           cwd=ROOT, check=True)

    def test_complete_source_build_reproduces_original_program_image(self):
        image = (ROOT / "firmware/build/stock/firmware.bin").read_bytes()
        self.assertEqual(hashlib.sha256(image).hexdigest(), ORIGINAL_IMAGE_SHA256)

    def test_built_update_package_matches_the_original_vendor_file(self):
        package = ROOT / "firmware/build/stock/66EC_RGB_BLE_stock_rebuilt.bin"
        self.assertEqual(package.read_bytes(), (ROOT / "66EC(RGB)BLe_V1.5.1_20230520.bin").read_bytes())

    def test_arm_compiled_c_scan_matches_original_firmware_state_changes(self):
        subprocess.run([sys.executable, str(ROOT / "firmware/verify_target.py")], cwd=ROOT, check=True)

    def test_update_receiver_accepts_both_complete_packages(self):
        subprocess.run([sys.executable, str(ROOT / "firmware/verify_update.py")], cwd=ROOT, check=True)

    def test_build_from_source_only_directory(self):
        info = json.loads((ROOT / "firmware/build/stock/build.json").read_text())
        with tempfile.TemporaryDirectory(prefix="niz-source-only-") as scratch:
            project = Path(scratch) / "firmware"
            shutil.copytree(ROOT / "firmware", project,
                            ignore=shutil.ignore_patterns("build", "dist", ".tools", "__pycache__"))
            self.assertEqual(list(project.rglob("*.bin")), [])
            for variant in ("stock", "c_scan"):
                subprocess.run([sys.executable, str(project / "build.py"), "--variant", variant,
                                "--toolchain", info["toolchain_bin"]], cwd=project, check=True)
                for name in ("firmware.bin", f"66EC_RGB_BLE_{variant}_rebuilt.bin"):
                    self.assertEqual((project / "build" / variant / name).read_bytes(),
                                     (ROOT / "firmware/build" / variant / name).read_bytes())
            subprocess.run([sys.executable, str(project / "check.py")], cwd=project, check=True)


if __name__ == "__main__":
    unittest.main()
