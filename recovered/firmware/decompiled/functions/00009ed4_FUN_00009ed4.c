/* Address: 0x00009ed4; body bytes: 82 */

void FUN_00009ed4(void)

{
  uint uVar1;
  code *pcVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  int iVar5;
  bool bVar6;
  
  puVar4 = &DAT_20000468;
  puVar3 = &DAT_40060100;
  iVar5 = 7;
  do {
    *puVar4 = *puVar3;
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
    bVar6 = iVar5 != 0;
    iVar5 = iVar5 + -1;
  } while (bVar6);
  if ((DAT_20000468 & 0x60) != 0) {
    pcVar2 = DAT_20000454;
    if (((DAT_20000468 & 0x60) != 0x20) && (pcVar2 = DAT_20000450, (DAT_20000468 & 0x60) != 0x40)) {
      uVar1 = USBD_EP0_CFGP;
      USBD_EP0_CFGP = uVar1 | 2;
      uVar1 = USBD_EP1_CFGP;
      USBD_EP1_CFGP = uVar1 | 2;
      return;
    }
    if (pcVar2 == (code *)0x0) {
      return;
    }
    (*pcVar2)();
    return;
  }
  FUN_00009f38();
  return;
}

