/* Address: 0x0000b0e4; body bytes: 90 */

void FUN_0000b0e4(void)

{
  dword dVar1;
  uint uVar2;
  
  SYS_UnlockReg();
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 1;
  uVar2 = FMC_ReadWord(0x10a00);
  uVar2 = uVar2 & 0xffff0000;
  FMC_ErasePage(0x10a00);
  FMC_WriteWord(0x10a00,uVar2);
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 & 0xfffffffe;
  SYS_REGWRPROT = 0;
  if ((uVar2 != 0x11110000) && (uVar2 != 0x22220000)) {
    DataSynchronizationBarrier(0xf);
    SCB_AIRCR = 0x5fa0004;
    DataSynchronizationBarrier(0xf);
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  return;
}

