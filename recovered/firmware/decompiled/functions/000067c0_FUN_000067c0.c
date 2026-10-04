/* Address: 0x000067c0; body bytes: 80 */

void FUN_000067c0(int param_1)

{
  uint uVar1;
  uint uVar2;
  
  PC1_PIN = 0;
  uVar2 = 0;
  do {
    uVar1 = 0;
    do {
      PC0_PIN = 0;
      if (((ushort)(&DAT_2000041e)[2 - uVar2] >> uVar1 & 1) == 0) {
        PC2_PIN = 0;
      }
      else {
        PC2_PIN = 1;
      }
      PC0_PIN = 1;
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < 0xb);
    uVar2 = uVar2 + 1 & 0xff;
  } while (uVar2 < 3);
  FUN_0000afcc((&DAT_0000c6b6)[param_1],6);
  PC1_PIN = 1;
  return;
}

