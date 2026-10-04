/* Address: 0x000027dc; body bytes: 312 */

void FUN_000027dc(void)

{
  uint uVar1;
  uint uVar2;
  
  FUN_00004414();
  if (DAT_20000c72 == '\x01') {
    if (DAT_200003c2 == '\a') {
      DAT_200003c2 = 0;
      FUN_00000a68(0);
      return;
    }
  }
  else {
    if (DAT_20000c72 == '\x02') {
      FUN_0000448c();
      return;
    }
    if ((DAT_20000c72 == '\x03') || (DAT_20000c72 == '\x04')) {
      uVar2 = 0;
      do {
        uVar1 = uVar2 + 1 & 0xff;
        (&DAT_2000386a)[uVar2] = 0;
        uVar2 = uVar1;
      } while (uVar1 < 0xb);
      uVar2 = 0;
      do {
        uVar1 = 0;
        do {
          (&DAT_20003b14)[uVar1 + uVar2 * 0xf] = 0;
          uVar1 = uVar1 + 1 & 0xff;
        } while (uVar1 < 0xf);
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < 5);
      DAT_20000409 = 0;
      return;
    }
    if (DAT_20000c72 == '\x05') {
      if (DAT_200003c7 != '\0') {
        DAT_200003c7 = '\0';
        eeprom_write_page(&DAT_200003c7,1,0x17);
      }
      DAT_200003d1 = 0;
      return;
    }
    if (DAT_20000c72 == '\x06') {
      DAT_200003d6 = 0;
      return;
    }
    if ((DAT_20000c72 == '\a') || (DAT_20000c72 == '\b')) {
      DAT_200003db = 0;
      return;
    }
    if (DAT_20000c72 == '\r') {
      uVar2 = 0;
      do {
        uVar1 = 0;
        do {
          (&DAT_20003bbf)[uVar1 + uVar2 * 0xf] = 7;
          uVar1 = uVar1 + 1 & 0xff;
        } while (uVar1 < 0xf);
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < 5);
      DAT_200003e1 = 0;
      return;
    }
    if (DAT_20000c72 == '\x0e') {
      FUN_00000a68(7);
      DAT_200003e9 = 0;
      return;
    }
    if (DAT_20000c72 == '\t') {
      DAT_200003ee = 0;
      return;
    }
    if (DAT_20000c72 == '\n') {
      uVar2 = 0;
      do {
        (&DAT_20003c19)[uVar2] = 0;
        (&DAT_20003c5b)[uVar2] = 0;
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < 0x42);
      DAT_200003eb = 0;
      return;
    }
    if (DAT_20000c72 == '\v') {
      uVar2 = 0;
      do {
        uVar1 = 0;
        do {
          (&DAT_20003cac)[uVar1 + uVar2 * 5] = 0;
          (&DAT_20003cf7)[uVar1 + uVar2 * 5] = 0;
          uVar1 = uVar1 + 1 & 0xff;
        } while (uVar1 < 5);
        (&DAT_20003c9d)[uVar2] = 0;
        (&DAT_20003d42)[uVar2] = 0;
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < 0xf);
      DAT_200003f2 = 0;
      return;
    }
    if (DAT_20000c72 == '\f') {
      FUN_00000a68(DAT_200003c2);
      DAT_200003f7 = 0;
      DAT_200003f8 = 0x1c;
      DAT_200003f9 = 0;
    }
  }
  return;
}

