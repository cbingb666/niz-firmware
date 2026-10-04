/* Address: 0x0000037c; body bytes: 138 */

/* UART0 at 115200 baud in the wireless path; PC3 controls the external module. */

void transport_uart_init(void)

{
  dword dVar1;
  
  GPIO_SetMode(&PD_PMD,0x10,0);
  if (transport_is_wired != '\0') {
    GPIO_SetMode(&PC_PMD,8,1);
    FUN_00002ca4();
    return;
  }
  GPIO_SetMode(&PC_PMD,8,1);
  PC3_PIN = 1;
  CLK_SetModuleClock(0x57803d10,0);
  CLK_EnableModuleClock(0x57803d10);
  dVar1 = SYS_GPC_MFP;
  SYS_GPC_MFP = dVar1 & 0xffffffcf;
  dVar1 = SYS_GPC_MFP;
  SYS_GPC_MFP = dVar1 | 0x30;
  dVar1 = SYS_ALT_MFP;
  SYS_ALT_MFP = dVar1 & 0x9fffffff;
  dVar1 = SYS_ALT_MFP;
  SYS_ALT_MFP = dVar1 | 0x60000000;
  FUN_0000822e(0x4000010);
  UART_Open(&UART0_RBR,0x1c200);
  UART_EnableInt(&UART0_RBR,0x11);
  delay_ms(5);
  PC3_PIN = 0;
  return;
}

