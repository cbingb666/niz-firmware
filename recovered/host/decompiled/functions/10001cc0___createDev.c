/* Address: 0x10001cc0; body bytes: 85 */

/* public: bool __thiscall CKB75HWI::__createDev(void) */

bool __thiscall CKB75HWI::__createDev(CKB75HWI *this)

{
  undefined4 uVar1;
  int iVar2;
  
                    /* 0x1cc0  13  ?__createDev@CKB75HWI@@QAE_NXZ */
  if (*(int *)this != 0) {
    return true;
  }
  uVar1 = FUN_10002530();
  *(undefined4 *)this = uVar1;
  GetLastError();
  if (*(int *)this != 0) {
    iVar2 = FUN_10005071(0x1dc);
    if (iVar2 != 0) {
      uVar1 = FUN_10001450();
      *(undefined4 *)(this + 4) = uVar1;
      return *(int *)this != 0;
    }
    *(undefined4 *)(this + 4) = 0;
  }
  return *(int *)this != 0;
}

