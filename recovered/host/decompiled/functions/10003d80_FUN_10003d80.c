/* Address: 0x10003d80; body bytes: 189 */

int FUN_10003d80(ushort *param_1,ushort *param_2,uint param_3)

{
  uint uVar1;
  ushort *puVar2;
  ushort *puVar3;
  ushort *puVar4;
  ushort *puVar5;
  int iVar6;
  int iVar7;
  
  if (param_3 == 0) {
    return 0;
  }
  uVar1 = *(uint *)(param_1 + 8);
  if ((uVar1 != 0) && (param_3 <= uVar1)) {
    iVar7 = uVar1 + (1 - param_3);
    puVar4 = param_1;
    if (7 < *(uint *)(param_1 + 10)) {
      puVar4 = *(ushort **)param_1;
    }
    while (iVar7 != 0) {
      puVar5 = puVar4;
      iVar6 = iVar7;
      while (*puVar5 != *param_2) {
        puVar5 = puVar5 + 1;
        iVar6 = iVar6 + -1;
        if (iVar6 == 0) {
          return -1;
        }
      }
      puVar2 = param_2;
      uVar1 = param_3;
      puVar3 = puVar5;
      if (puVar5 == (ushort *)0x0) {
        return -1;
      }
      while( true ) {
        if (uVar1 == 0) goto LAB_10003e04;
        if (*puVar3 != *puVar2) break;
        puVar2 = puVar2 + 1;
        uVar1 = uVar1 - 1;
        puVar3 = puVar3 + 1;
      }
      if ((-(uint)(*puVar3 < *puVar2) & 0xfffffffe) == 0xffffffff) {
LAB_10003e04:
        if (7 < *(uint *)(param_1 + 10)) {
          param_1 = *(ushort **)param_1;
        }
        return (int)puVar5 - (int)param_1 >> 1;
      }
      iVar7 = iVar7 + (-1 - ((int)puVar5 - (int)puVar4 >> 1));
      puVar4 = puVar5 + 1;
    }
  }
  return -1;
}

