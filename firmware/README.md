# 66EC RGB BLE 完整重建工程

这是可以独立构建的 Cortex-M0 工程，采用 C + GNU Thumb 汇编。`stock` 从源码生成全部 53,584 字节 APROM 更新镜像，再封装成原厂升级文件；镜像和升级文件均与提供的 V1.5.1 原件逐字节一致。正常构建只需要本目录源码、Python 依赖和 Arm GNU 工具链。

`src/rom.S` 包含完整指令、向量表、启动代码和 ROM 数据。普通指令使用汇编助记符；少量同义编码用带寄存器和立即数参数的宏保持原始编码。数据表使用 `.byte`。工程不使用 `.incbin`，也不在构建时读取原固件、Ghidra 工程或反编译导出。

原厂的 C 文件组织、变量名和注释无法从二进制中精确恢复。此工程提供完整可重建实现；大多数模块保留汇编，已重写并验证的扫描入口另提供 ARM C 实现。片上 LDROM 和外部蓝牙模块内部固件不在原更新文件内，需要使用设备已有的引导程序和无线模块。

## 构建

进入本源码目录；在原工作区中是 `firmware/`，源码压缩包解压后是 `niz-66ec-rebuild-src/`。推荐 Python 3.12 或更新版本。

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python setup_toolchain.py
.venv/bin/python build.py --variant stock
```

工具链固定为 [Arm GNU Toolchain 15.2.rel1](https://developer.arm.com/-/media/Files/downloads/gnu/15.2.rel1/binrel/arm-gnu-toolchain-15.2.rel1-darwin-arm64-arm-none-eabi.tar.xz)，下载地址和官方归档 SHA-256 保存在 `toolchain.lock.json`，安装脚本在解压前核对 SHA-256。默认安装在 `.tools/`，不会依赖本次分析使用的临时目录。

安装脚本针对本机 macOS arm64。其他系统可安装对应平台的 Arm GNU 15.2.rel1，通过 `build.py --toolchain /path/to/toolchain` 或环境变量 `NIZ_ARM_GNU` 指定安装目录或 `bin` 目录。跨平台编译和模拟尚未在本项目中实测。

如果已下载官方归档，可离线安装：

```sh
.venv/bin/python setup_toolchain.py --archive /path/to/arm-gnu-toolchain-15.2.rel1-darwin-arm64-arm-none-eabi.tar.xz
```

构建产物保存在 `build/stock/`：

| 文件 | 用途 |
| --- | --- |
| `66EC_RGB_BLE_stock_rebuilt.bin` | **给原厂升级软件选择的加密刷写包，177,576 字节** |
| `firmware.bin` | 未封装的 APROM 原始字节，53,584 字节 |
| `firmware.hex` | 标准 Intel HEX，供分析或兼容的编程器使用 |
| `firmware.elf` | 完整 ARM ELF，带函数和 ROM 地址标签 |
| `firmware.map`、`firmware.disassembly.txt` | 链接布局和反汇编 |
| `build.json`、`compiler.log` | 编译器、输出散列和构建诊断 |

原厂升级软件需要加密刷写包；`firmware.bin` 和标准 HEX 不是该软件接收的封装格式。直接编程器刷写还需要明确 MCU 料号、Flash 配置和 LDROM 保留方式，本工程未验证该路径。

## 验证及 C 模块版本

```sh
.venv/bin/python build.py --variant c_scan
.venv/bin/python check.py
.venv/bin/python verify_target.py
.venv/bin/python verify_update.py
.venv/bin/python release.py
```

`check.py` 独立解密两份升级包，检查每条 Intel HEX 校验和、DES 补零、连续地址、复位入口和 EEPROM 容量，再比较解出的全部字节与编译结果。`stock` 的镜像和封装还必须匹配固定的原件 SHA-256：

```text
APROM   8ecb2cef8172ca37a5e42a75b2748af6a8c930c174c5ae6c67776207d13fa43a
升级包  b5dca0a3de1f36778c4ce5deb41d019d95221f654ef783ff6b837553092397fa
```

`c_scan` 用 `src/scan.c` 替换完整的扫描记录处理入口。原镜像仅改动 `0x5E4C..0x5E53` 的八字节跳转桥，C 代码追加在 `0xD150`，其他原 ROM 字节保持一致。当前镜像 53,968 字节，无新增全局 RAM，函数静态栈使用 48 字节。原启动代码、IRQ、USB、UART、灯光、配置和更新代码均仍由完整汇编工程构建。

`verify_target.py` 在 Cortex-M0 模拟器中调用两个实际镜像的 `0x5E4C` 入口，比较每次调用后 `0x20000000..0x20003FFF` 的全部 16,384 字节全局 RAM，并检查 R4 至 R11 和 SP。当前通过 1,320 帧单键边界输入、2,048 个随机批次、256 个连续的全矩阵批次及空队列，共 16,599 条扫描记录。这些用例验证行为，尚不验证 ADC、中断并发和整机时序。

`verify_update.py` 执行镜像中真正的 DES、HEX 检查、页拆分、读回累加校验和完成标记逻辑，基线 3,352 条、C 版本 3,376 条记录全部接收成功。EEPROM 物理读写、指示灯、看门狗、USB 返回和最后的配置 Flash 操作采用模拟回调；错误注入验证校验和错误、地址乱序、读回失败和最终暂存校验失败。结果在 `build/update_verification.json`。

`release.py` 只发布已经通过上述检查的产物，生成 `dist/` 下的基线刷写包、实验版本、源码 ZIP、报告和 `SHA256SUMS`。它还会把实际源码 ZIP 解压到不含原始输入文件的临时目录，重新构建两个版本，逐字节检查镜像和升级包。

Unicorn 在 macOS 沙盒中分配 JIT 可执行内存可能失败；模拟校验需要允许在沙盒外运行，或在普通终端运行。以上脚本均不访问键盘。

## 刷写和实机验收

软件构建及封装闭环已完成，实机闭环尚未完成。本次只读 USB 枚举没有找到匹配的目标键盘，也没有进行 USB 更新、断电重启或功能验收。

1. 在可运行配套 `66EC(XRGB)Ble.exe` 的 Windows 机器上连接对应的 **66EC RGB BLE** 键盘，确认当前机型、版本，并保存需要保留的键位、宏及灯光配置。
2. 使用原厂软件的固件更新入口，选择 `dist/66EC_RGB_BLE_stock_rebuilt.bin` 或 `build/stock/` 下同名文件，按软件提示完成更新。该文件与提供的原厂刷写文件完全一致。
3. 更新完成后按原厂软件要求重启，读取固件版本，测试 66 个键、组合键及释放、RGB 各模式、USB/BLE 连接与切换、配置保存及断电重载。
4. 实机通过基线版本后，再验证实验 `c_scan` 的多键扫描、长时间运行和中断时序，记录恢复手段和结果。

配套 Windows 软件的具体界面、实际传输、LDROM 将 EEPROM 内容写回 APROM 的过程以及上述实机功能均待现场验证。`c_scan` 已通过 ARM 行为和更新暂存检查，硬件时序状态仍为未验证。

## 修改源码

原代码中存在绝对地址和回调指针，`rom.S` 中的 `.Lrom_XXXXXXXX` 标签以及链接后地址核对会阻止旧 ROM 布局被无意挪动。新函数可按扫描模块的方式追加，入口使用固定长度桥接；新增 `.data` 或 `.bss` 会使链接失败，必须先明确原 RAM 分配和启动初始化。

链接器另限制 APROM 容量及 EEPROM 暂存上限 `0xFFFC`，保留前四字节完成标记。任何改动都需要重建、重新解包检查和相关行为验证。修改后的版本不能继续使用 `stock` 的原件一致性结论；原厂提供的刷写文件可用于恢复原应用，LDROM 恢复方式需按实际硬件确认。
