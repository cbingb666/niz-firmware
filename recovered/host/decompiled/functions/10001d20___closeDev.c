/* Address: 0x10001d20; body bytes: 80 */

/* public: bool __thiscall CKB75HWI::__closeDev(void) */

bool __thiscall CKB75HWI::__closeDev(CKB75HWI *this)

{
  void *pvVar1;
  undefined4 *puVar2;
  
                    /* 0x1d20  12  ?__closeDev@CKB75HWI@@QAE_NXZ */
  pvVar1 = *(void **)(this + 4);
  if (pvVar1 != (void *)0x0) {
    FUN_10001490();
    FUN_10004d04(pvVar1);
  }
  puVar2 = *(undefined4 **)this;
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = CKeyboardUtil::vftable;
    if ((HANDLE)puVar2[1] != (HANDLE)0x0) {
      CloseHandle((HANDLE)puVar2[1]);
    }
    FUN_10004d04(puVar2);
  }
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return true;
}

