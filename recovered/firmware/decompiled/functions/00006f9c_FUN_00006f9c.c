/* Address: 0x00006f9c; body bytes: 80 */

void FUN_00006f9c(void)

{
  byte bVar1;
  
  bVar1 = DAT_20000cc7;
  if ((DAT_20000328 != '\0') && (DAT_20000326 = DAT_20000326 + 1, 2 < DAT_20000326)) {
    DAT_20000326 = 0;
    DAT_20000327 = DAT_20000327 + 1;
    if ((int)((uint)DAT_20000cb8 * 2 + -2) <= (int)(uint)DAT_20000327) {
      DAT_20000328 = 0;
      DAT_20000cc7 = DAT_20000cc7 & 0xef;
      return;
    }
    bVar1 = DAT_20000cc7 & 0xef;
    if (-1 < (int)((uint)DAT_20000cc7 << 0x1b)) {
      DAT_20000cc7 = DAT_20000cc7 | 0x10;
      return;
    }
  }
  DAT_20000cc7 = bVar1;
  return;
}

