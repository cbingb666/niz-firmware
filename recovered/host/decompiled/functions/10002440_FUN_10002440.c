/* Address: 0x10002440; body bytes: 40 */

void FUN_10002440(void)

{
  LPCWSTR in_EAX;
  HANDLE pvVar1;
  undefined4 *unaff_ESI;
  
  *unaff_ESI = CKeyboardUtil::vftable;
  pvVar1 = CreateFileW(in_EAX,0xc0000000,1,(LPSECURITY_ATTRIBUTES)0x0,3,0,(HANDLE)0x0);
  unaff_ESI[1] = pvVar1;
  *unaff_ESI = CKB75Util::vftable;
  return;
}

