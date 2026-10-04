/* Address: 0x00007300; body bytes: 432 */

/* Streams 9x66 key definitions, then 0xf6 terminator. */

void host_send_key_configuration(void)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int extraout_r1;
  int iVar6;
  uint uVar7;
  uint uVar8;
  undefined1 local_58 [11];
  undefined1 local_4d [57];
  
  uVar8 = 0;
  DAT_20000314 = 0;
  uVar1 = 0;
  do {
    (&DAT_2000047c)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xffff;
  } while (uVar1 < 0x40);
  uVar1 = (uint)DAT_20000323;
  uVar7 = (uint)DAT_20000324;
  if (DAT_20000cb8 < 2) {
    DAT_2000047c = 0;
    DAT_2000047d = 0xf0;
    DAT_20000480 = 0;
    DAT_2000047e = DAT_20000323 + 1;
    DAT_2000047f = DAT_20000324 + 1;
    aeabi_uidivmod(uVar1,3);
    DAT_20000482 = (&default_internal_key_codes)[extraout_r1 + uVar7 * 3];
    if (DAT_20000482 == '\0') {
      DAT_20000481 = 0;
    }
    else {
      DAT_20000481 = 1;
    }
  }
  else {
    iVar6 = uVar7 * 2;
    iVar6 = (uint)(byte)(&DAT_20000f29)[iVar6 + uVar1 * 0x84] * 0x100 +
            (uint)(byte)(&DAT_20000f29)[iVar6 + uVar1 * 0x84 + 1];
    if ((iVar6 == 0) || (iVar6 == 0xffff)) {
      DAT_2000047c = 0;
      DAT_2000047d = 0xf0;
      DAT_20000480 = 0;
      DAT_20000481 = 0;
      DAT_2000047e = DAT_20000323 + 1;
      DAT_2000047f = DAT_20000324 + 1;
    }
    else {
      iVar2 = eeprom_read_u8(iVar6 + 2);
      if (iVar2 == 0) {
        iVar3 = eeprom_read_u8(iVar6 + 3);
        uVar8 = iVar3 + 4;
      }
      else if (iVar2 == 1) {
        iVar3 = eeprom_read_u8(iVar6 + 5);
        uVar8 = iVar3 + 6;
      }
      else if (iVar2 - 2U < 3) {
        iVar3 = eeprom_read_u8(iVar6 + 7);
        iVar4 = eeprom_read_u8(iVar6 + 8);
        uVar8 = iVar3 * 0x100 + iVar4 + 9U & 0xffff;
      }
      DAT_2000047c = 0;
      DAT_2000047d = 0xf0;
      eeprom_read_block(&DAT_2000047e,uVar8,iVar6);
      if ((iVar2 != 0) && (iVar2 != 1)) {
        if (2 < iVar2 - 2U) goto LAB_00007426;
        uVar1 = uVar8 - 9 & 0xffff;
        if (0x35 < uVar1) {
          FUN_000001c2(local_58,0x40);
          uVar8 = 0;
          do {
            local_58[uVar8] = (&DAT_2000047c)[uVar8];
            uVar8 = uVar8 + 1 & 0xffff;
          } while (uVar8 < 0xb);
          uVar7 = 0;
          uVar8 = 0;
          do {
            while( true ) {
              uVar5 = uVar8 + 1 & 0xffff;
              local_4d[uVar8] = (&DAT_20000487)[uVar7];
              uVar7 = uVar7 + 1 & 0xffff;
              if (uVar5 < 0x35) break;
              usb_send_host_payload(local_58,0x40);
              uVar8 = 0;
              do {
                uVar5 = uVar8 + 1 & 0xff;
                local_4d[uVar8] = 0;
                uVar8 = uVar5;
              } while (uVar5 < 0x35);
              uVar8 = 0;
              if (uVar1 <= uVar7) goto LAB_00007426;
            }
            uVar8 = uVar5;
          } while (uVar7 < uVar1);
          usb_send_host_payload(local_58,0x40);
          goto LAB_00007426;
        }
      }
    }
  }
  usb_send_host_payload(&DAT_2000047c,0x40);
LAB_00007426:
  DAT_20000324 = DAT_20000324 + 1;
  if (0x41 < DAT_20000324) {
    DAT_20000324 = 0;
    DAT_20000323 = DAT_20000323 + 1;
  }
  if (8 < DAT_20000323) {
    DAT_20000323 = 0;
    uVar1 = 0;
    do {
      (&DAT_2000047c)[uVar1] = 0xf6;
      uVar1 = uVar1 + 1 & 0xffff;
    } while (uVar1 < 0x40);
    usb_send_host_payload(&DAT_2000047c,0x40);
    application_state = 0;
    scan_enabled = 1;
  }
  return;
}

