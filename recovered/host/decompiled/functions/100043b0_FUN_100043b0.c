/* Address: 0x100043b0; body bytes: 331 */

uint __thiscall FUN_100043b0(void *this,undefined4 *param_1,void *param_2,int *param_3)

{
  size_t sVar1;
  uint uVar2;
  void *_Memory;
  int iVar3;
  undefined1 *puVar4;
  undefined4 extraout_EAX;
  size_t _Size;
  size_t sVar5;
  size_t sVar6;
  undefined4 local_18;
  undefined4 local_14;
  undefined2 local_10;
  undefined1 local_8;
  
  sVar6 = *(size_t *)((int)this + 0x38);
  _Size = sVar6;
  if (*(int *)((int)this + 0x10) != 0) {
    _Size = sVar6 * 4;
  }
  sVar1 = (int)param_2 - 0xb;
  uVar2 = ((int)((int)param_2 + (_Size - 0xc)) / (int)sVar1) * (int)param_2;
  *param_3 = uVar2;
  if (param_1 != (undefined4 *)0x0) {
    local_14._0_2_ = CONCAT11(*(undefined1 *)((int)this + 0x14),*(undefined1 *)((int)this + 0xc));
    local_18 = CONCAT22(CONCAT11(*(undefined1 *)((int)this + 4),*(undefined1 *)((int)this + 8)),
                        0xf000);
    local_14 = CONCAT13((char)((uint)*(undefined4 *)((int)this + 0x3c) >> 8),
                        CONCAT12((char)*(undefined4 *)((int)this + 0x10),(undefined2)local_14));
    local_10 = CONCAT11((char)(_Size >> 8),(char)*(undefined4 *)((int)this + 0x3c));
    _Memory = _malloc(_Size);
    sVar5 = _Size;
    param_2 = _Memory;
    if (*(int *)((int)this + 0x10) == 0) {
      iVar3 = 0;
      if (0 < (int)sVar6) {
        do {
          *(undefined1 *)(iVar3 + (int)_Memory) =
               *(undefined1 *)(*(int *)((int)this + 0x28) + iVar3 * 4);
          iVar3 = iVar3 + 1;
        } while (iVar3 < (int)sVar6);
      }
    }
    else {
      iVar3 = 0;
      if (0 < (int)sVar6) {
        puVar4 = (undefined1 *)((int)_Memory + 1);
        do {
          puVar4[-1] = *(undefined1 *)(*(int *)((int)this + 0x28) + iVar3 * 4);
          *puVar4 = 200;
          puVar4[1] = (char)((uint)*(undefined4 *)(*(int *)((int)this + 0x18) + iVar3 * 4) >> 8);
          puVar4[2] = *(undefined1 *)(*(int *)((int)this + 0x18) + iVar3 * 4);
          iVar3 = iVar3 + 1;
          puVar4 = puVar4 + 4;
        } while (iVar3 < (int)sVar6);
      }
    }
    while( true ) {
      *param_1 = local_18;
      local_8 = (undefined1)_Size;
      param_1[1] = local_14;
      *(undefined2 *)(param_1 + 2) = local_10;
      *(undefined1 *)((int)param_1 + 10) = local_8;
      sVar6 = sVar1;
      if ((int)sVar5 < (int)sVar1) {
        sVar6 = sVar5;
      }
      FID_conflict__memcpy((void *)((int)param_1 + 0xb),param_2,sVar6);
      param_1 = (undefined4 *)((int)param_1 + 0xb + sVar6);
      if (sVar6 == sVar5) break;
      sVar5 = sVar5 - sVar6;
      param_2 = (void *)((int)param_2 + sVar6);
    }
    _free(_Memory);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
  return uVar2 & 0xffffff00;
}

