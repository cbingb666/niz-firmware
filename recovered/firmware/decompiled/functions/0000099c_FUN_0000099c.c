/* Address: 0x0000099c; body bytes: 136 */

void FUN_0000099c(uint param_1,uint param_2,undefined4 param_3)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  
  if (0x41 < param_1) {
    return;
  }
  if ((DAT_20000c5e != '\0') || (param_1 != 0)) {
    iVar2 = param_1 * 3;
    if (7 < param_2) {
      if (param_2 < 10) {
        (&DAT_20003880)[iVar2] = DAT_2000041a;
        (&DAT_20003881)[iVar2] = DAT_2000041b;
        (&DAT_20003882)[iVar2] = DAT_2000041c;
      }
      else {
        if (param_2 == 0xb) {
          (&DAT_20003880)[iVar2] = (&DAT_20003946)[iVar2];
          (&DAT_20003881)[iVar2] = (&DAT_20003947)[iVar2];
          (&DAT_20003882)[iVar2] = (&DAT_20003948)[iVar2];
          return;
        }
        if (param_2 == 0xc) {
          FUN_0000162c(param_1,param_3);
          return;
        }
      }
      return;
    }
    iVar3 = param_2 * 3;
    uVar1 = (undefined1)param_3;
    if ((&DAT_0000c86b)[iVar3] == '\0') {
      (&DAT_20003880)[iVar2] = 0;
    }
    else {
      (&DAT_20003880)[iVar2] = uVar1;
    }
    if ((&DAT_0000c86c)[iVar3] == '\0') {
      (&DAT_20003881)[iVar2] = 0;
    }
    else {
      (&DAT_20003881)[iVar2] = uVar1;
    }
    if ((&DAT_0000c86d)[iVar3] == '\0') {
      (&DAT_20003882)[iVar2] = 0;
      return;
    }
    (&DAT_20003882)[iVar2] = uVar1;
  }
  return;
}

