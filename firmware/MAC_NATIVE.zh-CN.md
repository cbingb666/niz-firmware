# Mac 原生系统键实验固件

[English](MAC_NATIVE.md) · **简体中文**

目标为 66EC RGB BLE 原厂 V1.5.1，配置 USB 身份 `0483:542A`。独立 `mac_native` 构建报告 `66EC(RGB)BLe;V1.5.1-F.1;V1.0;`。使用原生 HID 报告，不合成系统快捷键。

`V1.5.1-F.1` 分别表示原厂基线 `1.5.1`、用户指定的自定义标识 `F` 和修订号 `1`。后续自定义构建递增末尾修订号。硬件字段保留 `V1.0`。`mac_native_version.json` 生成设备版本和带版本号的文件名；较长字符串放在追加 ROM 中，F9 指针改为指向新字符串，原固定 ROM 表不挪动。ARM 验收检查完整 64 字节 F9 响应、结束符和补零。

## 映射

| 功能 | NIZ 内部码 | 原生 USB 用途页 / 用途码 |
| --- | --- | --- |
| 屏幕亮度降低 / 提高 | 208 / 209 | Consumer `0x0C / 0x70`、`0x0C / 0x6F`（原厂） |
| 调度中心 | 222 | Consumer `0x0C / 0x29F` |
| Launchpad | 223 | Consumer `0x0C / 0x2A0` |
| Spotlight | 224 | Consumer `0x0C / 0x221` |
| 听写 | 225 | Consumer `0x0C / 0xCF` |
| 勿扰 | 226 | Generic Desktop `0x01 / 0x9B` |
| 系统键盘背光降低 / 提高 | 227 / 228 | Apple TopCase `0x00FF / 9`、`0x00FF / 8` |
| 快退 / 快进 | 229 / 230 | Consumer `0x0C / 0xB4`、`0x0C / 0xB3` |
| 播放、静音、音量提高 / 降低 | 111 / 112 / 113 / 114 | Consumer `0xCD / 0xE2 / 0xE9 / 0xEA`（原厂） |
| Mac Fn | 207 | Apple TopCase `0x00FF / 3`（原厂 Mac 模式） |

普通 F1–F12 和 NIZ 层 Fn 156/166 保持原有含义。下一曲/上一曲 108/109 与按住快退/快进分开。144/145 调节 NIZ 自身 RGB 亮度，不控制 Mac 内置背光。

旧版 Mac 顶排可依次使用 208、209、222、223、227、228、229、111、230、112、114、113；现代顶排把 F4–F6 换成 224、225、226。网页不会自动覆盖整排；请将所需码分配到对应键位或层。

## 构建与检查

按原有说明准备 Python 环境和固定 Arm GNU 工具链：

```sh
.venv/bin/python firmware/build.py --variant mac_native
.venv/bin/python -m unittest discover -s tests -p test_mac_native.py -v
```

每次成功编译会自动生成升级包 `firmware/dist/experimental/66EC_RGB_BLE_V1.5.1-F.1.bin`，同目录提供 `.build.json` 和 `SHA256SUMS`；只有已有 ARM 报告与镜像及包的哈希一致时，才附带 `.verification.json`。`build/mac_native/` 保留编译工作文件和验证副本，不需要手动复制或另跑交付命令。写入 dist 前独立解密核对完整包格式；项目根目录 `dist/` 属于网页应用。原始 `firmware.bin` 仅用于分析。升级包为 179,378 字节、3,386 条记录，SHA-256 为 `a3add2fd899bc4c2f8c04855bfe6c2920cfe4909752698a99930992385a9e561`。

变体添加两个固定八字节入口桥，扩展直接动作分派，追加代码和 216 字节报告描述符，并更新两份配置描述符及启动报告指针/长度。已有报告布局保持不变：Consumer ID 1 最大用途扩到 `0x2A0`；新 ID 5 表示勿扰，ID 6 表示 Apple 背光两位。新增 USB 按下事件保留原厂远程唤醒流程，不新增全局 RAM。stock 镜像和加密包仍与原始 SHA-256 相符。

离线验收执行真实 ARM USB/BLE 入口、原生按下/释放和矩阵分派，对照 576 个原有按下/释放案例，核对描述符指针/长度及完整加密包，模拟原厂到 Mac、Mac 到原厂的更新接收与错误注入，并在不含原始输入的源码副本中重建。USB、UART、EEPROM 等物理回调被模拟；这些检查不能证明实机时序、APROM 安装、系统动作或物理恢复。

## Mac 模式与待验证项

原厂 `0x68E8` 初始化函数已有切换 `05AC:0220` USB 身份、选用 Mac 描述符及移除配置接口的行为，变体保留它。本机 macOS 27.0 的 `AppleHIDKeyboard.kext` 元数据（9070.3）存在匹配的有线键盘配置，Fn 用途为页 255 / 用途 3。这是静态驱动证据，不是实际绑定或 🌐 行为证明。Apple Fn/背光仍需在 Mac 模式实机验证。配置和刷写使用原厂 Win/配置模式，参见[网页使用说明](../../docs/usage.zh-CN.md)。

Consumer 动作参考 [QMK 原生映射](https://github.com/qmk/qmk_firmware/blob/master/tmk_core/protocol/report.h)。[ZSA 官方 macOS 实测](https://blog.zsa.io/2212-macos-keycodes/)支持 Spotlight、听写、勿扰的实现方向，但不代表 ATOM66 或所有 macOS 版本通过。Launchpad 在不同 macOS 版本中的行为需要实测。

独立 BLE 模块的固件和描述符尚未恢复。Consumer 动作及候选标准背光码通过原厂 UART Consumer 帧转发，不能证明模块会接收。勿扰没有已知有效模块报告，因此蓝牙不支持该项；Apple 背光及 Fn/🌐 的蓝牙效果也未验证。不能将 USB 结果当成蓝牙结果。

网页仅接受此精确 Mac 包及固定的原厂包，保留刷写前新读完整配置、灯光、计数并持久化备份的事务与页面锁定。刷写使配置基线失效，结束后主动重新连接/读取。配置仍按固件版本归属：原厂 JSON 不会自动转换为 V1.5.1-F.1。本次没有实际刷写、重启、回退或恢复验收。
