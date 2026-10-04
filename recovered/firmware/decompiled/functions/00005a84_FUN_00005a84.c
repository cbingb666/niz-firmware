/* Address: 0x00005a84; body bytes: 146 */

void FUN_00005a84(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  int *piVar3;
  
  eeprom_read_block(&DAT_2000047c,0x108,65000,param_4,param_4);
  uVar2 = 0;
  piVar3 = param_1;
  do {
    uVar1 = uVar2 + 4;
    *piVar3 = (uint)(byte)(&DAT_2000047f)[uVar2] * 0x1000000 +
              (uint)(byte)(&DAT_2000047e)[uVar2] * 0x10000 +
              (uint)(byte)(&DAT_2000047d)[uVar2] * 0x100 + (uint)(byte)(&DAT_2000047c)[uVar2];
    piVar3 = piVar3 + 1;
    uVar2 = uVar1;
  } while (uVar1 < 0x108);
  if ((((*param_1 == -1) && (param_1[1] == -1)) && (param_1[3] == -1)) && (param_1[4] == -1)) {
    uVar2 = 0;
    do {
      (&DAT_2000047c)[uVar2] = 0;
      uVar2 = uVar2 + 1 & 0xffff;
    } while (uVar2 < 0x108);
    uVar2 = 0;
    do {
      uVar1 = uVar2 + 4;
      *param_1 = (uint)(byte)(&DAT_2000047f)[uVar2] * 0x1000000 +
                 (uint)(byte)(&DAT_2000047e)[uVar2] * 0x10000 +
                 (uint)(byte)(&DAT_2000047d)[uVar2] * 0x100 + (uint)(byte)(&DAT_2000047c)[uVar2];
      param_1 = param_1 + 1;
      uVar2 = uVar1;
    } while (uVar1 < 0x108);
    eeprom_write_block(&DAT_2000047c,0x108,65000);
  }
  DAT_20000358 = 0;
  return;
}

