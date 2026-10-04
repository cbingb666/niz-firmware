/* Address: 0x00004860; body bytes: 110 */

void FUN_00004860(uint param_1)

{
  uint uVar1;
  
  uVar1 = 0;
  if (1 < param_1) {
    return;
  }
  scan_enabled = 0;
  if (param_1 == 0) {
    DAT_20000c6f = DAT_20000c6f + 1;
    if (3 < DAT_20000c6f) {
      DAT_20000c6f = 0;
    }
    if (((transport_is_wired != '\0') && (DAT_20000c53 == '\x02')) && (DAT_20000c6f == 3)) {
      DAT_20000c6f = 0;
    }
    uVar1 = (uint)DAT_20000c6f;
    DAT_20000c58 = (ushort)(byte)(&DAT_0000c0c0)[uVar1];
  }
  else if (param_1 == 1) {
    DAT_20000c70 = DAT_20000c70 + 1;
    if (2 < DAT_20000c70) {
      DAT_20000c70 = 0;
    }
    uVar1 = (uint)DAT_20000c70;
    DAT_20000c5a = (&DAT_0000c0ca)[uVar1];
  }
  FUN_000048e0(uVar1 + 1 & 0xff);
  scan_enabled = 1;
  return;
}

