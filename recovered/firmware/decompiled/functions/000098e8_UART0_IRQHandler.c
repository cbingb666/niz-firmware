/* Address: 0x000098e8; body bytes: 344 */

/* NUC123 vector IRQ12, receive processing. */

void UART0_IRQHandler(void)

{
  undefined1 uVar1;
  dword dVar2;
  uint uVar3;
  uint uVar4;
  undefined4 in_r3;
  
  dVar2 = UART0_ISR;
  if ((-1 < (int)(dVar2 << 0x17)) || (dVar2 = UART0_ISR, (dVar2 & 1) == 0)) {
    return;
  }
  do {
    DAT_20000cda = 0x32;
    dVar2 = UART0_RBR;
    uVar3 = dVar2 & 0xff;
    if (uVar3 == 0xea) {
      DAT_20000cdd = 0xea;
      DAT_20000cda = 0;
    }
    else if (uVar3 == 0xee) {
      DAT_20000cdd = 0xee;
      DAT_20000cda = 0;
    }
    else {
      if (uVar3 == 0xe3) {
        DAT_20000cdc = 1;
      }
      else {
        if (uVar3 != 0xe4) {
          uVar1 = (undefined1)dVar2;
          if (DAT_200003b2 == '\0') {
            if (uVar3 == 0xf6) {
              DAT_200003b2 = '\x02';
              DAT_200003b1 = 1;
              DAT_200003b9 = uVar1;
            }
            else if (uVar3 == 0xf9) {
              DAT_200003b1 = 0;
              DAT_200003b2 = '\x01';
            }
            else {
              (&DAT_200003b9)[DAT_200003b1] = uVar1;
              uVar3 = DAT_200003b1 + 1;
              DAT_200003b1 = (byte)uVar3;
              if (3 < (uVar3 & 0xff)) {
                DAT_20000cd6 = 1;
                DAT_20000cda = 0;
                uVar3 = 0;
                do {
                  (&DAT_200003b3)[uVar3] = (&DAT_200003b9)[uVar3];
                  uVar3 = uVar3 + 1;
                } while (uVar3 < 4);
                uVar3 = 0;
                do {
                  (&DAT_200003b9)[uVar3] = 0;
                  uVar3 = uVar3 + 1;
                } while (uVar3 < 6);
                DAT_200003b1 = 0;
              }
            }
          }
          else if (DAT_200003b2 == '\x01') {
            uVar4 = (uint)DAT_200003b1;
            (&DAT_2000382c)[uVar4] = uVar1;
            DAT_200003b1 = (byte)(uVar4 + 1);
            if ((uVar3 == 0) || (0x3d < (uVar4 + 1 & 0xff))) {
              if ((transport_is_wired != '\0') || (DAT_20000cd2 != '\0')) {
                DAT_2000382a = 0;
                DAT_2000382b = 0xfa;
                usb_send_host_payload(&DAT_2000382a,0x40,&DAT_2000382a,&DAT_2000382a + uVar4,in_r3);
              }
              uVar3 = 0;
              do {
                (&DAT_2000382a)[uVar3] = 0;
                uVar3 = uVar3 + 1;
              } while (uVar3 < 0x40);
              DAT_200003b1 = 0;
              DAT_200003b2 = '\0';
              DAT_20000cda = 0;
              uVar3 = 0;
              do {
                (&DAT_200003b9)[uVar3] = 0;
                uVar3 = uVar3 + 1;
              } while (uVar3 < 6);
            }
          }
          else if (DAT_200003b2 == '\x02') {
            (&DAT_200003b9)[DAT_200003b1] = uVar1;
            uVar3 = DAT_200003b1 + 1;
            DAT_200003b1 = (byte)uVar3;
            if (5 < (uVar3 & 0xff)) {
              DAT_20000cd6 = 1;
              DAT_20000cda = 0;
              uVar3 = 0;
              do {
                (&DAT_200003b3)[uVar3] = (&DAT_200003b9)[uVar3];
                uVar3 = uVar3 + 1;
              } while (uVar3 < 6);
              uVar3 = 0;
              do {
                (&DAT_200003b9)[uVar3] = 0;
                uVar3 = uVar3 + 1;
              } while (uVar3 < 6);
              DAT_200003b1 = 0;
              DAT_200003b2 = '\0';
            }
          }
          goto LAB_00009a32;
        }
        DAT_20000cdc = 0;
      }
      DAT_20000cda = 0;
    }
LAB_00009a32:
    dVar2 = UART0_ISR;
    if ((dVar2 & 1) == 0) {
      return;
    }
  } while( true );
}

