/* Address: 0x00006930; body bytes: 88 */

undefined4 FUN_00006930(int param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = (uint)DAT_20000371;
  if (param_1 == 0) {
    uVar1 = 0;
    if (uVar2 != 0) {
      do {
        if ((byte)(&DAT_20000ea5)[uVar1] == param_2) {
          for (; uVar1 < uVar2; uVar1 = uVar1 + 1 & 0xff) {
            (&DAT_20000ea5)[uVar1] = (&DAT_20000ea6)[uVar1];
            (&DAT_20000ea6)[uVar1] = 0;
          }
          DAT_20000371 = DAT_20000371 - 1;
          return 1;
        }
        if (uVar2 <= uVar1 + 1) {
          return 0;
        }
        uVar1 = uVar1 + 1 & 0xff;
      } while (uVar1 < uVar2);
    }
  }
  else {
    (&DAT_20000ea5)[uVar2] = (char)param_2;
    DAT_20000371 = DAT_20000371 + 1;
  }
  return 1;
}

