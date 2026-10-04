/* Address: 0x00006730; body bytes: 58 */

void FUN_00006730(uint param_1)

{
  uint uVar1;
  
  if (DAT_20000cc9 == '\0') {
    param_1 = ~param_1 & 0xff;
  }
  PB9_PIN = 0;
  uVar1 = 0;
  do {
    PB10_PIN = 0;
    if ((param_1 >> uVar1 & 1) == 0) {
      PC13_PIN = 0;
    }
    else {
      PC13_PIN = 1;
    }
    PB10_PIN = 1;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 7);
  PB9_PIN = 1;
  return;
}

