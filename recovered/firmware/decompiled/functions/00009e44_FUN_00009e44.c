/* Address: 0x00009e44; body bytes: 104 */

void FUN_00009e44(undefined1 *param_1,uint param_2)

{
  int iVar1;
  undefined1 *puVar2;
  uint uVar3;
  
  if (param_2 <= DAT_20000448) {
    DAT_2000042c = (undefined1 *)0x0;
    DAT_20000430 = 0;
    uVar3 = USBD_EP0_CFG;
    USBD_EP0_CFG = uVar3 | 0x80;
    iVar1 = USBD_EP0_BUFSEG;
    puVar2 = &DAT_40060100 + iVar1;
    for (uVar3 = param_2; uVar3 != 0; uVar3 = uVar3 - 1) {
      *puVar2 = *param_1;
      param_1 = param_1 + 1;
      puVar2 = puVar2 + 1;
    }
    USBD_EP0_MXPLD = param_2;
    return;
  }
  DAT_2000042c = param_1 + DAT_20000448;
  DAT_20000430 = param_2 - DAT_20000448;
  uVar3 = USBD_EP0_CFG;
  USBD_EP0_CFG = uVar3 | 0x80;
  iVar1 = USBD_EP0_BUFSEG;
  puVar2 = &DAT_40060100 + iVar1;
  for (uVar3 = DAT_20000448; uVar3 != 0; uVar3 = uVar3 - 1) {
    *puVar2 = *param_1;
    param_1 = param_1 + 1;
    puVar2 = puVar2 + 1;
  }
  USBD_EP0_MXPLD = DAT_20000448;
  return;
}

