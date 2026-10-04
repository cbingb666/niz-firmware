/* Address: 0x00008b14; body bytes: 220 */

void FUN_00008b14(int param_1,int param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  byte bVar4;
  byte bVar5;
  uint uVar6;
  
  bVar5 = DAT_200003c2;
  param_1 = param_1 * 6;
  uVar2 = 0xff;
  uVar1 = (uint)(byte)(&DAT_0000c7f7)[param_2 + param_1];
  iVar3 = param_1 + 0x20003a4e;
  if (DAT_200003c7 == '\0') {
    if (param_3 == 0) {
      uVar6 = (uint)(byte)(&DAT_20003a0c)[param_2 + param_1];
      if (uVar6 == 0) {
        uVar6 = uVar2;
        if ((&DAT_20003a90)[param_2 + param_1] == '\0') {
          *(byte *)(iVar3 + param_2) = DAT_200003c2;
          if (bVar5 < 9) {
            (&DAT_20003a90)[param_2 + param_1] = 1;
            if (bVar5 == 7) {
              uVar6 = 0;
            }
            else {
              (&DAT_20003a0c)[param_2 + param_1] = 0xff;
              uVar6 = 0;
            }
          }
          else {
            (&DAT_20003ad2)[uVar1] = 0;
          }
        }
      }
      else if ((&DAT_20003a90)[param_2 + param_1] != '\0') {
        uVar6 = 0xff - uVar6;
      }
      goto LAB_00008be2;
    }
    if (8 < DAT_200003c2) {
      (&DAT_20003ad2)[uVar1] = 1;
    }
    if (DAT_200003c3 == '\n') {
      DAT_200003c6 = DAT_200003c6 + 1;
      if (6 < DAT_200003c6) {
        DAT_200003c6 = 0;
      }
      bVar4 = DAT_200003c6;
      if ((DAT_200003c6 == bVar5) &&
         (bVar5 = DAT_200003c6 + 1, bVar4 = DAT_200003c6 + 1, DAT_200003c6 = DAT_200003c6 + 1,
         6 < bVar5)) {
        DAT_200003c6 = 0;
        bVar4 = DAT_200003c6;
      }
      goto LAB_00008b42;
    }
    *(char *)(iVar3 + param_2) = DAT_200003c3;
  }
  else {
    if (param_3 == 0) {
      uVar6 = (uint)(byte)(&DAT_20003a0c)[param_2 + param_1];
      if (uVar6 == 0) {
        *(undefined1 *)(iVar3 + param_2) = 0xb;
        uVar6 = uVar2;
      }
      goto LAB_00008be2;
    }
    bVar4 = 0xc;
LAB_00008b42:
    *(byte *)(iVar3 + param_2) = bVar4;
  }
  (&DAT_20003a90)[param_2 + param_1] = 0;
  (&DAT_20003a0c)[param_2 + param_1] = 0xff;
  uVar6 = uVar2;
LAB_00008be2:
  FUN_0000099c(uVar1,*(undefined1 *)(iVar3 + param_2),uVar6);
  return;
}

