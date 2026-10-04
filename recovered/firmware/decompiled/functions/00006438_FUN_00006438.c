/* Address: 0x00006438; body bytes: 46 */

void FUN_00006438(int param_1)

{
  byte bVar1;
  
  DAT_20000c61 = (char)param_1;
  if (param_1 << 0x1e < 0) {
    bVar1 = DAT_20000cc7 | 0x20;
  }
  else {
    bVar1 = DAT_20000cc7 & 0xdf;
  }
  if (param_1 << 0x1d < 0) {
    DAT_20000cc7 = bVar1 | 0x40;
  }
  else {
    DAT_20000cc7 = bVar1 & 0xbf;
  }
  return;
}

