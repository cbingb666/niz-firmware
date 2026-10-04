/* Address: 0x0000ad4c; body bytes: 154 */

void FUN_0000ad4c(void)

{
  int iVar1;
  undefined1 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint local_20;
  
  local_20 = 0;
  do {
    uVar4 = 0;
    do {
      iVar5 = (uint)(byte)(&DAT_20000f29)[uVar4 * 2 + local_20 * 0x84] * 0x100 +
              (uint)(byte)(&DAT_20000f29)[uVar4 * 2 + local_20 * 0x84 + 1];
      if ((iVar5 == 0) || (iVar5 == 0xffff)) {
        (&DAT_200013cd)[uVar4 * 3 + local_20 * 0xc6] = 0;
        iVar5 = uVar4 * 3 + local_20 * 0xc6;
        (&DAT_200013cd)[iVar5 + 1] = 0;
        (&DAT_200013cd)[iVar5 + 2] = 0;
      }
      else {
        iVar3 = eeprom_read_u8(iVar5 + 2);
        iVar1 = uVar4 * 3;
        (&DAT_200013cd)[iVar1 + local_20 * 0xc6] = (char)iVar3;
        if (iVar3 - 1U < 4) {
          iVar1 = iVar1 + local_20 * 0xc6;
          (&DAT_200013cd)[iVar1 + 1] = 0;
          (&DAT_200013cd)[iVar1 + 2] = 0;
        }
        else {
          iVar3 = eeprom_read_u8(iVar5 + 3);
          iVar1 = iVar1 + local_20 * 0xc6;
          (&DAT_200013cd)[iVar1 + 1] = (char)iVar3;
          if (iVar3 == 1) {
            uVar2 = eeprom_read_u8(iVar5 + 4);
          }
          else {
            uVar2 = 0;
          }
          (&DAT_200013cd)[iVar1 + 2] = uVar2;
        }
      }
      uVar4 = uVar4 + 1 & 0xffff;
    } while (uVar4 < 0x42);
    watchdog_feed();
    local_20 = local_20 + 1 & 0xffff;
  } while (local_20 < 9);
  return;
}

