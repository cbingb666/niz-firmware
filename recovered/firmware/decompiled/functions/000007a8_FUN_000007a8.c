/* Address: 0x000007a8; body bytes: 40 */

void FUN_000007a8(undefined4 param_1)

{
  dword dVar1;
  
  FUN_000093fc(&TIMER0_TCSR,0x8000000,param_1);
  dVar1 = TIMER0_TCSR;
  TIMER0_TCSR = dVar1 | 0x20000000;
  NVIC_ISER = 0x100;
  dVar1 = TIMER0_TCSR;
  TIMER0_TCSR = dVar1 | 0x40000000;
  return;
}

