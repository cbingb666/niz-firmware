/* Address: 0x00006b18; body bytes: 48 */

void FUN_00006b18(void)

{
  scan_enabled = 0;
  DAT_20000c50 = DAT_20000c50 + 1;
  if (5 < DAT_20000c50) {
    DAT_20000c50 = 0;
  }
  eeprom_write_page(&DAT_20000c50,1,0x12);
  FUN_000048e0(DAT_20000c50 + 1);
  scan_enabled = 1;
  return;
}

