#!/usr/bin/env python3
"""Compare the ARM-compiled scan variant with the byte-identical stock oracle.

Runs both complete firmware images at their real scan entry, observes global RAM
and the callee-saved registers, and never opens a device.
"""
import hashlib
import json
from pathlib import Path
import random
import struct

from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_MODE_MCLASS
from unicorn.arm_const import (
    UC_CPU_ARM_CORTEX_M0, UC_ARM_REG_PC, UC_ARM_REG_SP, UC_ARM_REG_LR,
    UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7,
    UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11,
)

ROOT = Path(__file__).resolve().parent
ORIGINAL_SHA256 = "8ecb2cef8172ca37a5e42a75b2748af6a8c930c174c5ae6c67776207d13fa43a"
CALLEE_REGS = [UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7,
               UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11]


class Target:
    def __init__(self, image):
        self.machine = Uc(UC_ARCH_ARM, UC_MODE_THUMB | UC_MODE_MCLASS)
        self.machine.ctl_set_cpu_model(UC_CPU_ARM_CORTEX_M0)
        self.machine.mem_map(0,0x11000)
        self.machine.mem_write(0,image)
        self.machine.mem_map(0x20000000,0x5000)

    def load(self, ram):
        self.machine.mem_write(0x20000000,bytes(ram))

    def call(self):
        expected = [0x12340000+i for i in range(8)]
        for reg,value in zip(CALLEE_REGS,expected):self.machine.reg_write(reg,value)
        self.machine.reg_write(UC_ARM_REG_SP,0x20004180)
        self.machine.reg_write(UC_ARM_REG_LR,0x10001)
        self.machine.emu_start(0x5e4d,0x10000,count=2_000_000)
        if self.machine.reg_read(UC_ARM_REG_PC)!=0x10000:
            raise AssertionError("Scan entry did not return within its instruction limit")
        if self.machine.reg_read(UC_ARM_REG_SP)!=0x20004180:
            raise AssertionError("Scan entry changed the caller's stack pointer")
        if [self.machine.reg_read(reg) for reg in CALLEE_REGS]!=expected:
            raise AssertionError("Scan entry corrupted a callee-saved register")
        return bytes(self.machine.mem_read(0x20000000,0x4000))


def set_records(ram, records):
    ram[0x376]=len(records)
    for index,(row,samples) in enumerate(records):
        ram[0x310a+index*7:0x3111+index*7]=bytes([row,*samples])


def compare_pair(left,right,ram,name):
    left.load(ram);right.load(ram)
    a=left.call();b=right.call()
    if a!=b:
        differences=[i for i,(x,y) in enumerate(zip(a,b)) if x!=y]
        raise AssertionError(f"{name}: {len(differences)} RAM bytes differ; first={hex(0x20000000+differences[0])}")
    return bytearray(a+bytes(0x1000))


def verify():
    stock=(ROOT/"build/stock/firmware.bin").read_bytes()
    modified=(ROOT/"build/c_scan/firmware.bin").read_bytes()
    if hashlib.sha256(stock).hexdigest()!=ORIGINAL_SHA256:
        raise AssertionError("Stock oracle is not byte-identical to the original firmware")
    left,right=Target(stock),Target(modified)
    frames=0
    for rgb in (0,1):
        for position in range(66):
            row,col=divmod(position,6)
            ram=bytearray(0x5000)
            ram[0x1b1c:0x1b5e]=bytes([10]*66)
            ram[0x1ba0:0x1be2]=bytes([20]*66)
            ram[0xcba]=rgb
            for value in (29,29,30,30,30,28,27,26,26,26):
                samples=[10]*6;samples[col]=value
                ram[0x360]=0;set_records(ram,[(row,samples)])
                ram=compare_pair(left,right,ram,f"key {position}, RGB {rgb}, sample {value}")
                frames+=1
    rng=random.Random(0x66ec)
    for scenario in range(2048):
        ram=bytearray(0x5000)
        ram[0x1b1c:0x1b5e]=rng.randbytes(66)
        ram[0x1ba0:0x1be2]=rng.randbytes(66)
        ram[0x1ada:0x1b1c]=rng.randbytes(66)
        ram[0x1ac4:0x1ada]=rng.randbytes(22)
        ram[0xcba]=rng.randrange(256)
        records=[(rng.randrange(11),list(rng.randbytes(6))) for _ in range(rng.randrange(1,12))]
        set_records(ram,records)
        compare_pair(left,right,ram,f"random batch {scenario}")
        frames+=len(records)
    ram=bytearray(0x5000)
    ram[0x1b1c:0x1b5e]=bytes([10]*66)
    ram[0x1ba0:0x1be2]=bytes([20]*66)
    for sequence in range(256):
        ram[0x360]=0
        records=[(row,[rng.randrange(10,140) for _ in range(6)]) for row in range(11)]
        set_records(ram,records)
        ram=compare_pair(left,right,ram,f"stateful sequence {sequence}")
        frames+=11
    ram=bytearray(0x5000)
    compare_pair(left,right,ram,"empty queue")
    result={"stock_oracle_sha256":ORIGINAL_SHA256,
            "c_scan_sha256":hashlib.sha256(modified).hexdigest(),
            "arm_cortex_m0_execution":True,"tested_entry":"0x00005e4c",
            "single_key_frames":1320,"random_batches":2048,"stateful_full_matrix_batches":256,
            "total_scan_records_compared":frames,"global_ram_bytes_compared_per_call":0x4000,
            "callee_saved_registers_and_sp_preserved":True,"all_match":True,
            "hardware_timing_verified":False}
    (ROOT/"build/c_scan/target_verification.json").write_text(json.dumps(result,indent=2)+"\n")
    print(json.dumps(result,indent=2))


if __name__=="__main__":verify()
