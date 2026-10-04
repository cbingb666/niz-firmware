/* Address: 0x00000e2c; body bytes: 416 */

void FUN_00000e2c(void)

{
  char cVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  if (DAT_200003c5 != '\0') {
    return;
  }
  DAT_200003e5 = DAT_200003e5 + 1;
  if (DAT_200003e6 < DAT_200003e5) {
    DAT_200003e5 = 0;
    DAT_200003e9 = DAT_200003e9 + '\x01';
    if (DAT_200003e9 == '\x01') {
      uVar4 = 0;
      do {
        iVar3 = uVar4 * 3;
        (&DAT_20003c0a)[iVar3] = 2;
        iVar5 = uVar4 * 2;
        (&DAT_20003c0b)[iVar3] = (&DAT_0000cb8d)[iVar5];
        uVar4 = uVar4 + 1 & 0xff;
        (&DAT_20003c0c)[iVar3] = (&DAT_0000cb8e)[iVar5];
      } while (uVar4 < 5);
    }
    uVar4 = 0;
    do {
      iVar3 = uVar4 * 3;
      cVar2 = (&DAT_20003c0a)[iVar3];
      if (cVar2 == '\0') {
        FUN_000008ec((&UNK_0000c7a9)[(uint)(byte)(&DAT_20003c0b)[iVar3] + uVar4 * 0xf],7);
      }
      else if (cVar2 == '\x01') {
        iVar5 = uVar4 * 0xf;
        FUN_000008ec((&UNK_0000c7a9)[(uint)(byte)(&DAT_20003c0b)[iVar3] + iVar5],DAT_200003e7);
        FUN_000008ec((&UNK_0000c7a8)[(uint)(byte)(&DAT_20003c0b)[iVar3] + iVar5],7);
        FUN_000008ec((&DAT_0000c7aa)[(uint)(byte)(&DAT_20003c0b)[iVar3] + iVar5],7);
        (&DAT_20003c0a)[iVar3] = 0;
      }
      else if (cVar2 == '\x02') {
        if (2 < (byte)(&DAT_20003c0b)[iVar3]) {
          FUN_000008ec((&UNK_0000c7a9)[(uint)(byte)(&DAT_20003c0b)[iVar3] + uVar4 * 0xf],
                       DAT_200003e7);
        }
        if (3 < (byte)(&DAT_20003c0b)[iVar3]) {
          FUN_000008ec((&UNK_0000c7a8)[(uint)(byte)(&DAT_20003c0b)[iVar3] + uVar4 * 0xf],7);
        }
        if ((int)((byte)(&DAT_20003c0c)[iVar3] - 3) < 0xf) {
          FUN_000008ec((&UNK_0000c7a9)[(uint)(byte)(&DAT_20003c0c)[iVar3] + uVar4 * 0xf],
                       DAT_200003e7);
        }
        if ((int)((byte)(&DAT_20003c0c)[iVar3] - 2) < 0xf) {
          FUN_000008ec((&DAT_0000c7aa)[(uint)(byte)(&DAT_20003c0c)[iVar3] + uVar4 * 0xf],7);
        }
      }
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 5);
    uVar4 = 0;
    do {
      iVar3 = uVar4 * 3;
      if ((&DAT_20003c0a)[iVar3] != '\0') {
        cVar2 = (&DAT_20003c0b)[iVar3];
        (&DAT_20003c0b)[iVar3] = cVar2 + '\x01';
        cVar1 = (&DAT_20003c0c)[iVar3];
        (&DAT_20003c0c)[iVar3] = cVar1 + -1;
        if ((char)(cVar2 + '\x01') == (char)(cVar1 + -1)) {
          (&DAT_20003c0a)[iVar3] = 1;
        }
      }
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 5);
    if ((((DAT_20003c0a == '\0') && (DAT_20003c0d == '\0')) && (DAT_20003c10 == '\0')) &&
       ((DAT_20003c13 == '\0' && (DAT_20003c16 == '\0')))) {
      DAT_200003e9 = '\0';
      DAT_200003e7 = DAT_200003e7 + 1;
      if (6 < DAT_200003e7) {
        DAT_200003e7 = 0;
      }
    }
  }
  return;
}

