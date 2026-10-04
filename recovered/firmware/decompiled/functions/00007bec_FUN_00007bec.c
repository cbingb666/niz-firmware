/* Address: 0x00007bec; body bytes: 444 */

/* WARNING: Restarted to delay deadcode elimination for space: ram */

void FUN_00007bec(int param_1)

{
  char cVar1;
  byte bVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  byte bVar6;
  undefined1 uVar7;
  uint uVar8;
  int iVar9;
  byte bVar10;
  char cVar11;
  uint uVar12;
  uint local_28;
  
  bVar6 = DAT_20000409;
  if (DAT_20000409 != 0) {
    uVar8 = 0;
    do {
      uVar3 = 0;
      do {
        (&DAT_20003b14)[uVar3 + uVar8 * 0xf] = 0;
        uVar3 = uVar3 + 1 & 0xff;
      } while (uVar3 < 0xf);
      uVar8 = uVar8 + 1 & 0xff;
    } while (uVar8 < 5);
    local_28 = 0;
    if (bVar6 != 0) {
      do {
        iVar9 = local_28 * 3;
        bVar6 = (&DAT_20003b61)[iVar9];
        bVar10 = 0;
        if (bVar6 != 0) {
          do {
            if (param_1 == 0) {
              uVar5 = (uint)(byte)(&DAT_20003b5f)[iVar9];
              uVar8 = (uint)(byte)(&DAT_20003b60)[iVar9];
              uVar3 = (uint)(byte)(bVar6 - bVar10);
              bVar2 = 4 - bVar10;
              iVar4 = 0;
              if (uVar3 <= uVar5) {
                uVar12 = uVar5 - uVar3 & 0xff;
                if ((byte)(&DAT_20003b14)[uVar12 + uVar8 * 0xf] < bVar2) {
                  (&DAT_20003b14)[uVar12 + uVar8 * 0xf] = bVar2;
                }
                iVar4 = 1;
              }
              if (uVar5 + uVar3 < 0xf) {
                uVar3 = uVar5 + uVar3 & 0xff;
                if ((byte)(&DAT_20003b14)[uVar3 + uVar8 * 0xf] < bVar2) {
                  (&DAT_20003b14)[uVar3 + uVar8 * 0xf] = bVar2;
                }
                iVar4 = 1;
              }
            }
            else {
              iVar4 = FUN_00007dc4((&DAT_20003b5f)[iVar9],(&DAT_20003b60)[iVar9],bVar6 - bVar10,
                                   '\x04' - bVar10);
            }
            do {
              bVar10 = bVar10 + 1;
              if (bVar6 <= bVar10) {
                if (iVar4 == 0) goto LAB_00007ccc;
                (&DAT_20003b61)[iVar9] = (&DAT_20003b61)[iVar9] + '\x01';
                local_28 = local_28 + 1 & 0xff;
                goto LAB_00007d14;
              }
            } while (4 < bVar10);
          } while( true );
        }
LAB_00007ccc:
        iVar9 = DAT_20000409 - 1;
        for (uVar8 = local_28; (int)uVar8 < iVar9; uVar8 = uVar8 + 1 & 0xff) {
          iVar4 = uVar8 * 3;
          (&DAT_20003b5f)[iVar4] = (&DAT_20003b62)[iVar4];
          (&DAT_20003b60)[iVar4] = (&DAT_20003b63)[iVar4];
          (&DAT_20003b61)[iVar4] = (&DAT_20003b64)[iVar4];
        }
        iVar4 = (uint)DAT_20000409 * 3;
        (&DAT_20003b5c)[iVar4] = 0;
        (&DAT_20003b5d)[iVar4] = 0;
        (&DAT_20003b5e)[iVar4] = 0;
        DAT_20000409 = (byte)iVar9;
LAB_00007d14:
      } while (local_28 < DAT_20000409);
    }
    uVar8 = 0;
    cVar11 = DAT_200003c3;
    do {
      if (DAT_200003c3 == '\n') {
        DAT_200003c6 = DAT_200003c6 + '\x01';
      }
      iVar9 = uVar8 * 0xf;
      uVar3 = 0;
      do {
        cVar1 = DAT_200003c6;
        uVar5 = (uint)(byte)(&DAT_20003b14)[uVar3 + iVar9];
        if (4 < uVar5) {
          uVar5 = 4;
        }
        if ((DAT_200003c3 == '\n') &&
           (bVar6 = DAT_200003c6 + 1, DAT_200003c6 = DAT_200003c6 + '\x01', cVar11 = cVar1,
           6 < bVar6)) {
          DAT_200003c6 = '\0';
        }
        if (uVar5 == 0) {
          uVar7 = DAT_200003c2;
          if (DAT_200003c7 != '\0') {
            uVar7 = 0xb;
          }
          FUN_000008ec((&DAT_0000c7ac)[uVar3 + iVar9],uVar7);
        }
        else {
          FUN_0000099c((&DAT_0000c7ac)[uVar3 + iVar9],cVar11,(&DAT_0000c666)[uVar5]);
        }
        uVar3 = uVar3 + 1 & 0xff;
      } while (uVar3 < 0xf);
      if (DAT_200003c3 == '\n') {
        DAT_200003c6 = DAT_200003c6 + '\x01';
      }
      uVar8 = uVar8 + 1 & 0xff;
    } while (uVar8 < 5);
  }
  return;
}

