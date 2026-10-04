/* Address: 0x00004414; body bytes: 76 */

void FUN_00004414(void)

{
  char cVar1;
  
  if (DAT_200003c7 == '\0') {
    if (DAT_200003c2 == '\t') {
      FUN_00004468();
    }
    else if (DAT_200003c2 == '\b') {
      FUN_000044fc();
    }
    cVar1 = DAT_200003c4;
    if (DAT_20000c72 != 1) {
      cVar1 = DAT_200003c2;
    }
    FUN_00000a68(cVar1);
    return;
  }
  FUN_00002704();
  if ((DAT_20000c72 < 5) && (DAT_200003c7 != '\0')) {
    FUN_00000a68(0xb);
  }
  return;
}

