/* Address: 0x00003e20; body bytes: 182 */

void FUN_00003e20(void)

{
  dword dVar1;
  undefined1 auStack_120 [268];
  
  dVar1 = PB5_PIN;
  if (dVar1 == 0) {
    if ((DAT_20000cc6 != '\0') && (delay_ms(10), dVar1 = PB5_PIN, dVar1 == 0)) {
      DAT_20000cc6 = 0;
      return;
    }
  }
  else {
    scan_enabled = 0;
    do {
      while (delay_ms(10), dVar1 = PB5_PIN, dVar1 != 0) {
        if ((DAT_20000cc6 == '\0') && (DAT_20000cc5 != '\0')) {
          DAT_20000cc7 = DAT_20000cc7 | 8;
          DAT_20000cc6 = 1;
          if (DAT_20000317 != '\0') {
            DAT_20000317 = '\0';
            FUN_000001c2(auStack_120,0x108);
            FUN_00004024(auStack_120,&key_press_counters,0x42);
            eeprom_write_block(auStack_120,0x108,65000);
          }
          PB4_PIN = 0;
          DAT_20000cc5 = 0;
          scan_enabled = 0;
          delay_ms(100);
          DAT_20000cc7 = DAT_20000cc7 & 0xf7;
          rgb_active = 0;
          FUN_00006778();
          do {
            delay_ms(10);
          } while( true );
        }
      }
      delay_ms(10);
      dVar1 = PB5_PIN;
    } while (dVar1 != 0);
    DAT_20000cc6 = '\0';
    scan_enabled = 1;
  }
  return;
}

