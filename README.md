# NIZ 66EC RGB BLE 固件逆向结果

已完成整个 APROM 更新镜像的 C + 汇编重建工程。基线版本从源码交叉编译得到的 53,584 字节镜像，以及重新生成的 177,576 字节原厂格式刷写包，均与原件逐字节一致。源码 ZIP 已在不含原固件、DLL 或 Ghidra 输出的独立目录中重新构建验证。原始四个输入文件保持不变。

整体程序保留可编辑 Thumb 汇编和 ROM 数据，完整扫描处理入口另提供可链接的 ARM C 版本。原厂 C 文件组织、变量名和注释无法精确恢复；原有自动 C 伪代码仍用于阅读，不能直接作为编译输入。当前原厂格式基线包可以交给配套升级软件，实机刷写、LDROM 写回及 USB/RGB/BLE 验收尚未完成；本次只读 USB 枚举未发现匹配的目标键盘。

## 从哪些文件开始阅读

| 产物 | 用途 |
| --- | --- |
| [完整构建工程](firmware/README.md) | C + 汇编源码、工具链安装、独立构建、验证和刷写说明 |
| [基线刷写包](firmware/dist/66EC_RGB_BLE_stock_rebuilt.bin) | 原厂加密封装，与提供的 V1.5.1 刷写文件逐字节一致 |
| [独立源码 ZIP](firmware/dist/niz-66ec-rebuild-src.zip) | 不包含原固件；解压即可安装工具链并重建 |
| [完整验证报告](firmware/dist/verification.json) | 整镜像、封装、实际源码 ZIP 重建、ARM C 对照和模拟更新结果 |
| [Mac 升级工具兼容性](firmware/mac_updater_compatibility.json) | V1.2 应用的设备筛选、固件格式、HID 协议及 3,352 条有效载荷对照 |
| [完整汇编源码](firmware/src/rom.S) | 包含所有原程序指令和数据；正常构建不读取原二进制 |
| [ARM C 扫描模块](firmware/src/scan.c) | 完整队列处理入口，实际链接进 `c_scan` 实验版本 |
| [全部固件函数](recovered/firmware/decompiled/all_functions.c) | 完整 C 伪代码入口，按 ROM 地址排列 |
| [主循环](recovered/firmware/decompiled/functions/0000b490_main.c) | 调度扫描、报告、配置读取和低功耗状态 |
| [可编译扫描算法](recovered/readable/key_scan.c) | 人工整理的扫描过滤和消抖算法摘录，已与原始指令对比 |
| [模块和地址说明](recovered/REVERSE_ENGINEERING.md) | 主要入口、存储布局和恢复范围 |
| [通信协议](recovered/PROTOCOL.md) | HID 封装、配置命令、UART 帧和更新流程 |
| [默认键位表](recovered/firmware/tables/default_keymap.csv) | 扫描位置、物理键编号和三个内置内部键码 |
| [函数索引](recovered/firmware/decompiled/functions.tsv) | 264 个地址、名称、大小和推断签名 |
| [Ghidra 汇编清单](recovered/firmware/decompiled/listing.asm) | 核查 C 伪代码；尾部含误识别数据，构建源码已修正分类 |
| [解密镜像](recovered/firmware/firmware.bin) | 地址 0 至 0xD14F 的连续字节 |
| [标准 Intel HEX](recovered/firmware/firmware.hex) | 保留原始记录地址和校验和 |
| [HWI DLL 伪代码](recovered/host/decompiled/all_functions.c) | PC 端打包、流式配置读取和更新发送逻辑 |
| [校验结果](analysis/verification/results.json) | ARM 和 x86 原始指令的交叉验证结果 |

每个函数还有独立的 `.c` 文件。`callgraph.tsv`、`references.tsv`、`symbols.tsv` 和 `memory_map.tsv` 保留调用关系、引用、符号和地址空间信息。

## 已验证的结果

- 五项构建验收测试全部通过。完整基线镜像及升级包与原件一致；实际源码 ZIP 可独立生成两个版本的相同镜像和升级包。
- `c_scan` 在 ARM Cortex-M0 中与原代码对比 16,599 条扫描记录，每次调用后的全部 16 KB 全局 RAM、R4 至 R11 和 SP 一致。原 ROM 仅修改八字节入口桥，追加 384 字节 C 代码。
- 两个重建镜像的原始更新函数分别接收全部 3,352 / 3,376 条记录，验证模拟 EEPROM 中的完整镜像、页边界、读回校验、累计和及完成标记；四类错误注入均按预期拒绝更新。
- 全部 3,352 条解密记录通过 Intel HEX 校验；重新封装与原始 177,576 字节文件逐字节一致。
- 用固件中 `0x00007ECC` 的 DES 函数模拟执行，10,051 个数据块全部与独立解密器一致。
- `key_scan.c` 与 `0x00005E4C` 的原始 ARM 指令比较了 66 个键、两种 RGB 状态、共 1,320 帧阈值和消抖情况；事件、计数器和按下位图一致。这是指定用例的验证，不是对所有可能输入的等价证明。
- 验证六个 ADC 列入口和十一种行选择状态；模拟了 HWI DLL 的原始 x86 解析函数，全部 3,352 个 HID 更新载荷与离线编码器一致。
- 用户提供的 Mac 升级工具 V1.2 已静态确认设备筛选和更新协议匹配；按实际代码转换全部 3,352 条基线记录，有效载荷与已验证的 Windows 编码器一致。尚未运行该应用或进行实机更新。
- 固件 264 个函数和 DLL 307 个函数均成功生成伪代码。主循环等三处 ARMCC 分支表已人工修正，两处函数内长跳转也已修正，避免把按键处理循环拆成假函数。

以上模拟校验没有写入键盘。软件构建和封装闭环已完成，实机 USB 传输、LDROM 烧录、整机时序、重启及无线功能仍需接入对应设备验收。详细步骤和当前边界见 [构建工程说明](firmware/README.md)。

## 构建刷写包

Git 保留四份原始输入、重建源码、静态分析结果和说明；本地工具链、虚拟环境、构建及交付目录、Ghidra 数据库和运行日志由 `.gitignore` 排除。检出仓库后，按以下步骤重新生成构建和交付产物。

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python firmware/setup_toolchain.py
.venv/bin/python firmware/build.py --variant stock
.venv/bin/python firmware/build.py --variant c_scan
.venv/bin/python firmware/check.py
.venv/bin/python -m unittest discover -s tests -p 'test_firmware_build.py' -v
.venv/bin/python firmware/release.py
```

使用原厂升级软件时选择 `firmware/dist/66EC_RGB_BLE_stock_rebuilt.bin`。`build/stock/firmware.bin` 是未封装镜像。实验 C 版本位于 `firmware/dist/experimental/`，硬件时序尚未验证。工具链固定为 Arm GNU 15.2.rel1；Python、工具链和跨平台安装说明见 `firmware/README.md`。

Windows 可使用目录内配套的 `66EC(XRGB)Ble.exe`；Mac 可使用用户提供的 `MAC键盘固件升级V1.2.dmg`，其文件格式和更新协议与基线包匹配。Mac 应用是 Intel 版本，Apple Silicon 依赖 Rosetta。具体使用步骤与验证边界见 [刷写说明](firmware/README.md#刷写和实机验收)。

## 复现解包和算法校验

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python scripts/decode_firmware.py
.venv/bin/python scripts/inspect_firmware.py
.venv/bin/python scripts/verify_recovery.py
```

最后一个脚本使用 Unicorn 模拟原始 ARM/x86 指令，并调用本机 `clang` 编译扫描算法。在 macOS 沙盒中，JIT 分配执行内存可能需要单独允许在沙盒外运行。

## 继续在 Ghidra 中分析

本机工程保存在 `analysis/ghidra-project/NizFirmware.gpr` 和 `analysis/ghidra-project/NizHWI.gpr`，可使用 Ghidra 12.1.4 或兼容版本打开。该目录不纳入 Git；使用本地 Ghidra 安装重新创建工程并导出：

```sh
.venv/bin/python scripts/run_ghidra.py /path/to/ghidra_12.1.4_PUBLIC
```

本次工具来自 [Ghidra 官方 12.1.4 发布包](https://github.com/NationalSecurityAgency/ghidra/releases/tag/Ghidra_12.1.4_build)，下载后核对了官方 SHA-256 `ddac49f903da9d5bac833e5cc79395098b9c33cfd3279be5f31bd00387d2d4db`。macOS ARM64 的原生反编译组件按发布包提供的 C++ 源码在本机编译；其他机器可参照 [官方原生组件构建说明](https://github.com/NationalSecurityAgency/ghidra/blob/Ghidra_12.1.4_build/GhidraDocs/GettingStarted.md#building-native-components)。本次临时安装目录为 `/tmp/niz-ghidra-tools/ghidra_12.1.4_PUBLIC`，系统清理临时目录后需使用自己的安装。
