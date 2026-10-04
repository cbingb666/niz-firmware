/* Address: 0x000098a4; body bytes: 68 */

/* Bit-permutation helper used for DES IP, PC1 and other tables. */

void des_permute_bits(int param_1,int param_2,int param_3,uint param_4)

{
  uint uVar1;
  undefined1 local_98 [132];
  
  FUN_000001c2(local_98,0x80);
  uVar1 = 0;
  if (param_4 != 0) {
    do {
      local_98[uVar1] = *(undefined1 *)((uint)*(byte *)(param_3 + uVar1) + param_2 + -1);
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < param_4);
  }
  uVar1 = 0;
  if (param_4 != 0) {
    do {
      *(undefined1 *)(param_1 + uVar1) = local_98[uVar1];
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < param_4);
  }
  return;
}

