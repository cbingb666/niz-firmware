/* Address: 0x100023d0; body bytes: 13 */

/* public: bool __thiscall CKB75HWI::ReadKeyboardVersion(wchar_t *) */

bool __thiscall CKB75HWI::ReadKeyboardVersion(CKB75HWI *this,wchar_t *param_1)

{
  undefined1 uVar1;
  
                    /* 0x23d0  9  ?ReadKeyboardVersion@CKB75HWI@@QAE_NPA_W@Z */
                    /* WARNING: Could not recover jumptable at 0x100023db. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  uVar1 = (**(code **)(**(int **)this + 8))();
  return (bool)uVar1;
}

