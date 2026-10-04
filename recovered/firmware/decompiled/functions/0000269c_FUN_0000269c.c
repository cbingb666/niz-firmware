/* Address: 0x0000269c; body bytes: 46 */

void FUN_0000269c(void)

{
  if (DAT_200003c7 != '\x01') {
    DAT_200003c7 = '\x01';
    eeprom_write_page(&DAT_200003c7,1,0x17);
  }
  if (DAT_20000c72 != '\0') {
    DAT_20000c72 = '\0';
    eeprom_write_page(&DAT_20000c72,1,0x16);
  }
  return;
}

