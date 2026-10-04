/* Address: 0x000006f8; body bytes: 74 */

void FUN_000006f8(void)

{
  dword dVar1;
  
  do {
    SYS_REGWRPROT = 0x59;
    SYS_REGWRPROT = 0x16;
    SYS_REGWRPROT = 0x88;
    dVar1 = SYS_REGWRPROT;
  } while (dVar1 == 0);
  dVar1 = SYS_GPF_MFP;
  SYS_GPF_MFP = dVar1 | 3;
  FUN_000038d0(1);
  do {
    dVar1 = CLK_CLKSTATUS;
  } while (-1 < (int)(dVar1 << 0x1f));
  dVar1 = CLK_PLLCON;
  CLK_PLLCON = dVar1 & 0xfff7ffff;
  SYS_REGWRPROT = 0;
  clock_set_profile();
  FUN_000039dc(0);
  return;
}

