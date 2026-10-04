/* Address: 0x0000194c; body bytes: 1922 */

void FUN_0000194c(uint param_1,undefined4 param_2,undefined4 param_3,undefined1 *param_4)

{
  dword dVar1;
  byte bVar2;
  uint uVar3;
  uint extraout_r1;
  undefined4 uVar4;
  undefined1 *puVar5;
  int extraout_r3;
  int iVar6;
  undefined1 *puVar7;
  bool bVar8;
  bool bVar9;
  
  puVar5 = param_4;
  if (rgb_active == '\0') {
    puVar5 = &DAT_20000cac;
    puVar7 = &DAT_20000cc8;
    if (param_1 == 10) {
      if (DAT_20000cc8 < 4) {
        DAT_20000cc8 = DAT_20000cc8 + 1;
      }
      eeprom_write_page(&DAT_20000cc8,1,0xd,&DAT_20000cac,param_4);
      return;
    }
    if (param_1 == 9) {
      if (DAT_20000cc8 != 0) {
        DAT_20000cc8 = DAT_20000cc8 - 1;
      }
      uVar4 = 0xd;
      goto LAB_000020ce;
    }
    if (param_1 != 0) {
      return;
    }
  }
  uVar3 = (uint)wired_protocol;
  if (uVar3 == 2) {
    return;
  }
  if (DAT_20000c63 == '\0') {
    return;
  }
  if ((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) {
    if (DAT_20000cbd == '\0') {
      return;
    }
    if (1 < DAT_20000310) {
      return;
    }
  }
  if (((param_1 - 1 < 4) || (param_1 - 7 < 7)) && (DAT_200003c5 != '\0')) {
    DAT_200003c5 = '\0';
    eeprom_write_page(&DAT_200003c5,1,0x2f,puVar5,param_4);
    uVar3 = extraout_r1;
  }
  if (0xd < param_1) {
    return;
  }
  iVar6 = (uint)(&switchD_000019ee::switchdataD_000019f0)[param_1] * 2;
  switch(param_1) {
  case 0:
    if (rgb_active == '\0') {
      rgb_active = '\x01';
      DAT_20000cbb = 1;
      DAT_20000c74 = 0;
      FUN_0000068c(10);
      FUN_000007a8((&DAT_0000bd60)[DAT_20000c54]);
      CLK_EnableModuleClock(0x5ec00003);
      dVar1 = TIMER1_TCSR;
      TIMER1_TCSR = dVar1 | 0x40000000;
    }
    else {
      rgb_active = '\0';
      DAT_20000cbb = 0;
      dVar1 = TIMER1_TCSR;
      TIMER1_TCSR = dVar1 & 0xbfffffff;
      CLK_DisableModuleClock(0x5ec00003);
      FUN_00006778();
      FUN_00002a0c();
      FUN_000007a8(*(undefined2 *)(&DAT_0000bd6c + (uint)DAT_20000c54 * 2));
    }
    uVar4 = 0x2c;
    puVar7 = &rgb_active;
    break;
  case 1:
    if (4 < DAT_20000c72) {
      DAT_20000c72 = 0;
      eeprom_write_page(&DAT_20000c72,1,0x16,iVar6,param_4);
      if (DAT_200003c7 != '\x01') {
        DAT_200003c7 = 1;
        eeprom_write_page(&DAT_200003c7,1,0x17);
        DAT_200003fc = 1;
        DAT_200003fd = 0;
        DAT_200003fe = 0;
        return;
      }
      DAT_200003fc = 1;
      DAT_200003fd = 0;
      DAT_200003fe = 0;
      return;
    }
    if (DAT_200003c7 == '\x01') {
      return;
    }
    DAT_200003c7 = 1;
    eeprom_write_page(&DAT_200003c7,1,0x17,iVar6,param_4);
    DAT_200003fc = 1;
    DAT_200003fd = 0;
    DAT_200003fe = 0;
    return;
  case 2:
    DAT_20000c72 = DAT_20000c72 + 1;
    if (0xe < DAT_20000c72) {
      DAT_20000c72 = 0;
    }
    FUN_000027dc();
    uVar4 = 0x16;
    puVar7 = &DAT_20000c72;
    break;
  case 3:
    if (10 < DAT_20000c72 - 2) {
      return;
    }
    DAT_200003c3 = DAT_200003c3 + 1;
    if (6 < DAT_200003c3) {
      if (DAT_200003c3 < 10) {
        DAT_200003c3 = 10;
      }
      else {
        DAT_200003c3 = 0;
      }
    }
    if (DAT_200003c3 == DAT_200003c2) {
      DAT_200003c3 = DAT_200003c3 + 1;
    }
    uVar4 = 0x19;
    puVar7 = &DAT_200003c3;
    break;
  case 4:
    if (DAT_20000c72 == 0) {
      return;
    }
    if (DAT_20000c72 == 1) {
      FUN_00000660((&DAT_0000c66b)[DAT_20000c74]);
      iVar6 = extraout_r3;
    }
    DAT_20000c72 = 0;
    if ((DAT_200003c7 == '\0') && (DAT_200003c2 == 7)) {
      DAT_200003c2 = 0;
      eeprom_write_page(&DAT_200003c2,1,0x18,iVar6,param_4);
    }
    uVar4 = 0x16;
    DAT_200003fc = 1;
    DAT_200003fd = 0;
    DAT_200003fe = 0;
    puVar7 = &DAT_20000c72;
    break;
  case 5:
    if (9 < DAT_20000c72 - 5) {
      return;
    }
    if (DAT_200003c5 == '\0') {
      DAT_200003c5 = '\x01';
      eeprom_write_block(&DAT_20003880,0xc6,0xfb);
    }
    else {
      DAT_200003c5 = '\0';
    }
    uVar4 = 0x2f;
    puVar7 = &DAT_200003c5;
    break;
  default:
    return;
  case 7:
    if (DAT_20000c72 == 0) {
      if ((DAT_200003c2 != 9) && (DAT_200003c2 != 8)) {
        return;
      }
      puVar5 = &DAT_20000400;
      uVar3 = (uint)DAT_20000403;
      bVar9 = uVar3 == 0;
      goto LAB_00001bea;
    }
    if (DAT_20000c72 == 1) {
      puVar5 = &DAT_20000400;
      bVar9 = DAT_20000402 == 0;
      bVar2 = DAT_20000402;
LAB_00001c08:
      if (bVar9) {
        return;
      }
      puVar5[2] = bVar2 - 1;
      *(ushort *)(puVar5 + 0x10) = (ushort)(byte)(&DAT_0000c670)[(byte)(bVar2 - 1)];
      uVar4 = 0x1a;
      puVar7 = &DAT_20000402;
      break;
    }
    if (DAT_20000c72 == 2) {
      puVar5 = &DAT_20000400;
      bVar9 = DAT_20000404 == 0;
      bVar2 = DAT_20000404;
LAB_00001c24:
      if (bVar9) {
        return;
      }
      puVar5[4] = bVar2 - 1;
      uVar4 = 0x1b;
      DAT_200003cc = (&DAT_0000c675)[(byte)(bVar2 - 1)];
      puVar7 = &DAT_20000404;
      break;
    }
    if (DAT_20000c72 == 3) {
      puVar7 = &DAT_20000400;
      puVar5 = (undefined1 *)(uint)DAT_20000407;
      bVar9 = puVar5 == (undefined1 *)0x0;
LAB_00001c40:
      if (bVar9) {
        return;
      }
      puVar7[7] = (char)(puVar5 + -1);
      puVar7[5] = (&DAT_0000c67a)[(uint)(puVar5 + -1) & 0xff];
      uVar4 = 0x1c;
      puVar7 = &DAT_20000407;
    }
    else {
      if (DAT_20000c72 == 4) {
        if (DAT_20000408 == 0) {
          return;
        }
        DAT_20000408 = DAT_20000408 - 1;
        DAT_20000406 = (&DAT_0000c67f)[DAT_20000408];
        uVar4 = 0x1d;
        puVar7 = &DAT_20000408;
        break;
      }
      if (DAT_20000c72 == 5) {
        if (DAT_200003d3 == 0) {
          return;
        }
        DAT_200003d3 = DAT_200003d3 - 1;
        DAT_200003d0 = (&DAT_0000c684)[DAT_200003d3];
        uVar4 = 0x1f;
        puVar7 = &DAT_200003d3;
        break;
      }
      if (DAT_20000c72 == 6) {
        if (DAT_200003d8 == 0) {
          return;
        }
        DAT_200003d8 = DAT_200003d8 - 1;
        DAT_200003d5 = (&DAT_0000c689)[DAT_200003d8];
        uVar4 = 0x20;
        puVar7 = &DAT_200003d8;
        break;
      }
      if ((DAT_20000c72 == 7) || (DAT_20000c72 == 8)) {
        bVar9 = true;
        puVar5 = (undefined1 *)0x0;
        if (DAT_200003dc != 0) {
          DAT_200003dc = DAT_200003dc - 1;
          DAT_200003da = (&DAT_0000c68e)[DAT_200003dc];
          uVar4 = 0x21;
          puVar7 = &DAT_200003dc;
          break;
        }
      }
      else {
        if (DAT_20000c72 != 0xd) {
          if (DAT_20000c72 == 0xe) {
            puVar5 = &DAT_200003e0;
            bVar9 = true;
            bVar2 = 0;
            if (DAT_200003e8 != 0) {
              DAT_200003e8 = DAT_200003e8 - 1;
              DAT_200003e6 = (&DAT_0000c698)[DAT_200003e8];
              uVar4 = 0x23;
              puVar7 = &DAT_200003e8;
              break;
            }
            goto LAB_00001c08;
          }
          if (DAT_20000c72 == 9) {
            bVar9 = true;
            puVar5 = (undefined1 *)0x0;
            bVar2 = 0xe0;
            if (DAT_200003ef != 0) {
              DAT_200003ef = DAT_200003ef - 1;
              uVar4 = 0x24;
              DAT_2000040d = (&DAT_0000c69d)[DAT_200003ef];
              puVar7 = &DAT_200003ef;
              break;
            }
            goto LAB_00001c24;
          }
          if (DAT_20000c72 == 10) {
            puVar5 = &DAT_200003e0;
            puVar7 = (undefined1 *)(uint)DAT_200003ec;
            bVar8 = puVar7 == (undefined1 *)0x0;
          }
          else {
            if (DAT_20000c72 != 0xb) {
              if (DAT_20000c72 != 0xc) {
                return;
              }
              if (DAT_200003f6 == 0) {
                return;
              }
              DAT_200003f6 = DAT_200003f6 - 1;
              uVar4 = 0x27;
              DAT_2000040f = (&DAT_0000c6b1)[DAT_200003f6];
              puVar7 = &DAT_200003f6;
              break;
            }
            puVar7 = &DAT_200003e0;
            bVar8 = true;
            puVar5 = (undefined1 *)0x0;
            if (DAT_200003f1 != 0) {
              DAT_200003f1 = DAT_200003f1 - 1;
              uVar4 = 0x26;
              DAT_2000040e = (&DAT_0000c6ac)[DAT_200003f1];
              puVar7 = &DAT_200003f1;
              break;
            }
          }
          bVar9 = true;
          if (!bVar8) {
            uVar3 = (uint)(puVar7 + -1) & 0xff;
            puVar5[0xc] = (char)(puVar7 + -1);
            DAT_2000040a = (&DAT_0000c6a2)[uVar3];
            DAT_2000040c = (&DAT_0000c6a7)[uVar3];
            uVar4 = 0x25;
            puVar7 = &DAT_200003ec;
            break;
          }
          goto LAB_00001c40;
        }
        puVar5 = &DAT_200003e0;
        bVar9 = true;
        uVar3 = 0;
        if (DAT_200003e3 != 0) {
          DAT_200003e3 = DAT_200003e3 - 1;
          DAT_200003e0 = (&DAT_0000c693)[DAT_200003e3];
          uVar4 = 0x22;
          puVar7 = &DAT_200003e3;
          break;
        }
      }
LAB_00001bea:
      if (bVar9) {
        return;
      }
      puVar5[3] = (char)(uVar3 - 1);
      *(undefined2 *)(puVar5 + 0x16) = (&DAT_0000c884)[uVar3 - 1 & 0xff];
      uVar4 = 0x1e;
      puVar7 = &DAT_20000403;
    }
    break;
  case 8:
    if (DAT_20000c72 == 0) {
      if ((DAT_200003c2 != 9) && (DAT_200003c2 != 8)) {
        return;
      }
      puVar5 = &DAT_20000400;
      uVar3 = (uint)DAT_20000403;
      bVar9 = 3 < uVar3;
      goto LAB_00001e96;
    }
    if (DAT_20000c72 == 1) {
      puVar5 = &DAT_20000400;
      bVar9 = 3 < DAT_20000402;
      bVar2 = DAT_20000402;
LAB_00001eb4:
      if (bVar9) {
        return;
      }
      puVar5[2] = bVar2 + 1;
      *(ushort *)(puVar5 + 0x10) = (ushort)(byte)(&DAT_0000c670)[(byte)(bVar2 + 1)];
      uVar4 = 0x1a;
      puVar7 = &DAT_20000402;
      break;
    }
    if (DAT_20000c72 == 2) {
      puVar5 = &DAT_20000400;
      bVar9 = 3 < DAT_20000404;
      bVar2 = DAT_20000404;
LAB_00001ed0:
      if (bVar9) {
        return;
      }
      puVar5[4] = bVar2 + 1;
      uVar4 = 0x1b;
      DAT_200003cc = (&DAT_0000c675)[(byte)(bVar2 + 1)];
      puVar7 = &DAT_20000404;
      break;
    }
    if (DAT_20000c72 == 3) {
      puVar5 = &DAT_20000400;
      bVar9 = 3 < DAT_20000407;
      bVar2 = DAT_20000407;
LAB_00001eec:
      if (bVar9) {
        return;
      }
      puVar5[7] = bVar2 + 1;
      puVar5[5] = (&DAT_0000c67a)[(byte)(bVar2 + 1)];
      uVar4 = 0x1c;
      puVar7 = &DAT_20000407;
      break;
    }
    if (DAT_20000c72 == 4) {
      puVar5 = &DAT_20000400;
      bVar9 = 3 < DAT_20000408;
      bVar2 = DAT_20000408;
LAB_00001f08:
      if (bVar9) {
        return;
      }
      puVar5[8] = bVar2 + 1;
      puVar5[6] = (&DAT_0000c67f)[(byte)(bVar2 + 1)];
      uVar4 = 0x1d;
      puVar7 = &DAT_20000408;
    }
    else {
      if (DAT_20000c72 == 5) {
        if (3 < DAT_200003d3) {
          return;
        }
        DAT_200003d3 = DAT_200003d3 + 1;
        DAT_200003d0 = (&DAT_0000c684)[DAT_200003d3];
        uVar4 = 0x1f;
        puVar7 = &DAT_200003d3;
        break;
      }
      if (DAT_20000c72 == 6) {
        if (3 < DAT_200003d8) {
          return;
        }
        DAT_200003d8 = DAT_200003d8 + 1;
        DAT_200003d5 = (&DAT_0000c689)[DAT_200003d8];
        uVar4 = 0x20;
        puVar7 = &DAT_200003d8;
        break;
      }
      if ((DAT_20000c72 == 7) || (DAT_20000c72 == 8)) {
        puVar5 = (undefined1 *)(uint)DAT_200003dc;
        bVar9 = true;
        if (puVar5 < (undefined1 *)0x4) {
          DAT_200003dc = (byte)(puVar5 + 1);
          DAT_200003da = (&DAT_0000c68e)[(uint)(puVar5 + 1) & 0xff];
          uVar4 = 0x21;
          puVar7 = &DAT_200003dc;
          break;
        }
      }
      else {
        if (DAT_20000c72 != 0xd) {
          if (DAT_20000c72 == 0xe) {
            puVar5 = &DAT_200003e0;
            bVar9 = true;
            bVar2 = DAT_200003e8;
            if (DAT_200003e8 < 4) {
              DAT_200003e8 = DAT_200003e8 + 1;
              DAT_200003e6 = (&DAT_0000c698)[DAT_200003e8];
              uVar4 = 0x23;
              puVar7 = &DAT_200003e8;
              break;
            }
            goto LAB_00001eb4;
          }
          if (DAT_20000c72 == 9) {
            puVar5 = &DAT_200003e0;
            bVar9 = true;
            bVar2 = DAT_200003ef;
            if (DAT_200003ef < 4) {
              DAT_200003ef = DAT_200003ef + 1;
              uVar4 = 0x24;
              DAT_2000040d = (&DAT_0000c69d)[DAT_200003ef];
              puVar7 = &DAT_200003ef;
              break;
            }
            goto LAB_00001ed0;
          }
          if (DAT_20000c72 == 10) {
            puVar5 = (undefined1 *)(uint)DAT_200003ec;
            bVar9 = true;
            bVar2 = 0xe0;
            if (puVar5 < (undefined1 *)0x4) {
              uVar3 = (uint)(puVar5 + 1) & 0xff;
              DAT_200003ec = (byte)(puVar5 + 1);
              DAT_2000040a = (&DAT_0000c6a2)[uVar3];
              DAT_2000040c = (&DAT_0000c6a7)[uVar3];
              uVar4 = 0x25;
              puVar7 = &DAT_200003ec;
              break;
            }
            goto LAB_00001eec;
          }
          if (DAT_20000c72 != 0xb) {
            if (DAT_20000c72 != 0xc) {
              return;
            }
            if (3 < DAT_200003f6) {
              return;
            }
            DAT_200003f6 = DAT_200003f6 + 1;
            uVar4 = 0x27;
            DAT_2000040f = (&DAT_0000c6b1)[DAT_200003f6];
            puVar7 = &DAT_200003f6;
            break;
          }
          puVar5 = &DAT_200003e0;
          bVar9 = true;
          bVar2 = DAT_200003f1;
          if (DAT_200003f1 < 4) {
            DAT_200003f1 = DAT_200003f1 + 1;
            uVar4 = 0x26;
            DAT_2000040e = (&DAT_0000c6ac)[DAT_200003f1];
            puVar7 = &DAT_200003f1;
            break;
          }
          goto LAB_00001f08;
        }
        puVar5 = &DAT_200003e0;
        uVar3 = (uint)DAT_200003e3;
        bVar9 = true;
        if (uVar3 < 4) {
          DAT_200003e3 = (byte)(uVar3 + 1);
          DAT_200003e0 = (&DAT_0000c693)[uVar3 + 1 & 0xff];
          uVar4 = 0x22;
          puVar7 = &DAT_200003e3;
          break;
        }
      }
LAB_00001e96:
      if (bVar9) {
        return;
      }
      puVar5[3] = (char)(uVar3 + 1);
      *(undefined2 *)(puVar5 + 0x16) = (&DAT_0000c884)[uVar3 + 1 & 0xff];
      uVar4 = 0x1e;
      puVar7 = &DAT_20000403;
    }
    break;
  case 9:
    if (DAT_20000c72 == 1) {
      return;
    }
    if (DAT_20000c74 == 0) {
      return;
    }
    DAT_20000c74 = DAT_20000c74 - 1;
    eeprom_write_page(&DAT_20000c74,1,0x15,iVar6,param_4);
    FUN_00000660((&DAT_0000c66b)[DAT_20000c74]);
    return;
  case 10:
    if ((DAT_20000c72 != 1) && (DAT_20000c74 < 4)) {
      DAT_20000c74 = DAT_20000c74 + 1;
      eeprom_write_page(&DAT_20000c74,1,0x15,iVar6,param_4);
      FUN_00000660((&DAT_0000c66b)[DAT_20000c74]);
      return;
    }
    return;
  case 0xb:
    if (DAT_20000c72 == 5) {
      DAT_200003d2 = DAT_200003d2 == '\0';
      uVar4 = 0x28;
      puVar7 = &DAT_200003d2;
    }
    else if (DAT_20000c72 == 6) {
      DAT_200003d7 = DAT_200003d7 == '\0';
      uVar4 = 0x29;
      puVar7 = &DAT_200003d7;
    }
    else if (DAT_20000c72 == 7) {
      DAT_200003dd = DAT_200003dd == '\0';
      uVar4 = 0x2a;
      puVar7 = &DAT_200003dd;
    }
    else {
      if (DAT_20000c72 != 8) {
        return;
      }
      DAT_200003de = DAT_200003de == '\0';
      uVar4 = 0x2b;
      puVar7 = &DAT_200003de;
    }
    break;
  case 0xd:
    uVar3 = (uint)DAT_20000c72;
    if (uVar3 - 0xd < 2) {
      DAT_20000c72 = 0;
      eeprom_write_page(&DAT_20000c72,1,0x16,iVar6,param_4);
    }
    else if (((uVar3 == 7) || (uVar3 == 8)) && (DAT_200003c3 == 10)) {
      return;
    }
    if (DAT_200003c7 == '\0') {
      if (DAT_20000c72 == 1) {
        DAT_200003c4 = DAT_200003c4 + 1;
        if (DAT_200003c4 < 0xb) {
          if (DAT_200003c4 == 7) {
            DAT_200003c4 = 8;
          }
        }
        else {
          DAT_200003c4 = 0;
        }
        uVar4 = 0x2d;
        puVar5 = &DAT_200003c4;
      }
      else {
        DAT_200003c2 = DAT_200003c2 + 1;
        if (9 < DAT_200003c2) {
          DAT_200003c2 = 0;
        }
        uVar4 = 0x18;
        puVar5 = &DAT_200003c2;
      }
      eeprom_write_page(puVar5,1,uVar4);
    }
    else {
      DAT_200003c7 = '\0';
      if (9 < DAT_200003c2) {
        DAT_200003c2 = 0;
        eeprom_write_page(&DAT_200003c2,1,0x18);
      }
      eeprom_write_page(&DAT_200003c7,1,0x17);
    }
    if (DAT_20000c72 == 1) {
      if (DAT_200003c4 == 9) goto LAB_0000217e;
      if (DAT_200003c4 != 8) {
        DAT_200003fc = 1;
        DAT_200003fd = 0;
        DAT_200003fe = 0;
        return;
      }
    }
    else {
      if (DAT_200003c2 == 9) {
LAB_0000217e:
        FUN_00004468();
        goto LAB_00002188;
      }
      if (DAT_200003c2 != 8) goto LAB_00002188;
    }
    FUN_000044fc();
LAB_00002188:
    if (DAT_20000c72 == 7) {
      return;
    }
    if (DAT_20000c72 != 8) {
      DAT_200003fc = 1;
      DAT_200003fd = 0;
      DAT_200003fe = 0;
      return;
    }
    return;
  }
LAB_000020ce:
  eeprom_write_page(puVar7,1,uVar4);
  return;
}

