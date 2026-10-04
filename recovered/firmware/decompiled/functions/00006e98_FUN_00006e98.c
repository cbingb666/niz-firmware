/* Address: 0x00006e98; body bytes: 40 */

void FUN_00006e98(int param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = 0;
  uVar1 = 0;
  do {
    if ((1 << (uVar1 & 0xff) & param_2) != 0) {
      uVar2 = uVar2 | 1 << ((uVar1 & 0x1f) << 3);
    }
    uVar1 = uVar1 + 1;
  } while (uVar1 < 4);
  *(uint *)(param_1 + 8) = *(uint *)(param_1 + 8) | uVar2;
  return;
}

