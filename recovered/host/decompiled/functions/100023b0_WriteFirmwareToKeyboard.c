/* Address: 0x100023b0; body bytes: 25 */

/* public: bool __thiscall CKB75HWI::WriteFirmwareToKeyboard(char *,int,struct HWND__ *) */

bool __thiscall
CKB75HWI::WriteFirmwareToKeyboard(CKB75HWI *this,char *param_1,int param_2,HWND__ *param_3)

{
  uint uVar1;
  
                    /* 0x23b0  11  ?WriteFirmwareToKeyboard@CKB75HWI@@QAE_NPADHPAUHWND__@@@Z */
  uVar1 = send_firmware_text_records(param_3,param_1,*(undefined4 **)this,param_2);
  return SUB41(uVar1,0);
}

