# NiZ 66EC RGB BLE Firmware

NiZ 66EC RGB BLE 键盘固件的逆向分析与可复现重建工程，基于原厂 **V1.5.1（2023-05-20）** 更新文件，提供 C + Thumb 汇编源码、离线分析工具、协议文档和验证脚本。

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
![Python: 3.12+](https://img.shields.io/badge/Python-3.12%2B-blue.svg)
![Hardware: Unverified](https://img.shields.io/badge/Hardware-Unverified-orange.svg)

> [!WARNING]
> 项目已完成软件构建、封装和模拟验证，**尚未完成实机刷写及键盘、RGB、BLE 功能验收**。使用前请阅读[免责声明](DISCLAIMER.md)。MIT 许可证仅适用于本项目原创内容，第三方材料的授权范围见[许可证](#许可证)。

## 目录

- [功能](#功能)
- [环境要求](#环境要求)
- [快速开始](#快速开始)
- [验证状态](#验证状态)
- [刷写说明](#刷写说明)
- [项目结构](#项目结构)
- [文档导航](#文档导航)
- [贡献与反馈](#贡献与反馈)
- [许可证](#许可证)
- [免责声明](#免责声明)

## 功能

- **可复现构建**：从源码生成完整 APROM 镜像和原厂格式更新包；基线镜像为 53,584 字节，更新包为 177,576 字节，均与所提供的原件逐字节一致。
- **可编辑实现**：完整指令与 ROM 数据保存在 GNU Thumb 汇编中，扫描记录处理入口另提供可链接的 ARM C 实现。
- **离线分析**：解包 DES 封装的 Intel HEX，提取键位表、RGB 默认值、USB 描述符和固件元数据。
- **逆向资料**：保留固件与 HWI DLL 的反编译伪代码、函数索引、调用关系，以及 HID、UART 和更新流程说明。
- **自动验证**：检查构建产物、封装格式、ARM 扫描行为、模拟更新接收流程和独立源码包的重建结果。

工程提供两个构建版本：

| 版本 | 实现 | 当前状态 |
| --- | --- | --- |
| `stock` | 完整汇编重建原厂程序 | 镜像与更新包均与 V1.5.1 原件逐字节一致；实机未验证 |
| `c_scan` | 用 C 实现替换扫描处理入口，其余程序保持原有实现 | 已通过 ARM 行为对照与模拟更新验证；实机时序未验证 |

原厂 C 文件结构、变量名和注释无法从二进制中精确恢复。反编译生成的 C 伪代码供阅读和分析使用，不能直接作为构建输入。片上 LDROM 和外部蓝牙模块内部固件不在本项目所分析的更新镜像内。

## 环境要求

| 依赖 | 要求 |
| --- | --- |
| Python | 推荐 3.12 或更新版本 |
| Python 包 | 版本固定于 [requirements.txt](requirements.txt) |
| Arm GNU Toolchain | 固定为 15.2.rel1，目标为 `arm-none-eabi` |
| 操作系统 | 已验证 macOS arm64；其他平台的构建与模拟尚未实测 |
| Clang | 复现 `scripts/verify_recovery.py` 的扫描算法对照时需要 |
| Ghidra | 可选；用于重新分析和导出，已有工程使用 12.1.4 |

工具链安装脚本针对 macOS arm64，下载地址和 SHA-256 固定于 [toolchain.lock.json](firmware/toolchain.lock.json)。其他平台需自行安装对应平台的 Arm GNU 15.2.rel1，并通过 `--toolchain` 或环境变量 `NIZ_ARM_GNU` 指定工具链安装目录或 `bin` 目录。

## 快速开始

获取仓库后，在仓库根目录执行以下命令。以下路径写法适用于 macOS；Windows 虚拟环境中的 Python 路径为 `.venv\Scripts\python.exe`。

### 安装依赖与构建

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python firmware/setup_toolchain.py
.venv/bin/python firmware/build.py --variant stock
.venv/bin/python firmware/build.py --variant c_scan
```

正常构建只读取重建工程源码，不需要原始固件、DLL 或 Ghidra 输出。构建过程和下述验证脚本均不访问键盘。

### 验证并生成交付包

```sh
.venv/bin/python firmware/check.py
.venv/bin/python -m unittest discover -s tests -p 'test_firmware_build.py' -v
.venv/bin/python firmware/release.py
```

测试会重新构建两个版本，执行 ARM 扫描对照和模拟更新验证，并检查在独立源码目录中的重建结果。`release.py` 依赖这些验证报告，还会实际解压生成的源码 ZIP，再次构建并比较产物。

在 macOS 沙盒中，Unicorn 的 JIT 可执行内存分配可能受限；遇到相关错误时，可在普通终端中运行模拟验证。工具链离线安装及单项验证命令见[构建工程说明](firmware/README.md)。

| 生成路径 | 用途 |
| --- | --- |
| `firmware/build/stock/66EC_RGB_BLE_stock_rebuilt.bin` | 基线版本的原厂格式加密更新包 |
| `firmware/build/stock/firmware.bin` | 未封装的 APROM 镜像，供分析使用 |
| `firmware/build/stock/firmware.elf` | 带函数和地址标签的 ARM ELF |
| `firmware/dist/66EC_RGB_BLE_stock_rebuilt.bin` | 验证后汇总的基线更新包 |
| `firmware/dist/experimental/66EC_RGB_BLE_c_scan_rebuilt.bin` | 实验 C 扫描版本更新包 |
| `firmware/dist/niz-66ec-rebuild-src.zip` | 可独立构建的源码包，不含原始固件二进制或 DLL |
| `firmware/dist/verification.json`、`firmware/dist/SHA256SUMS` | 验证报告与交付文件的散列值 |

工具链、虚拟环境、`firmware/build/` 和 `firmware/dist/` 等本地产物不纳入 Git，需要按上述步骤生成。

### 复现逆向分析

完成依赖安装后，可在仓库根目录执行：

```sh
.venv/bin/python scripts/decode_firmware.py
.venv/bin/python scripts/inspect_firmware.py
.venv/bin/python scripts/verify_recovery.py
```

这组命令读取仓库内的原始输入，生成解密镜像和表格，并使用 Unicorn 与 Clang 对照原始 ARM/x86 指令。若需重新建立 Ghidra 工程和导出分析结果，使用本地 Ghidra 安装路径：

```sh
.venv/bin/python scripts/run_ghidra.py /path/to/ghidra_12.1.4_PUBLIC
```

## 验证状态

下表汇总已有验证结果；可通过上述命令重新生成构建和交付报告。

| 检查项 | 已有结果 |
| --- | --- |
| 基线构建与封装 | 完整镜像、原厂格式更新包均与原件逐字节一致 |
| 构建验收 | 5 项测试通过，覆盖完整构建、封装、扫描对照、模拟更新及独立源码构建 |
| ARM C 扫描对照 | 比较 16,599 条扫描记录，每次调用后全部 16 KB 全局 RAM、R4 至 R11 和 SP 一致 |
| 模拟更新接收 | `stock` 的 3,352 条记录与 `c_scan` 的 3,376 条记录全部通过；四类错误注入按预期拒绝更新 |
| 离线算法与主机协议 | DES、扫描算法、ADC/行选择及 Windows HWI 更新载荷对照通过 |
| Mac 升级工具 | V1.2 的设备筛选、文件格式与更新协议已静态分析；实际运行未验证 |
| 实机验收 | USB 更新、LDROM 写回、重启、按键、RGB 和 BLE 功能均未验证 |

模拟验证不覆盖完整硬件时序、中断并发或所有可能输入。详细边界见[构建工程说明](firmware/README.md)和[逆向分析说明](recovered/REVERSE_ENGINEERING.md)。

## 刷写说明

原厂升级软件应选择 **`66EC_RGB_BLE_stock_rebuilt.bin`**。`firmware.bin` 和标准 Intel HEX 不属于该软件接受的加密封装格式。

配套 Windows 工具为 `66EC(XRGB)Ble.exe`；Mac 工具为另行提供的 `MAC键盘固件升级V1.2.dmg` 中的升级应用，未包含在本仓库内。Mac 应用为 Intel 版本，在 Apple Silicon 上运行依赖 Rosetta。

操作前应确认键盘型号、硬件版本、现有引导程序和恢复方法，并备份需要保留的配置。完整操作步骤见[刷写和实机验收](firmware/README.md#刷写和实机验收)。实验 `c_scan` 版本仍需进行多键扫描、长时间运行和中断时序的实机验证。

## 项目结构

```text
.
├── README.md                 # 项目入口
├── LICENSE                   # MIT 许可证
├── DISCLAIMER.md             # 免责声明与第三方材料说明
├── firmware/                 # 可独立构建的 C + 汇编工程
│   ├── src/rom.S             # 完整指令与 ROM 数据
│   ├── src/scan.c            # ARM C 扫描处理实现
│   └── README.md             # 构建、验证、修改和刷写说明
├── scripts/                  # 解包、协议、分析及 Ghidra 导出工具
├── tests/                    # 构建验收测试
├── recovered/                # 逆向结果、协议文档和可读算法
│   ├── firmware/             # 固件伪代码、索引和提取表格
│   ├── host/                 # HWI DLL 伪代码和分析结果
│   └── readable/             # 人工整理的扫描算法和数据表
├── analysis/                 # 标注、参考资料和验证记录
└── requirements.txt          # 分析与验证工具的 Python 依赖
```

仓库根目录另保留原厂 V1.5.1 更新文件、Windows 升级程序和两份 DLL，作为分析输入。

## 文档导航

| 文档或源码 | 内容 |
| --- | --- |
| [构建工程说明](firmware/README.md) | 工具链安装、构建、单项验证、修改源码与刷写步骤 |
| [逆向分析说明](recovered/REVERSE_ENGINEERING.md) | 模块入口、地址布局、恢复范围和分析限制 |
| [通信协议](recovered/PROTOCOL.md) | HID 封装、配置命令、UART 帧和更新流程 |
| [Mac 工具兼容性记录](firmware/mac_updater_compatibility.json) | 设备筛选、格式和更新载荷的静态分析证据 |
| [固件函数索引](recovered/firmware/decompiled/functions.tsv) | 固件函数的地址、名称、大小和推断签名 |
| [默认键位表](recovered/firmware/tables/default_keymap.csv) | 扫描位置、物理键编号和内置内部键码 |
| [可读扫描算法](recovered/readable/key_scan.c) | 人工整理的扫描过滤和消抖算法摘录 |
| [离线校验记录](analysis/verification/results.json) | 原始 ARM/x86 指令的算法与协议对照结果 |

## 贡献与反馈

欢迎通过 GitHub Issues 报告问题或提出改进建议，也欢迎提交 Pull Request。维护者为 `cbingb666`。

- 报告问题时，请提供键盘型号、硬件与固件版本、操作系统、复现步骤和相关日志。
- 修改构建或固件实现后，请运行相关校验和验收测试，并说明预期行为及验证范围。
- 提交逆向结论时，请给出对应地址、指令或协议记录，区分已验证结果与推断。
- 提交实机反馈时，请注明具体构建版本、测试条件、恢复方法和功能验收结果。

## 许可证

本项目作者原创的工具、代码和文档采用 [MIT License](LICENSE)。使用、修改或分发这些内容时，应保留许可证要求的版权及许可声明。

MIT 授权**不涵盖**原厂固件、升级程序、DLL，以及保留原厂内容的解密镜像、反汇编、反编译伪代码、ROM 数据、重建汇编与更新包。第三方参考代码和依赖仍遵循各自许可证；本仓库的 MIT 声明不代表取得了这些材料的再授权或再分发许可。具体范围见[第三方材料与授权范围](DISCLAIMER.md#第三方材料与授权范围)。

## 免责声明

本项目的开发与研究仅用于个人实验目的，旨在探索固件功能与实现方式，拓展自有硬件的可玩性。此表述说明项目初衷，原创内容的使用与分发仍遵循 MIT 许可证。

本项目是独立的固件研究与重建项目，未获得 NiZ 或相关厂商的官方认可、支持或背书。项目按现状提供，不保证准确性、完整性或特定硬件上的适用性。

修改、刷写或运行固件可能导致设备无法启动、配置丢失、功能异常或保修受影响。现有软件与模拟校验不构成实机安全性保证；在适用法律允许的范围内，作者和贡献者不对使用本项目造成的损失承担责任。

使用者应自行确认相关设备及第三方材料的使用权限，并评估操作风险。完整说明见 [DISCLAIMER.md](DISCLAIMER.md)。
