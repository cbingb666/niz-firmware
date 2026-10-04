/* Address: 0x00006a58; body bytes: 48 */

void FUN_00006a58(void)

{
  scan_enabled = 0;
  DAT_20000c51 = DAT_20000c51 + 1;
  if (4 < DAT_20000c51) {
    DAT_20000c51 = 0;
  }
  eeprom_write_page(&DAT_20000c51,1,0xb);
  FUN_000048e0(DAT_20000c51 + 1);
  scan_enabled = 1;
  return;
}

