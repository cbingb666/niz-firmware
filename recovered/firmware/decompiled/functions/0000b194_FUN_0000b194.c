/* Address: 0x0000b194; body bytes: 684 */

int FUN_0000b194(byte *param_1,byte *param_2,undefined4 param_3,code *param_4)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  char *pcVar4;
  int iVar5;
  int extraout_r2;
  byte *pbVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  bool bVar10;
  longlong lVar11;
  int local_60;
  int *local_5c;
  int local_58;
  undefined4 local_54;
  byte local_50 [36];
  int local_2c;
  int *local_28;
  byte *pbStack_24;
  byte *pbStack_20;
  undefined4 local_1c;
  code *local_18;
  
  local_18 = param_4;
  local_1c = param_3;
  pbStack_20 = param_2;
  pbStack_24 = param_1;
  iVar8 = 0;
  do {
    bVar1 = *param_1;
    if (bVar1 == 0) {
      return iVar8;
    }
    if (bVar1 == 0x25) {
      uVar7 = 0;
      local_60 = 0;
      pbVar6 = param_1;
      while( true ) {
        param_1 = pbVar6 + 1;
        uVar2 = 1 << (*param_1 - 0x20 & 0xff);
        if ((uVar2 & 0x12809) == 0) break;
        uVar7 = uVar7 | uVar2;
        pbVar6 = param_1;
      }
      if (*param_1 == 0x2e) {
        uVar7 = uVar7 | 4;
        param_1 = pbVar6 + 2;
        if (*param_1 == 0x2a) {
          local_60 = *(int *)param_2;
          param_2 = param_2 + 4;
          param_1 = pbVar6 + 3;
        }
        else {
          for (; *param_1 - 0x30 < 10; param_1 = param_1 + 1) {
            local_60 = (uint)*param_1 + local_60 * 10 + -0x30;
          }
        }
      }
      bVar1 = *param_1;
      if (bVar1 == 0x6c) {
        uVar7 = uVar7 | 0x100000;
        if (param_1[1] == 0x6c) {
          param_1 = param_1 + 1;
          uVar7 = uVar7 + 0x100000;
        }
LAB_0000b228:
        param_1 = param_1 + 1;
      }
      else {
        if (bVar1 < 0x6d) {
          if (bVar1 != 0x4c) {
            if (bVar1 != 0x6a) goto LAB_0000b22a;
            uVar7 = uVar7 | 0x200000;
          }
          goto LAB_0000b228;
        }
        if ((bVar1 == 0x74) || (bVar1 == 0x7a)) goto LAB_0000b228;
      }
LAB_0000b22a:
      bVar1 = *param_1;
      if (bVar1 == 0x69) {
LAB_0000b2c6:
        local_58 = 10;
        local_54 = 0;
        if ((uVar7 & 0x7fffff) >> 0x14 == 2) {
          piVar9 = (int *)((uint)(param_2 + 7) & 0xfffffff8);
          iVar5 = piVar9[1];
          iVar3 = *piVar9;
          param_2 = (byte *)(piVar9 + 2);
        }
        else {
          iVar3 = *(int *)param_2;
          param_2 = param_2 + 4;
          iVar5 = iVar3 >> 0x1f;
        }
        if (iVar5 < 0) {
          bVar10 = iVar3 != 0;
          iVar3 = -iVar3;
          iVar5 = -(uint)bVar10 - iVar5;
          local_50[0] = 0x2d;
LAB_0000b304:
          local_2c = 1;
        }
        else {
          if ((int)(uVar7 << 0x14) < 0) {
            local_50[0] = 0x2b;
            goto LAB_0000b304;
          }
          local_2c = 0;
          if ((uVar7 & 1) != 0) {
            local_50[0] = 0x20;
            goto LAB_0000b304;
          }
        }
LAB_0000b372:
LAB_0000b374:
        if (bVar1 != 0x58) goto LAB_0000b394;
        pcVar4 = "0123456789ABCDEF";
      }
      else {
        if (bVar1 < 0x6a) {
          if (bVar1 == 0) {
            return iVar8;
          }
          if (bVar1 != 0x58) {
            if (bVar1 == 99) {
              local_58._0_2_ = (ushort)*param_2;
              local_5c = &local_58;
              iVar3 = 1;
              goto LAB_0000b27c;
            }
            if (bVar1 != 100) goto LAB_0000b256;
            goto LAB_0000b2c6;
          }
LAB_0000b31e:
          local_58 = 0x10;
LAB_0000b320:
          local_54 = 0;
        }
        else {
          if (bVar1 != 0x70) {
            if (bVar1 == 0x73) {
              local_5c = *(int **)param_2;
              iVar3 = -1;
LAB_0000b27c:
              param_2 = param_2 + 4;
              if ((int)(uVar7 << 0x1d) < 0) {
                for (iVar5 = 0;
                    (iVar5 < local_60 &&
                    ((iVar5 < iVar3 || (*(char *)((int)local_5c + iVar5) != '\0'))));
                    iVar5 = iVar5 + 1) {
                }
              }
              else {
                for (iVar5 = 0; (iVar5 < iVar3 || (*(char *)((int)local_5c + iVar5) != '\0'));
                    iVar5 = iVar5 + 1) {
                }
              }
              iVar8 = iVar8 + iVar5;
              while (bVar10 = iVar5 != 0, iVar5 = iVar5 + -1, bVar10) {
                iVar3 = *local_5c;
                local_5c = (int *)((int)local_5c + 1);
                (*local_18)((char)iVar3,local_1c);
              }
              goto LAB_0000b434;
            }
            if (bVar1 != 0x75) {
              if (bVar1 != 0x78) goto LAB_0000b256;
              goto LAB_0000b31e;
            }
            local_58 = 10;
            goto LAB_0000b320;
          }
          local_58 = 0x10;
          uVar7 = uVar7 | 4;
          local_54 = 0;
          local_60 = 8;
        }
        if ((uVar7 & 0x7fffff) >> 0x14 == 2) {
          piVar9 = (int *)((uint)(param_2 + 7) & 0xfffffff8);
          iVar5 = piVar9[1];
          iVar3 = *piVar9;
          param_2 = (byte *)(piVar9 + 2);
        }
        else {
          iVar3 = *(int *)param_2;
          param_2 = param_2 + 4;
          iVar5 = 0;
        }
        local_2c = 0;
        if (-1 < (int)(uVar7 << 0x1c)) goto LAB_0000b374;
        if (bVar1 != 0x70) {
          if ((local_58 == 0x10) && (iVar3 != 0 || iVar5 != 0)) {
            local_50[0] = 0x30;
            local_50[1] = bVar1;
            local_2c = 2;
            goto LAB_0000b372;
          }
          goto LAB_0000b374;
        }
        local_50[0] = 0x40;
        local_2c = 1;
LAB_0000b394:
        pcVar4 = "0123456789abcdef";
      }
      lVar11 = CONCAT44(iVar5,iVar3);
      local_54 = 0;
      local_28 = &local_2c;
      while( true ) {
        if (lVar11 == 0) break;
        lVar11 = FUN_000001d8((int)lVar11,(int)((ulonglong)lVar11 >> 0x20),local_58,local_54);
        local_28 = (int *)((int)local_28 + -1);
        *(char *)local_28 = pcVar4[extraout_r2];
      }
      local_5c = (int *)((int)&local_2c - (int)local_28);
      if (-1 < (int)(uVar7 << 0x1d)) {
        local_60 = 1;
      }
      if ((int)local_5c < local_60) {
        local_60 = local_60 - (int)local_5c;
      }
      else {
        local_60 = 0;
      }
      for (iVar3 = 0; iVar3 < local_2c; iVar3 = iVar3 + 1) {
        (*local_18)(local_50[iVar3],local_1c);
        iVar8 = iVar8 + 1;
      }
      while (0 < local_60) {
        (*local_18)(0x30,local_1c);
        iVar8 = iVar8 + 1;
        local_60 = local_60 + -1;
      }
      while (0 < (int)local_5c) {
        iVar3 = *local_28;
        local_28 = (int *)((int)local_28 + 1);
        (*local_18)((char)iVar3,local_1c);
        iVar8 = iVar8 + 1;
        local_5c = (int *)((int)local_5c + -1);
      }
    }
    else {
LAB_0000b256:
      (*local_18)(bVar1,local_1c);
      iVar8 = iVar8 + 1;
    }
LAB_0000b434:
    param_1 = param_1 + 1;
  } while( true );
}

