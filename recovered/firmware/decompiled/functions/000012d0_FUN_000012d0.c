/* Address: 0x000012d0; body bytes: 764 */

void FUN_000012d0(void)

{
  dword dVar1;
  uint uVar2;
  int iVar3;
  
  uVar2 = eeprom_read_u8(0x2e);
  DAT_20000cbd = (char)uVar2;
  if (1 < uVar2) {
    DAT_20000cbd = '\0';
  }
  DAT_20000cbe = 0;
  uVar2 = eeprom_read_u8(0x1a);
  DAT_20000402 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_20000402 = 0;
  }
  DAT_20000410 = (ushort)(byte)(&DAT_0000c670)[DAT_20000402];
  uVar2 = eeprom_read_u8(0x1e);
  DAT_20000403 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_20000403 = 0;
  }
  DAT_20000416 = (&DAT_0000c884)[DAT_20000403];
  uVar2 = eeprom_read_u8(0x1b);
  DAT_20000404 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_20000404 = 0;
  }
  DAT_200003cc = (&DAT_0000c675)[DAT_20000404];
  uVar2 = eeprom_read_u8(0x1c);
  DAT_20000407 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_20000407 = 3;
  }
  DAT_20000405 = (&DAT_0000c67a)[DAT_20000407];
  uVar2 = eeprom_read_u8(0x1d);
  DAT_20000408 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_20000408 = 3;
  }
  DAT_20000406 = (&DAT_0000c67f)[DAT_20000408];
  uVar2 = eeprom_read_u8(0x1f);
  DAT_200003d3 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003d3 = 1;
  }
  DAT_200003d0 = (&DAT_0000c684)[DAT_200003d3];
  uVar2 = eeprom_read_u8(0x20);
  DAT_200003d8 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003d8 = 1;
  }
  DAT_200003d5 = (&DAT_0000c689)[DAT_200003d8];
  uVar2 = eeprom_read_u8(0x21);
  DAT_200003dc = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003dc = 1;
  }
  DAT_200003da = (&DAT_0000c68e)[DAT_200003dc];
  uVar2 = eeprom_read_u8(0x22);
  DAT_200003e3 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003e3 = 1;
  }
  DAT_200003e0 = (&DAT_0000c693)[DAT_200003e3];
  uVar2 = eeprom_read_u8(0x23);
  DAT_200003e8 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003e8 = 1;
  }
  DAT_200003e6 = (&DAT_0000c698)[DAT_200003e8];
  uVar2 = eeprom_read_u8(0x24);
  DAT_200003ef = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003ef = 1;
  }
  DAT_2000040d = (&DAT_0000c69d)[DAT_200003ef];
  uVar2 = eeprom_read_u8(0x25);
  DAT_200003ec = (undefined1)uVar2;
  if (4 < uVar2) {
    uVar2 = 1;
    DAT_200003ec = 1;
  }
  DAT_2000040a = (&DAT_0000c6a2)[uVar2 & 0xff];
  DAT_2000040c = (&DAT_0000c6a7)[uVar2 & 0xff];
  uVar2 = eeprom_read_u8(0x26);
  DAT_200003f1 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003f1 = 1;
  }
  DAT_2000040e = (&DAT_0000c6ac)[DAT_200003f1];
  uVar2 = eeprom_read_u8(0x27);
  DAT_200003f6 = (byte)uVar2;
  if (4 < uVar2) {
    DAT_200003f6 = 1;
  }
  DAT_2000040f = (&DAT_0000c6ac)[DAT_200003f6];
  uVar2 = eeprom_read_u8(0x28);
  DAT_200003d2 = (undefined1)uVar2;
  if (1 < uVar2) {
    DAT_200003d2 = 1;
  }
  uVar2 = eeprom_read_u8(0x29);
  DAT_200003d7 = (undefined1)uVar2;
  if (1 < uVar2) {
    DAT_200003d7 = 1;
  }
  uVar2 = eeprom_read_u8(0x2a);
  DAT_200003dd = (undefined1)uVar2;
  if (1 < uVar2) {
    DAT_200003dd = 1;
  }
  uVar2 = eeprom_read_u8(0x2b);
  DAT_200003de = (undefined1)uVar2;
  if (1 < uVar2) {
    DAT_200003de = 1;
  }
  uVar2 = eeprom_read_u8(0x15);
  DAT_20000c74 = (undefined1)uVar2;
  if (4 < uVar2) {
    uVar2 = 4;
    DAT_20000c74 = 4;
  }
  FUN_0000068c((&DAT_0000c66b)[uVar2 & 0xff]);
  uVar2 = eeprom_read_u8(0x17);
  DAT_200003c7 = (char)uVar2;
  if (1 < uVar2) {
    DAT_200003c7 = '\0';
  }
  FUN_00002704();
  if ((DAT_20000c72 < 5) && (DAT_200003c7 != '\0')) {
    FUN_00000a68(0xb);
  }
  uVar2 = eeprom_read_u8(0x18);
  DAT_200003c2 = (char)uVar2;
  if (uVar2 < 10) {
    if (uVar2 == 7) {
      DAT_200003c6 = 0;
    }
  }
  else {
    DAT_200003c2 = '\0';
  }
  uVar2 = eeprom_read_u8(0x2d);
  DAT_200003c4 = (undefined1)uVar2;
  if (uVar2 < 0xb) {
    if (uVar2 == 7) {
      DAT_200003c4 = 8;
    }
  }
  else {
    DAT_200003c4 = 0;
  }
  uVar2 = eeprom_read_u8(0x19);
  DAT_200003c3 = (char)uVar2;
  if ((6 < uVar2) && (uVar2 != 10)) {
    DAT_200003c3 = '\0';
  }
  if (DAT_200003c3 == DAT_200003c2) {
    DAT_200003c3 = DAT_200003c3 + '\x01';
  }
  uVar2 = eeprom_read_u8(0x16);
  DAT_20000c72 = (byte)uVar2;
  if (0xe < uVar2) {
    DAT_20000c72 = 0;
  }
  FUN_000027dc();
  uVar2 = eeprom_read_u8(0x2f);
  DAT_200003c5 = (undefined1)uVar2;
  if (uVar2 < 2) {
    if (uVar2 != 0) {
      if (9 < DAT_20000c72 - 5) goto LAB_0000152c;
      eeprom_read_block(&DAT_20003880,0xc6,0xfb);
    }
  }
  else {
LAB_0000152c:
    DAT_200003c5 = 0;
  }
  if (transport_is_wired == '\0') {
    dVar1 = TIMER1_TCSR;
    TIMER1_TCSR = dVar1 & 0xbfffffff;
    CLK_DisableModuleClock(0x5ec00003);
    if ((DAT_20000c63 == '\0') || (DAT_20000cbd == '\0')) goto LAB_000015b8;
    rgb_active = eeprom_read_u8(0x2c);
    DAT_20000cbb = 1;
    DAT_20000c74 = 0;
    FUN_00000660(10);
  }
  else {
    if (wired_protocol != '\x02') {
      iVar3 = eeprom_read_u8(0x2c);
      if (iVar3 == 1) {
        rgb_active = (char)iVar3;
        DAT_20000cbb = 1;
        return;
      }
    }
    rgb_active = '\0';
    DAT_20000cbb = 0;
    dVar1 = TIMER1_TCSR;
    TIMER1_TCSR = dVar1 & 0xbfffffff;
    CLK_DisableModuleClock(0x5ec00003);
  }
  if (rgb_active == '\x01') {
    return;
  }
LAB_000015b8:
  rgb_active = 0;
  DAT_20000cbb = 0;
  FUN_00006778();
  FUN_00002a0c();
  DAT_20000c74 = 0;
  return;
}

