/* Address: 0x000065b4; body bytes: 190 */

void FUN_000065b4(void)

{
  dword dVar1;
  undefined4 uVar2;
  
  if (DAT_20000cd3 == '\x01') {
    DAT_20000cc2 = 0x14;
  }
  else {
    DAT_20000cc2 = 0x78;
  }
  if (DAT_20000cc0 != '\0') {
    scan_enabled = 0;
    if (DAT_20000c63 == '\0') {
      uVar2 = 2;
    }
    else {
      uVar2 = 0;
    }
    clock_set_profile(uVar2);
    if (DAT_20000cd3 == '\0') {
      DAT_20000cd3 = '\x01';
      transport_uart_init();
    }
    DAT_20000cc0 = '\0';
    CLK_EnableModuleClock(0x5f000004);
    CLK_EnableModuleClock(0x5e800002);
    dVar1 = TIMER2_TCSR;
    TIMER2_TCSR = dVar1 | 0x40000000;
    dVar1 = TIMER0_TCSR;
    TIMER0_TCSR = dVar1 | 0x40000000;
    if (DAT_20000c63 != '\0') {
      if ((int)((uint)DAT_20000c61 << 0x1e) < 0) {
        DAT_20000cc7 = DAT_20000cc7 | 0x20;
      }
      if ((int)((uint)DAT_20000c61 << 0x1d) < 0) {
        DAT_20000cc7 = DAT_20000cc7 | 0x40;
      }
      if (rgb_active != '\0') {
        CLK_EnableModuleClock(0x5ec00003);
        dVar1 = TIMER1_TCSR;
        TIMER1_TCSR = dVar1 | 0x40000000;
        if (DAT_20000c72 == '\x01') {
          DAT_200003c8 = 0;
          DAT_200003ca = 0;
        }
        else {
          DAT_20000cbe = 2;
          DAT_20000cbf = 0;
        }
        FUN_0000068c(0);
      }
    }
    application_state = 0;
    scan_enabled = 1;
  }
  return;
}

