/* Address: 0x000037c4; body bytes: 198 */

void FUN_000037c4(char *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  undefined1 *puVar3;
  
  if (0xf9 < DAT_20000369) {
    puVar3 = &DAT_20002264 + (uint)DAT_2000036b * 0xf;
    if ((&DAT_20002264)[(uint)DAT_2000036b * 0xf] == -9) {
      if (DAT_20000cd3 == '\x04') {
        ble_send_frame(puVar3,0xf,puVar3,&DAT_20002264,param_4);
      }
    }
    else if ((&DAT_20002264)[(uint)DAT_2000036b * 0xf] == -0xd) {
      if (DAT_20000cd3 == '\x04') {
        ble_send_frame(puVar3,5,puVar3,&DAT_20002264,param_4);
      }
    }
    else {
      ble_send_frame(puVar3,9,puVar3,&DAT_20002264,param_4);
    }
    DAT_2000036b = DAT_2000036b + 1;
    DAT_20000369 = DAT_20000369 - 1;
    if (0xf9 < DAT_2000036b) {
      DAT_2000036b = 0;
    }
  }
  if (*param_1 == -9) {
    uVar2 = (uint)DAT_2000036a;
    uVar1 = 0;
    do {
      (&DAT_20002264)[uVar1 + uVar2 * 0xf] = param_1[uVar1];
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < 0xf);
  }
  else if (*param_1 == -0xd) {
    uVar2 = (uint)DAT_2000036a;
    uVar1 = 0;
    do {
      (&DAT_20002264)[uVar1 + uVar2 * 0xf] = param_1[uVar1];
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < 5);
  }
  else {
    uVar2 = (uint)DAT_2000036a;
    uVar1 = 0;
    do {
      (&DAT_20002264)[uVar1 + uVar2 * 0xf] = param_1[uVar1];
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < 9);
  }
  DAT_2000036a = DAT_2000036a + 1;
  DAT_20000369 = DAT_20000369 + 1;
  if (0xf9 < DAT_2000036a) {
    DAT_2000036a = 0;
  }
  return;
}

