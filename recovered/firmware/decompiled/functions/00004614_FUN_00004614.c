/* Address: 0x00004614; body bytes: 280 */

void FUN_00004614(void)

{
  uint uVar1;
  int iVar2;
  byte local_20;
  char local_1f;
  byte local_1e;
  char local_1d;
  byte local_1a;
  
  FUN_00009cc4(&local_20);
  if (-1 < (int)((uint)local_20 * 0x1000000)) {
    if (local_1f == '\t') {
      if (local_1d == '\x03') {
        uVar1 = USBD_EP1_CFG;
        USBD_EP1_CFG = uVar1 | 0x80;
        USBD_EP1_MXPLD = 0;
        return;
      }
      if (local_1d == '\x02') {
        uVar1 = USBD_EP1_CFG;
        USBD_EP1_CFG = uVar1 | 0x80;
        USBD_EP1_MXPLD = (uint)local_1a;
        DAT_20000304 = DAT_20000304 + '\x01';
        FUN_00009e44(0);
        return;
      }
    }
    else {
      if (local_1f == '\n') {
        DAT_2000030c = (uint)local_1e;
        uVar1 = USBD_EP0_CFG;
        USBD_EP0_CFG = uVar1 | 0x80;
        USBD_EP0_MXPLD = 0;
        return;
      }
      if (local_1f == '\v') {
        DAT_20000308 = (uint)local_1e;
        uVar1 = USBD_EP0_CFG;
        USBD_EP0_CFG = uVar1 | 0x80;
        USBD_EP0_MXPLD = 0;
        return;
      }
      iVar2 = 0;
      do {
        if (((&USBD_EP0_CFG)[iVar2 * 4] & 0xf) == 0) goto LAB_00004658;
        iVar2 = iVar2 + 1;
      } while (iVar2 < 8);
    }
    return;
  }
  if (local_1f != '\x01') {
    if (local_1f == '\x02') {
      iVar2 = USBD_EP0_BUFSEG;
      (&DAT_40060100)[iVar2] = (undefined1)DAT_2000030c;
      uVar1 = USBD_EP0_CFG;
      USBD_EP0_CFG = uVar1 | 0x80;
      USBD_EP0_MXPLD = 1;
    }
    else {
      if (local_1f != '\x03') {
        iVar2 = 0;
        while (((&USBD_EP0_CFG)[iVar2 * 4] & 0xf) != 0) {
          iVar2 = iVar2 + 1;
          if (7 < iVar2) {
            return;
          }
        }
LAB_00004658:
        (&USBD_EP0_CFGP)[iVar2 * 4] = (&USBD_EP0_CFGP)[iVar2 * 4] | 2;
        return;
      }
      iVar2 = USBD_EP0_BUFSEG;
      (&DAT_40060100)[iVar2] = (undefined1)DAT_20000308;
      uVar1 = USBD_EP0_CFG;
      USBD_EP0_CFG = uVar1 | 0x80;
      USBD_EP0_MXPLD = 1;
    }
  }
  uVar1 = USBD_EP1_CFG;
  USBD_EP1_CFG = uVar1 | 0x80;
  FUN_00009eb8(0);
  return;
}

