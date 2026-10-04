/* Address: 0x0000162c; body bytes: 108 */

void FUN_0000162c(int param_1,undefined1 param_2)

{
  bool bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  uint uVar6;
  
  iVar5 = param_1 * 3;
  bVar4 = (&DAT_20003946)[iVar5];
  if (bVar4 == 0) {
    (&DAT_20003880)[iVar5] = param_2;
  }
  else {
    (&DAT_20003880)[iVar5] = 0;
  }
  param_1 = param_1 * 3;
  bVar2 = (&DAT_20003947)[iVar5];
  if (bVar2 == 0) {
    (&DAT_20003881)[param_1] = param_2;
  }
  else {
    (&DAT_20003881)[param_1] = 0;
  }
  bVar3 = (&DAT_20003948)[iVar5];
  if (bVar3 == 0) {
    (&DAT_20003882)[param_1] = param_2;
  }
  else {
    (&DAT_20003882)[param_1] = 0;
  }
  if (((bVar4 != 0) && (bVar2 != 0)) && (bVar3 != 0)) {
    (&DAT_20003880)[iVar5] = param_2;
    (&DAT_20003881)[param_1] = param_2;
    (&DAT_20003882)[param_1] = param_2;
    bVar1 = bVar4 <= bVar2;
    if (!bVar1) {
      bVar2 = bVar4;
    }
    uVar6 = (uint)bVar1;
    if (bVar2 < bVar3) {
      uVar6 = 2;
    }
    (&DAT_20003880)[uVar6 + param_1] = 0;
  }
  return;
}

