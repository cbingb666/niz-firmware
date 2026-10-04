/* Address: 0x0000329c; body bytes: 1132 */

/* Maps internal key codes into reports for the UART transport. */

void ble_key_event(int param_1,uint param_2)

{
  undefined1 uVar1;
  char cVar2;
  undefined1 uVar3;
  char cVar4;
  undefined4 uVar5;
  char *pcVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  byte bVar11;
  undefined4 local_30;
  uint local_2c;
  uint local_28;
  undefined1 *local_24;
  undefined *local_20;
  uint local_1c;
  uint local_18;
  
  cVar4 = DAT_20000315;
  local_18 = param_2 - 0x42;
  local_1c = param_2 - 0x4b;
  local_20 = &UNK_0000c2f0 + param_2;
  local_24 = &DAT_20000c6c;
  local_28 = (uint)DAT_20000e0d;
  local_2c = (uint)DAT_20000c66;
  uVar10 = 1 << (param_2 - 0x82 & 0xff);
  uVar9 = param_2 - 0xd2;
  local_30 = (uint)DAT_20000368;
  uVar7 = (uint)DAT_20000367;
  bVar11 = (byte)uVar10;
  if (param_1 == 0) {
    if (((param_2 < 0x6c) || (param_2 == 0xcc)) || (uVar9 < 0xc)) {
      if (((local_18 < 4) || (param_2 == 0x37)) ||
         ((param_2 == 0x47 || ((param_2 == 0x48 || (param_2 == 0x4a)))))) {
        DAT_20000e0c = 0xf0;
        DAT_20000e0d = DAT_20000e0d & ~(&DAT_0000c364)[param_2];
        DAT_20000363 = 1;
        return;
      }
      if (2 < local_1c) {
        if (param_2 == 0xcc) {
          cVar4 = 'd';
        }
        else if (uVar9 < 0xc) {
          cVar4 = (&DAT_0000c2fe)[param_2];
        }
        else {
          cVar4 = (&DAT_0000c364)[param_2];
        }
        uVar10 = 0;
        if (uVar7 != 0) {
          do {
            if ((&DAT_20000e0f)[uVar10] == cVar4) {
              DAT_20000e0c = 0xf0;
              for (; uVar10 < uVar7; uVar10 = uVar10 + 1 & 0xff) {
                if (uVar10 < 4) {
                  (&DAT_20000e0f)[uVar10] = (&DAT_20000e10)[uVar10];
                  (&DAT_20000e10)[uVar10] = 0;
                }
                else {
                  (&DAT_20000e0f)[uVar10] = 0;
                }
              }
              DAT_20000363 = 1;
              DAT_20000367 = DAT_20000367 - 1;
              return;
            }
            uVar10 = uVar10 + 1 & 0xff;
          } while (uVar10 < uVar7);
        }
        if (param_2 == 0xcc) {
          uVar7 = 0x6c;
        }
        else {
          if (uVar9 < 0xc) {
            return;
          }
          uVar7 = (uint)(byte)(&LAB_0000c3dc)[param_2];
        }
        uVar9 = uVar7 >> 3;
        uVar7 = 1 << (uVar7 & 7);
        if (((byte)(&DAT_20000e16)[uVar9] & uVar7) != 0) {
          DAT_20000e15 = 0xf7;
          (&DAT_20000e16)[uVar9] = (&DAT_20000e16)[uVar9] & ~(byte)uVar7;
          DAT_20000364 = 1;
          return;
        }
        return;
      }
      local_30 = 0xf2;
      uVar5 = 2;
    }
    else {
      if (param_2 == 0xcf) {
        if (local_2c == 0) {
          return;
        }
        DAT_20000e0c = 0xf0;
        DAT_20000e14 = 0;
        DAT_20000363 = 1;
        DAT_20000c6c = 0;
        return;
      }
      if (((0x7d < param_2) && (param_2 != 0xd0)) && (param_2 != 0xd1)) {
        if (0x86 < param_2) {
          return;
        }
        cVar2 = DAT_20000315 + -1;
        if (param_2 < 0x82) {
          if ((&DAT_20000306)[param_2] != '\0') {
            (&DAT_20000306)[param_2] = (&DAT_20000306)[param_2] + -1;
          }
          if (cVar4 != '\0') {
            DAT_20000315 = cVar2;
          }
          DAT_20000c9e = 0;
          return;
        }
        if (0x84 < param_2) {
          DAT_20000c9e = 0;
          if (DAT_20000315 != '\0') {
            DAT_20000315 = cVar2;
          }
          DAT_2000038c = 0;
          DAT_20000c52 = 0;
          return;
        }
        if (local_30 == 0) {
          return;
        }
        DAT_20000388 = 0xf3;
        DAT_20000389 = DAT_20000389 & ~(&DAT_0000c0ff)[param_2];
        FUN_00006a24();
        DAT_20000368 = DAT_20000368 & ~bVar11;
        return;
      }
      local_30 = 0xf1;
      uVar5 = 3;
    }
LAB_0000370c:
    ble_send_frame(&local_30,uVar5);
    return;
  }
  if (((param_2 < 0x6c) || (param_2 == 0xcc)) || (uVar9 < 0xc)) {
    if ((((local_18 < 4) || (param_2 == 0x37)) || (param_2 == 0x47)) ||
       ((param_2 == 0x48 || (param_2 == 0x4a)))) {
      DAT_20000e0c = 0xf0;
      DAT_20000e0d = DAT_20000e0d | (&DAT_0000c364)[param_2];
      DAT_20000363 = 1;
      return;
    }
    if (2 < local_1c) {
      if (param_2 == 0xcc) {
        uVar3 = 100;
      }
      else if (uVar9 < 0xc) {
        uVar3 = (&DAT_0000c2fe)[param_2];
      }
      else {
        uVar3 = (&DAT_0000c364)[param_2];
      }
      if (4 < uVar7) {
        if (param_2 == 0xcc) {
          uVar7 = 0x6c;
        }
        else {
          if (uVar9 < 0xc) {
            return;
          }
          uVar7 = (uint)(byte)(&LAB_0000c3dc)[param_2];
        }
        DAT_20000e15 = 0xf7;
        uVar9 = uVar7 >> 3;
        uVar7 = 1 << (uVar7 & 7);
        bVar11 = (byte)uVar7;
        if (((byte)(&DAT_20000e16)[uVar9] & uVar7) != 0) {
          FUN_000037c4(&DAT_20000e15);
          (&DAT_20000e16)[uVar9] = (&DAT_20000e16)[uVar9] & ~bVar11;
          FUN_000037c4(&DAT_20000e15);
        }
        (&DAT_20000e16)[uVar9] = (&DAT_20000e16)[uVar9] | bVar11;
        DAT_20000364 = 1;
        return;
      }
      DAT_20000e0c = 0xf0;
      (&DAT_20000e0f)[uVar7] = uVar3;
      DAT_20000367 = DAT_20000367 + 1;
      DAT_20000363 = 1;
      return;
    }
    local_30 = (uint)CONCAT11((&DAT_0000c364)[param_2],0xf2);
    uVar5 = 2;
    goto LAB_0000370c;
  }
  if (param_2 == 0xcf) {
    if (local_2c == 0) {
      return;
    }
    DAT_20000e0c = 0xf0;
    cVar4 = '\x01';
    DAT_20000e14 = 1;
    DAT_20000363 = 1;
    pcVar6 = &DAT_20000c6c;
    goto LAB_00003566;
  }
  if (((param_2 < 0x7e) || (param_2 == 0xd0)) || (param_2 == 0xd1)) {
    iVar8 = param_2 * 2;
    if (param_2 < 0x7e) {
      uVar1 = (&LAB_0000c370)[iVar8];
      uVar3 = (&LAB_0000c370_1)[iVar8];
    }
    else {
      uVar1 = (&DAT_0000c2cc)[iVar8];
      uVar3 = (&DAT_0000c2cd)[iVar8];
    }
    local_30 = (uint)CONCAT12(uVar3,CONCAT11(uVar1,0xf1));
    uVar5 = 3;
    goto LAB_0000370c;
  }
  if (0x86 < param_2) {
    return;
  }
  if (param_2 < 0x82) {
    (&DAT_20000306)[param_2] = (&DAT_20000306)[param_2] + '\x01';
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
    DAT_20000388 = 0xf3;
    if ((uVar10 & local_30) != 0) {
      DAT_20000389 = DAT_20000389 & ~(&DAT_0000c0ff)[param_2];
      FUN_00006a24();
      DAT_20000389 = DAT_20000389 | (&DAT_0000c0ff)[param_2];
      FUN_00006a24();
      DAT_20000389 = DAT_20000389 & ~(&DAT_0000c0ff)[param_2];
      FUN_00006a24();
      DAT_20000368 = DAT_20000368 & ~bVar11;
      return;
    }
    DAT_20000389 = DAT_20000389 | (&DAT_0000c0ff)[param_2];
    DAT_20000368 = bVar11 | DAT_20000368;
    FUN_00006a24();
    return;
  }
  if (DAT_2000038c != 0) {
    if (param_2 == 0x85) {
      if (0x80 < DAT_2000038c) goto LAB_000034f4;
    }
    else if ((param_2 == 0x86) && (DAT_2000038c < 0x80)) {
LAB_000034f4:
      DAT_20000c9e = 3000;
    }
  }
  if (transport_is_wired == '\0') {
    if (local_2c != 0) goto LAB_0000350e;
LAB_00003534:
    DAT_20000388 = 0xf3;
    DAT_2000038c = (&DAT_0000c198)[DAT_20000c50];
    if (param_2 != 0x85) {
      DAT_2000038c = -DAT_2000038c;
    }
    FUN_00006a24();
    DAT_20000c52 = 0;
  }
  else {
    if (DAT_20000c65 == '\0') goto LAB_00003534;
LAB_0000350e:
    DAT_20000388 = 0xf3;
    DAT_2000038c = (&DAT_0000c0ff)[param_2];
    FUN_00006a24();
    bVar11 = 0;
    if (DAT_20000c50 != 0) {
      do {
        FUN_00006a24();
        bVar11 = bVar11 + 1;
      } while (bVar11 < DAT_20000c50);
    }
    DAT_20000c52 = 1;
  }
  DAT_2000038c = (&DAT_0000c0ff)[param_2];
  DAT_2000034c = 500;
  pcVar6 = &DAT_20000315;
  cVar4 = DAT_20000315 + '\x01';
LAB_00003566:
  *pcVar6 = cVar4;
  return;
}

