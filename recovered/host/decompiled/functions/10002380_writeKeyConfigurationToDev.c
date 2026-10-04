/* Address: 0x10002380; body bytes: 12 */

/* public: bool __thiscall CKB75HWI::writeKeyConfigurationToDev(struct HWND__ *) */

bool __thiscall CKB75HWI::writeKeyConfigurationToDev(CKB75HWI *this,HWND__ *param_1)

{
  bool bVar1;
  
                    /* 0x2380  23  ?writeKeyConfigurationToDev@CKB75HWI@@QAE_NPAUHWND__@@@Z */
  bVar1 = write_key_configuration_stream(*(void **)(this + 4),param_1);
  return bVar1;
}

