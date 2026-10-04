/* Address: 0x100010d0; body bytes: 134 */

undefined4 __thiscall FUN_100010d0(void *this,int param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  void *_Dst;
  int iVar3;
  uint uVar4;
  
  uVar1 = *(undefined1 *)(param_1 + 6);
  uVar2 = *(undefined1 *)(param_1 + 5);
  uVar4 = (uint)*(byte *)(param_1 + 7);
  *(uint *)((int)this + 0x24) = uVar4;
  _Dst = *(void **)((int)this + 0x14);
  if (_Dst != *(void **)((int)this + 0x18)) {
    FID_conflict__memcpy(_Dst,*(void **)((int)this + 0x18),0);
    *(void **)((int)this + 0x18) = _Dst;
  }
  FUN_10001160();
  iVar3 = 0;
  *(uint *)((int)this + 0x10) = (uint)CONCAT11(uVar2,uVar1);
  if (uVar4 != 0) {
    do {
      *(uint *)(*(int *)((int)this + 0x14) + iVar3 * 4) = (uint)*(byte *)(param_1 + 8 + iVar3);
      iVar3 = iVar3 + 1;
    } while (iVar3 < (int)uVar4);
  }
  return CONCAT31((int3)((uint)iVar3 >> 8),1);
}

