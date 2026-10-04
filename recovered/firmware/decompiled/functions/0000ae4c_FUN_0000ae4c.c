/* Address: 0x0000ae4c; body bytes: 68 */

void FUN_0000ae4c(void)

{
  char cVar1;
  
  cVar1 = DAT_20000c66;
  if (transport_is_wired != '\0') {
    cVar1 = DAT_20000c65;
  }
  if (cVar1 == '\0') {
    scan_enabled = 0;
    DAT_20000c6d = DAT_20000c6d == '\0';
    eeprom_write_page(&DAT_20000c6d,1,8);
    FUN_000048e0(DAT_20000c6d + '\x01');
    scan_enabled = 1;
  }
  return;
}

