/* Address: 0x000038d0; body bytes: 10 */

void FUN_000038d0(uint param_1)

{
  dword dVar1;
  
  dVar1 = CLK_PWRCON;
  CLK_PWRCON = dVar1 | param_1;
  return;
}

