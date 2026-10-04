/* Address: 0x00002988; body bytes: 112 */

void FUN_00002988(void)

{
  undefined1 uVar1;
  uint uVar2;
  byte bVar3;
  
  if ((DAT_200003fc != '\0') && (DAT_200003fb = DAT_200003fb + 1, 10 < DAT_200003fb)) {
    DAT_200003fb = 0;
    bVar3 = 0;
    if ((&DAT_0000ca27)[DAT_200003fd] != '\0') {
      do {
        uVar2 = (uint)DAT_200003fe;
        DAT_200003fe = DAT_200003fe + 1;
        if (DAT_200003c7 == '\0') {
          uVar1 = DAT_200003c4;
          if (DAT_20000c72 != '\x01') {
            uVar1 = DAT_200003c2;
          }
          FUN_000008ec((&DAT_0000c9e5)[uVar2],uVar1);
        }
        else {
          FUN_000008ec((&DAT_0000c9e5)[uVar2],0xb);
        }
        bVar3 = bVar3 + 1;
      } while (bVar3 < (byte)(&DAT_0000ca27)[DAT_200003fd]);
    }
    DAT_200003fd = DAT_200003fd + 1;
    if (8 < DAT_200003fd) {
      DAT_200003fc = '\0';
    }
  }
  return;
}

