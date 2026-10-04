/* Address: 0x00004094; body bytes: 30 */

/* SysTick polling used for ADC acquisition settling time. */

void delay_us(int param_1)

{
  uint uVar1;
  int iVar2;
  
  SYSTICK_LOAD = DAT_20000004 * param_1;
  SYSTICK_VAL = 0;
  uVar1 = SYSTICK_CTRL;
  SYSTICK_CTRL = uVar1 | 5;
  do {
    iVar2 = SYSTICK_CTRL;
  } while (-1 < iVar2 << 0xf);
  return;
}

