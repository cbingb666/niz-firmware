/* Address: 0x0000a82c; body bytes: 310 */

/* Services the queued USB reports. */

void usb_report_queue_service(void)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 in_r3;
  
  if (DAT_20000305 == '\0') {
    if (DAT_20000348 == 0) {
      DAT_20000348 = 0x28;
      FUN_0000aa8c(&DAT_20000399);
      DAT_2000036c = DAT_2000036c + 1;
      if (5 < DAT_2000036c) {
        DAT_2000036c = 0;
        DAT_20000305 = '\x01';
      }
    }
  }
  else if ((DAT_20000369 != '\0') &&
          (uVar3 = (uint)DAT_2000036b, (&DAT_20002264)[uVar3 * 0xf] == '\x01')) {
    uVar4 = 0;
    do {
      (&DAT_20000399)[uVar4] = (&DAT_20002265)[uVar3 * 0xf + uVar4];
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 8);
    DAT_20000348 = 0x28;
    FUN_0000aa8c(&DAT_20000399);
    DAT_20000369 = DAT_20000369 + -1;
    DAT_2000036b = DAT_2000036b + 1;
    if (0xf9 < DAT_2000036b) {
      DAT_2000036b = 0;
    }
  }
  if (DAT_20000306 != '\0') {
    if (DAT_20000369 != '\0') {
      iVar2 = (uint)DAT_2000036b * 0xf;
      if ((&DAT_20002264)[iVar2] == '\x03') {
        uVar3 = 0;
        do {
          uVar1 = (&DAT_20002264)[uVar3 + iVar2];
          (&DAT_20000e24)[uVar3] = uVar1;
          uVar3 = uVar3 + 1 & 0xff;
        } while (uVar3 < 0xf);
        DAT_2000034a = 0x28;
        FUN_0000aa18(&DAT_20000e24,0xf,&DAT_2000034a,uVar1,in_r3);
      }
      else {
        if ((&DAT_20002264)[iVar2] != '\x04') {
          return;
        }
        uVar3 = 0;
        do {
          uVar1 = (&DAT_20002264)[uVar3 + iVar2];
          (&DAT_20000e24)[uVar3] = uVar1;
          uVar3 = uVar3 + 1 & 0xff;
        } while (uVar3 < 5);
        DAT_2000034a = 0x28;
        FUN_0000aa18(&DAT_20000e24,5,&DAT_2000034a,uVar1,in_r3);
      }
      DAT_2000036b = DAT_2000036b + 1;
      DAT_20000369 = DAT_20000369 + -1;
      if (0xf9 < DAT_2000036b) {
        DAT_2000036b = 0;
        return;
      }
    }
    return;
  }
  if (DAT_2000034a != 0) {
    return;
  }
  if (DAT_20000e24 == '\x04') {
    uVar5 = 5;
  }
  else {
    if (DAT_20000e24 != '\x03') goto LAB_0000a94c;
    uVar5 = 0xf;
  }
  DAT_2000034a = 0x28;
  FUN_0000aa18(&DAT_20000e24,uVar5);
LAB_0000a94c:
  if ((byte)(DAT_2000036d + 1) < 6) {
    DAT_2000036d = DAT_2000036d + 1;
    return;
  }
  DAT_2000036d = 0;
  DAT_20000306 = 1;
  return;
}

