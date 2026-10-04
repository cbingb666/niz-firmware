/* Address: 0x000042c4; body bytes: 82 */

/* WARNING: Inlined function: soft_i2c_start */
/* WARNING: Inlined function: soft_i2c_stop */
/* Software I2C transaction to EEPROM address 0xa0. */

void eeprom_write_page(undefined1 *param_1,uint param_2,uint param_3)

{
  byte bVar1;
  
  if (DAT_20000cb9 == '\0') {
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
    soft_i2c_write_byte(0xa0);
    soft_i2c_write_byte((param_3 & 0xffff) >> 8);
    soft_i2c_write_byte(param_3 & 0xff);
    for (; param_2 != 0; param_2 = param_2 - 1 & 0xff) {
      soft_i2c_write_byte(*param_1);
      param_1 = param_1 + 1;
    }
    bVar1 = 0;
    PA10_PIN = 0;
    do {
      bVar1 = bVar1 + 1;
    } while (bVar1 < 7);
    PA11_PIN = 1;
    bVar1 = 0;
    do {
      bVar1 = bVar1 + 1;
    } while (bVar1 < 7);
    PA10_PIN = 1;
    bVar1 = 0;
    do {
      bVar1 = bVar1 + 1;
    } while (bVar1 < 7);
    delay_ms(8);
    watchdog_feed();
  }
  return;
}

