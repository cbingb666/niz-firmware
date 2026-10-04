/* Address: 0x0000294c; body bytes: 46 */

void FUN_0000294c(void)

{
  byte bVar1;
  
  if ((rgb_active != '\0') && (DAT_200003c7 == '\0')) {
    bVar1 = DAT_200003c4;
    if (DAT_20000c72 != '\x01') {
      bVar1 = DAT_200003c2;
    }
    if (7 < bVar1) {
      FUN_000016a0();
      return;
    }
  }
  return;
}

