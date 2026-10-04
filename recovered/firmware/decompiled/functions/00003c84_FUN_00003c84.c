/* Address: 0x00003c84; body bytes: 126 */

void FUN_00003c84(void)

{
  undefined1 uVar1;
  
  uVar1 = scan_enabled;
  if (((DAT_20001ad4 == 2) || (DAT_20001ad4 == 0x20)) && (DAT_20001ad8 == 2)) {
    DAT_20000382 = DAT_20000382 + 1;
    if (0x32 < DAT_20000382) {
      scan_enabled = 0;
      DAT_20000382 = 0;
      DAT_20000c71 = DAT_20000c71 == '\0';
      eeprom_write_page(&DAT_20000c71,1,64999);
      FUN_000048e0(DAT_20000c71 + '\x01');
      if (DAT_20000c71 == '\x01') {
        if ((transport_is_wired == '\0') || (wired_protocol == '\x01')) {
          FUN_0000629c();
        }
        else if (wired_protocol == '\x02') {
          ps2_key_event(0xe,0);
        }
      }
      scan_enabled = uVar1;
      return;
    }
  }
  else {
    DAT_20000382 = 0;
  }
  return;
}

