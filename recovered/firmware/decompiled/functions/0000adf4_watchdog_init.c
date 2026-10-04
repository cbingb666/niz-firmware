/* Address: 0x0000adf4; body bytes: 24 */

/* Watchdog configuration. */

void watchdog_init(uint param_1,dword param_2,int param_3,int param_4)

{
  WDT_WTCRALT = param_2;
  WDT_WTCR = param_3 << 1 | param_1 | param_4 << 4 | 0x80;
  return;
}

