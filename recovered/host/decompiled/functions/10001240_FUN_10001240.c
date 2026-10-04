/* Address: 0x10001240; body bytes: 116 */

void FUN_10001240(uint param_1)

{
  void *pvVar1;
  int iVar2;
  void *_Dst;
  uint extraout_ECX;
  uint uVar3;
  int *unaff_ESI;
  
  uVar3 = param_1;
  if (0x3fffffff < param_1) {
    FUN_10004aff("vector<T> too long");
    uVar3 = extraout_ECX;
  }
  if ((uint)(unaff_ESI[2] - *unaff_ESI >> 2) < uVar3) {
    _Dst = (void *)FUN_100012c0(uVar3);
    FID_conflict__memcpy(_Dst,(void *)*unaff_ESI,(unaff_ESI[1] - *unaff_ESI >> 2) * 4);
    pvVar1 = (void *)*unaff_ESI;
    iVar2 = unaff_ESI[1];
    if (pvVar1 != (void *)0x0) {
      FUN_10004d04(pvVar1);
    }
    *unaff_ESI = (int)_Dst;
    unaff_ESI[2] = (int)((int)_Dst + param_1 * 4);
    unaff_ESI[1] = (int)((int)_Dst + (iVar2 - (int)pvVar1 >> 2) * 4);
  }
  return;
}

