/* Address: 0x00008e54; body bytes: 758 */

/* Loads settings, initializes EC thresholds, macros, counters and transport state. */

void application_init(void)

{
  dword dVar1;
  short sVar2;
  uint uVar3;
  byte bVar4;
  
  DAT_20000cb9 = 0;
  FUN_00003be0();
  FUN_00003c4c();
  FUN_00002d5c();
  FUN_00005a84(&key_press_counters);
  DAT_20000c5e = 1;
  DAT_20000cc0 = 0;
  DAT_20000cc2 = 0x78;
  application_state = 0;
  DAT_20000c4f = 0;
  uVar3 = eeprom_read_u8(10);
  DAT_20000c4c = (undefined1)uVar3;
  if (5 < uVar3) {
    DAT_20000c4c = 2;
  }
  uVar3 = eeprom_read_u8(0xb);
  DAT_20000c51 = (undefined1)uVar3;
  if (4 < uVar3) {
    DAT_20000c51 = 2;
  }
  uVar3 = eeprom_read_u8(0xf);
  DAT_20000c4e = (undefined1)uVar3;
  if (5 < uVar3) {
    DAT_20000c4e = 3;
  }
  uVar3 = eeprom_read_u8(0xe);
  DAT_20000c4d = (undefined1)uVar3;
  if (5 < uVar3) {
    DAT_20000c4d = 2;
  }
  uVar3 = eeprom_read_u8(0x12);
  DAT_20000c50 = (undefined1)uVar3;
  if (5 < uVar3) {
    DAT_20000c50 = 1;
  }
  DAT_20000ca0 = 0;
  DAT_20000c9e = 0;
  DAT_20000ca1 = 0;
  DAT_20000c52 = 0;
  DAT_20000c5f = 0;
  DAT_20000c7c = 0;
  DAT_20000c80 = 0;
  DAT_20000c7e = 0;
  uVar3 = eeprom_read_u8(0x30);
  DAT_20000c67 = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c67 = 0;
  }
  uVar3 = eeprom_read_u8(0x31);
  DAT_20000c68 = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c68 = 0;
  }
  uVar3 = eeprom_read_u8(0x32);
  DAT_20000c69 = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c69 = 0;
  }
  uVar3 = eeprom_read_u8(0x33);
  DAT_20000c6a = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c6a = 0;
  }
  uVar3 = eeprom_read_u8(0x34);
  DAT_20000c6b = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c6b = 0;
  }
  DAT_20000c88 = 0;
  DAT_20000c86 = 0;
  uVar3 = eeprom_read_u8(8);
  DAT_20000c6d = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c6d = 0;
  }
  if (transport_is_wired != '\0') {
    if (DAT_20000c65 == '\0') {
      DAT_20000c60 = 6;
    }
    else {
      DAT_20000c6d = 0;
      DAT_20000c60 = 5;
    }
  }
  DAT_20000c90 = 0;
  DAT_20000c8e = 0;
  uVar3 = eeprom_read_u8(5);
  DAT_20000c64 = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c64 = 0;
  }
  DAT_20000c84 = 0;
  DAT_20000c82 = 0;
  uVar3 = eeprom_read_u8(0x11);
  DAT_20000c6e = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c6e = 0;
  }
  DAT_20000c98 = 0;
  DAT_20000c96 = 0;
  DAT_20000c9a = 0;
  DAT_20000c9c = 0;
  uVar3 = eeprom_read_u8(0x10);
  DAT_20000cc4 = (undefined1)uVar3;
  if (3 < uVar3) {
    DAT_20000cc4 = 2;
  }
  DAT_20000c92 = 0;
  DAT_20000c94 = 0;
  if ((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) {
    uVar3 = eeprom_read_u8(0xc);
    DAT_20000c63 = (undefined1)uVar3;
    if (1 < uVar3) goto LAB_00008fd8;
  }
  else {
LAB_00008fd8:
    DAT_20000c63 = 1;
  }
  uVar3 = eeprom_read_u8(64999);
  DAT_20000c71 = (undefined1)uVar3;
  if (1 < uVar3) {
    DAT_20000c71 = 0;
  }
  DAT_20000c8a = 0;
  DAT_20000c8c = 0;
  uVar3 = eeprom_read_u8(0x14);
  DAT_20000372 = (undefined1)uVar3;
  if (2 < uVar3) {
    DAT_20000372 = 0;
  }
  DAT_20000ca6 = 0;
  DAT_20000ca8 = 100;
  DAT_20000c7a = 0;
  DAT_20000ccb = 0;
  DAT_20000ccc = 0;
  DAT_20000caa = 0;
  DAT_20000cab = 1;
  DAT_20000cac = 0;
  DAT_20000cad = 0;
  DAT_20000cb0 = 0;
  DAT_20000cb2 = 0;
  DAT_20000cb4 = 0;
  DAT_20000cb6 = 0;
  DAT_20000cae = 0;
  DAT_20000c6f = 0;
  DAT_20000c70 = 0;
  DAT_20000c58 = 0x20;
  DAT_20000c5a = 500;
  DAT_20000cd2 = 0;
  uVar3 = eeprom_read_u8(4);
  DAT_20000cb8 = (undefined1)uVar3;
  if ((uVar3 == 0) || (4 < uVar3)) {
    DAT_20000cb8 = 1;
  }
  else if (uVar3 != 1) {
    DAT_20000cc7 = DAT_20000cc7 & 0xef;
    DAT_2000033e = 0;
    goto LAB_00009062;
  }
  DAT_20000cc7 = DAT_20000cc7 | 0x10;
  DAT_2000033e = 0x1e;
  DAT_20000328 = 0;
LAB_00009062:
  uVar3 = eeprom_read_u8(0xd);
  DAT_20000cc8 = (undefined1)uVar3;
  if (4 < uVar3) {
    DAT_20000cc8 = 4;
  }
  uVar3 = 0;
  do {
    (&DAT_2000047c)[uVar3] = 0;
    uVar3 = uVar3 + 1 & 0xffff;
  } while (uVar3 < 2000);
  FUN_000012d0();
  ec_keyboard_init();
  DAT_20000ce0 = 0x65;
  DAT_20000ce2 = 0;
  if (transport_is_wired == '\0') {
    scan_enabled = 0;
    DAT_20000354 = 0;
    bVar4 = 0;
    do {
      sVar2 = FUN_00007088();
      DAT_20000354 = sVar2 + DAT_20000354;
      delay_ms(1);
      bVar4 = bVar4 + 1;
    } while (bVar4 < 0x14);
    DAT_20000354 = aeabi_uidivmod(DAT_20000354,0x14);
    scan_enabled = 1;
    FUN_00002b28(99);
    if (DAT_20000354 < 0x212) {
      DAT_20000310 = 2;
      if (rgb_active != '\0') {
        rgb_active = '\0';
        DAT_20000cbb = 0;
        dVar1 = TIMER1_TCSR;
        TIMER1_TCSR = dVar1 & 0xbfffffff;
        CLK_DisableModuleClock();
        FUN_00006778();
        FUN_00002a0c();
      }
    }
    else if (rgb_active != '\0') {
      CLK_EnableModuleClock(0x5ec00003);
      dVar1 = TIMER1_TCSR;
      TIMER1_TCSR = dVar1 | 0x40000000;
    }
    if (DAT_20000cc9 == '\x01') {
      DAT_20000325 = 100;
    }
    else {
      DAT_20000325 = 0x14;
    }
    DAT_2000031f = 1;
    DAT_20000320 = 0;
  }
  return;
}

