/* Address: 0x0000431c; body bytes: 132 */

/* WARNING: Inlined function: soft_i2c_start */
/* WARNING: Inlined function: soft_i2c_stop */
/* Software I2C block read. */

void eeprom_read_block(byte *param_1,uint param_2,int param_3)

{
  dword dVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  
  uVar5 = 0;
  if (param_2 != 0) {
    do {
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
      soft_i2c_write_byte((param_3 + uVar5 & 0xffff) >> 8);
      soft_i2c_write_byte(param_3 + uVar5 & 0xff);
                    /* WARNING: Could not inline here */
      soft_i2c_start();
      soft_i2c_write_byte(0xa1);
      bVar4 = 0;
      bVar2 = 0;
      do {
        bVar4 = bVar4 << 1;
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
          bVar4 = bVar4 | 1;
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
      *param_1 = bVar4;
      param_1 = param_1 + 1;
      uVar5 = uVar5 + 1 & 0xffff;
    } while (uVar5 < param_2);
  }
  return;
}

