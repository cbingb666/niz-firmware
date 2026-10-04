/* Address: 0x10002390; body bytes: 12 */

/* public: bool __thiscall CKB75HWI::readKeyDefinationFromDev(struct HWND__ *) */

bool __thiscall CKB75HWI::readKeyDefinationFromDev(CKB75HWI *this,HWND__ *param_1)

{
  bool bVar1;
  
                    /* 0x2390  19  ?readKeyDefinationFromDev@CKB75HWI@@QAE_NPAUHWND__@@@Z */
  bVar1 = (bool)read_key_configuration_stream(*(void **)(this + 4),param_1);
  return bVar1;
}

