/* Address: 0x00009bc4; body bytes: 70 */

void FUN_00009bc4(void)

{
  int iVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  int iVar4;
  
  if (DAT_20000438 < DAT_2000043c) {
    iVar1 = USBD_EP1_MXPLD;
    iVar4 = USBD_EP1_BUFSEG;
    puVar3 = &DAT_40060100 + iVar4;
    puVar2 = DAT_20000434;
    for (iVar4 = iVar1; iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar2 = *puVar3;
      puVar3 = puVar3 + 1;
      puVar2 = puVar2 + 1;
    }
    DAT_20000434 = DAT_20000434 + iVar1;
    DAT_20000438 = DAT_20000438 + iVar1;
    if (DAT_20000438 < DAT_2000043c) {
      USBD_EP1_MXPLD = DAT_20000448;
    }
  }
  return;
}

