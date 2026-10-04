/* Address: 0x0000945c; body bytes: 32 */

/* NUC123 vector IRQ8. */

void TMR0_IRQHandler(void)

{
  dword dVar1;
  
  dVar1 = TIMER0_TISR;
  if ((int)(dVar1 << 0x1f) < 0) {
    TIMER0_TISR = 1;
    if (scan_enabled != '\0') {
      ec_timer_sample();
      return;
    }
  }
  return;
}

