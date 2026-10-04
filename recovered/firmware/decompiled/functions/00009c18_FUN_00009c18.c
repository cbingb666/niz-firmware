/* Address: 0x00009c18; body bytes: 160 */

void FUN_00009c18(void)

{
  byte *pbVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  
  uVar2 = (uint)DAT_2000046e + (uint)DAT_2000046f * 0x100;
  if (DAT_2000046b == 3) {
    if (6 < DAT_2000046a) {
LAB_00009caa:
      uVar2 = USBD_EP0_CFGP;
      USBD_EP0_CFGP = uVar2 | 2;
      uVar2 = USBD_EP1_CFGP;
      USBD_EP1_CFGP = uVar2 | 2;
      return;
    }
    pbVar1 = *(byte **)(DAT_20000464[2] + (uint)DAT_2000046a * 4);
    uVar3 = (uint)*pbVar1;
  }
  else {
    if (3 < DAT_2000046b) {
      iVar4 = (uint)DAT_2000046c * 4;
      if (DAT_2000046b == 0x21) {
        if (8 < uVar2) {
          uVar2 = 9;
        }
        pbVar1 = (byte *)(DAT_20000464[1] + *(int *)(DAT_20000464[5] + iVar4));
      }
      else {
        if (DAT_2000046b != 0x22) goto LAB_00009caa;
        if (*(uint *)(DAT_20000464[4] + iVar4) <= uVar2) {
          uVar2 = *(uint *)(DAT_20000464[4] + iVar4);
        }
        pbVar1 = *(byte **)(DAT_20000464[3] + iVar4);
      }
      goto LAB_00009c9c;
    }
    if (DAT_2000046b == 1) {
      if (0x11 < uVar2) {
        uVar2 = 0x12;
      }
      pbVar1 = (byte *)*DAT_20000464;
      goto LAB_00009c9c;
    }
    if (DAT_2000046b != 2) goto LAB_00009caa;
    pbVar1 = (byte *)DAT_20000464[1];
    uVar3 = (uint)pbVar1[2] + (uint)pbVar1[3] * 0x100;
  }
  if (uVar3 <= uVar2) {
    uVar2 = uVar3;
  }
LAB_00009c9c:
  FUN_00009e44(pbVar1,uVar2);
  FUN_00009eb8(0);
  return;
}

