/* Address: 0x00006c84; body bytes: 182 */

undefined4 FUN_00006c84(int param_1,uint param_2)

{
  dword dVar1;
  uint uVar2;
  int iVar3;
  int extraout_r1;
  uint uVar4;
  uint uVar5;
  
  uVar4 = param_2 >> 4;
  uVar5 = 0;
  aeabi_uidivmod(param_2,0x10);
  if (extraout_r1 != 0) {
    uVar4 = uVar4 + 1;
  }
  uVar2 = 0;
  dVar1 = PS2_PS2STATUS;
  while (-1 < (int)(dVar1 << 0x18)) {
    uVar2 = uVar2 + 1;
    if (0xefffff < uVar2) {
      return 0;
    }
    dVar1 = PS2_PS2STATUS;
  }
  if (0xf < param_2) {
    dVar1 = PS2_PS2CON;
    PS2_PS2CON = dVar1 & 0xffffff87 | 0x78;
  }
  do {
    dVar1 = PS2_PS2STATUS;
    uVar2 = 0;
    while (-1 < (int)(dVar1 << 0x18)) {
      uVar2 = uVar2 + 1;
      if (0xefffff < uVar2) {
        return 0;
      }
      dVar1 = PS2_PS2STATUS;
    }
    if ((uVar4 == 1) && (extraout_r1 != 0)) {
      dVar1 = PS2_PS2CON;
      PS2_PS2CON = dVar1 & 0xffffff87 | param_2 * 8 - 8;
    }
    PS2_PS2TXDATA0 = *(dword *)(param_1 + uVar5 * 4);
    iVar3 = uVar5 * 4 + param_1;
    PS2_PS2TXDATA1 = *(dword *)(iVar3 + 4);
    PS2_PS2TXDATA2 = *(dword *)(iVar3 + 8);
    PS2_PS2TXDATA3 = *(dword *)(iVar3 + 0xc);
    uVar5 = uVar5 + 4 & 0xff;
    uVar4 = uVar4 - 1;
  } while (uVar4 != 0);
  dVar1 = PS2_PS2STATUS;
  uVar4 = 0;
  while( true ) {
    if ((int)(dVar1 << 0x18) < 0) {
      return 1;
    }
    uVar4 = uVar4 + 1;
    if (0xefffff < uVar4) break;
    dVar1 = PS2_PS2STATUS;
  }
  return 0;
}

