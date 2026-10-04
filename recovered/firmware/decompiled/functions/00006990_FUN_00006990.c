/* Address: 0x00006990; body bytes: 18 */

void FUN_00006990(int param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = 0;
  if (param_2 != 0) {
    do {
      *(undefined1 *)(param_1 + uVar1) = 0;
      uVar1 = uVar1 + 1;
    } while (uVar1 < param_2);
  }
  return;
}

