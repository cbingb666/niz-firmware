/* Address: 0x10001c70; body bytes: 76 */

/* public: __thiscall CKB75HWI::~CKB75HWI(void) */

void __thiscall CKB75HWI::~CKB75HWI(CKB75HWI *this)

{
  void *pvVar1;
  undefined4 *puVar2;
  
                    /* 0x1c70  2  ??1CKB75HWI@@QAE@XZ */
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
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)this = 0;
  return;
}

