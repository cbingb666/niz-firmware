/* Address: 0x10002340; body bytes: 52 */

/* public: bool __thiscall CKB75HWI::prepare(void) */

bool __thiscall CKB75HWI::prepare(CKB75HWI *this)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  
                    /* 0x2340  18  ?prepare@CKB75HWI@@QAE_NXZ */
  iVar1 = *(int *)(this + 4);
  iVar3 = 0;
  do {
    pvVar2 = *(void **)(iVar3 + *(int *)(iVar1 + 8));
    if (pvVar2 != (void *)0x0) {
      FUN_10004d04(pvVar2);
    }
    *(undefined4 *)(iVar3 + *(int *)(iVar1 + 8)) = 0;
    iVar3 = iVar3 + 4;
  } while (iVar3 < 0x948);
  return true;
}

