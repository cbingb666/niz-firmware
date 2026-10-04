/* Address: 0x1000416f; body bytes: 96 */

void FUN_1000416f(void)

{
  undefined4 *_Src;
  int iVar1;
  undefined4 *unaff_EBX;
  int unaff_EBP;
  uint unaff_ESI;
  undefined4 *unaff_EDI;
  
  iVar1 = 0;
  if (*(int *)(unaff_EBP + 0x10) != 0) {
    _Src = unaff_EDI;
    if (7 < (uint)unaff_EDI[5]) {
      _Src = (undefined4 *)*unaff_EDI;
    }
    FID_conflict__memcpy(unaff_EBX,_Src,*(int *)(unaff_EBP + 0x10) * 2);
    iVar1 = *(int *)(unaff_EBP + 0x10);
  }
  if (7 < (uint)unaff_EDI[5]) {
    FUN_10004d04((void *)*unaff_EDI);
    iVar1 = *(int *)(unaff_EBP + 0x10);
  }
  *unaff_EDI = unaff_EBX;
  unaff_EDI[5] = unaff_ESI;
  unaff_EDI[4] = iVar1;
  if (7 < unaff_ESI) {
    unaff_EDI = unaff_EBX;
  }
  *(undefined2 *)((int)unaff_EDI + iVar1 * 2) = 0;
  ExceptionList = *(void **)(unaff_EBP + -0xc);
  return;
}

