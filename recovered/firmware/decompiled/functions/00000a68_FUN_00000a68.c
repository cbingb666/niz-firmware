/* Address: 0x00000a68; body bytes: 184 */

void FUN_00000a68(uint param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  
  uVar3 = DAT_2000041c;
  uVar2 = DAT_2000041b;
  uVar1 = DAT_2000041a;
  if (param_1 < 8) {
    iVar4 = param_1 * 3;
    uVar6 = 0;
    uVar3 = (&DAT_0000c86b)[iVar4];
    uVar1 = (&DAT_0000c86c)[iVar4];
    uVar2 = (&DAT_0000c86d)[iVar4];
    do {
      iVar4 = uVar6 * 3;
      (&DAT_20003880)[iVar4] = uVar3;
      (&DAT_20003881)[iVar4] = uVar1;
      uVar6 = uVar6 + 1 & 0xff;
      (&DAT_20003882)[iVar4] = uVar2;
    } while (uVar6 < 0x42);
    return;
  }
  if (param_1 < 10) {
    uVar6 = 0;
    do {
      iVar4 = uVar6 * 3;
      (&DAT_20003880)[iVar4] = uVar1;
      (&DAT_20003881)[iVar4] = uVar2;
      uVar6 = uVar6 + 1 & 0xff;
      (&DAT_20003882)[iVar4] = uVar3;
    } while (uVar6 < 0x42);
  }
  else {
    if (param_1 == 10) {
      uVar6 = 0;
      uVar7 = 0;
      do {
        iVar4 = uVar6 * 3;
        iVar5 = (uint)(byte)(&DAT_0000ca30)[uVar7] * 3;
        (&DAT_20003880)[iVar5] = (&DAT_0000c86b)[iVar4];
        (&DAT_20003881)[iVar5] = (&DAT_0000c86c)[iVar4];
        uVar6 = uVar6 + 1 & 0xff;
        (&DAT_20003882)[iVar5] = (&DAT_0000c86d)[iVar4];
        if (6 < uVar6) {
          uVar6 = 0;
        }
        uVar7 = uVar7 + 1 & 0xff;
      } while (uVar7 < 0x42);
      return;
    }
    if (param_1 == 0xb) {
      uVar6 = 0;
      do {
        iVar4 = uVar6 * 3;
        (&DAT_20003880)[iVar4] = (&DAT_20003946)[iVar4];
        (&DAT_20003881)[iVar4] = (&DAT_20003947)[iVar4];
        uVar6 = uVar6 + 1 & 0xff;
        (&DAT_20003882)[iVar4] = (&DAT_20003948)[iVar4];
      } while (uVar6 < 0x42);
      return;
    }
  }
  return;
}

