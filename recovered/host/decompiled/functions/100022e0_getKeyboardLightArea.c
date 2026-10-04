/* Address: 0x100022e0; body bytes: 86 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* public: bool __thiscall CKB75HWI::getKeyboardLightArea(int *) */

bool __thiscall CKB75HWI::getKeyboardLightArea(CKB75HWI *this,int *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  byte *pbVar3;
  byte local_d0 [204];
  
                    /* 0x22e0  16  ?getKeyboardLightArea@CKB75HWI@@QAE_NPAH@Z */
  puVar2 = (undefined4 *)(*(int *)(this + 4) + 0xc);
  pbVar3 = local_d0;
  for (iVar1 = 0x31; iVar1 != 0; iVar1 = iVar1 + -1) {
    *(undefined4 *)pbVar3 = *puVar2;
    puVar2 = puVar2 + 1;
    pbVar3 = pbVar3 + 4;
  }
  *(undefined2 *)pbVar3 = *(undefined2 *)puVar2;
  iVar1 = 0;
  do {
    param_1[iVar1] = (uint)local_d0[iVar1];
    iVar1 = iVar1 + 1;
  } while (iVar1 < 0xc6);
  return true;
}

