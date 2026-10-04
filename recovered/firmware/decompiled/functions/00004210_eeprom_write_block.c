/* Address: 0x00004210; body bytes: 180 */

/* Splits writes across 128-byte EEPROM page boundaries. */

void eeprom_write_block(int param_1,uint param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  uVar1 = 0x80 - (param_3 & 0x7f);
  uVar2 = (param_2 & 0x7fff) >> 7;
  if ((param_3 & 0x7f) == 0) {
    if (uVar2 == 0) {
      eeprom_write_page(param_1);
    }
    else {
      do {
        eeprom_write_page(param_1,0x80,param_3);
        param_3 = param_3 + 0x80;
        param_1 = param_1 + 0x80;
        uVar2 = uVar2 - 1 & 0xff;
      } while (uVar2 != 0);
      if ((param_2 & 0x7f) != 0) {
        eeprom_write_page(param_1,param_2 & 0x7f,param_3);
      }
    }
  }
  else if (uVar1 < param_2) {
    eeprom_write_page(param_1,uVar1);
    param_1 = param_1 + uVar1;
    iVar3 = param_3 + uVar1;
    uVar2 = (param_2 - uVar1 & 0x7fff) >> 7;
    uVar1 = param_2 - uVar1 & 0x7f;
    if (uVar2 != 0) {
      do {
        uVar2 = uVar2 - 1 & 0xff;
        eeprom_write_page(param_1,0x80,iVar3);
        iVar3 = iVar3 + 0x80;
        param_1 = param_1 + 0x80;
      } while (uVar2 != 0);
      if (uVar1 == 0) goto LAB_000042bc;
    }
    eeprom_write_page(param_1,uVar1,iVar3);
  }
  else {
    eeprom_write_page(param_1,param_2 & 0xff);
  }
LAB_000042bc:
  watchdog_feed();
  return;
}

