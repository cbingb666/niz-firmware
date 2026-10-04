/* Address: 0x0000059c; body bytes: 162 */

/* GPIO, clock, ADC, timer, UART and interface initialization. */

void board_init(void)

{
  dword dVar1;
  
  FUN_00000428();
  FUN_000006f8();
  GPIO_SetMode(&PA_PMD,0x400,3);
  GPIO_SetMode(&PA_PMD,0x800);
  adc_init();
  CLK_EnableModuleClock(0x5f000004);
  CLK_SetModuleClock(0x5f000004,0);
  FUN_000093fc(&TIMER2_TCSR,0x8000000,1000);
  dVar1 = TIMER2_TCSR;
  TIMER2_TCSR = dVar1 | 0x20000000;
  NVIC_ISER = 0x400;
  dVar1 = TIMER2_TCSR;
  TIMER2_TCSR = dVar1 | 0x40000000;
  rgb_active = 0;
  CLK_EnableModuleClock(0x5ec00003);
  CLK_SetModuleClock(0x5ec00003,0);
  FUN_000093fc(&TIMER1_TCSR,0x8000000,0x16f8);
  dVar1 = TIMER1_TCSR;
  TIMER1_TCSR = dVar1 | 0x20000000;
  NVIC_ISER = 0x200;
  dVar1 = TIMER1_TCSR;
  TIMER1_TCSR = dVar1 | 0x40000000;
  FUN_00000750();
  FUN_0000abe0();
  transport_uart_init();
  FUN_00000838();
  return;
}

