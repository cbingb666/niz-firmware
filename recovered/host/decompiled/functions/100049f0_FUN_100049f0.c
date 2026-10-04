/* Address: 0x100049f0; body bytes: 120 */

uint __thiscall
FUN_100049f0(void *this,undefined2 *param_1,size_t param_2,size_t *param_3,undefined4 *param_4)

{
  int iVar1;
  int iVar2;
  
  if (param_1 == (undefined2 *)0x0) {
    if (param_3 != (size_t *)0x0) {
      *param_3 = param_2;
    }
    if (param_4 != (undefined4 *)0x0) {
      *param_4 = 6;
    }
    return (uint)param_4 & 0xffffff00;
  }
  _memset(param_1,0,*param_3);
  *param_1 = 0xf000;
  *(undefined1 *)(param_1 + 1) = *(undefined1 *)((int)this + 8);
  *(undefined1 *)((int)param_1 + 3) = *(undefined1 *)((int)this + 4);
  *(undefined1 *)(param_1 + 2) = 0;
  iVar1 = *(int *)((int)this + 0x20);
  iVar2 = 0;
  *(char *)((int)param_1 + 5) = (char)iVar1;
  if (0 < iVar1) {
    do {
      *(undefined1 *)((int)param_1 + iVar2 + 6) =
           *(undefined1 *)(*(int *)((int)this + 0x10) + iVar2 * 4);
      iVar2 = iVar2 + 1;
    } while (iVar2 < iVar1);
  }
  return CONCAT31((int3)((uint)iVar2 >> 8),1);
}

