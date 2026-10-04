/* Address: 0x00007170; body bytes: 100 */

void FUN_00007170(int param_1,undefined2 *param_2)

{
  dword dVar1;
  undefined2 uVar2;
  uint uVar3;
  undefined1 *puVar4;
  
  SYS_UnlockReg();
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 1;
  uVar3 = 0;
  do {
    FMC_ISPCMD = 0;
    FMC_ISPADR = uVar3 + 0x10c00;
    FMC_ISPTRG = 1;
    InstructionSynchronizationBarrier(0xf);
    do {
      dVar1 = FMC_ISPTRG;
    } while (dVar1 != 0);
    dVar1 = FMC_ISPDAT;
    puVar4 = (undefined1 *)(param_1 + uVar3);
    *puVar4 = (char)dVar1;
    puVar4[1] = (char)(dVar1 >> 8);
    puVar4[2] = (char)(dVar1 >> 0x10);
    uVar3 = uVar3 + 4 & 0xffff;
    puVar4[3] = (char)(dVar1 >> 0x18);
  } while (uVar3 < 0x42);
  uVar2 = FMC_ReadWord(uVar3 + 0x10c00);
  *param_2 = uVar2;
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 & 0xfffffffe;
  SYS_REGWRPROT = 0;
  return;
}

