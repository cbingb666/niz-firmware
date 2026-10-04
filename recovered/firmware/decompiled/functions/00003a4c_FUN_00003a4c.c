/* Address: 0x00003a4c; body bytes: 46 */

void FUN_00003a4c(void)

{
  scan_enabled = 0;
  DAT_20000c64 = DAT_20000c64 == '\0';
  eeprom_write_page(&DAT_20000c64,1,5);
  FUN_000048e0(DAT_20000c64 + '\x01');
  scan_enabled = 1;
  return;
}

