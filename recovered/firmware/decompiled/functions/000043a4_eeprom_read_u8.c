/* Address: 0x000043a4; body bytes: 106 */

/* WARNING: Inlined function: soft_i2c_start */
/* WARNING: Inlined function: soft_i2c_stop */
/* Software I2C random byte read through PA10/PA11. */

uint eeprom_read_u8(uint param_1)

{
  dword dVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  
  watchdog_feed();
  PA10_PIN = 1;
  bVar2 = 0;
  do {
    bVar2 = bVar2 + 1;
  } while (bVar2 < 7);
  PA11_PIN = 1;
  bVar2 = 0;
  do {
    bVar2 = bVar2 + 1;
  } while (bVar2 < 7);
  bVar2 = 0;
  PA10_PIN = 0;
  do {
    bVar2 = bVar2 + 1;
  } while (bVar2 < 7);
  soft_i2c_write_byte(0xa0);
  soft_i2c_write_byte((param_1 & 0xffff) >> 8);
  soft_i2c_write_byte(param_1 & 0xff);
                    /* WARNING: Could not inline here */
  soft_i2c_start();
  soft_i2c_write_byte(0xa1);
  uVar4 = 0;
  bVar2 = 0;
  do {
    uVar4 = (uVar4 & 0x7f) << 1;
    PA11_PIN = 0;
    bVar3 = 0;
    do {
      bVar3 = bVar3 + 1;
    } while (bVar3 < 7);
    PA11_PIN = 1;
    bVar3 = 0;
    do {
      bVar3 = bVar3 + 1;
    } while (bVar3 < 7);
    dVar1 = PA10_PIN;
    if (dVar1 != 0) {
      uVar4 = uVar4 | 1;
    }
    bVar2 = bVar2 + 1;
  } while (bVar2 < 8);
  PA11_PIN = 0;
  bVar2 = 0;
  PA10_PIN = 0;
  do {
    bVar2 = bVar2 + 1;
  } while (bVar2 < 7);
  PA11_PIN = 1;
  bVar2 = 0;
  do {
    bVar2 = bVar2 + 1;
  } while (bVar2 < 7);
  PA10_PIN = 1;
  bVar2 = 0;
  do {
    bVar2 = bVar2 + 1;
  } while (bVar2 < 7);
  return uVar4;
}

