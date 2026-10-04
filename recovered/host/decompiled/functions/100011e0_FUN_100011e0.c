/* Address: 0x100011e0; body bytes: 85 */

void __fastcall FUN_100011e0(int param_1)

{
  int *in_EAX;
  uint uVar1;
  uint uVar2;
  int extraout_ECX;
  undefined8 uVar3;
  
  uVar1 = in_EAX[1] - *in_EAX >> 2;
  uVar3 = CONCAT44(*in_EAX,uVar1);
  if (0x3fffffffU - param_1 < uVar1) {
    uVar3 = FUN_10004aff("vector<T> too long");
    param_1 = extraout_ECX;
  }
  uVar2 = (int)uVar3 + param_1;
  uVar1 = in_EAX[2] - (int)((ulonglong)uVar3 >> 0x20) >> 2;
  if (uVar1 < uVar2) {
    if (0x3fffffff - (uVar1 >> 1) < uVar1) {
      uVar1 = 0;
    }
    else {
      uVar1 = uVar1 + (uVar1 >> 1);
    }
    if (uVar1 < uVar2) {
      uVar1 = uVar2;
    }
    FUN_10001240(uVar1);
  }
  return;
}

