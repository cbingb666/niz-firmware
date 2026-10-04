/* Address: 0x00000b34; body bytes: 288 */

void FUN_00000b34(void)

{
  int iVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  
  if (DAT_200003c5 == '\0') {
    DAT_200003df = DAT_200003df + 1;
    if (DAT_200003e0 < DAT_200003df) {
      DAT_200003df = 0;
      DAT_200003e1 = DAT_200003e1 + 1;
      uVar6 = (uint)DAT_200003e1;
      iVar1 = (uint)DAT_200003e2 * 3;
      if (uVar6 == 1) {
        DAT_20000418 = (&DAT_0000cb7b)[iVar1];
        DAT_20000419 = (&DAT_0000cb7c)[iVar1];
      }
      else if (uVar6 == 8) {
        DAT_20000418 = (&DAT_0000cb7d)[iVar1];
        DAT_20000419 = DAT_20000418;
      }
      uVar3 = DAT_20000418;
      uVar5 = 0;
      do {
        if ((uVar5 < uVar6) && (uVar6 <= uVar5 + 0xf)) {
          uVar2 = uVar3;
          if (1 < uVar5) {
            uVar2 = 7;
          }
          uVar4 = 0;
          DAT_200003e4 = uVar2;
          do {
            iVar1 = uVar4 * 0xf;
            uVar4 = uVar4 + 1 & 0xff;
            (&DAT_20003bbe)[iVar1 + (uVar6 - uVar5)] = uVar2;
          } while (uVar4 < 5);
        }
        uVar2 = DAT_20000419;
        uVar5 = uVar5 + 1 & 0xff;
      } while (uVar5 < 3);
      uVar5 = 0;
      do {
        if ((uVar5 < uVar6) && (uVar6 <= uVar5 + 0xf)) {
          uVar3 = uVar2;
          if (1 < uVar5) {
            uVar3 = 7;
          }
          uVar4 = 0;
          DAT_200003e4 = uVar3;
          do {
            iVar1 = uVar4 * 0xf;
            uVar4 = uVar4 + 1 & 0xff;
            (&DAT_20003bce)[iVar1 + (uVar5 - uVar6)] = uVar3;
          } while (uVar4 < 5);
        }
        uVar5 = uVar5 + 1 & 0xff;
      } while (uVar5 < 3);
      uVar6 = 0;
      do {
        uVar5 = 0;
        do {
          FUN_000008ec((&DAT_0000c7ac)[uVar5 + uVar6 * 0xf],(&DAT_20003bbf)[uVar5 + uVar6 * 0xf]);
          uVar5 = uVar5 + 1 & 0xff;
        } while (uVar5 < 0xf);
        uVar6 = uVar6 + 1 & 0xff;
      } while (uVar6 < 5);
      if (0x10 < DAT_200003e1) {
        DAT_200003e1 = 0;
        DAT_200003e2 = DAT_200003e2 + 1;
        if (5 < DAT_200003e2) {
          DAT_200003e4 = 0;
          DAT_200003e2 = 0;
        }
      }
    }
    return;
  }
  return;
}

