#!/usr/bin/env python3
"""Package verified firmware and prove the actual source ZIP builds independently."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import zipfile

from check import verify

ROOT = Path(__file__).resolve().parent
SOURCE_FILES = ["README.md", "build.py", "check.py", "linker.ld", "package.py", "release.py",
                "requirements.txt", "setup_toolchain.py", "source_manifest.json", "toolchain.lock.json",
                "verify_target.py", "verify_update.py", "src/rom.S", "src/scan.c"]


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def main():
    checked = verify()
    target = json.loads((ROOT / "build/c_scan/target_verification.json").read_text())
    update = json.loads((ROOT / "build/update_verification.json").read_text())
    assert target["all_match"] and target["c_scan_sha256"] == checked["c_scan"]["image_sha256"], "Run verify_target.py for these images"
    assert update["all_passed"], "Run verify_update.py first"
    for variant in ("stock", "c_scan"):
        assert update[variant]["staged_image_sha256"] == checked[variant]["image_sha256"], "Staging report belongs to another image"
    dist = ROOT / "dist"
    dist.mkdir(exist_ok=True)
    (dist / "experimental").mkdir(exist_ok=True)
    source_zip = dist / "niz-66ec-rebuild-src.zip"
    source_hashes = {}
    with zipfile.ZipFile(source_zip, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for name in sorted(SOURCE_FILES):
            content = (ROOT / name).read_bytes()
            source_hashes[name] = sha256(content)
            info = zipfile.ZipInfo("niz-66ec-rebuild-src/" + name, date_time=(2026, 10, 4, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o100644 << 16
            archive.writestr(info, content, compresslevel=9)
    toolchain = json.loads((ROOT / "build/stock/build.json").read_text())["toolchain_bin"]
    independent = {"archive_sha256": sha256(source_zip.read_bytes()),
                   "original_input_files_present": False, "source_files_sha256": source_hashes,
                   "variants": {}}
    with tempfile.TemporaryDirectory(prefix="niz-source-zip-") as scratch:
        with zipfile.ZipFile(source_zip) as archive:
            archive.extractall(scratch)
        project = Path(scratch) / "niz-66ec-rebuild-src"
        assert not list(project.rglob("*.bin")), "Source archive contains a binary firmware"
        for variant in ("stock", "c_scan"):
            result = subprocess.run([sys.executable, str(project / "build.py"), "--variant", variant,
                                     "--toolchain", toolchain], cwd=project, capture_output=True, text=True)
            if result.returncode:
                raise RuntimeError("Independent source ZIP build failed:\n" + result.stdout + result.stderr)
            for name in ("firmware.bin", f"66EC_RGB_BLE_{variant}_rebuilt.bin"):
                assert (project / "build" / variant / name).read_bytes() == (ROOT / "build" / variant / name).read_bytes(), f"Independent {variant} {name} differs"
            independent["variants"][variant] = {"compiled_from_archive": True, "full_image_and_package_byte_identity": True,
                                                "image_sha256": checked[variant]["image_sha256"],
                                                "package_sha256": checked[variant]["package_sha256"]}
        subprocess.run([sys.executable, str(project / "check.py")], cwd=project, capture_output=True, check=True)
    (ROOT / "build/source_only_verification.json").write_text(json.dumps(independent, indent=2) + "\n")
    for variant in ("stock", "c_scan"):
        filename = f"66EC_RGB_BLE_{variant}_rebuilt.bin"
        target_path = dist / filename if variant == "stock" else dist / "experimental" / filename
        target_path.write_bytes((ROOT / "build" / variant / filename).read_bytes())
    report = {"file_and_build_closure_complete": True, "physical_hardware_closure_complete": False,
              "package_validation": checked, "source_archive_rebuild": independent,
              "arm_c_scan_comparison": target, "arm_update_receiver": update,
              "toolchain": json.loads((ROOT / "toolchain.lock.json").read_text()),
              "compiler": json.loads((ROOT / "build/stock/build.json").read_text())["compiler"],
              "hardware_status": {"matching_target_detected_by_read_only_usb_probe": False,
                                  "physical_usb_update_verified": False, "post_flash_reboot_verified": False,
                                  "keyboard_rgb_ble_functional_acceptance_verified": False}}
    acceptance = ROOT / "build/acceptance_suite.json"
    if acceptance.exists():
        report["acceptance_suite"] = json.loads(acceptance.read_text())
    (dist / "verification.json").write_text(json.dumps(report, indent=2) + "\n")
    (dist / "README.md").write_text(
        "# 66EC RGB BLE 重建固件交付\n\n"
        "原厂更新软件选择 `66EC_RGB_BLE_stock_rebuilt.bin`。该文件 177,576 字节，"
        "与提供的 V1.5.1 原厂升级包逐字节一致。完整可重建源码在 `niz-66ec-rebuild-src.zip`，"
        "解压后按其中 README 构建。\n\n"
        "基线镜像 53,584 字节，升级包 SHA-256：\n\n"
        "```text\n" + checked["stock"]["package_sha256"] + "\n```\n\n"
        "`experimental/` 下的 C 扫描版本已通过 ARM 差分与模拟更新检查，尚未验证实机时序。"
        "软件构建、封装和模拟暂存闭环完成；实机 USB 更新、LDROM 烧录、重启及键盘/RGB/BLE 验收未完成。"
        "本次只读 USB 查询未找到目标键盘。详细证据和验证边界见 `verification.json`。\n\n"
        "在 Windows 上连接对应 66EC RGB BLE 键盘，保存配置，然后通过配套原厂软件的固件更新入口选择基线包，"
        "按其提示完成更新及重启。机型、现有引导程序和恢复路径需按实际设备确认。\n",
        encoding="utf-8")
    output_files = [dist / "66EC_RGB_BLE_stock_rebuilt.bin", dist / "experimental/66EC_RGB_BLE_c_scan_rebuilt.bin",
                    source_zip, dist / "verification.json", dist / "README.md"]
    (dist / "SHA256SUMS").write_text("".join(sha256(path.read_bytes()) + "  " + str(path.relative_to(dist)) + "\n"
                                            for path in output_files))
    print(json.dumps({"dist": str(dist), "source_zip_rebuild_passed": True,
                      "stock_package_byte_identical": True, "hardware_verified": False}, indent=2))


if __name__ == "__main__":
    main()
