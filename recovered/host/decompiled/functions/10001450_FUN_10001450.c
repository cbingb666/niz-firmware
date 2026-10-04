/* Address: 0x10001450; body bytes: 57 */

void FUN_10001450(void)

{
  undefined4 in_EAX;
  void *_Dst;
  undefined4 *unaff_ESI;
  
  unaff_ESI[1] = in_EAX;
  *unaff_ESI = CKB75::vftable;
  _Dst = _malloc(0x948);
  unaff_ESI[2] = _Dst;
  _memset(_Dst,0,0x948);
  _memset(unaff_ESI + 3,0,0xc6);
  return;
}

