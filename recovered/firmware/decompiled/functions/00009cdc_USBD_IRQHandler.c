/* Address: 0x00009cdc; body bytes: 288 */

/* NUC123 vector IRQ23, USB bus/setup/endpoint processing. */

void USBD_IRQHandler(void)

{
  dword dVar1;
  dword dVar2;
  dword dVar3;
  uint uVar4;
  int iVar5;
  dword dVar6;
  
  dVar1 = USBD_INTSTS;
  dVar2 = USBD_ATTR;
  if ((int)(dVar1 << 0x1d) < 0) {
    USBD_INTSTS = 4;
    dVar3 = USBD_FLDET;
    dVar6 = USBD_ATTR;
    if ((dVar3 & 1) == 0) {
      dVar6 = dVar6 & 0xffffff7f;
    }
    else {
      dVar6 = dVar6 | 0x90;
    }
    USBD_ATTR = dVar6;
  }
  if ((dVar1 & 1) != 0) {
    USBD_INTSTS = 1;
    if ((dVar2 & 1) != 0) {
      dVar6 = USBD_ATTR;
      USBD_ATTR = dVar6 | 0x90;
      FUN_0000a170();
    }
    if ((int)(dVar2 << 0x1e) < 0) {
      FUN_0000a224();
    }
    if ((int)(dVar2 << 0x1d) < 0) {
      dVar2 = USBD_ATTR;
      USBD_ATTR = dVar2 | 0x90;
      if ((transport_is_wired != '\0') && (DAT_20000cbb != '\0')) {
        rgb_active = 1;
      }
    }
  }
  if ((int)(dVar1 << 0x1e) < 0) {
    if ((int)dVar1 < 0) {
      USBD_INTSTS = 0x80000000;
      uVar4 = USBD_EP0_CFGP;
      USBD_EP0_CFGP = uVar4 | 1;
      uVar4 = USBD_EP1_CFGP;
      USBD_EP1_CFGP = uVar4 | 1;
      FUN_00009ed4();
    }
    if ((int)(dVar1 << 0xf) < 0) {
      USBD_INTSTS = 0x10000;
      FUN_00009b08();
    }
    if ((int)(dVar1 << 0xe) < 0) {
      USBD_INTSTS = 0x20000;
      FUN_00009bc4();
      if (DAT_20000304 != '\0') {
        iVar5 = USBD_EP1_MXPLD;
        if (iVar5 == 1) {
          iVar5 = USBD_EP1_BUFSEG;
          FUN_0000611c((&DAT_40060100)[iVar5]);
        }
        DAT_20000304 = DAT_20000304 + -1;
      }
    }
    if ((int)(dVar1 << 0xd) < 0) {
      USBD_INTSTS = 0x40000;
      uVar4 = USBD_EP2_MXPLD;
      iVar5 = USBD_EP2_BUFSEG;
      host_command_dispatch(&DAT_40060100 + iVar5,uVar4 & 0xff);
      USBD_EP2_MXPLD = 0x40;
    }
    if ((int)(dVar1 << 0xc) < 0) {
      USBD_INTSTS = 0x80000;
      DAT_20000307 = 1;
    }
    if ((int)(dVar1 << 0xb) < 0) {
      USBD_INTSTS = 0x100000;
      DAT_20000305 = 1;
    }
    if ((int)(dVar1 << 10) < 0) {
      USBD_INTSTS = 0x200000;
      DAT_20000306 = 1;
    }
    if ((int)(dVar1 << 9) < 0) {
      USBD_INTSTS = 0x400000;
    }
    if ((int)(dVar1 << 8) < 0) {
      USBD_INTSTS = 0x800000;
    }
  }
  return;
}

