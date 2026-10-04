/* Address: 0x000016a0; body bytes: 114 */

void FUN_000016a0(void)

{
  byte bVar1;
  uint uVar2;
  
  DAT_20000412 = DAT_20000412 + 1;
  if (DAT_20000416 < DAT_20000412) {
    DAT_20000412 = 0;
    if (DAT_200003c2 == '\t') {
      FUN_00007b88();
    }
    else {
      if (DAT_200003c2 != '\b') {
        DAT_20000412 = 0;
        return;
      }
      FUN_00008c08();
    }
    if (DAT_20000c72 == 2) {
      uVar2 = 0;
      do {
        if ((&DAT_20003ad2)[uVar2] == '\0') {
          FUN_00000a38(uVar2,DAT_2000041a,DAT_2000041b,DAT_2000041c);
        }
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < 0x42);
      return;
    }
    if (DAT_20000c72 < 5) {
      bVar1 = 0;
      do {
        FUN_00000a38(bVar1,DAT_2000041a,DAT_2000041b,DAT_2000041c);
        bVar1 = bVar1 + 1;
      } while (bVar1 < 0x42);
    }
  }
  return;
}

