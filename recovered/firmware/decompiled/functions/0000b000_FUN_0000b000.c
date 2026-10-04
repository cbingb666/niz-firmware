/* Address: 0x0000b000; body bytes: 110 */

void FUN_0000b000(int param_1,undefined4 param_2)

{
  dword dVar1;
  byte *pbVar2;
  uint uVar3;
  
  SYS_UnlockReg();
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 1;
  FMC_ErasePage(0x10c00);
  uVar3 = 0;
  do {
    pbVar2 = (byte *)(param_1 + uVar3);
    FMC_ISPCMD = 0x21;
    FMC_ISPADR = uVar3 + 0x10c00;
    FMC_ISPDAT = (uint)pbVar2[3] * 0x1000000 +
                 (uint)pbVar2[2] * 0x10000 + (uint)pbVar2[1] * 0x100 + (uint)*pbVar2;
    FMC_ISPTRG = 1;
    InstructionSynchronizationBarrier(0xf);
    do {
      dVar1 = FMC_ISPTRG;
    } while (dVar1 != 0);
    uVar3 = uVar3 + 4 & 0xffff;
  } while (uVar3 < 0x42);
  FMC_WriteWord(uVar3 + 0x10c00,param_2);
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 & 0xfffffffe;
  SYS_REGWRPROT = 0;
  return;
}

