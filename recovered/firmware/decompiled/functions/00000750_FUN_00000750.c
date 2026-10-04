/* Address: 0x00000750; body bytes: 66 */

void FUN_00000750(void)

{
  dword dVar1;
  
  scan_enabled = 0;
  CLK_EnableModuleClock(0x5e800002);
  CLK_SetModuleClock(0x5e800002,0);
  DAT_20000c54 = 0;
  FUN_000093fc(&TIMER0_TCSR,0x8000000,0x8ac);
  dVar1 = TIMER0_TCSR;
  TIMER0_TCSR = dVar1 | 0x20000000;
  NVIC_ISER = 0x100;
  dVar1 = TIMER0_TCSR;
  TIMER0_TCSR = dVar1 | 0x40000000;
  return;
}

