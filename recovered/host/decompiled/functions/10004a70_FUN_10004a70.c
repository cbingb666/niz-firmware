/* Address: 0x10004a70; body bytes: 106 */

undefined4 __thiscall FUN_10004a70(void *this,int param_1)

{
  void *_Dst;
  int iVar1;
  uint uVar2;
  
  uVar2 = (uint)*(byte *)(param_1 + 5);
  *(uint *)((int)this + 0x20) = uVar2;
  _Dst = *(void **)((int)this + 0x10);
  if (_Dst != *(void **)((int)this + 0x14)) {
    FID_conflict__memcpy(_Dst,*(void **)((int)this + 0x14),0);
    *(void **)((int)this + 0x14) = _Dst;
  }
  FUN_10001160();
  iVar1 = 0;
  if (uVar2 != 0) {
    do {
      *(uint *)(*(int *)((int)this + 0x10) + iVar1 * 4) = (uint)*(byte *)(param_1 + 6 + iVar1);
      iVar1 = iVar1 + 1;
    } while (iVar1 < (int)uVar2);
  }
  return CONCAT31((int3)((uint)iVar1 >> 8),1);
}

