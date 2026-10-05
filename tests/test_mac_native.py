"""Offline acceptance for native Mac HID output and stock compatibility."""
from pathlib import Path
import subprocess
import sys
import tempfile
import shutil
import json
import unittest

ROOT = Path(__file__).resolve().parents[1]

class MacNativeTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        for variant in ('stock', 'mac_native'):
            subprocess.run([sys.executable, str(ROOT/'firmware/build.py'), '--variant', variant], check=True)

    def test_actual_arm_reports_dispatch_descriptors_and_update_transactions(self):
        subprocess.run([sys.executable, str(ROOT/'firmware/verify_mac_native.py')], check=True)

    def test_native_package_builds_without_original_inputs(self):
        info = json.loads((ROOT/'firmware/build/mac_native/build.json').read_text())
        with tempfile.TemporaryDirectory(prefix='niz-mac-source-') as scratch:
            project = Path(scratch)/'firmware'
            shutil.copytree(ROOT/'firmware', project,
                ignore=shutil.ignore_patterns('build', 'dist', '.tools', '__pycache__'))
            self.assertEqual(list(project.rglob('*.bin')), [])
            subprocess.run([sys.executable, str(project/'build.py'), '--variant', 'mac_native',
                            '--toolchain', info['toolchain_bin']], check=True)
            for name in ('firmware.bin', info['update_package']):
                self.assertEqual((project/'build/mac_native'/name).read_bytes(),
                                 (ROOT/'firmware/build/mac_native'/name).read_bytes())

if __name__ == '__main__': unittest.main()
