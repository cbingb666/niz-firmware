/* Address: 0x00000838; body bytes: 84 */

void FUN_00000838(void)

{
  dword dVar1;
  
  dVar1 = SYS_REGWRPROT;
  while (dVar1 != 1) {
    SYS_REGWRPROT = 0x59;
    SYS_REGWRPROT = 0x16;
    SYS_REGWRPROT = 0x88;
    dVar1 = SYS_REGWRPROT;
  }
  FUN_000038d0(8);
  do {
    dVar1 = CLK_CLKSTATUS;
  } while ((dVar1 & 8) == 0);
  CLK_EnableModuleClock(0x56000000);
  CLK_SetModuleClock(0x56000000,3,0);
  watchdog_init(0x500,1,1,0);
  SYS_REGWRPROT = 0;
  return;
}

