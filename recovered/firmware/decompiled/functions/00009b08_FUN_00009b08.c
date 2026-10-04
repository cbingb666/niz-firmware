/* Address: 0x00009b08; body bytes: 166 */

void FUN_00009b08(void)

{
  dword dVar1;
  int iVar2;
  uint uVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  
  if (DAT_20000430 == 0) {
    if ((((DAT_20000468 == '\0') && (DAT_20000469 == '\x05')) &&
        (dVar1 = USBD_FADDR, dVar1 != DAT_20000440)) && (dVar1 = USBD_FADDR, dVar1 == 0)) {
      USBD_FADDR = DAT_20000440;
    }
    if (DAT_2000042a != '\0') {
      USBD_EP0_MXPLD = 0;
      DAT_2000042a = 0;
      return;
    }
  }
  else {
    iVar2 = USBD_EP0_BUFSEG;
    if (DAT_20000448 < DAT_20000430) {
      puVar4 = &DAT_40060100 + iVar2;
      puVar5 = DAT_2000042c;
      for (uVar3 = DAT_20000448; uVar3 != 0; uVar3 = uVar3 - 1) {
        *puVar4 = *puVar5;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
      }
      USBD_EP0_MXPLD = DAT_20000448;
      DAT_2000042c = DAT_2000042c + DAT_20000448;
      DAT_20000430 = DAT_20000430 - DAT_20000448;
      return;
    }
    puVar5 = &DAT_40060100 + iVar2;
    for (uVar3 = DAT_20000430; uVar3 != 0; uVar3 = uVar3 - 1) {
      *puVar5 = *DAT_2000042c;
      DAT_2000042c = DAT_2000042c + 1;
      puVar5 = puVar5 + 1;
    }
    USBD_EP0_MXPLD = DAT_20000430;
    if (DAT_20000430 == DAT_20000448) {
      DAT_2000042a = '\x01';
    }
    DAT_2000042c = (undefined1 *)0x0;
    DAT_20000430 = 0;
  }
  return;
}

