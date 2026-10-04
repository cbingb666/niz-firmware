/* Address: 0x10001d90; body bytes: 668 */

/* public: bool __thiscall CKB75HWI::setKeyConfiguration(int,int,int *,int) */

bool __thiscall
CKB75HWI::setKeyConfiguration(CKB75HWI *this,int param_1,int param_2,int *param_3,int param_4)

{
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  undefined4 *puVar7;
  
                    /* 0x1d90  21  ?setKeyConfiguration@CKB75HWI@@QAE_NHHPAHH@Z */
  piVar5 = param_3;
  iVar4 = *param_3;
  iVar6 = param_1 + 1;
  if (iVar4 == 0) {
    param_3 = (int *)FUN_10005071(0x24);
    if (param_3 == (int *)0x0) {
      param_3 = (int *)0x0;
    }
    else {
      param_3[1] = param_2;
      param_3[2] = iVar6;
      *param_3 = (int)CNormalKeyDefine::vftable;
      param_3[4] = 0;
      param_3[5] = 0;
      param_3[6] = 0;
      param_3[3] = 0;
    }
    param_3[8] = piVar5[1];
    pvVar2 = (void *)param_3[4];
    if (pvVar2 != (void *)param_3[5]) {
      FID_conflict__memcpy(pvVar2,(void *)param_3[5],0);
      param_3[5] = (int)pvVar2;
    }
    FUN_10001160();
    iVar4 = 0;
    if (0 < piVar5[1]) {
      do {
        *(int *)(param_3[4] + iVar4 * 4) = piVar5[iVar4 + 2];
        iVar4 = iVar4 + 1;
      } while (iVar4 < piVar5[1]);
    }
  }
  else {
    if (iVar4 != 1) {
      if (iVar4 != 2) {
        return false;
      }
      puVar3 = (undefined4 *)FUN_10005071(0x40);
      puVar7 = (undefined4 *)0x0;
      if (puVar3 != (undefined4 *)0x0) {
        puVar3[1] = param_2;
        puVar3[2] = iVar6;
        *puVar3 = CMacroKeyDefine::vftable;
        puVar3[6] = 0;
        puVar3[7] = 0;
        puVar3[8] = 0;
        puVar3[10] = 0;
        puVar3[0xb] = 0;
        puVar3[0xc] = 0;
        puVar7 = puVar3;
      }
      iVar4 = param_3[1];
      if (iVar4 == 0) {
        puVar7[3] = 2;
      }
      else if (iVar4 == 1) {
        puVar7[3] = 3;
      }
      else if (iVar4 == 2) {
        puVar7[3] = 4;
      }
      puVar7[5] = param_3[2];
      puVar7[4] = param_3[3];
      puVar7[0xf] = param_3[4];
      FUN_10004330((int)puVar7,param_3[5]);
      if (param_3[3] == 0) {
        iVar4 = 0;
        if (0 < param_3[5]) {
          do {
            *(int *)(puVar7[10] + iVar4 * 4) = param_3[iVar4 + 6];
            iVar4 = iVar4 + 1;
          } while (iVar4 < param_3[5]);
        }
      }
      else if ((param_3[3] == 1) && (iVar4 = 0, 0 < param_3[5])) {
        piVar5 = param_3 + 7;
        do {
          *(int *)(puVar7[10] + iVar4 * 4) = piVar5[-1];
          *(int *)(puVar7[6] + iVar4 * 4) = *piVar5;
          iVar4 = iVar4 + 1;
          piVar5 = piVar5 + 2;
        } while (iVar4 < param_3[5]);
      }
      iVar1 = *(int *)(this + 4);
      iVar4 = (param_2 + iVar6 * 0x42) * 4 + -0x10c;
      pvVar2 = *(void **)(iVar4 + *(int *)(iVar1 + 8));
      if (pvVar2 != (void *)0x0) {
        FUN_10004d04(pvVar2);
      }
      *(undefined4 **)(iVar4 + *(int *)(iVar1 + 8)) = puVar7;
      return false;
    }
    param_3 = (int *)FUN_10005071(0x28);
    if (param_3 == (int *)0x0) {
      param_3 = (int *)0x0;
    }
    else {
      param_3[1] = param_2;
      param_3[2] = iVar6;
      *param_3 = (int)CContinousKeyDefine::vftable;
      param_3[5] = 0;
      param_3[6] = 0;
      param_3[7] = 0;
      param_3[3] = 1;
    }
    param_3[4] = piVar5[1];
    param_3[9] = piVar5[2];
    pvVar2 = (void *)param_3[5];
    if (pvVar2 != (void *)param_3[6]) {
      FID_conflict__memcpy(pvVar2,(void *)param_3[6],0);
      param_3[6] = (int)pvVar2;
    }
    FUN_10001160();
    iVar4 = 0;
    if (0 < piVar5[2]) {
      do {
        *(int *)(param_3[5] + iVar4 * 4) = piVar5[iVar4 + 3];
        iVar4 = iVar4 + 1;
      } while (iVar4 < piVar5[2]);
    }
  }
  iVar1 = *(int *)(this + 4);
  iVar4 = (param_2 + iVar6 * 0x42) * 4 + -0x10c;
  pvVar2 = *(void **)(iVar4 + *(int *)(iVar1 + 8));
  if (pvVar2 != (void *)0x0) {
    FUN_10004d04(pvVar2);
  }
  *(int **)(iVar4 + *(int *)(iVar1 + 8)) = param_3;
  return false;
}

