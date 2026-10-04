/* Address: 0x00000d4c; body bytes: 200 */

void FUN_00000d4c(void)

{
  undefined1 uVar1;
  undefined1 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  byte bVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  
  if ((DAT_200003c5 == '\0') && (DAT_200003d9 = DAT_200003d9 + 1, DAT_200003da < DAT_200003d9)) {
    DAT_200003d9 = 0;
    uVar9 = 0;
    do {
      if (DAT_200003de == '\0') {
        bVar6 = DAT_200003db + (char)uVar9;
      }
      else {
        bVar6 = (DAT_200003db - (char)uVar9) + 4;
      }
      uVar8 = (uint)bVar6;
      if (0x1b < uVar8) {
        uVar8 = uVar8 - 0x1c & 0xff;
      }
      iVar3 = uVar8 * 3;
      uVar7 = 0;
      do {
        uVar5 = (uint)(byte)(&DAT_0000c7ac)[uVar7 + uVar9 * 0xf];
        if (DAT_200003c3 == '\n') {
          uVar1 = (&DAT_0000c88f)[iVar3];
          uVar2 = (&DAT_0000c890)[iVar3];
          if ((uVar5 < 0x42) && ((DAT_20000c5e != '\0' || (uVar5 != 0)))) {
            iVar4 = uVar5 * 3;
            (&DAT_20003880)[iVar4] = (&DAT_0000c88e)[iVar3];
            (&DAT_20003881)[iVar4] = uVar1;
            (&DAT_20003882)[iVar4] = uVar2;
          }
        }
        else if ((&DAT_0000c8fe)[uVar8] == '\0') {
          FUN_000008ec(uVar5,DAT_200003c2);
        }
        else {
          FUN_0000099c();
        }
        uVar7 = uVar7 + 1 & 0xff;
      } while (uVar7 < 0xf);
      uVar9 = uVar9 + 1 & 0xff;
    } while (uVar9 < 5);
    DAT_200003db = DAT_200003db + 1;
    if (0x1b < DAT_200003db) {
      DAT_200003db = 0;
    }
    return;
  }
  return;
}

