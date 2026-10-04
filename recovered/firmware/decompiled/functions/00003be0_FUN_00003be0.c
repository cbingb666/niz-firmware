/* Address: 0x00003be0; body bytes: 94 */

void FUN_00003be0(void)

{
  dword dVar1;
  uint uVar2;
  
  SYS_UnlockReg();
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 1;
  uVar2 = FMC_ReadWord(0x300000);
  if ((uVar2 & 5) != 0) {
    dVar1 = FMC_ISPCON;
    FMC_ISPCON = dVar1 | 0x10;
    FMC_ErasePage(0x300000);
    dVar1 = FMC_ISPCON;
    FMC_ISPCON = dVar1 | 0x10;
    FMC_WriteWord(0x300000,uVar2 & 0xfffffffa);
    dVar1 = FMC_ISPCON;
    FMC_ISPCON = dVar1 | 0x10;
    FMC_WriteWord(0x300004,0x10000);
    FUN_00008220();
  }
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 & 0xfffffffe;
  SYS_REGWRPROT = 0;
  return;
}

