/* Address: 0x00007028; body bytes: 88 */

/* Checks staged EEPROM image against the accumulated byte sum. */

undefined4 firmware_verify_staging_sum(uint param_1,uint param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  
  iVar3 = 0;
  uVar2 = 0;
  for (; param_1 < param_2; param_1 = param_1 + 1) {
    iVar1 = eeprom_read_u8(param_1 + 4);
    iVar3 = iVar1 + iVar3;
    uVar2 = uVar2 + 1;
    if (4999 < uVar2) {
      uVar2 = 0;
      if ((int)((uint)DAT_20000cc7 << 0x1b) < 0) {
        DAT_20000cc7 = DAT_20000cc7 & 0xef;
      }
      else {
        DAT_20000cc7 = DAT_20000cc7 | 0x10;
      }
      FUN_00006730(DAT_20000cc7);
    }
    watchdog_feed();
  }
  if (iVar3 == param_3) {
    return 1;
  }
  return 0;
}

