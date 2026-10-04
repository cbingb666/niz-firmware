/* Address: 0x00008780; body bytes: 50 */

void FUN_00008780(void)

{
  scan_enabled = 0;
  DAT_20000372 = DAT_20000372 + 1;
  if (2 < DAT_20000372) {
    DAT_20000372 = 0;
  }
  eeprom_write_page(&DAT_20000372,1,0x14);
  FUN_000048e0(DAT_20000372 + 1);
  scan_enabled = 1;
  return;
}

