/* Address: 0x0000494c; body bytes: 80 */

void FUN_0000494c(void)

{
  uint uVar1;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = (uint)DAT_20000cc7;
  uVar4 = (uint)DAT_20000cc8;
  uVar1 = uVar3 & 0x97;
  if (((int)(uVar3 << 0x1a) < 0) && (DAT_20000318 <= (byte)(&DAT_0000c0c4)[uVar4])) {
    uVar1 = uVar1 | 0x20;
  }
  if (((int)(uVar3 << 0x19) < 0) && (DAT_20000318 <= (byte)(&DAT_0000c0c4)[uVar4])) {
    uVar1 = uVar1 | 0x40;
  }
  if (((int)(uVar3 << 0x1c) < 0) && (DAT_20000318 <= (byte)(&DAT_0000c0c4)[uVar4])) {
    uVar1 = uVar1 | 8;
  }
  bVar2 = DAT_20000318 + 1;
  DAT_20000318 = DAT_20000318 + 1;
  if (9 < bVar2) {
    DAT_20000318 = '\0';
  }
  FUN_00006730(uVar1);
  return;
}

