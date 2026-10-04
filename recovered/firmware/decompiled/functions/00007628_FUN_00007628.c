/* Address: 0x00007628; body bytes: 68 */

undefined4 FUN_00007628(void)

{
  dword dVar1;
  uint uVar2;
  
  SYS_UnlockReg();
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 1;
  uVar2 = FMC_ReadWord(0x10a00);
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 & 0xfffffffe;
  SYS_REGWRPROT = 0;
  if ((uVar2 >> 0x10 != 0x1111) && (uVar2 != 0xffffffff)) {
    if (uVar2 >> 0x10 == 0x2222) {
      return 2;
    }
    return 0;
  }
  return 1;
}

