/* Address: 0x00003c4c; body bytes: 56 */

void FUN_00003c4c(void)

{
  undefined4 local_8;
  
  local_8 = 0;
  eeprom_read_block(&local_8,2,0);
  if ((local_8 & 0xff) == 0xdd) {
    if (local_8._1_1_ != -0x23) {
      return;
    }
  }
  else {
    if ((local_8 & 0xff) != 0xcc) {
      return;
    }
    if (local_8._1_1_ != -0x34) {
      return;
    }
  }
  configuration_factory_reset();
  FUN_0000b0e4();
  return;
}

