/* Address: 0x00002564; body bytes: 100 */

void FUN_00002564(void)

{
  undefined1 uVar1;
  char cVar2;
  uint uVar3;
  
  if (DAT_200003c5 == '\0') {
    DAT_200003ed = DAT_200003ed + 1;
    if (DAT_2000040d < DAT_200003ed) {
      DAT_200003ed = 0;
      FUN_00000a68(DAT_200003c2);
      uVar3 = 0;
      do {
        if (DAT_200003c3 == '\n') {
          uVar1 = (&DAT_0000ca72)[uVar3 + (uint)DAT_200003ee * 0x14];
          cVar2 = '\n';
        }
        else {
          uVar1 = (&DAT_0000ca72)[uVar3 + (uint)DAT_200003ee * 0x14];
          cVar2 = DAT_200003c3;
        }
        FUN_000008ec(uVar1,cVar2);
        uVar3 = uVar3 + 1 & 0xff;
      } while (uVar3 < 0x14);
      DAT_200003ee = DAT_200003ee + 1;
      if (7 < DAT_200003ee) {
        DAT_200003ee = 0;
      }
    }
  }
  return;
}

