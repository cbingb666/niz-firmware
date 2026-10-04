/* Address: 0x00006470; body bytes: 46 */

void FUN_00006470(uint param_1)

{
  byte bVar1;
  
  DAT_20000c61 = (char)param_1;
  if ((param_1 & 1) == 0) {
    bVar1 = DAT_20000cc7 & 0xbf;
  }
  else {
    bVar1 = DAT_20000cc7 | 0x40;
  }
  if ((int)(param_1 << 0x1d) < 0) {
    DAT_20000cc7 = bVar1 | 0x20;
  }
  else {
    DAT_20000cc7 = bVar1 & 0xdf;
  }
  return;
}

