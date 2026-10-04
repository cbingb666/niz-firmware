/* Address: 0x0000029e; body bytes: 26 */

void FUN_0000029e(int param_1,undefined4 param_2,uint param_3,uint param_4)

{
  *(uint *)(param_1 + 0x20) = *(uint *)(param_1 + 0x20) & 0xfffffff3 | param_3;
  *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) & 0xffffff00 | param_4;
  return;
}

