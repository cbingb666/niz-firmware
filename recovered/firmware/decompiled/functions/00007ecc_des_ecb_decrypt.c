/* Address: 0x00007ecc; body bytes: 820 */

/* Firmware DES function: key buffer zeroed, only caller key byte 0 copied; independently emulated.
    */

undefined4 des_ecb_decrypt(int param_1,int param_2,uint param_3,byte *param_4)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  undefined1 *puVar7;
  uint uVar8;
  uint uVar9;
  byte *pbVar10;
  uint uVar11;
  int iVar12;
  byte *pbVar13;
  byte local_488 [8];
  byte *local_480;
  dword *local_47c;
  byte *local_478;
  byte *local_474;
  byte *local_470;
  uint local_46c;
  undefined1 *local_468;
  int local_464;
  byte *local_460;
  undefined1 local_458 [767];
  byte abStack_159 [65];
  byte local_118 [128];
  byte local_98 [56];
  byte local_60 [60];
  int local_24;
  int local_20;
  uint local_1c;
  byte *pbStack_18;
  
  local_24 = param_1;
  local_20 = param_2;
  local_1c = param_3;
  pbStack_18 = param_4;
  FUN_000001c2(local_458,0x300);
  local_488[0] = 0;
  local_488[1] = 0;
  local_488[2] = 0;
  local_488[3] = 0;
  local_488[4] = 0;
  local_488[5] = 0;
  local_488[6] = 0;
  local_488[7] = 0;
  if ((((local_24 != 0) && (local_20 != 0)) && (param_4 != (byte *)0x0)) && (local_1c != 0)) {
    local_488[4] = 0;
    local_488[5] = 0;
    local_488[6] = 0;
    local_488[7] = 0;
    local_488[0] = 0;
    local_488[1] = 0;
    local_488[2] = 0;
    local_488[3] = 0;
                    /* WARNING: Ignoring partial resolution of indirect */
    local_488[0] = *param_4;
    local_470 = local_458;
    local_478 = abStack_159 + 0x1d;
    local_474 = abStack_159 + 1;
    uVar8 = 0;
    do {
      local_474[uVar8] = local_488[uVar8 >> 3] >> (7 - uVar8 & 7) & 1;
      uVar8 = uVar8 + 1 & 0xff;
    } while (uVar8 < 0x40);
    des_permute_bits(local_474,local_474,&DAT_0000be48,0x38);
    iVar12 = 0;
    do {
      uVar9 = (uint)(byte)(&DAT_0000beb0)[iVar12];
      uVar8 = 0;
      if (uVar9 != 0) {
        do {
          local_98[uVar8] = local_474[uVar8];
          uVar8 = uVar8 + 1 & 0xff;
        } while (uVar8 < uVar9);
      }
      uVar11 = 0x1c - uVar9 & 0xff;
      uVar8 = 0;
      if (uVar11 != 0) {
        do {
          local_474[uVar8] = local_474[uVar8 + uVar9];
          uVar8 = uVar8 + 1 & 0xff;
        } while (uVar8 < uVar11);
      }
      uVar8 = 0;
      if (uVar9 != 0) {
        do {
          local_474[uVar8 + (0x1c - uVar9)] = local_98[uVar8];
          uVar8 = uVar8 + 1 & 0xff;
        } while (uVar8 < uVar9);
      }
      uVar9 = (uint)(byte)(&DAT_0000beb0)[iVar12];
      uVar8 = 0;
      if (uVar9 != 0) {
        do {
          local_60[uVar8] = local_478[uVar8];
          uVar8 = uVar8 + 1 & 0xff;
        } while (uVar8 < uVar9);
      }
      uVar11 = 0x1c - uVar9 & 0xff;
      uVar8 = 0;
      if (uVar11 != 0) {
        do {
          local_478[uVar8] = local_478[uVar8 + uVar9];
          uVar8 = uVar8 + 1 & 0xff;
        } while (uVar8 < uVar11);
      }
      uVar8 = 0;
      if (uVar9 != 0) {
        do {
          local_478[uVar8 + (0x1c - uVar9)] = local_60[uVar8];
          uVar8 = uVar8 + 1 & 0xff;
        } while (uVar8 < uVar9);
      }
      local_47c = (dword *)(local_470 + iVar12 * 0x30);
      local_480 = &DAT_0000be80;
      FUN_000001c2(local_118,0x80);
      uVar8 = 0;
      do {
        local_118[uVar8] = abStack_159[local_480[uVar8]];
        uVar8 = uVar8 + 1 & 0xff;
      } while (uVar8 < 0x30);
      uVar8 = 0;
      do {
        *(byte *)((int)local_47c + uVar8) = local_118[uVar8];
        uVar8 = uVar8 + 1 & 0xff;
      } while (uVar8 < 0x30);
      iVar12 = iVar12 + 1;
    } while (iVar12 < 0x10);
    local_474 = (byte *)0x0;
    local_46c = local_1c >> 3;
    if (local_46c != 0) {
      local_460 = abStack_159 + 0x21;
      do {
        local_464 = local_20;
        local_468 = local_458;
        local_470 = abStack_159 + 1;
        local_478 = local_460;
        uVar8 = 0;
        do {
          local_470[uVar8] = *(byte *)(local_24 + (uVar8 >> 3)) >> (7 - uVar8 & 7) & 1;
          uVar8 = uVar8 + 1 & 0xff;
        } while (uVar8 < 0x40);
        des_permute_bits(local_470,local_470,&DAT_0000bd78,0x40);
        local_47c = &Vector_Reserved4;
        do {
          puVar7 = local_468;
          uVar8 = 0;
          do {
            local_118[uVar8] = local_478[uVar8];
            uVar8 = uVar8 + 1 & 0xff;
          } while (uVar8 < 0x20);
          local_480 = local_478;
          iVar12 = (int)local_47c * 0x30;
          pbVar13 = local_118 + 0x20;
          des_permute_bits(pbVar13,local_478,&DAT_0000bdf8,0x30);
          uVar8 = 0;
          do {
            pbVar13[uVar8] = pbVar13[uVar8] ^ puVar7[uVar8 + iVar12 + -0x30];
            uVar8 = uVar8 + 1 & 0xff;
          } while (uVar8 < 0x30);
          uVar8 = 0;
          pbVar10 = local_480;
          do {
            bVar1 = *pbVar13;
            bVar2 = pbVar13[5];
            bVar3 = pbVar13[1];
            bVar4 = pbVar13[4];
            bVar5 = pbVar13[2];
            bVar6 = pbVar13[3];
            uVar9 = 0;
            do {
              pbVar10[uVar9] =
                   (byte)(&UNK_0000bec0)
                         [(uint)(byte)(bVar4 + bVar3 * '\b' + bVar5 * '\x04' + bVar6 * '\x02') +
                          ((uint)bVar1 * 2 + (uint)bVar2 & 0xff) * 0x10 + uVar8 * 0x40] >>
                   (3 - uVar9 & 0xff) & 1;
              uVar9 = uVar9 + 1 & 0xff;
            } while (uVar9 < 4);
            uVar8 = uVar8 + 1 & 0xff;
            pbVar13 = pbVar13 + 6;
            pbVar10 = pbVar10 + 4;
          } while (uVar8 < 8);
          des_permute_bits(local_480,local_480,&DAT_0000be28,0x20);
          uVar8 = 0;
          do {
            local_478[uVar8] = local_478[uVar8] ^ local_470[uVar8];
            uVar8 = uVar8 + 1 & 0xff;
          } while (uVar8 < 0x20);
          uVar8 = 0;
          do {
            local_470[uVar8] = local_118[uVar8];
            uVar8 = uVar8 + 1 & 0xff;
          } while (uVar8 < 0x20);
          local_47c = (dword *)((uint)((int)local_47c - 1U) & 0xff);
        } while (local_47c != (dword *)0x0);
        pbVar13 = abStack_159 + 1;
        des_rotate_bit_buffer(pbVar13,0x40,0x20);
        des_permute_bits(pbVar13,pbVar13,&DAT_0000bdb8,0x40);
        uVar8 = 0;
        do {
          *(undefined1 *)(local_464 + uVar8) = 0;
          uVar8 = uVar8 + 1;
        } while (uVar8 < 8);
        uVar8 = 0;
        do {
          uVar9 = 7 - uVar8;
          pbVar10 = pbVar13 + uVar8;
          uVar11 = uVar8 >> 3;
          uVar8 = uVar8 + 1 & 0xff;
          *(byte *)(local_464 + uVar11) = *pbVar10 << (uVar9 & 7) | *(byte *)(local_464 + uVar11);
        } while (uVar8 < 0x40);
        local_474 = (byte *)((int)local_474 + 1U & 0xff);
        local_20 = local_20 + 8;
        local_24 = local_24 + 8;
      } while (local_474 < local_46c);
    }
    return 1;
  }
  return 0;
}

