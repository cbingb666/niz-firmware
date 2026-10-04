/* Address: 0x00008220; body bytes: 14 */

void FUN_00008220(void)

{
  dword dVar1;
  
  dVar1 = SYS_IPRSTC1;
  SYS_IPRSTC1 = dVar1 | 1;
  return;
}

