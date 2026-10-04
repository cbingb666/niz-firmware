/* Address: 0x00002704; body bytes: 56 */

void FUN_00002704(void)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 in_r3;
  
  eeprom_read_block(&DAT_2000047c,0xc6,0x35,in_r3,in_r3);
  uVar3 = 0;
  do {
    iVar1 = uVar3 * 3;
    iVar2 = (uint)(byte)(&DAT_0000c6e6)[uVar3] * 3;
    (&DAT_20003946)[iVar2] = (&DAT_2000047c)[iVar1];
    (&DAT_20003947)[iVar2] = (&DAT_2000047d)[iVar1];
    uVar3 = uVar3 + 1 & 0xff;
    (&DAT_20003948)[iVar2] = (&DAT_2000047e)[iVar1];
  } while (uVar3 < 0x42);
  return;
}

