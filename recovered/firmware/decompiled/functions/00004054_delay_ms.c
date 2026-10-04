/* Address: 0x00004054; body bytes: 56 */

/* Repeated SysTick polling with millisecond-scale counter. */

void delay_ms(uint param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  
  uVar3 = 0;
  if (param_1 != 0) {
    do {
      SYSTICK_LOAD = DAT_20000004 * 1000;
      SYSTICK_VAL = 0;
      uVar1 = SYSTICK_CTRL;
      SYSTICK_CTRL = uVar1 | 5;
      do {
        iVar2 = SYSTICK_CTRL;
      } while (-1 < iVar2 << 0xf);
      watchdog_feed();
      uVar3 = uVar3 + 1 & 0xffff;
    } while (uVar3 < param_1);
  }
  return;
}

