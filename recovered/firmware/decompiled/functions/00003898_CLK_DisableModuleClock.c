/* Address: 0x00003898; body bytes: 24 */

/* NUC123 peripheral clock gate operations. */

void CLK_DisableModuleClock(uint param_1)

{
  (&CLK_AHBCLK)[param_1 >> 0x1e] = (&CLK_AHBCLK)[param_1 >> 0x1e] & ~(1 << (param_1 & 0x1f));
  return;
}

