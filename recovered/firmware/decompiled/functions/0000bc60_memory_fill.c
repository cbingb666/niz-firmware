/* Address: 0x0000bc60; body bytes: 16 */

/* Byte fill helper. */

void memory_fill(int param_1,undefined1 param_2,uint param_3)

{
  uint uVar1;
  
  uVar1 = 0;
  if (param_3 != 0) {
    do {
      *(undefined1 *)(param_1 + uVar1) = param_2;
      uVar1 = uVar1 + 1;
    } while (uVar1 < param_3);
  }
  return;
}

