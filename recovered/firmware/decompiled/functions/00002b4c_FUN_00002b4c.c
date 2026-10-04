/* Address: 0x00002b4c; body bytes: 294 */

void FUN_00002b4c(void)

{
  dword dVar1;
  byte bVar2;
  uint uVar3;
  
  DAT_2000031a = DAT_2000031a + 1;
  if ((3 < DAT_2000031a) && (DAT_2000031a = 0, transport_is_wired == '\0')) {
    if (DAT_20000cd2 == '\0') {
      scan_enabled = 0;
      DAT_20000354 = FUN_00007088();
      scan_enabled = 1;
      if (0x135 < DAT_20000354) {
        if (DAT_20000354 < 0x212) {
          DAT_2000031c = DAT_2000031c + 1;
          if (((10 < DAT_2000031c) && (DAT_2000031c = 0, DAT_20000310 != '\x02')) &&
             (DAT_20000310 = '\x02', rgb_active != '\0')) {
            rgb_active = '\0';
            DAT_20000cbb = 0;
            dVar1 = TIMER1_TCSR;
            TIMER1_TCSR = dVar1 & 0xbfffffff;
            CLK_DisableModuleClock(0x5ec00003);
            FUN_00006778();
            FUN_00002a0c();
          }
          if (DAT_20000354 < 0x203) {
            DAT_2000031b = DAT_2000031b + 1;
            if ((DAT_20000325 < DAT_2000031b) && (scan_enabled = 0, DAT_20000369 == '\0')) {
              PB4_PIN = 0;
            }
          }
          else {
            DAT_2000031b = 0;
          }
          DAT_2000031d = 0;
        }
        else if (DAT_20000354 < 0x21d) {
          DAT_2000031d = 0;
          DAT_2000031b = 0;
          DAT_2000031c = 0;
        }
        else {
          if ((DAT_20000310 != '\0') && (DAT_2000031d = DAT_2000031d + 1, 10 < DAT_2000031d)) {
            DAT_2000031d = 0;
            DAT_20000310 = '\0';
          }
          DAT_2000031b = 0;
          DAT_2000031c = 0;
        }
        if (DAT_20000cc9 == '\x01') {
          FUN_000039f0(DAT_20000354);
        }
        else {
          bVar2 = 0;
          if (DAT_20000354 < 0x250) {
            uVar3 = 0;
            do {
              if (DAT_20000354 < (ushort)(&DAT_0000c130)[uVar3 * 2]) {
                bVar2 = (&DAT_0000c12e)[uVar3 * 4];
                break;
              }
              uVar3 = uVar3 + 1 & 0xff;
            } while (uVar3 < 0x14);
          }
          else {
            bVar2 = 100;
          }
          if (bVar2 < DAT_20000ce0) {
            FUN_00002b28();
            return;
          }
        }
      }
    }
  }
  return;
}

