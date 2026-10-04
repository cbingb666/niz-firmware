/* Address: 0x000023a0; body bytes: 352 */

void FUN_000023a0(void)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  char cVar4;
  byte bVar5;
  
  if (DAT_200003c5 == '\0') {
    DAT_200003ea = DAT_200003ea + 1;
    if (DAT_2000040a < DAT_200003ea) {
      DAT_200003ea = 0;
      bVar5 = 0;
      if (DAT_2000040b != 0) {
        do {
          FUN_000008ec((&DAT_0000ca30)[DAT_200003eb]);
          bVar1 = (&DAT_0000ca30)[DAT_200003eb];
          (&DAT_20003c5b)[bVar1] = 1;
          uVar3 = DAT_200003eb + 1;
          (&DAT_20003c19)[bVar1] = 0;
          DAT_200003eb = (byte)uVar3;
          if (0x41 < (uVar3 & 0xff)) {
            DAT_200003eb = 0;
          }
          DAT_2000040a = DAT_2000040a + 2;
          if (0x14 < DAT_2000040a) {
            DAT_2000040a = 10;
          }
          bVar5 = bVar5 + 1;
        } while (bVar5 < DAT_2000040b);
      }
    }
    DAT_2000040b = DAT_2000040b + 1;
    if (7 < DAT_2000040b) {
      DAT_2000040b = 3;
    }
    uVar3 = 0;
    do {
      if ((&DAT_20003c5b)[uVar3] == '\x01') {
        cVar4 = (&DAT_20003c19)[uVar3] + DAT_2000040c;
        (&DAT_20003c19)[uVar3] = cVar4;
        if (DAT_200003c3 == '\n') {
          if ((uVar3 < 0x42) && ((DAT_20000c5e != '\0' || (uVar3 != 0)))) {
            iVar2 = uVar3 * 3;
            if ((&DAT_20003880)[iVar2] != '\0') {
              (&DAT_20003880)[iVar2] = cVar4;
            }
            if ((&DAT_20003881)[iVar2] != '\0') {
              (&DAT_20003881)[iVar2] = cVar4;
            }
            if ((&DAT_20003882)[iVar2] != '\0') {
              (&DAT_20003882)[iVar2] = cVar4;
            }
          }
        }
        else {
          FUN_0000099c(uVar3);
        }
        if (0xff - DAT_2000040c < (uint)(byte)(&DAT_20003c19)[uVar3]) {
          (&DAT_20003c5b)[uVar3] = 2;
        }
      }
      else if ((&DAT_20003c5b)[uVar3] == '\x02') {
        if (DAT_2000040c < (byte)(&DAT_20003c19)[uVar3]) {
          cVar4 = (&DAT_20003c19)[uVar3] - DAT_2000040c;
          (&DAT_20003c19)[uVar3] = cVar4;
          if (DAT_200003c3 == '\n') {
            if ((uVar3 < 0x42) && ((DAT_20000c5e != '\0' || (uVar3 != 0)))) {
              iVar2 = uVar3 * 3;
              if ((&DAT_20003880)[iVar2] != '\0') {
                (&DAT_20003880)[iVar2] = cVar4;
              }
              if ((&DAT_20003881)[iVar2] != '\0') {
                (&DAT_20003881)[iVar2] = cVar4;
              }
              if ((&DAT_20003882)[iVar2] != '\0') {
                (&DAT_20003882)[iVar2] = cVar4;
              }
            }
          }
          else {
            FUN_0000099c(uVar3);
          }
        }
        else {
          (&DAT_20003c19)[uVar3] = 0;
          FUN_0000099c(uVar3,DAT_200003c2,0xff);
          (&DAT_20003c5b)[uVar3] = 0;
        }
      }
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 0x42);
    return;
  }
  return;
}

