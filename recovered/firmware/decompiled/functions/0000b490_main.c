/* Address: 0x0000b490; body bytes: 1898 */

/* Application entry called by ARM C runtime thunk at 0xc8. */

void main(void)

{
  dword dVar1;
  byte bVar2;
  short sVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  bool bVar7;
  undefined4 local_110;
  int local_10c;
  undefined1 auStack_108 [264];
  
  board_init();
  application_init();
LAB_0000b4aa:
  watchdog_feed();
  if (4 < application_state) {
    application_state = 0;
    goto LAB_0000bc0c;
  }
                    /* WARNING: Switch is manually overridden */
  switch(application_state) {
  case 0:
    ec_process_scan_records();
    if (transport_is_wired == '\0') {
      ble_report_queue_service();
    }
    else if (wired_protocol == '\x01') {
      usb_report_queue_service();
    }
    if ((DAT_20000322 != '\0') && (DAT_20000346 == 0)) {
      if (transport_is_wired == '\0') {
        FUN_0000304c();
        if (DAT_20000cd2 == '\0') {
          FUN_000065b4();
        }
        DAT_20000346 = DAT_20000c58 + 1;
      }
      else {
        if (wired_protocol == '\x01') {
          FUN_0000a1e4();
        }
        else if (wired_protocol == '\x02') {
          FUN_00006b4c();
        }
        DAT_20000346 = DAT_20000c58;
      }
    }
    if ((DAT_20000321 != '\0') && (DAT_2000034e == 0)) {
      if ((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) {
        FUN_000065b4();
      }
      key_events_dispatch();
    }
    if ((DAT_20000315 != '\0') && (DAT_2000034c == 0)) {
      FUN_00006a8c(1);
      if (DAT_20000c52 == '\0') {
        DAT_2000034c = 10;
      }
      else {
        DAT_2000034c = 0x32;
      }
      if (DAT_20000cd2 == '\0') {
        FUN_000065b4();
      }
    }
    if ((DAT_20000ca6 != '\0') && (DAT_20000344 == 0)) {
      FUN_000085f8();
      DAT_20000344 = DAT_20000ca8;
      if ((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) {
        FUN_000065b4();
      }
    }
    if (((DAT_20000caa != '\0') && (FUN_000082f4(), transport_is_wired == '\0')) &&
       (DAT_20000cd2 == '\0')) {
      FUN_000065b4();
    }
    if ((DAT_20000316 != '\0') && (DAT_20000342 == 0)) {
      FUN_000082a0();
    }
    if (100 < DAT_20000336) {
      DAT_20000336 = 0;
      DAT_20000358 = DAT_20000358 + 1;
      FUN_00003ef0();
      FUN_00003b78();
      FUN_00003c84();
      FUN_00003d1c();
      FUN_00003d78();
      FUN_00003a84();
      if (DAT_20000cb8 == '\x01') {
        if ((DAT_2000033e != 0) &&
           (sVar3 = DAT_2000033e + -1, bVar7 = DAT_2000033e == 1, DAT_2000033e = sVar3, bVar7)) {
          DAT_20000cc7 = DAT_20000cc7 & 0xef;
        }
      }
      else {
        FUN_00006f9c();
      }
    }
    if ((18000 < DAT_20000358) && (DAT_20000358 = 0, DAT_20000317 != '\0')) {
      DAT_20000317 = '\0';
      local_110 = &key_press_counters;
      FUN_000001c2(auStack_108,0x108);
      FUN_00004024(auStack_108,local_110,0x42);
      eeprom_write_block(auStack_108,0x108,65000);
    }
    if (DAT_20000c80 != '\0') {
      DAT_20000c80 = '\0';
      FUN_0000aee0();
    }
    if (DAT_20000c84 != '\0') {
      DAT_20000c84 = '\0';
      FUN_00003a4c();
    }
    if (DAT_20000c88 != '\0') {
      DAT_20000c88 = '\0';
      FUN_0000ae4c();
    }
    if (DAT_20000c98 != '\0') {
      DAT_20000c98 = '\0';
      FUN_00002a44();
    }
    if (DAT_20000c8c != '\0') {
      DAT_20000c8c = '\0';
      FUN_00008780();
    }
    if (DAT_20000c90 != '\0') {
      DAT_20000c90 = '\0';
      FUN_00004594();
    }
    if (DAT_20000ca0 != '\0') {
      DAT_20000ca0 = '\0';
      if (DAT_20000ca1 < 3) {
        FUN_000069a4();
      }
      else if (DAT_20000ca1 == 3) {
        FUN_00006b18();
      }
      else {
        FUN_00006a58();
      }
      DAT_20000ca1 = 0;
    }
    if (((10 < DAT_20000338) && (DAT_20000338 = 0, transport_is_wired == '\0')) &&
       (DAT_20000cd2 == '\0')) {
      FUN_00003e20();
    }
    if ((DAT_20000c94 != '\0') && (DAT_20000c94 = '\0', DAT_20000310 == 0)) {
      FUN_00002a80();
    }
    if (DAT_20000c9c != '\0') {
      DAT_20000c9c = '\0';
      FUN_00008c40();
    }
    if (500 < DAT_20000332) {
      DAT_20000332 = 0;
      dVar1 = PB6_PIN;
      if (DAT_20000cd2 == '\0') {
        if (dVar1 == 0) {
          if (transport_is_wired == '\x01') {
            DataSynchronizationBarrier(0xf);
            SCB_AIRCR = 0x5fa0004;
            DataSynchronizationBarrier(0xf);
            do {
                    /* WARNING: Do nothing block with infinite loop */
            } while( true );
          }
        }
        else if (transport_is_wired == '\0') {
          DataSynchronizationBarrier(0xf);
          SCB_AIRCR = 0x5fa0004;
          DataSynchronizationBarrier(0xf);
          do {
                    /* WARNING: Do nothing block with infinite loop */
          } while( true );
        }
      }
      else if (dVar1 == 0) {
        DAT_20000cd2 = '\0';
        if (wired_protocol == '\x01') {
          CLK_DisableModuleClock(&DAT_40003c9b);
          NVIC_ICER = 0x800000;
        }
        else if (wired_protocol == '\x02') {
          CLK_DisableModuleClock(&DAT_4000001f);
          FUN_00006b84();
        }
        if (DAT_20000310 == 1) {
          DAT_20000cc7 = DAT_20000cc7 & 0xf7;
          DAT_20000310 = 0;
        }
        uVar4 = eeprom_read_u8(0xc);
        DAT_20000c63 = (char)uVar4;
        if (uVar4 < 2) {
          if (uVar4 == 0) {
            scan_enabled = 0;
            if (rgb_active != '\0') {
              rgb_active = '\0';
              DAT_20000cbb = 0;
              FUN_00002a0c();
            }
            CLK_DisableModuleClock(0x5ec00003);
            clock_set_profile(2);
            FUN_000007a8(10000);
            scan_enabled = '\x01';
            goto LAB_0000b82c;
          }
        }
        else {
          DAT_20000c63 = '\x01';
        }
        if ((DAT_20000cbd == '\0') && (rgb_active != '\0')) {
          rgb_active = '\0';
          DAT_20000cbb = 0;
          FUN_00002a0c();
          CLK_DisableModuleClock(0x5ec00003);
        }
      }
LAB_0000b82c:
      FUN_00002b4c();
      if (((DAT_20000c63 == '\0') && (DAT_20000340 != 0)) &&
         (sVar3 = DAT_20000340 + -1, bVar7 = DAT_20000340 == 1, DAT_20000340 = sVar3, bVar7)) {
        DAT_20000cc7 = DAT_20000cc7 & 0x9f;
      }
    }
    if (499 < DAT_20000350) {
      DAT_20000350 = 0;
      if ((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) {
LAB_0000b924:
        if (((DAT_20000cc0 < 2) && (DAT_20000cd2 == '\0')) &&
           ((DAT_20000cc2 != 0 &&
            (sVar3 = DAT_20000cc2 + -1, bVar7 = DAT_20000cc2 == 1, DAT_20000cc2 = sVar3, bVar7)))) {
          FUN_00006300();
        }
      }
      else {
        dVar1 = PB7_PIN;
        if (dVar1 == 0) {
          DAT_20000311 = DAT_20000311 + 1;
          if (4 < DAT_20000311) {
            DAT_20000311 = 0;
            DAT_20000310 = 1;
          }
        }
        else {
          DAT_20000311 = 0;
          if (transport_is_wired == '\0') {
            if (DAT_20000310 == 1) {
              if (DAT_20000ce0 < 0x5f) {
                bVar2 = 0x5f;
                goto joined_r0x0000b8f0;
              }
            }
            else if (DAT_20000ce0 != 100) {
              bVar2 = 100;
joined_r0x0000b8f0:
              if (DAT_20000ccc == '\0') {
                local_110._0_2_ = CONCAT11(bVar2,0xfd);
                DAT_20000ce0 = bVar2;
                ble_send_frame(&local_110,2);
              }
            }
          }
          DAT_20000310 = 0;
        }
        if (transport_is_wired == '\0') goto LAB_0000b924;
      }
      if (DAT_20000cc0 == 0) {
        if (DAT_2000031f == '\0') {
          if (DAT_20000310 == 0) {
            DAT_20000cc7 = DAT_20000cc7 & 0xf7;
          }
          else if (DAT_20000310 == 1) {
            DAT_20000cc7 = DAT_20000cc7 | 8;
          }
          else if (1 < DAT_20000310) {
            if ((int)((uint)DAT_20000cc7 << 0x1c) < 0) {
              DAT_20000cc7 = DAT_20000cc7 & 0xf7;
            }
            else {
              DAT_20000cc7 = DAT_20000cc7 | 8;
            }
          }
        }
        else {
          DAT_20000320 = DAT_20000320 + 1;
          if (10 < DAT_20000320) {
            DAT_2000031f = '\0';
          }
        }
      }
    }
    if (transport_is_wired != '\0') {
      if ((DAT_20000cd2 == '\0') && (DAT_20000ccc != '\0')) {
        scan_enabled = '\0';
        DAT_20000cd2 = '\x01';
        transport_is_wired = '\0';
        DAT_20000c5f = 0;
        PB4_PIN = 1;
        DAT_20000cc5 = 1;
        DAT_20000c62 = DAT_20000c61;
        FUN_00002d5c();
        report_state_clear();
        transport_uart_init();
        DAT_20000352 = 2000;
        if (transport_is_wired == '\0') goto LAB_0000b9de;
      }
      break;
    }
LAB_0000b9de:
    if (1 < DAT_20000cc0) goto LAB_0000b4aa;
    if (((DAT_20000ccc == '\0') || (DAT_20000352 != 0)) || (DAT_20000cd3 == '\0')) {
LAB_0000ba68:
      if (DAT_20000cd6 != '\0') goto LAB_0000ba6e;
    }
    else {
      if (DAT_20000cd6 == '\0') {
        if (DAT_20000ccc == '\x01') {
          FUN_00007784();
          uVar5 = 0xf9;
LAB_0000ba24:
          FUN_00002cf8(uVar5);
        }
        else {
          if (DAT_20000ccc == '\x02') {
            uVar5 = 0xf8;
            goto LAB_0000ba24;
          }
          if (DAT_20000ccc == '\x03') {
            DAT_20000dec = 0xfa;
            ble_send_frame(&DAT_20000dec,0x16);
          }
          else if (DAT_20000ccc == '\x04') {
            DAT_20000dec = 0xfb;
            ble_send_frame(&DAT_20000dec,5);
          }
          else if (DAT_20000ccc == '\x05') {
            DAT_20000dec = 0xfc;
            ble_send_frame(&DAT_20000dec,5);
          }
          else if (DAT_20000ccc == '\x06') {
            DAT_20000ccb = '\0';
            scan_enabled = 0;
            FUN_00002ff8();
          }
        }
        DAT_20000ccc = '\0';
        scan_enabled = '\x01';
        goto LAB_0000ba68;
      }
LAB_0000ba6e:
      DAT_20000cd6 = '\0';
      if (DAT_20000cdf != '\0') {
        local_110 = (undefined4 *)((uint)local_110 & 0xffffff00);
        iVar6 = FUN_00002f2c(&local_110,0);
        if (iVar6 != 0) {
          if (((uint)local_110 & 0xff) == 0) {
            DAT_20000cde = 0;
          }
          else {
            DAT_20000cde = 1;
            if (DAT_200003b4 == '\0') {
              local_10c = CONCAT22(local_10c._2_2_,0x1fe);
              ble_send_frame(&local_10c,2);
            }
          }
          DAT_20000cdf = '\0';
        }
      }
      FUN_00002ddc();
    }
    if (DAT_20000cd1 != '\0') {
      DAT_20000cd1 = '\0';
      FUN_00002d08();
    }
    if (DAT_20000334 == 0) {
      if (DAT_20000ccb == '\0') {
        if (DAT_20000cd3 == '\x03') {
          DAT_20000334 = 200;
        }
        else {
          DAT_20000334 = 800;
        }
        if (DAT_20000cc0 != 0) goto LAB_0000b4aa;
        if (DAT_20000cd3 == '\x04') {
          FUN_0000308c(1);
        }
        else {
          FUN_0000308c(0);
          DAT_20000cd7 = 0;
        }
      }
      else {
        DAT_20000334 = 200;
        DAT_20000319 = DAT_20000319 == '\0';
        if ((bool)DAT_20000319) {
          DAT_20000cc7 = DAT_20000cc7 & 0xf8;
        }
        else {
          DAT_20000cc7 = DAT_20000cc7 | 7;
        }
      }
    }
    break;
  case 1:
    host_send_key_configuration();
    break;
  case 2:
    host_send_rgb_configuration();
    break;
  case 3:
    host_send_press_counters();
    break;
  case 4:
    if (scan_enabled != '\0') {
      FUN_000089c4();
    }
    if (DAT_20000321 == '\0') {
      DAT_2000033a = DAT_2000033a + 1;
      if (((0x2d9 < DAT_2000033a) && (DAT_2000033a = 0, DAT_20000cc2 != 0)) &&
         (sVar3 = DAT_20000cc2 + -1, bVar7 = DAT_20000cc2 == 1, DAT_20000cc2 = sVar3, bVar7)) {
        FUN_00006300();
      }
      dVar1 = PB5_PIN;
      if (dVar1 != 0) {
        delay_ms(10);
        dVar1 = PB5_PIN;
        if (dVar1 != 0) {
          FUN_000065b4();
        }
      }
      dVar1 = PB6_PIN;
      if (dVar1 != 0) {
        delay_ms(10);
        dVar1 = PB6_PIN;
        if (dVar1 != 0) {
          FUN_000065b4();
        }
      }
      if (DAT_20000cd6 != '\0') {
        DAT_20000cd6 = '\0';
        local_110 = (undefined4 *)((uint)local_110 & 0xffffff00);
        local_10c = 0;
        iVar6 = FUN_00002f2c(&local_110,0);
        if (iVar6 != 0) {
          DAT_20000c61 = DAT_200003b3;
          DAT_20000cd3 = DAT_200003b5;
          if ((char)local_110 != '\0') {
            DAT_20000c61 = DAT_200003b5;
            DAT_20000cd3 = DAT_200003b7;
          }
          if (DAT_20000cd3 != '\x04') {
            DAT_20000c61 = '\0';
          }
          local_10c = 1;
        }
        FUN_00006990(&DAT_200003b3,6);
        if (local_10c == 0) {
          DAT_20000312 = 0;
        }
      }
    }
    else {
      FUN_000065b4();
    }
  }
LAB_0000bc0c:
  if ((DAT_20000cc0 == 0) && (DAT_2000032a == 0)) {
    DAT_2000032a = 10;
    FUN_0000294c();
    rgb_effect_dispatch();
    FUN_00006060();
    if ((DAT_20000cbe != '\0') && (DAT_2000033c = DAT_2000033c + 1, 1 < DAT_2000033c)) {
      DAT_2000033c = 0;
      FUN_000025d8();
    }
  }
  goto LAB_0000b4aa;
}

