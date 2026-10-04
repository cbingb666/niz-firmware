/* Address: 0x0000bc70; body bytes: 136 */

/* GPIO PA10 data, PA11 clock, sends MSB first and clocks ACK. */

void soft_i2c_write_byte(uint param_1)

{
  dword dVar1;
  byte bVar2;
  byte bVar3;
  
  bVar3 = 0;
  do {
    PA11_PIN = 0;
    bVar2 = 0;
    do {
      bVar2 = bVar2 + 1;
    } while (bVar2 < 7);
    if ((int)(param_1 << 0x18) < 0) {
      PA10_PIN = 1;
    }
    else {
      PA10_PIN = 0;
    }
    bVar2 = 0;
    do {
      bVar2 = bVar2 + 1;
    } while (bVar2 < 7);
    PA11_PIN = 1;
    bVar2 = 0;
    do {
      bVar2 = bVar2 + 1;
    } while (bVar2 < 7);
    PA11_PIN = 0;
    bVar2 = 0;
    do {
      bVar2 = bVar2 + 1;
    } while (bVar2 < 7);
    bVar3 = bVar3 + 1;
    param_1 = (param_1 & 0x7f) << 1;
  } while (bVar3 < 8);
  PA10_PIN = 1;
  bVar3 = 0;
  do {
    bVar3 = bVar3 + 1;
  } while (bVar3 < 7);
  PA11_PIN = 1;
  bVar3 = 0;
  do {
    bVar3 = bVar3 + 1;
  } while (bVar3 < 7);
  for (bVar3 = 0; (dVar1 = PA10_PIN, dVar1 != 0 && (bVar3 < 0x32)); bVar3 = bVar3 + 1) {
  }
  PA11_PIN = 0;
  bVar3 = 0;
  do {
    bVar3 = bVar3 + 1;
  } while (bVar3 < 7);
  return;
}

