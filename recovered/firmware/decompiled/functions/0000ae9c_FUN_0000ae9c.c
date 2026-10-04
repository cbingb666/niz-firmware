/* Address: 0x0000ae9c; body bytes: 58 */

void FUN_0000ae9c(void)

{
  uint uVar1;
  
  if (transport_is_wired == '\0') {
    if (DAT_20000c66 == '\0') {
      uVar1 = eeprom_read_u8(8);
      DAT_20000c6d = (char)uVar1;
      if (uVar1 < 2) {
        return;
      }
    }
  }
  else if (DAT_20000c65 == '\0') {
    uVar1 = eeprom_read_u8(8);
    DAT_20000c6d = (char)uVar1;
    if (uVar1 < 2) {
      return;
    }
  }
  DAT_20000c6d = 0;
  return;
}

