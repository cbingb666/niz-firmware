/* Address: 0x0000918c; body bytes: 470 */

/* Decrypts and validates Intel HEX records, stages data in EEPROM and handles completion. */

void firmware_update_record(char *param_1)

{
  dword dVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  char cVar6;
  int iVar7;
  byte local_58 [4];
  byte local_54 [64];
  
  FUN_000001c2(local_58,0x40);
  des_ecb_decrypt(param_1 + 1,local_58,*param_1 + 7U & 0xf8,&des_key_literal);
  uVar4 = (uint)local_58[0];
  if (local_58[3] == '\0') {
    cVar6 = '\0';
    uVar5 = 0;
    if (uVar4 != 0xfffffffc) {
      do {
        cVar6 = local_58[uVar5] + cVar6;
        uVar5 = uVar5 + 1 & 0xff;
      } while (uVar5 < uVar4 + 4);
    }
    if (local_58[uVar5] == -cVar6) {
      iVar3 = 0;
      iVar7 = 0;
      if ((uint)local_58[1] * 0x100 + (uint)local_58[2] == DAT_200003a8) {
        uVar5 = 0;
        if (uVar4 != 0) {
          do {
            iVar3 = (uint)local_54[uVar5] + iVar3;
            uVar5 = uVar5 + 1 & 0xff;
          } while (uVar5 < uVar4);
        }
        eeprom_write_block(local_54,uVar4,DAT_200003a8 + 4);
        uVar5 = 0;
        if (uVar4 != 0) {
          do {
            iVar2 = eeprom_read_u8(DAT_200003a8 + uVar5 + 4);
            iVar7 = iVar2 + iVar7;
            uVar5 = uVar5 + 1 & 0xff;
          } while (uVar5 < uVar4);
        }
        if (iVar3 != iVar7) {
          DAT_200003a4 = '\x01';
        }
        DAT_200003a8 = DAT_200003a8 + uVar4;
        DAT_200003ac = DAT_200003ac + iVar3;
        return;
      }
    }
    DAT_200003a4 = '\x01';
  }
  else {
    if (local_58[3] != '\x01') {
      if (local_58[3] == '\x04') {
        DAT_200003a4 = '\0';
        DAT_200003a8 = 0;
        DAT_200003ac = 0;
        scan_enabled = 0;
        dVar1 = TIMER2_TCSR;
        TIMER2_TCSR = dVar1 & 0xbfffffff;
        dVar1 = TIMER0_TCSR;
        TIMER0_TCSR = dVar1 & 0xbfffffff;
        rgb_active = 0;
        DAT_20000cbb = 0;
        dVar1 = TIMER1_TCSR;
        TIMER1_TCSR = dVar1 & 0xbfffffff;
        FUN_00006778();
        FUN_00006730(0);
      }
      return;
    }
    if ((((uVar4 == 0) && (local_58[1] == 0)) && (local_58[2] == 0)) && (local_54[0] == 0xff)) {
      if (DAT_200003a4 != '\0') {
        memory_fill(local_58,0,0x40);
        local_58[1] = 0x3a;
        local_58[2] = 0xa0;
        usb_send_host_payload(local_58,0x40);
        scan_enabled = 1;
        dVar1 = TIMER0_TCSR;
        TIMER0_TCSR = dVar1 | 0x40000000;
        dVar1 = TIMER1_TCSR;
        TIMER1_TCSR = dVar1 | 0x40000000;
        dVar1 = TIMER2_TCSR;
        TIMER2_TCSR = dVar1 | 0x40000000;
        return;
      }
      iVar3 = firmware_verify_staging_sum(0,DAT_200003a8,DAT_200003ac);
      if (iVar3 == 0) {
        memory_fill(local_58,0,0x40);
        local_58[1] = 0x3a;
        local_58[2] = 0xa1;
        usb_send_host_payload(local_58,0x40);
        scan_enabled = 1;
        dVar1 = TIMER0_TCSR;
        TIMER0_TCSR = dVar1 | 0x40000000;
        dVar1 = TIMER1_TCSR;
        TIMER1_TCSR = dVar1 | 0x40000000;
        dVar1 = TIMER2_TCSR;
        TIMER2_TCSR = dVar1 | 0x40000000;
        return;
      }
      local_58[0] = 0xcc;
      local_58[1] = 0xcc;
      local_58[2] = (byte)((uint)DAT_200003a8 >> 8);
      local_58[3] = (byte)DAT_200003a8;
      eeprom_write_page(local_58,4,0);
      DAT_20000cb9 = 1;
      FUN_000066a8();
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
  }
  return;
}

