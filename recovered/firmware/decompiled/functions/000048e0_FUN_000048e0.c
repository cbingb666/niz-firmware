/* Address: 0x000048e0; body bytes: 104 */

void FUN_000048e0(uint param_1)

{
  byte bVar1;
  uint uVar2;
  
  uVar2 = 0;
  if (param_1 != 0) {
    do {
      if ((int)((uint)DAT_20000cc7 << 0x19) < 0) {
        bVar1 = DAT_20000cc7 & 0xbf;
      }
      else {
        bVar1 = DAT_20000cc7 | 0x40;
      }
      if ((int)((uint)bVar1 << 0x1a) < 0) {
        DAT_20000cc7 = bVar1 & 0xdf;
      }
      else {
        DAT_20000cc7 = bVar1 | 0x20;
      }
      delay_ms(0xfa);
      if ((int)((uint)DAT_20000cc7 << 0x19) < 0) {
        bVar1 = DAT_20000cc7 & 0xbf;
      }
      else {
        bVar1 = DAT_20000cc7 | 0x40;
      }
      if ((int)((uint)bVar1 << 0x1a) < 0) {
        DAT_20000cc7 = bVar1 & 0xdf;
      }
      else {
        DAT_20000cc7 = bVar1 | 0x20;
      }
      delay_ms(0xfa);
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < param_1);
  }
  return;
}

