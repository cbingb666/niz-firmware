/* Address: 0x000071dc; body bytes: 84 */

void FUN_000071dc(int param_1)

{
  dword dVar1;
  uint uVar2;
  undefined1 *puVar3;
  
  SYS_UnlockReg();
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 1;
  uVar2 = 0;
  do {
    FMC_ISPCMD = 0;
    FMC_ISPADR = uVar2 + 0x10e00;
    FMC_ISPTRG = 1;
    InstructionSynchronizationBarrier(0xf);
    do {
      dVar1 = FMC_ISPTRG;
    } while (dVar1 != 0);
    dVar1 = FMC_ISPDAT;
    puVar3 = (undefined1 *)(param_1 + uVar2);
    *puVar3 = (char)dVar1;
    puVar3[1] = (char)(dVar1 >> 8);
    puVar3[2] = (char)(dVar1 >> 0x10);
    uVar2 = uVar2 + 4 & 0xffff;
    puVar3[3] = (char)(dVar1 >> 0x18);
  } while (uVar2 < 0x42);
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 & 0xfffffffe;
  SYS_REGWRPROT = 0;
  return;
}

