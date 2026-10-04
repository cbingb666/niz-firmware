/* Address: 0x00007e7c; body bytes: 80 */

/* Bit-buffer rotation helper used by the DES implementation. */

void des_rotate_bit_buffer(int param_1,int param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  undefined1 local_48 [56];
  
  uVar1 = 0;
  if (param_3 != 0) {
    do {
      local_48[uVar1] = *(undefined1 *)(param_1 + uVar1);
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < param_3);
  }
  uVar2 = param_2 - param_3 & 0xff;
  uVar1 = 0;
  if (uVar2 != 0) {
    do {
      *(undefined1 *)(param_1 + uVar1) = *(undefined1 *)(param_1 + param_3 + uVar1);
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < uVar2);
  }
  uVar1 = 0;
  if (param_3 != 0) {
    do {
      *(undefined1 *)(((param_1 + param_2) - param_3) + uVar1) = local_48[uVar1];
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < param_3);
  }
  return;
}

