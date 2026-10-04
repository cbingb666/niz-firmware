/* Address: 0x00004ab4; body bytes: 3822 */

/* Processes matrix events, mappings, function keys, repeat and macro definitions. */

void key_events_dispatch(void)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  dword dVar4;
  byte bVar5;
  undefined1 uVar6;
  short sVar7;
  short sVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  undefined4 uVar12;
  uint uVar13;
  uint uVar14;
  undefined4 uStack_40;
  uint uStack_3c;
  uint uStack_38;
  uint uStack_34;
  undefined1 *local_30;
  uint local_2c;
  uint local_28;
  undefined1 *local_24;
  undefined1 *local_20;
  undefined1 *local_1c;
  
  local_2c = 0;
  local_28 = 0;
  if (key_event_count == 0) {
LAB_00005a12:
    if (transport_is_wired == '\0') {
      FUN_00002d2c();
      if (DAT_20000cde == '\0') {
        DAT_2000034e = 10;
      }
      else {
        DAT_2000034e = 3;
      }
    }
    else if (wired_protocol == '\x01') {
      FUN_0000a1b4();
    }
    key_event_count = 0;
    DAT_20000321 = 0;
    return;
  }
  local_1c = &DAT_20000c55;
  local_20 = &DAT_20000cb8;
  local_24 = &DAT_20000c63;
  local_30 = &DAT_20000c6c;
LAB_00004ade:
  bVar1 = DAT_20000370;
  bVar3 = (byte)(&key_events)[local_28] >> 7;
  uStack_38 = (uint)bVar3;
  uVar13 = (byte)(&key_events)[local_28] & 0x7f;
  if ((local_30[5] == '\0') || (bVar5 = DAT_20000ca6, uVar13 != 0xe)) {
    uVar9 = (uint)DAT_20000c5f;
    if (uStack_38 == 0) {
      uVar14 = (uint)DAT_20000370;
      uVar10 = 0;
      if (uVar14 != 0) {
        do {
          if ((uint)(byte)(&DAT_20000e63)[uVar10] == (uVar9 * 0x42 + uVar13 & 0xff))
          goto joined_r0x00004b4e;
          if (uVar14 <= uVar10 + 1) {
            local_30[0xe] = 1;
          }
          uVar10 = uVar10 + 1 & 0xff;
        } while (uVar10 < uVar14);
      }
      if (local_30[0xe] != '\0') {
        local_30[0xf] = 0;
        uStack_34 = 0;
LAB_00004b96:
        uVar10 = (uint)DAT_20000370;
        uVar9 = 0;
        if (uVar10 != 0) {
          do {
            if ((uint)(byte)(&DAT_20000e63)[uVar9] == (uStack_34 * 0x42 + uVar13 & 0xff))
            goto joined_r0x00004bb6;
            uVar9 = uVar9 + 1 & 0xff;
          } while (uVar9 < uVar10);
        }
        goto LAB_00004bea;
      }
    }
    else {
      (&DAT_20000e63)[DAT_20000370] = DAT_20000c5f * 'B' + (char)uVar13;
      DAT_20000370 = DAT_20000370 + 1;
      *(int *)(&DAT_20000ce0 + uVar13 * 4) = *(int *)(&DAT_20000ce0 + uVar13 * 4) + 1;
      DAT_20000317 = 1;
    }
    goto LAB_00004bf6;
  }
  goto LAB_000059fe;
joined_r0x00004b4e:
  for (; uVar10 < uVar14; uVar10 = uVar10 + 1 & 0xff) {
    (&DAT_20000e63)[uVar10] = (&DAT_20000e64)[uVar10];
    (&DAT_20000e64)[uVar10] = 0;
  }
  DAT_20000370 = bVar1 - 1;
  local_30[0xe] = 0;
LAB_00004bf6:
  uVar9 = (uint)DAT_20000cb8;
  if (uVar9 == 1) {
    if (local_30[0xe] == '\0') {
      DAT_2000047c = (&DAT_0000c4b9)[(uint)DAT_20000c5f + uVar13 * 3];
      if (DAT_2000047c == 0) {
        if (DAT_20000c5f == 0) {
          local_2c = 0;
        }
        else {
          DAT_2000047c = (&DAT_0000c4b9)[uVar13 * 3];
          if (DAT_2000047c != 0) {
            local_2c = 1;
          }
        }
      }
      else {
        local_2c = 1;
      }
    }
    else {
      DAT_2000047c = (&DAT_0000c4b9)[(uint)(byte)local_30[0xf] + uVar13 * 3];
      if ((DAT_2000047c != 0) || (DAT_2000047c = (&DAT_0000c4b9)[uVar13 * 3], DAT_2000047c != 0)) {
        local_2c = 1;
      }
      local_30[0xe] = 0;
    }
    if (transport_is_wired == '\0') {
      if (DAT_20000c66 != '\0') {
        if (DAT_2000047c == 0x99) {
          DAT_2000047c = (&DAT_0000c4b9)[uVar13 * 3];
        }
        goto LAB_00004cd0;
      }
    }
    else if (DAT_20000c65 != '\0') {
      if (DAT_2000047c == 0x99) {
        DAT_2000047c = (&DAT_0000c4b9)[uVar13 * 3];
      }
LAB_00004cd0:
      if (local_2c == 1) {
        iVar11 = uVar13 * 3;
        uStack_40 = (uint)(byte)(&DAT_0000c4bb)[iVar11];
        iVar11 = FUN_000087c0(uStack_38,DAT_2000047c,(&DAT_0000c4b9)[iVar11],(&DAT_0000c4ba)[iVar11]
                             );
        DAT_2000047d = (byte)iVar11;
        if (iVar11 != 0) {
          DAT_2000047c = DAT_2000047d;
        }
joined_r0x00004d06:
        if (DAT_20000370 == 0) {
          DAT_20000371 = 0;
        }
      }
    }
  }
  else {
    if (uVar9 < 2) goto LAB_00004fe2;
    bVar1 = DAT_20000c5f;
    if (local_30[0xe] != '\0') {
      local_30[0xe] = 0;
      bVar1 = local_30[0xf];
    }
    uVar10 = (uint)bVar1;
    if (local_30[0x10] == '\x01') {
      if (uVar10 == 0) {
        uVar10 = 1;
      }
      else if (uVar10 == 1) {
LAB_00004d38:
        uVar10 = 0;
      }
    }
    else if (local_30[0x10] == '\x02') {
      if (uVar10 == 0) {
        uVar10 = 2;
      }
      else if (uVar10 == 2) goto LAB_00004d38;
    }
    if (2 < uVar9) {
      uVar10 = (uVar9 * 3 + uVar10) - 6 & 0xff;
    }
    iVar11 = uVar13 * 2 + uVar10 * 0x84;
    uStack_40 = (uint)(byte)(&DAT_20000f29)[iVar11 + -2] * 0x100 +
                (uint)(byte)(&DAT_20000f29)[iVar11 + -1];
    bVar5 = DAT_20000ca6;
    if (uStack_40 == 0) goto LAB_000059fe;
    uStack_34 = uVar13 * 3;
    iVar11 = uStack_34 + uVar10 * 0xc6;
    uStack_3c = (uint)(byte)(&DAT_200013cd)[iVar11 + -3];
    if (uStack_3c == 1) {
      if ((DAT_20000c5e != '\0') && (bVar5 = bVar3, uStack_38 != 0)) {
        sVar7 = eeprom_read_u8(uStack_40 + 3);
        sVar8 = eeprom_read_u8(uStack_40 + 4);
        DAT_20000ca8 = sVar7 * 0x100 + sVar8;
        if (60000 < DAT_20000ca8) {
          DAT_20000ca8 = 60000;
        }
        if (transport_is_wired == '\0') {
          if (DAT_20000cde == '\0') {
            if (DAT_20000ca8 < 0x10) {
              DAT_20000ca8 = 0x10;
            }
          }
          else if (DAT_20000ca8 < 3) {
            DAT_20000ca8 = 3;
          }
        }
        else if (DAT_20000ca8 < 3) {
          DAT_20000ca8 = 3;
        }
        uVar12 = eeprom_read_u8(uStack_40 + 5);
        DAT_20000ca7 = (undefined1)uVar12;
        eeprom_read_block(&DAT_20000393,uVar12,uStack_40 + 6);
        bVar5 = 1;
      }
      goto LAB_000059fe;
    }
    if (uStack_3c - 2 < 3) {
      if (DAT_20000c5e != '\0') {
        if (uStack_38 == 0) {
          if (((uVar10 * 0x42 + uVar13 != (uint)DAT_20000362) && (DAT_20000362 != uVar13)) ||
             (uStack_3c != 3)) goto LAB_000059fe;
        }
        else {
          uStack_38 = uVar10 * 0x42 + uVar13;
          if (((uStack_38 != DAT_20000362) || (uStack_3c != 4)) || (DAT_20000cab != '\x01')) {
            if ((DAT_20000caa != '\0') && (DAT_2000036f != 0)) {
              uVar13 = 0;
              if (DAT_2000036f != 0) {
                do {
                  if (transport_is_wired == '\0') {
                    ble_key_event(0,(&DAT_20000e33)[uVar13]);
                  }
                  else if (wired_protocol == '\x01') {
                    usb_key_event(0,(&DAT_20000e33)[uVar13]);
                  }
                  else if (wired_protocol == '\x02') {
                    ps2_key_event((&DAT_20000e33)[uVar13],0);
                  }
                  (&DAT_20000e33)[uVar13] = 0;
                  uVar13 = uVar13 + 1 & 0xff;
                } while (uVar13 < DAT_2000036f);
              }
              DAT_2000036f = 0;
              if (transport_is_wired == '\0') {
                FUN_00002d2c();
              }
              else if (wired_protocol == '\x01') {
                FUN_0000a1b4();
              }
            }
            DAT_20000362 = (byte)uStack_38;
            DAT_20000caa = '\x01';
            DAT_20000cab = '\x01';
            DAT_20000cac = (undefined1)uStack_3c;
            DAT_20000cad = eeprom_read_u8(uStack_40 + 3);
            DAT_20000cae = eeprom_read_u8(uStack_40 + 4);
            sVar7 = eeprom_read_u8(uStack_40 + 5);
            sVar8 = eeprom_read_u8(uStack_40 + 6);
            DAT_20000cb4 = sVar7 * 0x100 + sVar8;
            if (60000 < DAT_20000cb4) {
              DAT_20000cb4 = 60000;
            }
            if (transport_is_wired == '\0') {
              if (DAT_20000cde == '\0') {
                if (DAT_20000cb4 < 0x10) {
                  DAT_20000cb4 = 0x10;
                }
              }
              else if (DAT_20000cb4 < 3) {
                DAT_20000cb4 = 3;
              }
            }
            else if (DAT_20000cb4 < 3) {
              DAT_20000cb4 = 3;
            }
            sVar7 = eeprom_read_u8(uStack_40 + 7);
            sVar8 = eeprom_read_u8(uStack_40 + 8);
            DAT_20000cb6 = sVar7 * 0x100 + sVar8;
            if (0x640 < DAT_20000cb6) {
              DAT_20000cb6 = 0x640;
            }
            eeprom_read_block(&DAT_20001c24,DAT_20000cb6,uStack_40 + 9);
            DAT_20000cb0 = 0;
            DAT_2000036f = 0;
            bVar5 = DAT_20000ca6;
            goto LAB_000059fe;
          }
        }
        DAT_20000cab = '\0';
      }
      goto LAB_000059fe;
    }
    DAT_20000ca6 = 0;
    local_2c = (uint)(byte)(&DAT_200013cd)[iVar11 + -2];
    if (local_2c == 1) {
      DAT_2000047c = (&DAT_200013cd)[iVar11 + -1];
      uStack_3c = (uint)DAT_2000047c;
      cVar2 = DAT_20000c66;
      if (transport_is_wired != '\0') {
        cVar2 = DAT_20000c65;
      }
      if (cVar2 != '\0') {
        if (uVar9 == 2) {
          uStack_40 = (uint)(byte)(&DAT_20001558)[uStack_34];
          DAT_2000047d = FUN_000087c0(uStack_38,uStack_3c,(&DAT_200013cc)[uStack_34],
                                      (&DAT_20001492)[uStack_34]);
        }
        else if (uVar9 == 3) {
          uStack_40 = (uint)(byte)(&DAT_200017aa)[uStack_34];
          DAT_2000047d = FUN_000087c0(uStack_38,uStack_3c,(&DAT_2000161e)[uStack_34],
                                      (&DAT_200016e4)[uStack_34]);
        }
        else {
          if (uVar9 != 4) {
            DAT_2000047d = 0;
            goto joined_r0x00004d06;
          }
          uStack_40 = (uint)(byte)(&DAT_200019fc)[uStack_34];
          DAT_2000047d = FUN_000087c0(uStack_38,uStack_3c,(&DAT_20001870)[uStack_34],
                                      (&DAT_20001936)[uStack_34]);
        }
        if (DAT_2000047d != 0) {
          DAT_2000047c = DAT_2000047d;
        }
        goto joined_r0x00004d06;
      }
    }
    else {
      eeprom_read_block(&DAT_2000047c,local_2c,uStack_40 + 4);
    }
  }
LAB_00004fe2:
  bVar5 = DAT_20000ca6;
  if (DAT_2000047c == 0x9c) {
    if ((1 < DAT_20000cb8) && (DAT_20000c5f == 2)) {
joined_r0x000050fa:
      if (uStack_38 == 0) {
        DAT_20000c8e = 0;
      }
      else {
        DAT_20000c8e = 3000;
      }
      goto LAB_000059fe;
    }
    if (uStack_38 != 0) {
      DAT_20000c5f = 1;
      goto LAB_000059fe;
    }
  }
  else {
    if (DAT_2000047c != 0xa6) {
      if (DAT_2000047c == 0x96) {
        if ((DAT_20000caa == '\0') && (uStack_38 != 0)) {
          DAT_20000c5e = DAT_20000c5e == '\0';
          if (!(bool)DAT_20000c5e) {
            FUN_0000629c();
          }
          FUN_000064a8(DAT_20000c5e);
          bVar5 = DAT_20000ca6;
        }
      }
      else if (DAT_20000c5e != '\0') {
        uVar13 = 0;
        if (local_2c != 0) {
          do {
            if (local_2c == 1) {
              if (DAT_20000c64 != '\0') {
                if ((&DAT_2000047c)[uVar13] == '*') {
                  uVar6 = 0x43;
                }
                else {
                  if ((&DAT_2000047c)[uVar13] != 'C') goto LAB_00005180;
                  uVar6 = 0x2a;
                }
                (&DAT_2000047c)[uVar13] = uVar6;
              }
LAB_00005180:
              if (local_30[2] != '\0') {
                if ((&DAT_2000047c)[uVar13] == '\x1b') {
                  uVar6 = 0x29;
                }
                else {
                  if ((&DAT_2000047c)[uVar13] != ')') goto LAB_0000519e;
                  uVar6 = 0x1b;
                }
                (&DAT_2000047c)[uVar13] = uVar6;
              }
LAB_0000519e:
              if (transport_is_wired == '\0') {
                if (DAT_20000c66 == '\0') goto LAB_000051b6;
LAB_00005206:
                cVar2 = (&DAT_2000047c)[uVar13];
                if (cVar2 == 'D') {
LAB_00005226:
                  uVar6 = 0x45;
                }
                else if (cVar2 == 'E') {
LAB_0000522a:
                  uVar6 = 0x44;
                }
                else if (cVar2 == 'G') {
LAB_000051f8:
                  uVar6 = 0x48;
                }
                else {
                  if (cVar2 != 'J') goto LAB_0000521a;
LAB_000051fc:
                  uVar6 = 0x47;
                }
                (&DAT_2000047c)[uVar13] = uVar6;
                goto LAB_0000525a;
              }
              if (DAT_20000c65 == '\0') {
LAB_000051b6:
                if ((local_30[1] == '\0') ||
                   (((cVar2 = (&DAT_2000047c)[uVar13], cVar2 != 'D' && (cVar2 != 'H')) &&
                    (cVar2 != 'I')))) {
                  if (transport_is_wired != '\0') goto LAB_000051d4;
                  if (DAT_20000c66 != '\0') goto LAB_00005206;
                  goto LAB_0000521a;
                }
                goto LAB_000059ec;
              }
LAB_000051d4:
              if ((wired_protocol == '\x01') && (DAT_20000c65 != '\0')) {
                cVar2 = (&DAT_2000047c)[uVar13];
                if (cVar2 == 'D') goto LAB_00005226;
                if (cVar2 == 'E') goto LAB_0000522a;
                if (cVar2 == 'G') goto LAB_000051f8;
                if (cVar2 == 'J') goto LAB_000051fc;
              }
LAB_0000521a:
              if ((&DAT_2000047c)[uVar13] != -0x66) goto LAB_0000525a;
              if (DAT_20000372 == 0) {
                (&DAT_2000047c)[uVar13] = 0x57;
                goto LAB_0000525a;
              }
              if (DAT_20000372 == 1) {
                (&DAT_2000047c)[uVar13] = 0x42;
                goto LAB_0000525a;
              }
              if (uStack_38 != 0) {
                if (DAT_20000316 == '\0') {
                  DAT_20000316 = '\x01';
                  DAT_20000342 = 700;
                }
                break;
              }
              DAT_20000316 = '\0';
              DAT_20000342 = 0;
              if (DAT_20000373 == 'B') {
                (&DAT_2000047c)[uVar13] = 0x42;
                DAT_20000373 = '\0';
              }
              else if (DAT_20000373 == 'W') {
                (&DAT_2000047c)[uVar13] = 0x57;
                DAT_20000373 = '\0';
              }
              else {
                if (transport_is_wired == '\0') {
                  FUN_00003768(1,0x57);
                  if (DAT_20000363 != '\0') {
                    FUN_000037c4(&DAT_20000e0c);
                    DAT_20000363 = '\0';
                  }
                  if (DAT_20000364 != '\0') {
                    FUN_000037c4(&DAT_20000e15);
                    DAT_20000364 = '\0';
                  }
                }
                else if (wired_protocol == '\x01') {
                  FUN_0000a7d0(1,0x57);
                  if (DAT_20000363 != '\0') {
                    FUN_0000aafc(&DAT_20000e0c);
                    DAT_20000363 = '\0';
                  }
                  if (DAT_20000364 != '\0') {
                    FUN_0000aafc(&DAT_20000e15);
                    DAT_20000364 = '\0';
                  }
                }
                else if (wired_protocol == '\x02') {
                  ps2_key_event(0x57,1);
                }
                (&DAT_2000047c)[uVar13] = 0x57;
              }
LAB_000058d4:
              if (transport_is_wired == '\0') {
                FUN_00003768(uStack_38,(&DAT_2000047c)[uVar13]);
              }
              else if (wired_protocol == '\x01') {
                FUN_0000a7d0(uStack_38,(&DAT_2000047c)[uVar13]);
              }
              else if (wired_protocol == '\x02') {
                ps2_key_event((&DAT_2000047c)[uVar13],uStack_38);
              }
            }
            else {
LAB_0000525a:
              bVar3 = (&DAT_2000047c)[uVar13];
              uVar9 = (uint)bVar3;
              if (uStack_38 == 0) {
                if ((uVar9 < 0x87) || (uVar9 - 0xcc < 0x12)) goto LAB_000058d4;
                if (uVar9 == 0x97) {
                  DAT_20000c8a = 0;
                }
                else if (uVar9 == 0x98) {
                  DAT_20000c82 = 0;
                }
                else if (uVar9 == 0x99) {
                  DAT_20000c86 = 0;
                }
                else if (uVar9 == 0x9b) {
                  DAT_20000c7e = 0;
                }
                else if (((uVar9 == 0x9d) || (uVar9 == 0x9e)) || (uVar9 == 0xad)) {
                  DAT_20000c9e = 0;
                  DAT_20000ca1 = '\0';
                }
                else if (((uVar9 - 0xa8 < 3) || (uVar9 == 0xb4)) || (uVar9 == 0xb5)) {
                  if ((transport_is_wired == '\0') && (DAT_20000cce != 0)) {
                    DAT_20000cce = 0;
                    if (uVar9 < 0xab) {
                      uVar6 = (undefined1)(uVar9 - 0xa7);
                      if ((DAT_20000cd3 == '\x04') && ((uint)DAT_20000cd4 == (uVar9 - 0xa7 & 0xff)))
                      {
LAB_000059b0:
                        uStack_40 = 0;
                        DAT_20000cd7 = 0;
                        goto LAB_000059ec;
                      }
                    }
                    else {
                      uVar6 = (undefined1)(uVar9 - 0xb0);
                      if ((DAT_20000cd3 == '\x04') && ((uint)DAT_20000cd4 == (uVar9 - 0xb0 & 0xff)))
                      goto LAB_000059b0;
                    }
                    DAT_20000cd8 = 2;
                    uStack_40 = (uint)CONCAT11(uVar6,0xf5);
                    ble_send_frame(&uStack_40,2);
                    DAT_20000cd7 = 0;
                  }
                }
                else if (uVar9 == 0xb2) {
                  DAT_20000c92 = 0;
                }
                else if (uVar9 == 0xb3) {
                  DAT_20000c96 = 0;
                }
                else if (uVar9 == 0xb6) {
                  DAT_20000c9a = 0;
                }
                else if (uVar9 == 0xc6) {
                  DAT_20000c4f = DAT_20000c4f & 0x7f;
                }
              }
              else {
                if ((uVar9 < 0x87) || (uVar9 - 0xcc < 0x12)) {
                  if ((1 < DAT_20000372) &&
                     (((((uVar9 - 1 < 0x4a || (uVar9 - 0x4e < 0x1e)) || (uVar9 == 0xcc)) ||
                       (uVar9 - 0xd2 < 0xc)) && (DAT_20000316 != '\0')))) {
                    DAT_20000316 = '\0';
                    DAT_20000342 = 0;
                    DAT_20000373 = 'B';
                    if (transport_is_wired == '\0') {
                      FUN_00003768(1,0x42);
                      if (DAT_20000363 != '\0') {
                        FUN_000037c4(&DAT_20000e0c);
                        DAT_20000363 = '\0';
                      }
                      if (DAT_20000364 != '\0') {
                        FUN_000037c4(&DAT_20000e15);
                        DAT_20000364 = '\0';
                      }
                    }
                    else if (wired_protocol == '\x01') {
                      FUN_0000a7d0(1,0x42);
                      if (DAT_20000363 != '\0') {
                        FUN_0000aafc(&DAT_20000e0c);
                        DAT_20000363 = '\0';
                      }
                      if (DAT_20000364 != '\0') {
                        FUN_0000aafc(&DAT_20000e15);
                        DAT_20000364 = '\0';
                      }
                    }
                    else {
                      if (wired_protocol != '\x02') goto LAB_00005860;
                      ps2_key_event(0x42,1);
                    }
                  }
                  if (transport_is_wired == '\0') {
                    FUN_00003768(uStack_38,(&DAT_2000047c)[uVar13]);
                  }
                  else if (wired_protocol == '\x01') {
                    FUN_0000a7d0(uStack_38,(&DAT_2000047c)[uVar13]);
                  }
                  else if (wired_protocol == '\x02') {
                    ps2_key_event((&DAT_2000047c)[uVar13],uStack_38);
                  }
                }
                else if (uVar9 < 0x95) {
                  scan_enabled = 0;
                  FUN_0000194c(uVar9 - 0x87 & 0xff);
                  scan_enabled = 1;
                }
                else if (uVar9 == 0x95) {
                  scan_enabled = 0;
                  DAT_20000c55 = DAT_20000c55 + 1;
                  if (2 < DAT_20000c55) {
                    DAT_20000c55 = 0;
                  }
                  eeprom_write_page(local_1c,1,6);
                  FUN_00005c58();
                  FUN_000048e0(DAT_20000c55 + 1);
                  scan_record_count = 0;
                  scan_enabled = 1;
                }
                else if (uVar9 == 0x97) {
                  DAT_20000c8a = 3000;
                }
                else if (uVar9 == 0x98) {
                  DAT_20000c82 = 3000;
                }
                else if (uVar9 == 0x99) {
                  DAT_20000c86 = 3000;
                }
                else if (uVar9 == 0x9b) {
                  DAT_20000c7e = 3000;
                }
                else if (uVar9 < 0x9f) {
                  DAT_20000ca1 = bVar3 + 99;
LAB_00005794:
                  DAT_20000c9e = 500;
                }
                else if (uVar9 == 0x9f) {
                  DAT_20000cb8 = DAT_20000cb8 + 1;
                  if (4 < DAT_20000cb8) {
                    DAT_20000cb8 = 1;
                  }
                  FUN_00006ff4(DAT_20000cb8);
                  eeprom_write_page(local_20,1,4);
                }
                else if (uVar9 == 0xa7) {
                  scan_enabled = 0;
                  if (transport_is_wired == '\0') {
                    dVar4 = PB6_PIN;
                    if ((dVar4 != 0) && (DAT_20000cd2 != '\0')) {
                      DAT_20000cd2 = '\0';
                      transport_is_wired = '\x01';
                      DAT_20000c5f = 0;
                      PB4_PIN = 0;
                      DAT_20000cc5 = 0;
                      transport_uart_init();
                      FUN_00002d5c();
                      report_state_clear();
                      FUN_0000ae9c();
                      DAT_20000cc7 = DAT_20000cc7 & 0xf8;
                      if (wired_protocol == '\x01') {
                        FUN_00006438(DAT_20000c62);
                      }
                      else if (wired_protocol == '\x02') {
                        FUN_00006470(DAT_20000c62);
                      }
                    }
                  }
                  else {
                    DAT_20000cd2 = '\x01';
                    transport_is_wired = '\0';
                    DAT_20000c5f = 0;
                    PB4_PIN = 1;
                    DAT_20000cc5 = 1;
                    DAT_20000c62 = DAT_20000c61;
                    FUN_00002d5c();
                    report_state_clear();
                    transport_uart_init();
                    DAT_20000cc7 = DAT_20000cc7 | 7;
                    delay_ms(500);
                    DAT_20000cc7 = DAT_20000cc7 & 0xf8;
                    if (DAT_20000310 == '\0') {
                      uVar12 = 100;
                    }
                    else {
                      uVar12 = 0x46;
                    }
                    FUN_00002b28(uVar12);
                  }
                  scan_enabled = 1;
                }
                else if (((uVar9 - 0xa8 < 3) || (uVar9 == 0xb4)) || (uVar9 == 0xb5)) {
                  if (transport_is_wired == '\0') {
                    if (uVar9 < 0xab) {
                      cVar2 = 'Y';
                    }
                    else {
                      cVar2 = 'P';
                    }
                    DAT_20000cd5 = bVar3 + cVar2;
                    DAT_20000cce = 3000;
                  }
                }
                else if (uVar9 == 0xab) {
                  if (((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) &&
                     (DAT_20000c63 == '\0')) {
                    DAT_20000c63 = '\x01';
                    scan_enabled = 0;
                    clock_set_profile(3);
                    do {
                      SYS_REGWRPROT = 0x59;
                      SYS_REGWRPROT = 0x16;
                      SYS_REGWRPROT = 0x88;
                      dVar4 = SYS_REGWRPROT;
                    } while (dVar4 == 0);
                    dVar4 = CLK_PLLCON;
                    CLK_PLLCON = dVar4 & 0xffff3fff;
                    dVar4 = CLK_PLLCON;
                    CLK_PLLCON = dVar4 & 0xffffc1ff;
                    dVar4 = CLK_PLLCON;
                    CLK_PLLCON = dVar4 & 0xfffffe00 | 0x46;
                    dVar4 = CLK_PLLCON;
                    CLK_PLLCON = dVar4 & 0xfffeffff;
                    dVar4 = CLK_PLLCON;
                    CLK_PLLCON = dVar4 & 0xfffbffff;
                    dVar4 = CLK_CLKSTATUS;
                    while ((dVar4 & 4) == 0) {
                      watchdog_feed();
                      dVar4 = CLK_CLKSTATUS;
                    }
                    dVar4 = CLK_CLKSEL0;
                    CLK_CLKSEL0 = dVar4 & 0xfffffff8 | 1;
                    FUN_00008db8();
                    SYS_REGWRPROT = 0;
                    FUN_000007a8(*(undefined2 *)(&DAT_0000bd6c + (uint)DAT_20000c54 * 2));
                    eeprom_write_page(local_24,1,0xc);
                    FUN_000048e0(1);
                    scan_enabled = 1;
                  }
                }
                else if (uVar9 == 0xac) {
                  if (((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) &&
                     (DAT_20000c63 != '\0')) {
                    DAT_20000c63 = '\0';
                    scan_enabled = 0;
                    if (rgb_active != '\0') {
                      rgb_active = '\0';
                      DAT_20000cbb = 0;
                      dVar4 = TIMER1_TCSR;
                      TIMER1_TCSR = dVar4 & 0xbfffffff;
                      CLK_DisableModuleClock(0x5ec00003);
                      FUN_00006778();
                      FUN_00002a0c();
                    }
                    clock_set_profile(2);
                    FUN_000007a8(10000);
                    eeprom_write_page(local_24,1,0xc);
                    FUN_000048e0(1);
                    scan_enabled = 1;
                  }
                }
                else {
                  if (uVar9 == 0xad) {
                    DAT_20000ca1 = '\x02';
                    goto LAB_00005794;
                  }
                  if ((uVar9 == 0xae) || (uVar9 == 0xaf)) {
                    FUN_00004860(uVar9 - 0xae & 0xff);
                  }
                  else if (uVar9 == 0xb0) {
                    if ((transport_is_wired != '\0') && (wired_protocol == '\x01')) {
                      scan_enabled = 0;
                      rgb_active = 0;
                      FUN_00006778();
                      DAT_20000c53 = DAT_20000c53 + 1;
                      if (2 < DAT_20000c53) {
                        DAT_20000c53 = 0;
                      }
                      eeprom_write_page(&DAT_20000c53,1,0x13);
                      FUN_000048e0(DAT_20000c53 + 1);
                      DataSynchronizationBarrier(0xf);
                      SCB_AIRCR = 0x5fa0004;
                      DataSynchronizationBarrier(0xf);
                      do {
                    /* WARNING: Do nothing block with infinite loop */
                      } while( true );
                    }
                  }
                  else if (uVar9 == 0xb1) {
                    scan_enabled = 0;
                    DAT_20000c54 = DAT_20000c54 + 1;
                    if (5 < DAT_20000c54) {
                      DAT_20000c54 = 0;
                    }
                    FUN_000007a8((&DAT_0000bd60)[DAT_20000c54]);
                    FUN_000048e0(DAT_20000c54 + 1);
                    scan_enabled = 1;
                  }
                  else if (uVar9 == 0xb2) {
                    if ((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) {
                      DAT_20000c92 = 3000;
                    }
                  }
                  else if (uVar9 == 0xb3) {
                    DAT_20000c96 = 3000;
                  }
                  else if (uVar9 == 0xb6) {
                    if ((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) {
                      DAT_20000c9a = 5000;
                    }
                  }
                  else if (uVar9 == 0xc6) {
                    DAT_20000c4f = DAT_20000c4f | 0x80;
                  }
                }
LAB_00005860:
                if (1 < local_2c) {
                  if (transport_is_wired == '\0') {
                    if (DAT_20000363 != '\0') {
                      FUN_000037c4(&DAT_20000e0c);
                      DAT_20000363 = '\0';
                    }
                    if (DAT_20000364 != '\0') {
                      FUN_000037c4(&DAT_20000e15);
                      DAT_20000364 = '\0';
                    }
                  }
                  else if (wired_protocol == '\x01') {
                    if (DAT_20000363 != '\0') {
                      FUN_0000aafc(&DAT_20000e0c);
                      DAT_20000363 = '\0';
                    }
                    if (DAT_20000364 != '\0') {
                      FUN_0000aafc(&DAT_20000e15);
                      DAT_20000364 = '\0';
                    }
                  }
                }
              }
            }
LAB_000059ec:
            uVar13 = uVar13 + 1 & 0xff;
          } while (uVar13 < local_2c);
        }
        watchdog_feed();
        bVar5 = DAT_20000ca6;
      }
      goto LAB_000059fe;
    }
    if ((1 < DAT_20000cb8) && (DAT_20000c5f == 1)) goto joined_r0x000050fa;
    if (uStack_38 != 0) {
      DAT_20000c5f = 2;
      goto LAB_000059fe;
    }
  }
  DAT_20000c8e = 0;
  DAT_20000c5f = 0;
LAB_000059fe:
  DAT_20000ca6 = bVar5;
  local_28 = local_28 + 1 & 0xff;
  if (key_event_count <= local_28) goto LAB_00005a12;
  goto LAB_00004ade;
joined_r0x00004bb6:
  for (; uVar9 < uVar10; uVar9 = uVar9 + 1 & 0xff) {
    (&DAT_20000e63)[uVar9] = (&DAT_20000e64)[uVar9];
    (&DAT_20000e64)[uVar9] = 0;
  }
  DAT_20000370 = DAT_20000370 - 1;
  local_30[0xf] = (char)uStack_34;
  uStack_34 = 3;
LAB_00004bea:
  uStack_34 = uStack_34 + 1 & 0xff;
  if (2 < uStack_34) goto LAB_00004bf6;
  goto LAB_00004b96;
}

