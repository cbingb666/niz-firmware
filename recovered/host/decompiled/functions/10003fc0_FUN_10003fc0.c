/* Address: 0x10003fc0; body bytes: 121 */

void __fastcall FUN_10003fc0(uint param_1)

{
  int *piVar1;
  uint in_EAX;
  uint uVar2;
  int iVar3;
  uint extraout_ECX;
  int *piVar4;
  int *unaff_ESI;
  
  uVar2 = unaff_ESI[4];
  if (uVar2 < param_1) {
    uVar2 = FUN_10004b4c("invalid string position");
    param_1 = extraout_ECX;
  }
  uVar2 = uVar2 - param_1;
  if (uVar2 < in_EAX) {
    in_EAX = uVar2;
  }
  if (in_EAX != 0) {
    piVar4 = unaff_ESI;
    piVar1 = unaff_ESI;
    if (7 < (uint)unaff_ESI[5]) {
      piVar4 = (int *)*unaff_ESI;
      piVar1 = (int *)*unaff_ESI;
    }
    FID_conflict__memcpy
              ((void *)((int)piVar4 + param_1 * 2),(void *)((int)piVar1 + (param_1 + in_EAX) * 2),
               (uVar2 - in_EAX) * 2);
    iVar3 = unaff_ESI[4] - in_EAX;
    unaff_ESI[4] = iVar3;
    if (7 < (uint)unaff_ESI[5]) {
      *(undefined2 *)(*unaff_ESI + iVar3 * 2) = 0;
      return;
    }
    *(undefined2 *)((int)unaff_ESI + iVar3 * 2) = 0;
  }
  return;
}

