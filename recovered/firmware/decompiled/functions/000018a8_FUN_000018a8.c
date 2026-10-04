/* Address: 0x000018a8; body bytes: 134 */

void FUN_000018a8(void)

{
  byte bVar1;
  ushort uVar2;
  char cVar3;
  uint uVar4;
  uint uVar5;
  
  uVar5 = 0;
  do {
    uVar4 = 0;
    do {
      uVar2 = (&DAT_0000c19e)[uVar4];
      if (((&matrix_pressed_bits)[uVar5] & uVar2) == 0) {
        if (((&DAT_2000386a)[uVar5] & uVar2) != 0) {
          (&DAT_2000386a)[uVar5] = (&DAT_2000386a)[uVar5] & (&DAT_0000c1be)[uVar4];
        }
        bVar1 = (&DAT_20003a0c)[uVar4 + uVar5 * 6];
        if (bVar1 != 0) {
          if (bVar1 < DAT_200003cc) {
            cVar3 = '\0';
          }
          else {
            cVar3 = bVar1 - DAT_200003cc;
          }
          (&DAT_20003a0c)[uVar4 + uVar5 * 6] = cVar3;
          FUN_00008b14(uVar5,uVar4,0,DAT_20000c72);
        }
      }
      else if (((&DAT_2000386a)[uVar5] & uVar2) == 0) {
        (&DAT_2000386a)[uVar5] = (&DAT_2000386a)[uVar5] | uVar2;
        FUN_00008b14(uVar5,uVar4,1,DAT_20000c72);
      }
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 6);
    uVar5 = uVar5 + 1 & 0xff;
  } while (uVar5 < 0xb);
  return;
}

