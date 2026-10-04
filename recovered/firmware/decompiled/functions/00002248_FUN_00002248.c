/* Address: 0x00002248; body bytes: 302 */

void FUN_00002248(void)

{
  byte bVar1;
  int iVar2;
  byte bVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  
  cVar4 = DAT_200003c3;
  if (DAT_200003c5 != '\0') {
    return;
  }
  DAT_200003f0 = DAT_200003f0 + 1;
  uVar5 = (uint)DAT_2000040e;
  if (uVar5 < DAT_200003f0) {
    DAT_200003f0 = 0;
    bVar3 = 0;
    if (DAT_200003f3 != 0) {
      do {
        bVar1 = (&DAT_0000cb12)[DAT_200003f2];
        (&DAT_20003c9d)[bVar1] = 3;
        if (cVar4 == '\n') {
          (&DAT_20003d42)[bVar1] = DAT_200003c6;
          DAT_200003c6 = DAT_200003c6 + 1;
          if (6 < DAT_200003c6) {
            DAT_200003c6 = 0;
          }
        }
        uVar6 = DAT_200003f2 + 1;
        DAT_200003f2 = (byte)uVar6;
        if (0xe < (uVar6 & 0xff)) {
          DAT_200003f2 = 0;
        }
        bVar3 = bVar3 + 1;
      } while (bVar3 < DAT_200003f3);
    }
    bVar3 = DAT_200003f3 + 1;
    DAT_200003f3 = DAT_200003f3 + 1;
    if (4 < bVar3) {
      DAT_200003f3 = 1;
    }
  }
  DAT_200003f4 = DAT_200003f4 + 1;
  if (uVar5 + 3 < (uint)DAT_200003f4) {
    uVar5 = 0;
    DAT_200003f4 = 0;
    do {
      iVar2 = uVar5 * 5;
      uVar6 = 4;
      do {
        (&DAT_20003cac)[uVar6 + iVar2] = (&DAT_20003cac)[uVar6 + iVar2 + -1];
        (&DAT_20003cf7)[uVar6 + iVar2] = (&DAT_20003cf7)[uVar6 + iVar2 + -1];
        uVar6 = uVar6 - 1 & 0xff;
      } while (uVar6 != 0);
      bVar3 = (&DAT_20003c9d)[uVar5];
      (&DAT_20003cac)[iVar2] = (&DAT_0000c662)[bVar3];
      (&DAT_20003cf7)[iVar2] = (&DAT_20003d42)[uVar5];
      if (bVar3 != 0) {
        (&DAT_20003c9d)[uVar5] = bVar3 - 1;
      }
      uVar5 = uVar5 + 1 & 0xff;
    } while (uVar5 < 0xf);
    uVar5 = 0;
    do {
      uVar6 = 0;
      do {
        if ((&DAT_20003cac)[uVar6 + uVar5 * 5] == '\0') {
          FUN_000008ec((&DAT_0000c7ac)[uVar5 + uVar6 * 0xf],DAT_200003c2);
        }
        else {
          cVar4 = DAT_200003c3;
          if (DAT_200003c3 == '\n') {
            cVar4 = (&DAT_20003cf7)[uVar6 + uVar5 * 5];
          }
          FUN_0000099c((&DAT_0000c7ac)[uVar5 + uVar6 * 0xf],cVar4);
        }
        uVar6 = uVar6 + 1 & 0xff;
      } while (uVar6 < 5);
      uVar5 = uVar5 + 1 & 0xff;
    } while (uVar5 < 0xf);
  }
  return;
}

