/* Address: 0x00009648; body bytes: 98 */

void FUN_00009648(int param_1)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  if (param_1 - 10U < 0x1f) {
    uVar6 = 0;
    do {
      uVar3 = (uint)DAT_20000c55;
      iVar4 = uVar6 * 6;
      uVar5 = 0;
      do {
        if ((byte)(&DAT_20001be2)[uVar5 + iVar4] == 0xff) {
          cVar2 = (&DAT_0000c17e)[uVar3] + '\n';
LAB_00009686:
          (&matrix_threshold)[uVar5 + iVar4] = cVar2;
        }
        else {
          bVar1 = aeabi_uidivmod(param_1 * (uint)(byte)(&DAT_20001be2)[uVar5 + iVar4],0x28);
          (&matrix_threshold)[uVar5 + iVar4] = bVar1;
          if (bVar1 < 9) {
            cVar2 = '\t';
            goto LAB_00009686;
          }
        }
        uVar5 = uVar5 + 1 & 0xff;
      } while (uVar5 < 6);
      watchdog_feed();
      uVar6 = uVar6 + 1 & 0xff;
    } while (uVar6 < 0xb);
  }
  return;
}

