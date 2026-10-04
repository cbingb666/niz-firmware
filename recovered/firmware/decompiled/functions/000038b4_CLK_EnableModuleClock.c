/* Address: 0x000038b4; body bytes: 24 */

/* NUC123 module identifier and peripheral clock gate operations. */

void CLK_EnableModuleClock(uint param_1)

{
  (&CLK_AHBCLK)[param_1 >> 0x1e] = (&CLK_AHBCLK)[param_1 >> 0x1e] | 1 << (param_1 & 0x1f);
  return;
}

