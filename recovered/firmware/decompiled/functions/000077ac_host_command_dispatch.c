/* Address: 0x000077ac; body bytes: 920 */

/* Dispatches HID commands for update, key configuration, RGB and counters. */

void host_command_dispatch(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  byte *pbVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  ushort uVar7;
  uint uVar8;
  uint uVar9;
  
  iVar2 = DAT_2000035c;
  pbVar3 = (byte *)(param_1 + 1);
  uVar4 = (uint)*pbVar3;
  if (uVar4 == 0xe6) {
    FUN_0000269c();
    FUN_000026dc();
    goto LAB_00007b58;
  }
  if (0xe6 < uVar4) {
    if (0xf < uVar4 - 0xf0) goto switchD_000077fa_caseD_de;
    switch(uVar4) {
    case 0xf0:
      uVar4 = (uint)*(byte *)(param_1 + 4);
      uVar6 = (uint)*(byte *)(param_1 + 2);
      uVar5 = (uint)*(byte *)(param_1 + 3);
      if (uVar4 == 0) {
        uVar8 = (uint)*(byte *)(param_1 + 5);
      }
      else if (uVar4 == 1) {
        uVar8 = (uint)*(byte *)(param_1 + 7);
      }
      else {
        if (2 < uVar4 - 2) goto switchD_000077fa_caseD_de;
        uVar8 = (uint)(ushort)((ushort)*(byte *)(param_1 + 9) * 0x100 +
                              (ushort)*(byte *)(param_1 + 10));
      }
      if ((((uVar8 != 0) && (uVar6 < 10)) && (uVar6 != 0)) && (uVar5 != 0)) {
        if (2 < uVar4 - 2) {
          if ((uVar4 != 0) && (uVar4 != 1)) break;
          iVar1 = (uVar5 * 2 - 2 & 0xffff) + uVar6 * 0x84;
          (&DAT_20000f29)[iVar1 + -0x84] = (char)((uint)DAT_2000035c >> 8);
          (&DAT_20000f29)[iVar1 + -0x83] = (char)iVar2;
          if (uVar4 == 0) {
            uVar7 = (short)uVar8 + 4;
LAB_00007942:
            uVar8 = (uint)uVar7;
          }
          else if (uVar4 == 1) {
            uVar7 = (short)uVar8 + 6;
            goto LAB_00007942;
          }
          eeprom_write_block(param_1 + 2,uVar8,iVar2,&DAT_20000f29 + iVar1 + -0xa0,param_4);
          DAT_2000035c = DAT_2000035c + uVar8;
          break;
        }
        if ((int)(uVar8 - DAT_20000330) < 0x35) {
          uVar9 = uVar8 - DAT_20000330 & 0xffff;
          uVar4 = 0;
          if (uVar9 != 0) {
            do {
              (&DAT_20000485)[DAT_20000330] = pbVar3[uVar4 + 10];
              DAT_20000330 = DAT_20000330 + 1;
              uVar4 = uVar4 + 1 & 0xffff;
            } while (uVar4 < uVar9);
          }
        }
        else {
          uVar4 = 0;
          do {
            (&DAT_20000485)[DAT_20000330] = pbVar3[uVar4 + 10];
            DAT_20000330 = DAT_20000330 + 1;
            uVar4 = uVar4 + 1 & 0xffff;
          } while (uVar4 < 0x35);
        }
        iVar2 = DAT_2000035c;
        if (uVar8 <= DAT_20000330) {
          iVar1 = (uVar5 * 2 - 2 & 0xffff) + uVar6 * 0x84;
          (&DAT_20000f29)[iVar1 + -0x84] = (char)((uint)DAT_2000035c >> 8);
          (&DAT_20000f29)[iVar1 + -0x83] = (char)iVar2;
          uVar4 = 0;
          do {
            (&DAT_2000047c)[uVar4] = pbVar3[uVar4 + 1];
            uVar4 = uVar4 + 1 & 0xffff;
          } while (uVar4 < 9);
          uVar4 = uVar8 + 9 & 0xffff;
          eeprom_write_block(&DAT_2000047c,uVar4,iVar2,&DAT_2000047c,param_4);
          DAT_2000035c = DAT_2000035c + uVar4;
          DAT_20000330 = 0;
          break;
        }
      }
    default:
switchD_000077fa_caseD_de:
      break;
    case 0xf1:
      scan_enabled = 0;
      DAT_2000035c = 0x665;
      DAT_20000330 = 0;
      uVar4 = 0;
      do {
        uVar6 = 0;
        do {
          (&DAT_20000f29)[uVar6 + uVar4 * 0x84] = 0;
          uVar6 = uVar6 + 1 & 0xffff;
        } while (uVar6 < 0x84);
        uVar4 = uVar4 + 1 & 0xffff;
      } while (uVar4 < 9);
      if (rgb_active != '\0') {
        rgb_active = '\0';
        FUN_00006778();
      }
      break;
    case 0xf2:
      DAT_20000323 = 0;
      DAT_20000324 = 0;
      scan_enabled = 0;
      application_state = 1;
      break;
    case 0xf5:
LAB_00007b4c:
      DAT_20000314 = 0;
      break;
    case 0xf6:
      eeprom_write_block(&DAT_20000f29,0x4a4,0x1c1,(uint)*(byte *)(uVar4 + 0x7726) * 2,param_4);
      FUN_0000ad4c();
      if (DAT_20000cbb != '\0') {
        rgb_active = DAT_20000cbb;
      }
      scan_enabled = 1;
      break;
    case 0xf9:
      host_send_version();
      break;
    case 0xfa:
      DAT_20000ccc = 1;
      break;
    case 0xfb:
      DAT_20000ccc = 2;
      break;
    case 0xfc:
      uVar4 = (uint)*(byte *)(param_1 + 2);
      if (0x14 < uVar4) {
        uVar4 = 0x14;
      }
      DAT_20000ded = (undefined1)uVar4;
      uVar6 = 0;
      if (uVar4 != 0) {
        do {
          uVar5 = uVar6 + 1 & 0xffff;
          (&DAT_20000dee)[uVar6] = pbVar3[uVar6 + 2];
          uVar6 = uVar5;
        } while (uVar5 < uVar4);
      }
      for (; uVar4 < 0x14; uVar4 = uVar4 + 1 & 0xffff) {
        (&DAT_20000dee)[uVar4] = 0;
      }
      DAT_20000ccc = 3;
      break;
    case 0xfd:
      uVar4 = 0;
      do {
        uVar6 = uVar4 + 1 & 0xffff;
        (&DAT_20000ded)[uVar4] = pbVar3[uVar4 + 1];
        uVar4 = uVar6;
      } while (uVar6 < 4);
      DAT_20000ccc = 4;
      break;
    case 0xfe:
      uVar4 = 0;
      do {
        uVar6 = uVar4 + 1 & 0xffff;
        (&DAT_20000ded)[uVar4] = pbVar3[uVar4 + 1];
        uVar4 = uVar6;
      } while (uVar6 < 4);
      DAT_20000ccc = 5;
      break;
    case 0xff:
      DAT_20000ccc = 6;
    }
LAB_00007b58:
    watchdog_feed();
    return;
  }
  if (uVar4 == 0xdc) {
    if (*(byte *)(param_1 + 2) < 3) {
      FUN_00008528();
    }
    goto LAB_00007b58;
  }
  if (0xdc < uVar4) {
    switch(uVar4) {
    case 0xdd:
      FUN_00004140();
      break;
    default:
      goto switchD_000077fa_caseD_de;
    case 0xe0:
      uVar6 = (uint)*(byte *)(param_1 + 2);
      uVar4 = 0;
      if (uVar6 != 0) {
        do {
          (&DAT_2000047c)[DAT_2000032e] = pbVar3[uVar4 + 2];
          DAT_2000032e = DAT_2000032e + 1;
          uVar4 = uVar4 + 1 & 0xffff;
        } while (uVar4 < uVar6);
      }
      if (0xc5 < DAT_2000032e) {
        eeprom_write_block(&DAT_2000047c,0xc6,0x35,uVar6,param_4);
        DAT_2000032e = 0;
      }
      break;
    case 0xe1:
      DAT_2000032e = 0;
      break;
    case 0xe2:
      scan_enabled = 0;
      application_state = 2;
      break;
    case 0xe3:
      scan_enabled = 0;
      application_state = 3;
      break;
    case 0xe5:
      goto LAB_00007b4c;
    }
    goto LAB_00007b58;
  }
  if (uVar4 == 0xd8) {
    FUN_00009648(*(undefined1 *)(param_1 + 2));
    if ((int)((uint)DAT_20000cc7 << 0x1a) < 0) {
      DAT_20000cc7 = DAT_20000cc7 & 0xdf;
    }
    else {
      DAT_20000cc7 = DAT_20000cc7 | 0x20;
    }
    FUN_00006730(DAT_20000cc7);
    delay_ms(0xfa);
joined_r0x000079ca:
    if ((int)((uint)DAT_20000cc7 << 0x1a) < 0) {
      DAT_20000cc7 = DAT_20000cc7 & 0xdf;
    }
    else {
      DAT_20000cc7 = DAT_20000cc7 | 0x20;
    }
    FUN_00006730(DAT_20000cc7);
    goto LAB_00007b58;
  }
  if (uVar4 < 0xd9) {
    if (uVar4 == 0x3a) {
      firmware_update_record(param_1 + 2);
      goto LAB_00007b58;
    }
    if (uVar4 == 0xd0) {
      configuration_factory_reset();
      delay_ms(10);
      DataSynchronizationBarrier(0xf);
      SCB_AIRCR = 0x5fa0004;
      DataSynchronizationBarrier(0xf);
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    if (uVar4 == 0xd5) {
      FUN_00003fd4();
      if ((int)((uint)DAT_20000cc7 << 0x1a) < 0) {
        DAT_20000cc7 = DAT_20000cc7 & 0xdf;
      }
      else {
        DAT_20000cc7 = DAT_20000cc7 | 0x20;
      }
      FUN_00006730(DAT_20000cc7);
      delay_ms(0xfa);
      goto joined_r0x000079ca;
    }
  }
  else {
    if (uVar4 == 0xd9) {
      scan_enabled = *(undefined1 *)(param_1 + 2);
      goto LAB_00007b58;
    }
    if (uVar4 == 0xdb) {
      FUN_000040bc();
      goto LAB_00007b58;
    }
  }
  goto switchD_000077fa_caseD_de;
}

