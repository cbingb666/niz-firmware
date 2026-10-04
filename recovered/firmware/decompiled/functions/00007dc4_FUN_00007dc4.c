/* Address: 0x00007dc4; body bytes: 178 */

undefined4 FUN_00007dc4(int param_1,uint param_2,int param_3,uint param_4)

{
  undefined1 uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  
  uVar3 = 0;
  uVar2 = 0;
  if (param_3 != -1) {
    do {
      uVar1 = (undefined1)param_4;
      if (uVar2 <= param_2) {
        uVar5 = param_2 - uVar2 & 0xff;
        if ((int)(param_3 - uVar2) <= param_1) {
          uVar4 = (param_1 + uVar2) - param_3 & 0xff;
          if ((byte)(&DAT_20003b14)[uVar4 + uVar5 * 0xf] < param_4) {
            (&DAT_20003b14)[uVar4 + uVar5 * 0xf] = uVar1;
          }
          uVar3 = 1;
        }
        uVar4 = (param_1 + param_3) - uVar2;
        if ((int)uVar4 < 0xf) {
          uVar4 = uVar4 & 0xff;
          if ((byte)(&DAT_20003b14)[uVar4 + uVar5 * 0xf] < param_4) {
            (&DAT_20003b14)[uVar4 + uVar5 * 0xf] = uVar1;
          }
          uVar3 = 1;
        }
      }
      if (param_2 + uVar2 < 5) {
        uVar5 = param_2 + uVar2 & 0xff;
        if ((int)(param_3 - uVar2) <= param_1) {
          uVar4 = (param_1 + uVar2) - param_3 & 0xff;
          if ((byte)(&DAT_20003b14)[uVar4 + uVar5 * 0xf] < param_4) {
            (&DAT_20003b14)[uVar4 + uVar5 * 0xf] = uVar1;
          }
          uVar3 = 1;
        }
        uVar4 = (param_1 + param_3) - uVar2;
        if ((int)uVar4 < 0xf) {
          uVar4 = uVar4 & 0xff;
          if ((byte)(&DAT_20003b14)[uVar4 + uVar5 * 0xf] < param_4) {
            (&DAT_20003b14)[uVar4 + uVar5 * 0xf] = uVar1;
          }
          uVar3 = 1;
        }
      }
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < param_3 + 1U);
  }
  return uVar3;
}

