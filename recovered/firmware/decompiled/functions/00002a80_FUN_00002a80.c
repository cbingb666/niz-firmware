/* Address: 0x00002a80; body bytes: 146 */

void FUN_00002a80(void)

{
  byte bVar1;
  uint uVar2;
  
  scan_enabled = 0;
  if (rgb_active != '\0') {
    rgb_active = '\0';
    FUN_00006778();
    delay_ms(500);
  }
  bVar1 = DAT_20000cc7;
  DAT_20000cc7 = DAT_20000cc7 & 0xf0;
  uVar2 = FUN_000070e8();
  if (DAT_20000cc9 != '\x01') {
    uVar2 = uVar2 + 0x2e & 0xffff;
  }
  if (uVar2 < 0x268) {
    if (uVar2 < 0x251) {
      if (uVar2 < 0x241) {
        DAT_20000cc7 = DAT_20000cc7 | 8;
        delay_ms(0x5dc);
      }
      else {
        DAT_20000cc7 = DAT_20000cc7 | 9;
        delay_ms(0x5dc);
      }
    }
    else {
      DAT_20000cc7 = DAT_20000cc7 | 0xb;
      delay_ms(0x5dc);
    }
  }
  else {
    DAT_20000cc7 = DAT_20000cc7 | 0xf;
    delay_ms(0x5dc);
  }
  DAT_20000cc7 = bVar1;
  rgb_active = DAT_20000cbb;
  scan_enabled = 1;
  return;
}

