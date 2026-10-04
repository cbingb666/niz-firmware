/* Address: 0x0000bcfc; body bytes: 42 */

/* WARNING: This is an inlined function */
/* GPIO I2C START sequence; preserves r3 in the machine code. */

void soft_i2c_start(void)

{
  byte bVar1;
  
  PA10_PIN = 1;
  bVar1 = 0;
  do {
    bVar1 = bVar1 + 1;
  } while (bVar1 < 7);
  PA11_PIN = 1;
  bVar1 = 0;
  do {
    bVar1 = bVar1 + 1;
  } while (bVar1 < 7);
  bVar1 = 0;
  PA10_PIN = 0;
  do {
    bVar1 = bVar1 + 1;
  } while (bVar1 < 7);
  return;
}

