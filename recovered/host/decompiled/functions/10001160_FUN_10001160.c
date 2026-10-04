/* Address: 0x10001160; body bytes: 114 */

void FUN_10001160(void)

{
  void *_Dst;
  void *_Src;
  uint in_EAX;
  uint uVar1;
  int iVar2;
  int *unaff_ESI;
  undefined4 *puVar3;
  
  _Src = (void *)unaff_ESI[1];
  uVar1 = (int)_Src - *unaff_ESI >> 2;
  if (in_EAX < uVar1) {
    _Dst = (void *)(*unaff_ESI + in_EAX * 4);
    if (_Dst != _Src) {
      FID_conflict__memcpy(_Dst,_Src,0);
      unaff_ESI[1] = (int)_Dst;
      return;
    }
  }
  else if (uVar1 < in_EAX) {
    FUN_100011e0(in_EAX - uVar1);
    puVar3 = (undefined4 *)unaff_ESI[1];
    iVar2 = in_EAX - ((int)puVar3 - *unaff_ESI >> 2);
    if (iVar2 != 0) {
      for (; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar3 = 0;
        puVar3 = puVar3 + 1;
      }
    }
    unaff_ESI[1] = unaff_ESI[1] + (in_EAX - (unaff_ESI[1] - *unaff_ESI >> 2)) * 4;
  }
  return;
}

