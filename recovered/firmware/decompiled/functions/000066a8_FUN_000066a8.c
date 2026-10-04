/* Address: 0x000066a8; body bytes: 124 */

void FUN_000066a8(void)

{
  dword dVar1;
  
  dVar1 = SYS_REGWRPROT;
  while (dVar1 != 1) {
    SYS_REGWRPROT = 0x59;
    SYS_REGWRPROT = 0x16;
    SYS_REGWRPROT = 0x88;
    dVar1 = SYS_REGWRPROT;
  }
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 1;
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 0x10;
  FMC_ISPCMD = 0x22;
  FMC_ISPADR = 0x300000;
  FMC_ISPTRG = 1;
  InstructionSynchronizationBarrier(0xf);
  do {
    dVar1 = FMC_ISPTRG;
  } while (dVar1 != 0);
  dVar1 = FMC_ISPCON;
  if ((int)(dVar1 << 0x19) < 0) {
    dVar1 = FMC_ISPCON;
    FMC_ISPCON = dVar1 | 0x40;
  }
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 | 0x10;
  FMC_ISPCMD = 0x21;
  FMC_ISPADR = 0x300000;
  FMC_ISPDAT = 0x78bfff38;
  FMC_ISPTRG = 1;
  InstructionSynchronizationBarrier(0xf);
  do {
    dVar1 = FMC_ISPTRG;
  } while (dVar1 != 0);
  dVar1 = FMC_ISPCON;
  FMC_ISPCON = dVar1 & 0xfffffffe;
  SYS_REGWRPROT = 0;
  return;
}

