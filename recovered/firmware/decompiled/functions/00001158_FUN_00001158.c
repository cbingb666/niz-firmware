/* Address: 0x00001158; body bytes: 344 */

void FUN_00001158(void)

{
  undefined1 uVar1;
  undefined1 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  byte bVar9;
  
  if ((DAT_200003c5 == '\0') && (DAT_200003cf = DAT_200003cf + 1, DAT_200003d0 < DAT_200003cf)) {
    uVar6 = 0;
    DAT_200003cf = 0;
    uVar8 = 0;
    do {
      uVar7 = DAT_200003d1 + uVar8 & 0xff;
      if (0x1b < uVar7) {
        uVar7 = uVar7 - 0x1c & 0xff;
      }
      if (DAT_200003d2 == '\0') {
        bVar9 = 0;
        if ((&UNK_0000c952)[-uVar8] != '\0') {
          iVar3 = uVar7 * 3;
          do {
            uVar5 = (uint)(byte)(&UNK_0000c994)[-uVar6];
            uVar6 = uVar6 + 1 & 0xff;
            if (DAT_200003c3 == '\n') {
              uVar1 = (&DAT_0000c890)[iVar3];
              uVar2 = (&DAT_0000c88f)[iVar3];
              if ((uVar5 < 0x42) && ((DAT_20000c5e != '\0' || (uVar5 != 0)))) {
                iVar4 = uVar5 * 3;
                (&DAT_20003880)[iVar4] = (&DAT_0000c88e)[iVar3];
                (&DAT_20003881)[iVar4] = uVar2;
                (&DAT_20003882)[iVar4] = uVar1;
              }
            }
            else if ((&DAT_0000c8e2)[uVar7] == '\0') {
              FUN_000008ec(uVar5,DAT_200003c2);
            }
            else {
              FUN_0000099c();
            }
            bVar9 = bVar9 + 1;
          } while (bVar9 < (byte)(&UNK_0000c952)[-uVar8]);
        }
      }
      else {
        bVar9 = 0;
        if ((&DAT_0000c937)[uVar8] != '\0') {
          iVar3 = uVar7 * 3;
          do {
            uVar5 = (uint)(byte)(&DAT_0000c953)[uVar6];
            uVar6 = uVar6 + 1 & 0xff;
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
            else if ((&DAT_0000c8e2)[uVar7] == '\0') {
              FUN_000008ec(uVar5,DAT_200003c2);
            }
            else {
              FUN_0000099c();
            }
            bVar9 = bVar9 + 1;
          } while (bVar9 < (byte)(&DAT_0000c937)[uVar8]);
        }
      }
      uVar8 = uVar8 + 1 & 0xff;
    } while (uVar8 < 0x1c);
    DAT_200003d1 = DAT_200003d1 + 1;
    if (0x1b < DAT_200003d1) {
      DAT_200003d1 = 0;
    }
    return;
  }
  return;
}

