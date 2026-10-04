/* Address: 0x00006778; body bytes: 64 */

void FUN_00006778(void)

{
  uint uVar1;
  byte bVar2;
  
  PC1_PIN = 0;
  bVar2 = 0;
  do {
    uVar1 = 0;
    do {
      PC0_PIN = 0;
      if ((0xffffU >> uVar1 & 1) == 0) {
        PC2_PIN = 0;
      }
      else {
        PC2_PIN = 1;
      }
      PC0_PIN = 1;
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < 0xb);
    bVar2 = bVar2 + 1;
  } while (bVar2 < 3);
  FUN_0000afcc(0xff,6);
  PC1_PIN = 1;
  return;
}

