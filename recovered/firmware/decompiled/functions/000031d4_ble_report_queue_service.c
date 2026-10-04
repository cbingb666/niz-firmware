/* Address: 0x000031d4; body bytes: 184 */

/* Sends queued reports to the external wireless module. */

void ble_report_queue_service(void)

{
  char cVar1;
  undefined4 uVar2;
  byte bVar3;
  undefined4 in_r3;
  
  if (DAT_20000cdd == -0x12) {
    DAT_2000036c = DAT_2000036c + 1;
    if (DAT_2000036c < 6) {
      FUN_00005c50();
      DAT_20000348 = 10;
      return;
    }
    DAT_2000036c = '\0';
    DAT_20000cdd = -0x16;
  }
  else if (((DAT_20000369 != '\0') && (DAT_20000cdc == '\0')) &&
          ((DAT_20000cdd == -0x16 || (DAT_20000348 == 0)))) {
    cVar1 = (&DAT_20002264)[(uint)DAT_2000036b * 0xf];
    if (cVar1 == -9) {
      bVar3 = DAT_20000cde;
      if (DAT_20000cde == 0) {
        bVar3 = DAT_2000036e + 1;
        if (bVar3 < 3) {
          DAT_20000348 = 8;
          DAT_2000036e = bVar3;
          return;
        }
        DAT_2000036e = '\0';
      }
      if (DAT_20000cd3 == '\x04') {
        ble_send_frame(&DAT_20002264 + (uint)DAT_2000036b * 0xf,0xf,bVar3,&DAT_20002264,in_r3);
      }
    }
    else {
      if (cVar1 == -0xd) {
        if (DAT_20000cd3 != '\x04') goto LAB_00003266;
        uVar2 = 5;
      }
      else {
        uVar2 = 9;
      }
      ble_send_frame(&DAT_20002264 + (uint)DAT_2000036b * 0xf,uVar2,cVar1,&DAT_20002264,in_r3);
    }
LAB_00003266:
    DAT_20000369 = DAT_20000369 + -1;
    DAT_2000036b = DAT_2000036b + 1;
    if (0xf9 < DAT_2000036b) {
      DAT_2000036b = 0;
    }
    if (DAT_20000cde == 0) {
      DAT_20000348 = 8;
    }
    else {
      DAT_20000348 = 10;
    }
    DAT_2000036c = 0;
    return;
  }
  return;
}

