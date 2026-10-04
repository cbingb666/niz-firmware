/* Address: 0x00009484; body bytes: 24 */

/* NUC123 vector IRQ9. */

void TMR1_IRQHandler(void)

{
  dword dVar1;
  
  dVar1 = TIMER1_TISR;
  if ((int)(dVar1 << 0x1f) < 0) {
    TIMER1_TISR = 1;
    rgb_timer_update();
    return;
  }
  return;
}

