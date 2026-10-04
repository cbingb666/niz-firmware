/* Address: 0x000097d0; body bytes: 182 */

void FUN_000097d0(void)

{
  undefined1 uVar1;
  undefined1 uVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  byte bVar7;
  
  uVar6 = 8;
  do {
    (&DAT_20003d75)[uVar6] = (&DAT_20003d74)[uVar6];
    uVar6 = uVar6 - 1 & 0xff;
  } while (uVar6 != 0);
  DAT_20003d75 = DAT_200003fa;
  if (DAT_200003fa != '\0') {
    DAT_200003fa = DAT_200003fa + -1;
  }
  uVar5 = 0;
  uVar6 = 0;
  do {
    bVar7 = 0;
    if ((&DAT_0000ca27)[uVar6] != '\0') {
      do {
        uVar4 = (uint)(byte)(&DAT_20003d75)[uVar6];
        if (uVar4 == 0) {
          FUN_000008ec((&DAT_0000c9e5)[uVar5],DAT_200003c2);
        }
        else {
          if (DAT_200003c3 == 10) {
            DAT_200003c6 = DAT_200003c6 + 1;
            if (6 < DAT_200003c6) {
              DAT_200003c6 = 0;
            }
            uVar1 = (&DAT_0000c9e5)[uVar5];
            uVar2 = (&DAT_0000c6be)[uVar4];
            bVar3 = DAT_200003c6;
          }
          else {
            uVar1 = (&DAT_0000c9e5)[uVar5];
            uVar2 = (&DAT_0000c6be)[uVar4];
            bVar3 = DAT_200003c3;
          }
          FUN_0000099c(uVar1,bVar3,uVar2);
        }
        uVar5 = uVar5 + 1 & 0xff;
        bVar7 = bVar7 + 1;
      } while (bVar7 < (byte)(&DAT_0000ca27)[uVar6]);
    }
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 9);
  DAT_200003f7 = DAT_200003f7 + 1;
  if (0x10 < DAT_200003f7) {
    DAT_200003f7 = 0;
    DAT_200003f8 = 0x1c;
    DAT_200003f9 = 0;
    DAT_2000040f = DAT_2000040f + '\x02';
  }
  return;
}

