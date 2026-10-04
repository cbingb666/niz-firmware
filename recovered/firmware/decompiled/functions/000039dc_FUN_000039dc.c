/* Address: 0x000039dc; body bytes: 14 */

void FUN_000039dc(uint param_1)

{
  dword dVar1;
  
  dVar1 = CLK_CLKSEL0;
  CLK_CLKSEL0 = dVar1 & 0xffffffc7 | param_1;
  return;
}

