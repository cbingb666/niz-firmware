/* Address: 0x0000afcc; body bytes: 46 */

void FUN_0000afcc(uint param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = 0;
  if (param_2 == 0) {
    return;
  }
  do {
    PC0_PIN = 0;
    if ((param_1 >> uVar1 & 1) == 0) {
      PC2_PIN = 0;
    }
    else {
      PC2_PIN = 1;
    }
    PC0_PIN = 1;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < param_2);
  return;
}

