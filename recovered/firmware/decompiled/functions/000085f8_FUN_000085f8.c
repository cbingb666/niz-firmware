/* Address: 0x000085f8; body bytes: 308 */

void FUN_000085f8(void)

{
  uint uVar1;
  char local_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (transport_is_wired == '\0') {
    if ((DAT_20000cde == '\0') || (DAT_20000369 == '\0')) {
      uVar1 = 0;
      if (DAT_20000ca7 != 0) {
        do {
          if ((byte)(&DAT_20000393)[uVar1] < 0x87) {
            ble_key_event(1);
          }
          uVar1 = uVar1 + 1 & 0xff;
        } while (uVar1 < DAT_20000ca7);
      }
      FUN_00002d2c();
      uVar1 = 0;
      if (DAT_20000ca7 != 0) {
        do {
          if ((byte)(&DAT_20000393)[uVar1] < 0x87) {
            ble_key_event(0);
          }
          uVar1 = uVar1 + 1 & 0xff;
        } while (uVar1 < DAT_20000ca7);
      }
      FUN_00002d2c();
      return;
    }
  }
  else {
    if (wired_protocol != '\x01') {
      if (wired_protocol == '\x02') {
        uVar1 = 0;
        if (DAT_20000ca7 != 0) {
          do {
            if ((byte)(&DAT_20000393)[uVar1] < 0x86) {
              local_30[0] = '\0';
              local_28 = 0;
              local_24 = 0;
              local_20 = 0;
              local_1c = 0;
              FUN_00005b24((&DAT_20000393)[uVar1],1,&local_28,local_30);
              if (local_30[0] != '\0') {
                FUN_00006c84(&local_28);
              }
            }
            uVar1 = uVar1 + 1 & 0xff;
          } while (uVar1 < DAT_20000ca7);
        }
        uVar1 = 0;
        if (DAT_20000ca7 != 0) {
          do {
            if ((byte)(&DAT_20000393)[uVar1] < 0x86) {
              local_30[0] = '\0';
              local_28 = 0;
              local_24 = 0;
              local_20 = 0;
              local_1c = 0;
              FUN_00005b24((&DAT_20000393)[uVar1],0,&local_28,local_30);
              if (local_30[0] != '\0') {
                FUN_00006c84(&local_28);
              }
            }
            uVar1 = uVar1 + 1 & 0xff;
          } while (uVar1 < DAT_20000ca7);
        }
      }
      return;
    }
    uVar1 = 0;
    if (DAT_20000ca7 != 0) {
      do {
        if ((byte)(&DAT_20000393)[uVar1] < 0x86) {
          usb_key_event(1);
        }
        uVar1 = uVar1 + 1 & 0xff;
      } while (uVar1 < DAT_20000ca7);
    }
    FUN_0000a1b4();
    uVar1 = 0;
    if (DAT_20000ca7 != 0) {
      do {
        if ((byte)(&DAT_20000393)[uVar1] < 0x87) {
          usb_key_event(0);
        }
        uVar1 = uVar1 + 1 & 0xff;
      } while (uVar1 < DAT_20000ca7);
    }
    FUN_0000a1b4();
  }
  return;
}

