/* Address: 0x100023f0; body bytes: 42 */

/* public: bool __thiscall CKB75HWI::getPressCounterFromDev(int *) */

bool __thiscall CKB75HWI::getPressCounterFromDev(CKB75HWI *this,int *param_1)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x23f0  17  ?getPressCounterFromDev@CKB75HWI@@QAE_NPAH@Z */
  read_press_counter_stream();
  piVar2 = (int *)(*(int *)(this + 4) + 0xd4);
  for (iVar1 = 0x42; iVar1 != 0; iVar1 = iVar1 + -1) {
    *param_1 = *piVar2;
    piVar2 = piVar2 + 1;
    param_1 = param_1 + 1;
  }
  return true;
}

