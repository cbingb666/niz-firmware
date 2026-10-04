/* Address: 0x00006e90; body bytes: 8 */

void FUN_00006e90(int param_1,uint param_2)

{
  *(uint *)(param_1 + 0x7c) = *(uint *)(param_1 + 0x7c) | param_2;
  return;
}

