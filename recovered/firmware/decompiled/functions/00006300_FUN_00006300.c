/* Address: 0x00006300; body bytes: 256 */

void FUN_00006300(void)

{
  dword dVar1;
  undefined1 auStack_120 [268];
  
  DAT_20000cc2 = 0x78;
  if (DAT_20000cc0 == '\0') {
    scan_enabled = 0;
    if ((DAT_20000c63 != '\0') && (rgb_active != '\0')) {
      DAT_20000cbe = 1;
      DAT_20000cbf = DAT_200003ca;
      if (DAT_20000c72 != '\x01') {
        DAT_20000cbf = (&DAT_0000c66b)[DAT_20000c74];
      }
      DAT_2000032c = 0;
      DAT_2000033a = 0;
      scan_enabled = 1;
      return;
    }
    dVar1 = TIMER0_TCSR;
    TIMER0_TCSR = dVar1 & 0xbfffffff;
    dVar1 = TIMER2_TCSR;
    TIMER2_TCSR = dVar1 & 0xbfffffff;
    CLK_DisableModuleClock(0x5f000004);
    CLK_DisableModuleClock(0x5e800002);
    DAT_20000cc0 = '\x02';
    DAT_2000032c = 0;
    DAT_20000312 = 0;
    DAT_2000033a = 0;
    DAT_20000cc7 = 0;
    FUN_00006730(0);
    clock_set_profile(4);
    scan_enabled = 1;
    application_state = 4;
  }
  else {
    if (DAT_20000cd3 != '\0') {
      if (DAT_20000cd3 == '\x04') {
        DAT_20000312 = 0;
      }
      else {
        DAT_20000312 = DAT_20000312 + 1;
        if (9 < DAT_20000312) {
          FUN_00002ca4();
          DAT_20000cd3 = '\0';
        }
      }
    }
    if ((DAT_20000cc4 < 3) &&
       (DAT_2000032c = DAT_2000032c + 1,
       *(ushort *)(&DAT_0000c0d0 + (uint)DAT_20000cc4 * 2) < DAT_2000032c)) {
      scan_enabled = 0;
      if (DAT_20000317 != '\0') {
        DAT_20000317 = 0;
        FUN_000001c2(auStack_120,0x108);
        FUN_00004024(auStack_120,&key_press_counters,0x42);
        eeprom_write_block(auStack_120,0x108,65000);
        delay_ms(10);
      }
      PB4_PIN = 0;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
  }
  return;
}

