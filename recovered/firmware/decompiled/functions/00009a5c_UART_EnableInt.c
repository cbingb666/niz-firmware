/* Address: 0x00009a5c; body bytes: 28 */

/* UART interrupt enable and NVIC setup. */

void UART_EnableInt(dword *param_1,uint param_2)

{
  dword dVar1;
  
  param_1[1] = param_1[1] | param_2;
  if (param_1 == &UART0_RBR) {
    dVar1 = 0x1000;
  }
  else {
    dVar1 = 0x2000;
  }
  NVIC_ISER = dVar1;
  return;
}

