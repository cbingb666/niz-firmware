/* Address: 0x0000448c; body bytes: 88 */

void FUN_0000448c(void)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = 0;
  do {
    uVar1 = uVar2 + 1 & 0xff;
    (&DAT_2000386a)[uVar2] = 0;
    uVar2 = uVar1;
  } while (uVar1 < 0xb);
  uVar2 = 0;
  do {
    uVar1 = 0;
    do {
      (&DAT_20003a0c)[uVar1 + uVar2 * 6] = 0;
      (&DAT_20003a90)[uVar1 + uVar2 * 6] = 1;
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < 6);
    uVar2 = uVar2 + 1 & 0xff;
  } while (uVar2 < 0xb);
  uVar2 = 0;
  do {
    (&DAT_20003ad2)[uVar2] = 0;
    uVar2 = uVar2 + 1 & 0xff;
  } while (uVar2 < 0x42);
  FUN_00000660((&DAT_0000c66b)[DAT_20000c74]);
  return;
}

