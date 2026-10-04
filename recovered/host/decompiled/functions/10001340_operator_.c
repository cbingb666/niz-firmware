/* Address: 0x10001340; body bytes: 25 */

/* public: class CKB75HWI & __thiscall CKB75HWI::operator=(class CKB75HWI const &) */

CKB75HWI * __thiscall CKB75HWI::operator=(CKB75HWI *this,CKB75HWI *param_1)

{
  int iVar1;
  CKB75HWI *pCVar2;
  
                    /* 0x1340  3  ??4CKB75HWI@@QAEAAV0@ABV0@@Z */
  pCVar2 = this;
  for (iVar1 = 0x22; iVar1 != 0; iVar1 = iVar1 + -1) {
    *(undefined4 *)pCVar2 = *(undefined4 *)param_1;
    param_1 = param_1 + 4;
    pCVar2 = pCVar2 + 4;
  }
  return this;
}

