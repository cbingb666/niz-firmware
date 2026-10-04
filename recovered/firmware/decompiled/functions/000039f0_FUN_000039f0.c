/* Address: 0x000039f0; body bytes: 78 */

void FUN_000039f0(uint param_1)

{
  uint uVar1;
  char cVar2;
  
  cVar2 = '\0';
  if ((param_1 < DAT_20000ce2) || (DAT_20000ce2 + 3 < param_1)) {
    if (param_1 < 0x27e) {
      uVar1 = 0;
      do {
        if (param_1 < (ushort)(&DAT_0000c0e0)[uVar1 * 2]) {
          cVar2 = (&DAT_0000c0de)[uVar1 * 4];
          DAT_20000ce2 = (&DAT_0000c0e0)[uVar1 * 2];
          break;
        }
        uVar1 = uVar1 + 1 & 0xff;
      } while (uVar1 < 0x14);
    }
    else {
      DAT_20000ce2 = 0x27e;
      cVar2 = 'd';
    }
    if (DAT_20000ce0 != cVar2) {
      FUN_00002b28(cVar2);
    }
  }
  return;
}

