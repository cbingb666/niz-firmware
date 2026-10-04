/* Address: 0x00009f38; body bytes: 464 */

void FUN_00009f38(void)

{
  code *pcVar1;
  uint uVar2;
  int iVar3;
  uint *puVar4;
  uint uVar5;
  uint uVar6;
  byte bVar7;
  
  uVar5 = DAT_20000460;
  DAT_2000042c = 0;
  DAT_20000430 = 0;
  uVar2 = (uint)DAT_20000468;
  uVar6 = DAT_2000046c & 0xf;
  if (-1 < (int)(uVar2 * 0x1000000)) {
    uVar2 = (uint)DAT_2000046a;
    if (DAT_20000469 == 5) {
      DAT_20000429 = 1;
      DAT_20000440 = uVar2;
    }
    else if (DAT_20000469 < 6) {
      if (DAT_20000469 == 1) {
        if (uVar2 == 0) {
          uVar2 = 0;
          do {
            if ((((&USBD_EP0_CFG)[uVar2 * 4] & 0xf) == uVar6) &&
               ((1 << (uVar2 & 0xff) & uVar5) == 0)) {
              (&USBD_EP0_CFGP)[uVar2 * 4] = (&USBD_EP0_CFGP)[uVar2 * 4] & 0xfffffffd;
            }
            uVar2 = uVar2 + 1;
          } while ((int)uVar2 < 8);
        }
        else if (uVar2 == 1) {
          DAT_20000428 = 0;
        }
      }
      else {
        if (DAT_20000469 != 3) goto LAB_0000a062;
        if (uVar2 == 0) {
          iVar3 = 0;
          do {
            if (((&USBD_EP0_CFG)[iVar3 * 4] & 0xf) == uVar6) {
              (&USBD_EP0_CFGP)[iVar3 * 4] = (&USBD_EP0_CFGP)[iVar3 * 4] | 2;
              break;
            }
            iVar3 = iVar3 + 1;
          } while (iVar3 < 8);
        }
        else if (uVar2 == 1) {
          DAT_20000428 = DAT_2000046a;
        }
      }
    }
    else {
      uVar5 = uVar2;
      pcVar1 = DAT_2000045c;
      uVar6 = DAT_2000044c;
      if ((DAT_20000469 != 9) &&
         (uVar5 = DAT_20000444, pcVar1 = DAT_20000458, uVar6 = uVar2, DAT_20000469 != 0xb)) {
LAB_0000a062:
        uVar5 = USBD_EP0_CFGP;
        USBD_EP0_CFGP = uVar5 | 2;
        uVar5 = USBD_EP1_CFGP;
        USBD_EP1_CFGP = uVar5 | 2;
        return;
      }
      DAT_2000044c = uVar6;
      DAT_20000444 = uVar5;
      if (pcVar1 != (code *)0x0) {
        (*pcVar1)();
      }
    }
    uVar5 = USBD_EP0_CFG;
    USBD_EP0_CFG = uVar5 | 0x80;
    USBD_EP0_MXPLD = 0;
    return;
  }
  if (DAT_20000469 != 0) {
    if (DAT_20000469 == 6) {
      FUN_00009c18();
      return;
    }
    if (DAT_20000469 == 8) {
      iVar3 = USBD_EP0_BUFSEG;
      (&DAT_40060100)[iVar3] = (char)DAT_20000444;
      uVar5 = USBD_EP0_CFG;
      USBD_EP0_CFG = uVar5 | 0x80;
      USBD_EP0_MXPLD = 1;
      uVar5 = USBD_EP1_CFG;
      USBD_EP1_CFG = uVar5 | 0x80;
      FUN_00009eb8(0);
      return;
    }
    if (DAT_20000469 == 10) {
      iVar3 = USBD_EP0_BUFSEG;
      (&DAT_40060100)[iVar3] = (char)DAT_2000044c;
      uVar5 = USBD_EP0_CFG;
      USBD_EP0_CFG = uVar5 | 0x80;
      USBD_EP0_MXPLD = 1;
      FUN_00009eb8(0);
      return;
    }
    uVar5 = USBD_EP0_CFGP;
    USBD_EP0_CFGP = uVar5 | 2;
    uVar5 = USBD_EP1_CFGP;
    USBD_EP1_CFGP = uVar5 | 2;
    return;
  }
  if (uVar2 == 0x80) {
    uVar5 = (uint)*(byte *)(*(int *)(DAT_20000464 + 4) + 7);
    bVar7 = (int)(uVar5 << 0x19) < 0;
    if ((int)(uVar5 << 0x1a) < 0) {
      bVar7 = DAT_20000428 << 1 | bVar7;
    }
  }
  else {
    if (uVar2 == 0x81) {
      iVar3 = USBD_EP0_BUFSEG;
      (&DAT_40060100)[iVar3] = 0;
      goto LAB_0000a028;
    }
    if (uVar2 != 0x82) goto LAB_0000a028;
    iVar3 = 0;
    do {
      puVar4 = &USBD_EP0_CFG + iVar3 * 4;
      if ((*puVar4 & 0xf) == uVar6) {
        puVar4 = &USBD_EP0_CFGP + iVar3 * 4;
        break;
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < 8);
    bVar7 = (byte)(*puVar4 & 2);
    if ((*puVar4 & 2) != 0) {
      bVar7 = 1;
    }
  }
  iVar3 = USBD_EP0_BUFSEG;
  (&DAT_40060100)[iVar3] = bVar7;
LAB_0000a028:
  iVar3 = USBD_EP0_BUFSEG;
  (&DAT_40060101)[iVar3] = 0;
  uVar5 = USBD_EP0_CFG;
  USBD_EP0_CFG = uVar5 | 0x80;
  USBD_EP0_MXPLD = 2;
  FUN_00009eb8(0);
  return;
}

