/* Address: 0x000008ec; body bytes: 150 */

void FUN_000008ec(uint param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  if ((0x41 < param_1) || ((DAT_20000c5e == '\0' && (param_1 == 0)))) {
    return;
  }
  iVar1 = param_1 * 3;
  if (param_2 < 8) {
    iVar2 = param_2 * 3;
    (&DAT_20003880)[iVar1] = (&DAT_0000c86b)[iVar2];
    (&DAT_20003881)[iVar1] = (&DAT_0000c86c)[iVar2];
    (&DAT_20003882)[iVar1] = (&DAT_0000c86d)[iVar2];
    return;
  }
  if (9 < param_2) {
    if (param_2 == 10) {
      iVar2 = (uint)DAT_200003c6 * 3;
      (&DAT_20003880)[iVar1] = (&DAT_0000c86b)[iVar2];
      (&DAT_20003881)[iVar1] = (&DAT_0000c86c)[iVar2];
      (&DAT_20003882)[iVar1] = (&DAT_0000c86d)[iVar2];
      uVar3 = DAT_200003c6 + 1;
      DAT_200003c6 = (byte)uVar3;
      if (6 < (uVar3 & 0xff)) {
        DAT_200003c6 = 0;
        return;
      }
    }
    else {
      if (param_2 == 0xb) {
        (&DAT_20003880)[iVar1] = (&DAT_20003946)[iVar1];
        (&DAT_20003881)[iVar1] = (&DAT_20003947)[iVar1];
        (&DAT_20003882)[iVar1] = (&DAT_20003948)[iVar1];
        return;
      }
      if (param_2 != 0xc) {
        return;
      }
      FUN_0000162c(param_1,0xff);
    }
    return;
  }
  (&DAT_20003880)[iVar1] = DAT_2000041a;
  (&DAT_20003881)[iVar1] = DAT_2000041b;
  (&DAT_20003882)[iVar1] = DAT_2000041c;
  return;
}

