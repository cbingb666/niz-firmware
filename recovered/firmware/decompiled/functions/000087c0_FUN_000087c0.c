/* Address: 0x000087c0; body bytes: 508 */

int FUN_000087c0(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  int iVar15;
  
  uVar3 = param_3 - 1;
  uVar4 = param_3 - 0x7f;
  uVar5 = param_3 - 0xd2;
  uVar6 = param_3 - 0xcc;
  uVar7 = param_4 - 1;
  uVar8 = param_4 - 0x7f;
  uVar9 = param_4 - 0xd2;
  uVar10 = param_4 - 0xcc;
  uVar11 = param_5 - 1;
  uVar12 = param_5 - 0x7f;
  uVar13 = param_5 - 0xd2;
  uVar14 = param_5 - 0xcc;
  iVar15 = 0;
  if (DAT_20000c6c == '\0') {
    if ((DAT_20000371 != '\0') && (param_1 == 0)) {
      if ((param_2 - 0x6cU < 0x13) ||
         (((param_2 - 0x87U < 0x40 && (param_2 != 0x9a)) || (param_2 - 0xd0U < 2)))) {
        iVar2 = param_3;
        if (((((0x6a < uVar3) && (7 < uVar4)) && (0xb < uVar5)) &&
            (((2 < uVar6 && (param_3 != 0x9a)) &&
             ((((iVar2 = param_4, 0x6a < uVar7 &&
                ((((7 < uVar8 && (0xb < uVar9)) && (2 < uVar10)) &&
                 ((param_4 != 0x9a && (iVar2 = param_5, 0x6a < uVar11)))))) && (7 < uVar12)) &&
              ((0xb < uVar13 && (2 < uVar14)))))))) && (param_5 != 0x9a)) {
          iVar2 = iVar15;
        }
        iVar1 = FUN_00006930(0,iVar2);
        iVar15 = iVar2;
      }
      else {
        iVar1 = FUN_00006930(0,param_2);
      }
      if ((((((iVar1 == 0) &&
             ((((uVar3 < 0x6b || (uVar4 < 8)) || (uVar5 < 0xc)) ||
              ((uVar6 < 3 || (param_3 == 0x9a)))))) &&
            (iVar2 = FUN_00006930(0,param_3), iVar15 = param_3, iVar2 == 0)) &&
           ((((uVar7 < 0x6b || (uVar8 < 8)) ||
             ((uVar9 < 0xc || ((uVar10 < 3 || (param_4 == 0x9a)))))) &&
            (iVar2 = FUN_00006930(0,param_4), iVar15 = param_4, iVar2 == 0)))) &&
          ((((uVar11 < 0x6b || (uVar12 < 8)) || (uVar13 < 0xc)) ||
           ((uVar14 < 3 || (param_5 == 0x9a)))))) &&
         (iVar2 = FUN_00006930(0,param_5), iVar15 = param_5, iVar2 == 0)) {
        iVar15 = param_2;
      }
    }
  }
  else if (((param_2 - 0x6cU < 0x13) || ((param_2 - 0x87U < 0x40 && (param_2 != 0x9a)))) ||
          (param_2 - 0xd0U < 2)) {
    if (((((((0x6a < uVar3) && (7 < uVar4)) && (0xb < uVar5)) && ((2 < uVar6 && (param_3 != 0x9a))))
         && (param_3 = param_4, 0x6a < uVar7)) &&
        (((7 < uVar8 && (0xb < uVar9)) &&
         ((2 < uVar10 && (((param_4 != 0x9a && (param_3 = param_5, 0x6a < uVar11)) && (7 < uVar12)))
          ))))) && (((0xb < uVar13 && (2 < uVar14)) && (param_5 != 0x9a)))) {
      param_3 = iVar15;
    }
    FUN_00006930(param_1,param_3);
    iVar15 = param_3;
  }
  else {
    FUN_00006930(param_1,param_2);
  }
  return iVar15;
}

