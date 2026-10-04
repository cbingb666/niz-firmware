/* Address: 0x00004024; body bytes: 46 */

void FUN_00004024(undefined1 *param_1,undefined4 *param_2,uint param_3)

{
  uint uVar1;
  undefined4 uVar2;
  
  uVar1 = 0;
  if (param_3 == 0) {
    return;
  }
  do {
    *param_1 = *(undefined1 *)param_2;
    param_1[1] = (char)((ushort)*(undefined2 *)param_2 >> 8);
    uVar1 = uVar1 + 1 & 0xff;
    param_1[2] = (char)((uint)*param_2 >> 0x10);
    uVar2 = *param_2;
    param_2 = param_2 + 1;
    param_1[3] = (char)((uint)uVar2 >> 0x18);
    param_1 = param_1 + 4;
  } while (uVar1 < param_3);
  return;
}

