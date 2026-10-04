/* Address: 0x00002a44; body bytes: 48 */

void FUN_00002a44(void)

{
  scan_enabled = 0;
  DAT_20000c6e = DAT_20000c6e == '\0';
  eeprom_write_page(&DAT_20000c6e,1,0x11);
  FUN_000048e0(DAT_20000c6e + '\x01');
  scan_enabled = 1;
  return;
}

