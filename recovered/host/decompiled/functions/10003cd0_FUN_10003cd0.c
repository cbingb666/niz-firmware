/* Address: 0x10003cd0; body bytes: 168 */

void FUN_10003cd0(int *param_1,uint param_2)

{
  size_t _Size;
  bool bVar1;
  uint in_EAX;
  int *piVar2;
  int *extraout_ECX;
  uint uVar3;
  int *unaff_EDI;
  
  uVar3 = param_1[4];
  piVar2 = param_1;
  if (uVar3 < param_2) {
    in_EAX = FUN_10004b4c("invalid string position");
    piVar2 = extraout_ECX;
  }
  uVar3 = uVar3 - param_2;
  if (in_EAX < uVar3) {
    uVar3 = in_EAX;
  }
  if (unaff_EDI != piVar2) {
    bVar1 = FUN_10004040();
    if (bVar1) {
      if (7 < (uint)param_1[5]) {
        param_1 = (int *)*param_1;
      }
      piVar2 = unaff_EDI;
      if (7 < (uint)unaff_EDI[5]) {
        piVar2 = (int *)*unaff_EDI;
      }
      _Size = uVar3 * 2;
      FID_conflict__memcpy(piVar2,(void *)((int)param_1 + param_2 * 2),_Size);
      unaff_EDI[4] = uVar3;
      if (7 < (uint)unaff_EDI[5]) {
        *(undefined2 *)(_Size + *unaff_EDI) = 0;
        return;
      }
      *(undefined2 *)(_Size + (int)unaff_EDI) = 0;
    }
    return;
  }
  FUN_10003fc0(uVar3 + param_2);
  FUN_10003fc0(0);
  return;
}

