/* Address: 0x10001040; body bytes: 139 */

uint __thiscall
FUN_10001040(void *this,undefined2 *param_1,size_t param_2,size_t *param_3,undefined4 *param_4)

{
  int iVar1;
  int iVar2;
  
  if (param_1 == (undefined2 *)0x0) {
    if (param_3 != (size_t *)0x0) {
      *param_3 = param_2;
    }
    if (param_4 != (undefined4 *)0x0) {
      *param_4 = 8;
    }
  }
  else {
    param_4 = _memset(param_1,0,*param_3);
    *param_1 = 0xf000;
    *(undefined1 *)(param_1 + 1) = *(undefined1 *)((int)this + 8);
    *(undefined1 *)((int)param_1 + 3) = *(undefined1 *)((int)this + 4);
    *(undefined1 *)(param_1 + 2) = 1;
    iVar1 = *(int *)((int)this + 0x24);
    if (0 < iVar1) {
      *(char *)((int)param_1 + 7) = (char)iVar1;
      *(char *)((int)param_1 + 5) = (char)((uint)*(undefined4 *)((int)this + 0x10) >> 8);
      iVar2 = 0;
      *(undefined1 *)(param_1 + 3) = *(undefined1 *)((int)this + 0x10);
      if (0 < iVar1) {
        do {
          *(undefined1 *)((int)param_1 + iVar2 + 8) =
               *(undefined1 *)(*(int *)((int)this + 0x14) + iVar2 * 4);
          iVar2 = iVar2 + 1;
        } while (iVar2 < iVar1);
      }
      return CONCAT31((int3)((uint)iVar2 >> 8),1);
    }
  }
  return (uint)param_4 & 0xffffff00;
}

