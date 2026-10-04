/* Address: 0x000096bc; body bytes: 238 */

void FUN_000096bc(void)

{
  undefined1 uVar1;
  undefined1 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  uVar6 = 0x11;
  do {
    iVar4 = uVar6 * 2;
    (&DAT_20003d51)[iVar4] = *(undefined1 *)(iVar4 + 0x20003d4f);
    (&DAT_20003d52)[iVar4] = *(undefined1 *)(iVar4 + 0x20003d50);
    uVar6 = uVar6 - 1 & 0xff;
  } while (uVar6 != 0);
  DAT_20003d51 = DAT_200003f8;
  if (DAT_200003c3 == '\n') {
    DAT_20003d52 = DAT_200003c6;
    DAT_200003c6 = DAT_200003c6 + 1;
    if (6 < DAT_200003c6) {
      DAT_200003c6 = 0;
    }
  }
  uVar6 = 0;
  if (DAT_200003f8 != '\0') {
    DAT_200003f8 = DAT_200003f8 + -1;
  }
  do {
    uVar7 = 0;
    do {
      uVar5 = (uint)(byte)(&DAT_20003d51)[uVar6 * 2];
      if (uVar5 == 0) {
        FUN_000008ec((&DAT_0000cb21)[uVar6 + uVar7 * 0x12],DAT_200003c2);
      }
      else if (DAT_200003c3 == '\n') {
        iVar4 = uVar5 * 3;
        uVar5 = (uint)(byte)(&DAT_0000cb21)[uVar6 + uVar7 * 0x12];
        uVar1 = (&DAT_0000c88f)[iVar4];
        uVar2 = (&DAT_0000c890)[iVar4];
        if ((uVar5 < 0x42) && ((DAT_20000c5e != '\0' || (uVar5 != 0)))) {
          iVar3 = uVar5 * 3;
          (&DAT_20003880)[iVar3] = (&DAT_0000c88e)[iVar4];
          (&DAT_20003881)[iVar3] = uVar1;
          (&DAT_20003882)[iVar3] = uVar2;
        }
      }
      else {
        FUN_0000099c((&DAT_0000cb21)[uVar6 + uVar7 * 0x12],DAT_200003c3,(&DAT_0000c91a)[uVar5]);
      }
      uVar7 = uVar7 + 1 & 0xff;
    } while (uVar7 < 5);
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 0x12);
  DAT_200003f7 = DAT_200003f7 + 1;
  if (0x2d < DAT_200003f7) {
    DAT_200003f7 = 0;
    DAT_200003fa = 7;
    DAT_200003f9 = 1;
    DAT_2000040f = DAT_2000040f + -2;
  }
  return;
}

