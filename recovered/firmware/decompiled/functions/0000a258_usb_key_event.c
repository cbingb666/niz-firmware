/* Address: 0x0000a258; body bytes: 1280 */

/* Maps internal key codes into USB keyboard, extended and mouse reports. */

void usb_key_event(int param_1,uint param_2)

{
  undefined1 uVar1;
  char cVar2;
  dword dVar3;
  undefined1 uVar4;
  char cVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  byte bVar9;
  uint uVar10;
  uint uVar11;
  undefined4 local_30;
  uint local_2c;
  char *local_28;
  undefined *local_24;
  uint local_20;
  uint local_1c;
  
  cVar5 = DAT_20000315;
  local_1c = param_2 - 0x42;
  local_20 = param_2 - 0x4b;
  local_24 = &UNK_0000c2f0 + param_2;
  local_28 = &DAT_20000c6c;
  local_2c = 1 << (param_2 - 0x82 & 0xff);
  uVar11 = param_2 - 0xd2;
  local_30 = &DAT_20000304 + param_2;
  if (param_1 == 0) {
    if (((param_2 < 0x6c) || (param_2 == 0xcc)) || (uVar11 < 0xc)) {
      if (((local_1c < 4) || (param_2 == 0x37)) ||
         ((param_2 == 0x47 || ((param_2 == 0x48 || (param_2 == 0x4a)))))) {
        DAT_20000e0c = 1;
        DAT_20000e0d = DAT_20000e0d & ~(&DAT_0000c364)[param_2];
        DAT_20000363 = 1;
        return;
      }
      if (local_20 < 3) {
        local_30 = (undefined1 *)0x2;
        DAT_2000034a = 0x28;
        FUN_0000aa18(&local_30);
        return;
      }
      if (param_2 == 0xcc) {
        cVar5 = 'd';
      }
      else if (uVar11 < 0xc) {
        cVar5 = (&DAT_0000c2fe)[param_2];
      }
      else {
        cVar5 = (&DAT_0000c364)[param_2];
      }
      uVar10 = 0;
      uVar8 = (uint)DAT_20000367;
      if (uVar8 != 0) {
        do {
          if ((&DAT_20000e0f)[uVar10] == cVar5) {
            DAT_20000e0c = 1;
            if (uVar10 < uVar8) {
              uVar11 = (uint)DAT_20000c60;
              do {
                if ((int)uVar10 < (int)(uVar11 - 1)) {
                  (&DAT_20000e0f)[uVar10] = (&DAT_20000e10)[uVar10];
                  (&DAT_20000e10)[uVar10] = 0;
                }
                else {
                  (&DAT_20000e0f)[uVar10] = 0;
                }
                uVar10 = uVar10 + 1 & 0xff;
              } while (uVar10 < uVar8);
            }
            DAT_20000363 = 1;
            DAT_20000367 = DAT_20000367 - 1;
            return;
          }
          uVar10 = uVar10 + 1 & 0xff;
        } while (uVar10 < uVar8);
      }
      if (param_2 == 0xcc) {
        uVar11 = 0x6c;
      }
      else {
        if (uVar11 < 0xc) {
          return;
        }
        uVar11 = (uint)(byte)(&LAB_0000c3dc)[param_2];
      }
      uVar10 = uVar11 >> 3;
      uVar11 = 1 << (uVar11 & 7);
      if (((byte)(&DAT_20000e16)[uVar10] & uVar11) == 0) {
        return;
      }
      DAT_20000e15 = 3;
      (&DAT_20000e16)[uVar10] = (&DAT_20000e16)[uVar10] & ~(byte)uVar11;
      DAT_20000364 = 1;
    }
    else {
      if (param_2 == 0xcf) {
        if (DAT_20000c65 == '\0') {
          return;
        }
        DAT_20000e0c = 1;
        DAT_20000e14 = 0;
        DAT_20000363 = 1;
        DAT_20000c6c = 0;
        return;
      }
      if (((param_2 < 0x7e) || (param_2 == 0xd0)) || (param_2 == 0xd1)) {
        local_30 = (undefined1 *)0x1;
        DAT_2000034a = 0x28;
        FUN_0000aa18(&local_30,3);
        return;
      }
      if (param_2 < 0x87) {
        cVar2 = DAT_20000315 + -1;
        if (param_2 < 0x82) {
          if ((&DAT_20000306)[param_2] != '\0') {
            (&DAT_20000306)[param_2] = (&DAT_20000306)[param_2] + -1;
          }
          if (cVar5 != '\0') {
            DAT_20000315 = cVar2;
          }
          DAT_20000c9e = 0;
          return;
        }
        if (param_2 < 0x85) {
          if (DAT_20000368 == 0) {
            return;
          }
          DAT_20000388 = 4;
          DAT_20000389 = DAT_20000389 & ~(&DAT_0000c0ff)[param_2];
          FUN_00006a24();
          DAT_20000368 = DAT_20000368 & ~(byte)local_2c;
          return;
        }
        DAT_20000c9e = 0;
        if (DAT_20000315 != '\0') {
          DAT_20000315 = cVar2;
        }
        DAT_2000038c = 0;
        DAT_20000c52 = 0;
        return;
      }
    }
    return;
  }
  dVar3 = USBD_ATTR;
  if ((int)(dVar3 << 0x1e) < 0) {
    dVar3 = USBD_ATTR;
    USBD_ATTR = dVar3 | 0x20;
    delay_ms(1);
    dVar3 = USBD_ATTR;
    USBD_ATTR = dVar3 & 0xffffffdf;
    delay_ms(0x32);
  }
  if (rgb_active == '\0') {
LAB_0000a2d0:
    if (((0x6b < param_2) && (param_2 != 0xcc)) && (0xb < uVar11)) {
      if (param_2 == 0xcf) {
        if (DAT_20000c65 == '\0') {
          return;
        }
        cVar5 = '\x01';
        DAT_20000e0c = 1;
        DAT_20000e14 = 1;
        DAT_20000363 = 1;
        goto LAB_0000a596;
      }
      if (((param_2 < 0x7e) || (param_2 == 0xd0)) || (param_2 == 0xd1)) {
        iVar7 = param_2 * 2;
        if (param_2 < 0x7e) {
          uVar1 = (&LAB_0000c370)[iVar7];
          uVar4 = (&LAB_0000c370_1)[iVar7];
        }
        else {
          uVar1 = (&DAT_0000c2cc)[iVar7];
          uVar4 = (&DAT_0000c2cd)[iVar7];
        }
        local_30._0_3_ = CONCAT12(uVar4,CONCAT11(uVar1,1));
        uVar6 = 3;
        goto LAB_0000a490;
      }
      if (0x86 < param_2) {
        return;
      }
      if (param_2 < 0x82) {
        local_30[2] = local_30[2] + '\x01';
        if (DAT_20000c51 != 0) {
          FUN_00006a8c(0);
          if (DAT_20000c4f == '\0') {
            if (DAT_20000315 == '\0') {
              DAT_2000034c = *(undefined2 *)(&DAT_0000c470 + (uint)DAT_20000c51 * 2);
            }
          }
          else {
            DAT_2000034c = 10;
          }
        }
        DAT_20000315 = DAT_20000315 + '\x01';
        if (DAT_20000384 == '\0') {
          return;
        }
        if (DAT_20000385 == '\0') {
          return;
        }
        if (DAT_20000386 == '\0') {
          return;
        }
        if (DAT_20000387 == '\0') {
          return;
        }
        DAT_20000c9e = 1000;
        DAT_20000ca1 = 4;
        return;
      }
      if (param_2 < 0x85) {
        DAT_20000388 = 4;
        if ((local_2c & DAT_20000368) == 0) {
          DAT_20000389 = DAT_20000389 | (&DAT_0000c0ff)[param_2];
          FUN_00006a24();
          DAT_20000368 = (byte)local_2c | DAT_20000368;
          return;
        }
        DAT_20000389 = DAT_20000389 & ~(&DAT_0000c0ff)[param_2];
        FUN_00006a24();
        DAT_20000389 = DAT_20000389 | (&DAT_0000c0ff)[param_2];
        FUN_00006a24();
        DAT_20000389 = DAT_20000389 & ~(&DAT_0000c0ff)[param_2];
        FUN_00006a24();
        DAT_20000368 = DAT_20000368 & ~(byte)local_2c;
        return;
      }
      if (DAT_2000038c != 0) {
        if (param_2 == 0x85) {
          if (0x80 < DAT_2000038c) goto LAB_0000a522;
        }
        else if ((param_2 == 0x86) && (DAT_2000038c < 0x80)) {
LAB_0000a522:
          DAT_20000c9e = 3000;
          DAT_20000ca1 = 3;
        }
      }
      if (transport_is_wired == '\0') {
        if (DAT_20000c66 == '\0') goto LAB_0000a566;
LAB_0000a540:
        DAT_20000388 = 4;
        DAT_2000038c = (&DAT_0000c0ff)[param_2];
        FUN_00006a24();
        bVar9 = 0;
        if (DAT_20000c50 != 0) {
          do {
            FUN_00006a24();
            bVar9 = bVar9 + 1;
          } while (bVar9 < DAT_20000c50);
        }
        DAT_20000c52 = 1;
      }
      else {
        if (DAT_20000c65 != '\0') goto LAB_0000a540;
LAB_0000a566:
        DAT_20000388 = 4;
        DAT_2000038c = (&DAT_0000c198)[DAT_20000c50];
        if (param_2 != 0x85) {
          DAT_2000038c = -DAT_2000038c;
        }
        FUN_00006a24();
        DAT_20000c52 = 0;
      }
      DAT_2000038c = (&DAT_0000c0ff)[param_2];
      DAT_2000034c = 500;
      local_28 = &DAT_20000315;
      cVar5 = DAT_20000315 + '\x01';
LAB_0000a596:
      *local_28 = cVar5;
      return;
    }
  }
  else {
    if (param_2 == 0x2a) {
      if ((int)((uint)DAT_20000c61 << 0x1e) < 0) {
        bVar9 = 0xfd;
        goto LAB_0000a32c;
      }
      bVar9 = 2;
LAB_0000a332:
      DAT_20000c61 = DAT_20000c61 | bVar9;
    }
    else {
      if (param_2 != 0x4f) goto LAB_0000a2d0;
      if (-1 < (int)((uint)DAT_20000c61 << 0x1d)) {
        bVar9 = 4;
        goto LAB_0000a332;
      }
      bVar9 = 0xfb;
LAB_0000a32c:
      DAT_20000c61 = DAT_20000c61 & bVar9;
    }
    FUN_00006438(DAT_20000c61);
  }
  if ((((local_1c < 4) || (param_2 == 0x37)) || (param_2 == 0x47)) ||
     ((param_2 == 0x48 || (param_2 == 0x4a)))) {
    DAT_20000e0c = 1;
    DAT_20000e0d = DAT_20000e0d | (&DAT_0000c364)[param_2];
    DAT_20000363 = 1;
    return;
  }
  if (2 < local_20) {
    if (param_2 == 0xcc) {
      uVar4 = 100;
    }
    else if (uVar11 < 0xc) {
      uVar4 = local_24[0xe];
    }
    else {
      uVar4 = (&DAT_0000c364)[param_2];
    }
    if ((uint)DAT_20000c60 <= (uint)DAT_20000367) {
      if (param_2 == 0xcc) {
        uVar11 = 0x6c;
      }
      else {
        if (uVar11 < 0xc) {
          return;
        }
        uVar11 = (uint)(byte)(&LAB_0000c3dc)[param_2];
      }
      DAT_20000e15 = 3;
      uVar10 = uVar11 >> 3;
      uVar11 = 1 << (uVar11 & 7);
      bVar9 = (byte)uVar11;
      if (((byte)(&DAT_20000e16)[uVar10] & uVar11) != 0) {
        FUN_0000aafc(&DAT_20000e15);
        (&DAT_20000e16)[uVar10] = (&DAT_20000e16)[uVar10] & ~bVar9;
        FUN_0000aafc(&DAT_20000e15);
      }
      (&DAT_20000e16)[uVar10] = (&DAT_20000e16)[uVar10] | bVar9;
      DAT_20000364 = 1;
      return;
    }
    DAT_20000e0c = 1;
    (&DAT_20000e0f)[DAT_20000367] = uVar4;
    DAT_20000367 = DAT_20000367 + 1;
    DAT_20000363 = 1;
    return;
  }
  uVar6 = 2;
  local_30 = (undefined1 *)(uint)CONCAT11((&DAT_0000c364)[param_2],2);
LAB_0000a490:
  DAT_2000034a = 0x28;
  FUN_0000aa18(&local_30,uVar6);
  return;
}

