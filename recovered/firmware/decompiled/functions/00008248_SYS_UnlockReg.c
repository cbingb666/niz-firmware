/* Address: 0x00008248; body bytes: 34 */

/* Writes 0x59, 0x16, 0x88 to protected-register lock. */

void SYS_UnlockReg(void)

{
  dword dVar1;
  
  dVar1 = SYS_REGWRPROT;
  if (dVar1 == 1) {
    return;
  }
  do {
    SYS_REGWRPROT = 0x59;
    SYS_REGWRPROT = 0x16;
    SYS_REGWRPROT = 0x88;
    dVar1 = SYS_REGWRPROT;
  } while (dVar1 != 1);
  return;
}

