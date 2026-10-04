/* Address: 0x00002ddc; body bytes: 320 */

void FUN_00002ddc(void)

{
  char cVar1;
  undefined1 uVar4;
  int iVar5;
  uint in_r3;
  uint local_18;
  char cVar2;
  byte bVar3;
  
  local_18 = in_r3 & 0xffffff00;
  watchdog_feed();
  iVar5 = FUN_00002f2c(&local_18,1);
  if (iVar5 != 0) {
    cVar1 = DAT_200003b3;
    cVar2 = DAT_200003b5;
    bVar3 = DAT_200003b4;
    if ((char)local_18 != '\0') {
      cVar1 = DAT_200003b5;
      cVar2 = DAT_200003b7;
      bVar3 = DAT_200003b6;
    }
    if (cVar2 == '\x06') {
      DAT_20000ccb = 1;
    }
    else if (cVar2 == '\x05') {
      if (DAT_20000cd8 == '\0') {
        FUN_00006438(cVar1);
        if (DAT_20000c63 == '\0') {
          DAT_20000340 = 10;
        }
      }
      else {
        DAT_20000cd8 = '\0';
        DAT_20000cd4 = DAT_20000cd5;
        scan_enabled = 0;
        FUN_0000308c();
        delay_ms(200);
        FUN_0000308c(0);
        delay_ms(200);
        FUN_0000308c(0);
        delay_ms(200);
        FUN_0000308c(0);
        scan_enabled = 1;
        DAT_20000cd4 = bVar3;
      }
    }
    else {
      DAT_20000ccb = 0;
      DAT_20000cd8 = '\0';
      if (cVar2 == '\x04') {
        FUN_00006438(cVar1);
      }
      else {
        FUN_00006438(0);
      }
      if (DAT_20000cd4 != bVar3) {
        if (bVar3 == 1) {
          DAT_20000c66 = DAT_20000c67;
        }
        else {
          uVar4 = DAT_20000c68;
          if ((((bVar3 == 2) || (uVar4 = DAT_20000c69, bVar3 == 3)) ||
              (uVar4 = DAT_20000c6a, bVar3 == 4)) || (uVar4 = DAT_20000c6b, bVar3 == 5)) {
            DAT_20000c66 = uVar4;
          }
        }
        DAT_20000cd4 = bVar3;
        FUN_0000ae9c();
      }
      if (DAT_20000c63 == '\0') {
        DAT_20000340 = 10;
      }
      if (3 < DAT_20000cd4) {
        DAT_20000cc7 = DAT_20000cc7 & 0xf8;
      }
      DAT_20000cd3 = cVar2;
      FUN_000065b4();
    }
    FUN_00006990(&DAT_200003b3,6);
    DAT_20000cca = 0;
    if ((DAT_20000cd2 != '\0') && (DAT_20000ccc != '\0')) {
      DAT_20000352 = 500;
    }
  }
  return;
}

