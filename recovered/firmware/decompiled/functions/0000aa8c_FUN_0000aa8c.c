/* Address: 0x0000aa8c; body bytes: 88 */

void FUN_0000aa8c(undefined1 *param_1)

{
  int iVar1;
  uint uVar2;
  undefined1 *puVar3;
  uint uVar4;
  int iVar5;
  bool bVar6;
  
  uVar4 = 0;
  if (DAT_20000305 == '\0') {
    do {
      SYSTICK_LOAD = DAT_20000004;
      SYSTICK_VAL = 0;
      uVar2 = SYSTICK_CTRL;
      SYSTICK_CTRL = uVar2 | 5;
      do {
        iVar1 = SYSTICK_CTRL;
      } while (-1 < iVar1 << 0xf);
      uVar4 = uVar4 + 1;
    } while (uVar4 < 10000);
  }
  DAT_20000305 = 0;
  iVar1 = USBD_EP4_BUFSEG;
  iVar5 = 7;
  puVar3 = &DAT_40060100 + iVar1;
  do {
    *puVar3 = *param_1;
    param_1 = param_1 + 1;
    puVar3 = puVar3 + 1;
    bVar6 = iVar5 != 0;
    iVar5 = iVar5 + -1;
  } while (bVar6);
  USBD_EP4_MXPLD = 8;
  return;
}

