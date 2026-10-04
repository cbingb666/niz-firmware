/* Address: 0x000093fc; body bytes: 96 */

void FUN_000093fc(uint *param_1,uint param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = FUN_0000937c();
  uVar3 = 0;
  if (uVar1 >> 1 < param_3) {
    uVar2 = 2;
  }
  else {
    if (uVar1 < 0x4000000) {
      if (uVar1 < 0x2000000) {
        if (0xffffff < uVar1) {
          uVar3 = 1;
          uVar1 = uVar1 >> 1;
        }
      }
      else {
        uVar3 = 3;
        uVar1 = uVar1 >> 2;
      }
    }
    else {
      uVar3 = 7;
      uVar1 = uVar1 >> 3;
    }
    uVar2 = aeabi_uidivmod(uVar1,param_3);
  }
  *param_1 = param_2 | uVar3;
  param_1[1] = uVar2;
  aeabi_uidivmod(uVar1,(uVar3 + 1) * uVar2);
  return;
}

