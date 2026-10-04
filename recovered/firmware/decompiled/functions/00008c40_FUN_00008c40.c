/* Address: 0x00008c40; body bytes: 50 */

void FUN_00008c40(void)

{
  scan_enabled = 0;
  DAT_20000cc4 = DAT_20000cc4 + 1;
  if (3 < DAT_20000cc4) {
    DAT_20000cc4 = 0;
  }
  eeprom_write_page(&DAT_20000cc4,1,0x10);
  FUN_000048e0(DAT_20000cc4 + 1);
  scan_enabled = 1;
  return;
}

