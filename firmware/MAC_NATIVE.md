# Experimental native Mac system keys

**English** · [简体中文](MAC_NATIVE.zh-CN.md)

Target: 66EC RGB BLE, stock V1.5.1, USB configuration identity `0483:542A`. The separate `mac_native` build reports `66EC(RGB)BLe;V1.5.1-F.1;V1.0;`. It emits native HID reports; it does not synthesize system shortcuts.

`V1.5.1-F.1` identifies the stock base (`1.5.1`), the user-selected custom marker (`F`) and its revision (`1`). Subsequent custom builds increment the final revision. The hardware field remains `V1.0`. Build metadata in `mac_native_version.json` generates both the wire version and versioned package filename. The longer string lives in appended ROM, with the F9 version pointer redirected; the original fixed ROM tables stay in place. ARM acceptance checks the complete 64-byte F9 response, including termination and padding.

## Mapping

| Action | NIZ internal code | Native USB usage page / usage |
| --- | --- | --- |
| Display brightness down / up | 208 / 209 | Consumer `0x0C / 0x70`, `0x0C / 0x6F` (stock) |
| Mission Control | 222 | Consumer `0x0C / 0x29F` |
| Launchpad | 223 | Consumer `0x0C / 0x2A0` |
| Spotlight | 224 | Consumer `0x0C / 0x221` |
| Dictation | 225 | Consumer `0x0C / 0xCF` |
| Do Not Disturb | 226 | Generic Desktop `0x01 / 0x9B` |
| System keyboard illumination down / up | 227 / 228 | Apple TopCase `0x00FF / 9`, `0x00FF / 8` |
| Rewind / fast forward | 229 / 230 | Consumer `0x0C / 0xB4`, `0x0C / 0xB3` |
| Play/pause, mute, volume up/down | 111 / 112 / 113 / 114 | Consumer `0xCD / 0xE2 / 0xE9 / 0xEA` (stock) |
| Mac Fn | 207 | Apple TopCase `0x00FF / 3` (stock Mac mode) |

Ordinary F1–F12 and NIZ layer Fn 156/166 retain their meanings. Next/previous track 108/109 remain separate from held rewind/fast forward. NIZ RGB brightness 144/145 controls this keyboard, not the Mac's built-in backlight.

The legacy Mac row can use 208, 209, 222, 223, 227, 228, 229, 111, 230, 112, 114, 113. A modern row replaces F4–F6 with 224, 225, 226. The app does not overwrite a row automatically; assign the desired codes to the appropriate keys/layer.

## Build and checks

Using the Python environment and pinned Arm GNU toolchain from the main firmware instructions:

```sh
.venv/bin/python firmware/build.py --variant mac_native
.venv/bin/python -m unittest discover -s tests -p test_mac_native.py -v
```

Each successful compile automatically writes the updater package to `firmware/dist/experimental/66EC_RGB_BLE_V1.5.1-F.1.bin`, alongside its `.build.json` and `SHA256SUMS`. A `.verification.json` is included only when an existing ARM report matches the exact image and package hashes. `build/mac_native/` holds compiler working outputs and validation copies; no manual copy or release command is needed. The build independently decodes the encrypted package before writing dist outputs. The project-root `dist/` belongs to the web app. Raw `firmware.bin` is an analysis image, not an updater input. The native package is 179,378 bytes / 3,386 records, SHA-256 `a3add2fd899bc4c2f8c04855bfe6c2920cfe4909752698a99930992385a9e561`.

The variant adds two fixed eight-byte entry bridges, extends direct-action dispatch, appends code and a 216-byte report descriptor, and updates both configuration descriptors and the startup report pointer/length. Existing report layouts remain intact: Consumer ID 1 extends its maximum to `0x2A0`; new ID 5 carries DND and ID 6 carries the two Apple illumination bits. New USB presses retain the stock remote-wakeup sequence. No new global RAM is allocated. The stock image and encrypted package still match their original SHA-256 values.

Offline acceptance executes the real ARM USB/BLE entries, native press/release events and matrix dispatch, compares 576 legacy press/release cases, validates descriptor pointers/lengths and the complete encrypted package, tests the update receiver in both stock-to-Mac and Mac-to-stock directions plus error injection, and rebuilds the package from a source-only copy. USB sends, UART sends, EEPROM and other physical callbacks are simulated. These checks do not qualify hardware timing, APROM installation, system actions or physical recovery.

## Mac mode and remaining limits

The stock Mac initializer at `0x68E8` already changes USB VID/PID to `05AC:0220`, selects the Mac keyboard descriptor and removes the configuration interface. This variant preserves that existing behavior. Local macOS 27.0 `AppleHIDKeyboard.kext` metadata (9070.3) contains a matching wired-keyboard personality with `FnModifierUsagePage=255` / `FnModifierUsage=3`. This is static driver evidence, not proof of actual binding or Globe behavior. Apple vendor Fn/illumination recognition still needs hardware validation in Mac mode. Configuration and flashing require the original Win/configuration mode; see the [web usage guide](../../docs/usage.md).

Consumer actions use [QMK's standard native mappings](https://github.com/qmk/qmk_firmware/blob/master/tmk_core/protocol/report.h). [ZSA's first-party macOS testing](https://blog.zsa.io/2212-macos-keycodes/) supports the Spotlight/Dictation/DND approach, but does not validate ATOM66 or every macOS release. Launchpad behavior differs across macOS versions and requires testing.

The external BLE module's firmware and descriptor are not recovered. Consumer actions and candidate standard backlight usages are forwarded using the existing UART consumer frame; receiving them is not proven. BLE DND is deliberately unsupported because no valid module report is known. Apple illumination and Fn/Globe effects over BLE are unverified. USB results must not be presented as Bluetooth results.

The web app accepts only this exact native package and the pinned stock package. It retains the pre-flash fresh configuration/lighting/count backup transaction and read/write locks. Flashing invalidates the configuration baseline; explicitly reconnect/read after the operation. Configurations remain version-owned: a stock-version JSON is not automatically converted into V1.5.1-F.1. No hardware flashing, reboot, restoration or recovery qualification has been performed.
