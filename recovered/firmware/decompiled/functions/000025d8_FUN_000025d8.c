/* Address: 0x000025d8; body bytes: 150 */

void FUN_000025d8(void)

{
  dword dVar1;
  
  if (DAT_20000cbe == '\x01') {
    DAT_20000cbf = DAT_20000cbf - 1;
    FUN_00000660();
    if (DAT_20000cbf == 0) {
      scan_enabled = 0;
      DAT_20000cbe = 0;
      dVar1 = TIMER2_TCSR;
      TIMER2_TCSR = dVar1 & 0xbfffffff;
      dVar1 = TIMER1_TCSR;
      TIMER1_TCSR = dVar1 & 0xbfffffff;
      dVar1 = TIMER0_TCSR;
      TIMER0_TCSR = dVar1 & 0xbfffffff;
      CLK_DisableModuleClock(0x5f000004);
      CLK_DisableModuleClock(0x5ec00003);
      CLK_DisableModuleClock(0x5e800002);
      FUN_00006778();
      FUN_00002a0c();
      DAT_20000cc7 = 0;
      FUN_00006730(0);
      clock_set_profile(4);
      DAT_20000cc0 = 2;
      application_state = 4;
      scan_enabled = 1;
      return;
    }
  }
  else if (DAT_20000cbe == '\x02') {
    DAT_20000cbf = DAT_20000cbf + 1;
    FUN_00000660();
    if ((byte)(&DAT_0000c66b)[DAT_20000c74] <= DAT_20000cbf) {
      DAT_20000cbe = '\0';
    }
  }
  return;
}

