/* Address: 0x000069a4; body bytes: 124 */

void FUN_000069a4(uint param_1)

{
  undefined1 *puVar1;
  undefined4 uVar2;
  byte bVar3;
  
  bVar3 = 0;
  if (2 < param_1) {
    return;
  }
  scan_enabled = 0;
  if (param_1 == 0) {
    DAT_20000c4d = DAT_20000c4d + 1;
    if (5 < DAT_20000c4d) {
      DAT_20000c4d = 0;
    }
    bVar3 = DAT_20000c4d;
    eeprom_write_page(&DAT_20000c4d,1,0xe);
  }
  else {
    if (param_1 == 1) {
      DAT_20000c4c = DAT_20000c4c + 1;
      if (5 < DAT_20000c4c) {
        DAT_20000c4c = 0;
      }
      uVar2 = 10;
      puVar1 = &DAT_20000c4c;
      bVar3 = DAT_20000c4c;
    }
    else {
      if (param_1 != 2) goto LAB_00006a12;
      DAT_20000c4e = DAT_20000c4e + 1;
      if (5 < DAT_20000c4e) {
        DAT_20000c4e = 0;
      }
      uVar2 = 0xf;
      puVar1 = &DAT_20000c4e;
      bVar3 = DAT_20000c4e;
    }
    eeprom_write_page(puVar1,1,uVar2);
  }
LAB_00006a12:
  FUN_000048e0(bVar3 + 1);
  scan_enabled = 1;
  return;
}

