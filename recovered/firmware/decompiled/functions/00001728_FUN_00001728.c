/* Address: 0x00001728; body bytes: 184 */

void FUN_00001728(int param_1)

{
  byte bVar1;
  ushort uVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  uint uVar6;
  
  uVar6 = 0;
  do {
    uVar4 = 0;
    do {
      uVar2 = (&DAT_0000c19e)[uVar4];
      if (((&matrix_pressed_bits)[uVar6] & uVar2) == 0) {
        if (((&DAT_2000386a)[uVar6] & uVar2) != 0) {
          (&DAT_2000386a)[uVar6] = (&DAT_2000386a)[uVar6] & (&DAT_0000c1be)[uVar4];
        }
      }
      else if (((&DAT_2000386a)[uVar6] & uVar2) == 0) {
        (&DAT_2000386a)[uVar6] = (&DAT_2000386a)[uVar6] | uVar2;
        if (DAT_20000409 < 0x1f) {
          bVar1 = (&DAT_0000c7f7)[uVar4 + uVar6 * 6];
          iVar3 = (uint)DAT_20000409 * 3;
          (&DAT_20003b5f)[iVar3] = (&DAT_0000c728)[(uint)bVar1 * 2];
          (&DAT_20003b60)[iVar3] = (&DAT_0000c729)[(uint)bVar1 * 2];
          (&DAT_20003b61)[iVar3] = 1;
          DAT_20000409 = DAT_20000409 + 1;
        }
      }
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 6);
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 0xb);
  if (param_1 == 0) {
    if ((byte)(DAT_200003ce + 1) <= DAT_20000406) {
      DAT_200003ce = DAT_200003ce + 1;
      return;
    }
    DAT_200003ce = '\0';
    uVar5 = 0;
  }
  else {
    if ((byte)(DAT_200003cd + 1) <= DAT_20000405) {
      DAT_200003cd = DAT_200003cd + 1;
      return;
    }
    DAT_200003cd = '\0';
    uVar5 = 1;
  }
  FUN_00007bec(uVar5);
  return;
}

