/* Address: 0x0000822e; body bytes: 26 */

void FUN_0000822e(uint param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = param_1 >> 0x18;
  uVar2 = 1 << (param_1 & 0xff);
  *(uint *)((int)&SYS_IPRSTC1 + uVar1) = *(uint *)((int)&SYS_IPRSTC1 + uVar1) | uVar2;
  *(uint *)((int)&SYS_IPRSTC1 + uVar1) = *(uint *)((int)&SYS_IPRSTC1 + uVar1) & ~uVar2;
  return;
}

