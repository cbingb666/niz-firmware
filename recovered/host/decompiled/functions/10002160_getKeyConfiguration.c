/* Address: 0x10002160; body bytes: 333 */

/* public: bool __thiscall CKB75HWI::getKeyConfiguration(int,int,int *,int) */

bool __thiscall
CKB75HWI::getKeyConfiguration(CKB75HWI *this,int param_1,int param_2,int *param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  
                    /* 0x2160  15  ?getKeyConfiguration@CKB75HWI@@QAE_NHHPAHH@Z */
  iVar1 = *(int *)(*(int *)(*(int *)(this + 4) + 8) + -4 + (param_2 + param_1 * 0x42) * 4);
  iVar3 = 0;
  if (iVar1 == 0) {
    *param_3 = 0;
    param_3[1] = 0;
    return true;
  }
  switch(*(undefined4 *)(iVar1 + 0xc)) {
  case 0:
    *param_3 = 0;
    iVar3 = *(int *)(iVar1 + 0x20);
    iVar2 = 0;
    param_3[1] = iVar3;
    if (0 < iVar3) {
      do {
        param_3[iVar2 + 2] = *(int *)(*(int *)(iVar1 + 0x10) + iVar2 * 4);
        iVar2 = iVar2 + 1;
      } while (iVar2 < param_3[1]);
      return true;
    }
    break;
  case 1:
    *param_3 = 1;
    param_3[1] = *(int *)(iVar1 + 0x10);
    iVar3 = *(int *)(iVar1 + 0x24);
    iVar2 = 0;
    param_3[2] = iVar3;
    if (0 < iVar3) {
      do {
        param_3[iVar2 + 3] = *(int *)(*(int *)(iVar1 + 0x14) + iVar2 * 4);
        iVar2 = iVar2 + 1;
      } while (iVar2 < param_3[2]);
      return true;
    }
    break;
  case 2:
  case 3:
  case 4:
    *param_3 = 2;
    iVar2 = *(int *)(iVar1 + 0xc);
    if (iVar2 == 2) {
      param_3[1] = 0;
    }
    else if (iVar2 == 3) {
      param_3[1] = 1;
    }
    else if (iVar2 == 4) {
      param_3[1] = 2;
    }
    param_3[2] = *(int *)(iVar1 + 0x14);
    param_3[3] = *(int *)(iVar1 + 0x10);
    param_3[4] = *(int *)(iVar1 + 0x3c);
    iVar2 = *(int *)(iVar1 + 0x38);
    param_3[5] = iVar2;
    if (param_3[3] == 0) {
      if (0 < iVar2) {
        do {
          param_3[iVar3 + 6] = *(int *)(*(int *)(iVar1 + 0x28) + iVar3 * 4);
          iVar3 = iVar3 + 1;
        } while (iVar3 < param_3[5]);
        return true;
      }
    }
    else if ((param_3[3] == 1) && (0 < iVar2)) {
      piVar4 = param_3 + 7;
      do {
        piVar4[-1] = *(int *)(*(int *)(iVar1 + 0x28) + iVar3 * 4);
        if (iVar3 != param_3[5] + -1) {
          *piVar4 = *(int *)(*(int *)(iVar1 + 0x18) + iVar3 * 4);
        }
        iVar3 = iVar3 + 1;
        piVar4 = piVar4 + 2;
      } while (iVar3 < param_3[5]);
    }
  }
  return true;
}

