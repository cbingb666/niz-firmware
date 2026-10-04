/* Address: 0x00000a38; body bytes: 38 */

void FUN_00000a38(uint param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4)

{
  int iVar1;
  
  if (param_1 < 0x42) {
    if ((DAT_20000c5e != '\0') || (param_1 != 0)) {
      iVar1 = param_1 * 3;
      (&DAT_20003880)[iVar1] = param_2;
      (&DAT_20003881)[iVar1] = param_3;
      (&DAT_20003882)[iVar1] = param_4;
    }
    return;
  }
  return;
}

