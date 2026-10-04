/* Address: 0x00003a84; body bytes: 196 */

void FUN_00003a84(void)

{
  dword dVar1;
  undefined4 in_r3;
  
  if (((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) && (DAT_20000c63 != '\0')) {
    if (((DAT_20001ad4 == 0x20) || (DAT_20001ad4 == 2)) && (DAT_20001ad6 == 0x30)) {
      DAT_20000380 = DAT_20000380 + 1;
      if (0x32 < DAT_20000380) {
        DAT_20000380 = 0;
        scan_enabled = 0;
        if (DAT_20000cbd == '\0') {
          DAT_20000cbd = 1;
          eeprom_write_page(&DAT_20000cbd,1,0x2e,in_r3,in_r3);
          FUN_000007a8((&DAT_0000bd60)[DAT_20000c54]);
          CLK_EnableModuleClock(0x5ec00003);
          dVar1 = TIMER1_TCSR;
          TIMER1_TCSR = dVar1 | 0x40000000;
          rgb_active = 1;
          DAT_20000cbb = 1;
          DAT_20000c74 = 0;
          FUN_0000068c(10);
        }
        else {
          DAT_20000cbd = 0;
          eeprom_write_page(&DAT_20000cbd,1,0x2e,in_r3,in_r3);
          rgb_active = 0;
          DAT_20000cbb = 0;
          dVar1 = TIMER1_TCSR;
          TIMER1_TCSR = dVar1 & 0xbfffffff;
          FUN_00006778();
          FUN_00002a0c();
          FUN_000007a8(*(undefined2 *)(&DAT_0000bd6c + (uint)DAT_20000c54 * 2));
          CLK_DisableModuleClock(0x5ec00003);
          FUN_000048e0(1);
        }
        scan_enabled = 1;
        return;
      }
    }
    else {
      DAT_20000380 = 0;
    }
  }
  return;
}

