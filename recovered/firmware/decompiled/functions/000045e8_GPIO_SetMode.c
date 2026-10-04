/* Address: 0x000045e8; body bytes: 42 */

/* Sets two-bit pin mode fields selected by pin mask. */

void GPIO_SetMode(uint *param_1,uint param_2,int param_3)

{
  uint uVar1;
  
  uVar1 = 0;
  do {
    if ((1 << (uVar1 & 0xff) & param_2) != 0) {
      *param_1 = *param_1 & ~(3 << (uVar1 << 1 & 0xff)) | param_3 << (uVar1 << 1 & 0xff);
    }
    uVar1 = uVar1 + 1;
  } while (uVar1 < 0x10);
  return;
}

