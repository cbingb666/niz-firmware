/* Address: 0x000082f4; body bytes: 522 */

/* WARNING: Restarted to delay deadcode elimination for space: ram */

void FUN_000082f4(void)

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  
  if (DAT_20000cb2 != 0) {
    return;
  }
  if (((transport_is_wired == '\0') && (DAT_20000cde != '\0')) && (DAT_20000369 != '\0')) {
    DAT_20000cb2 = 1;
    return;
  }
LAB_00008326:
  bVar1 = (&DAT_20001c24)[DAT_20000cb0];
  uVar4 = (uint)bVar1;
  uVar2 = DAT_20000cb0 + 1;
  uVar3 = uVar2 & 0xffff;
  DAT_20000cb0 = (ushort)uVar2;
  if (3 < uVar4 - 0x7e) {
    if (199 < uVar4) {
      if (uVar4 == 200) {
        DAT_20000cb0 = DAT_20000cb0 + 2;
        DAT_20000cb2 = (ushort)(byte)(&DAT_20001c24)[uVar3] * 0x100 +
                       (ushort)(byte)(&DAT_20001c25)[uVar3];
        if (transport_is_wired == '\0') {
          if (DAT_20000cde == '\0') {
            if (DAT_20000cb2 < 0x10) {
              DAT_20000cb2 = 0x10;
            }
          }
          else if (DAT_20000cb2 < 3) {
            DAT_20000cb2 = 3;
          }
        }
      }
      goto LAB_00008440;
    }
    iVar5 = 1;
    uVar3 = (uint)DAT_2000036f;
    uVar2 = 0;
    if (uVar3 != 0) {
      do {
        if ((byte)(&DAT_20000e33)[uVar2] == uVar4) goto joined_r0x000083a6;
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < uVar3);
    }
    goto LAB_000083cc;
  }
  if (uVar4 == 0x7e) {
    DAT_2000038a = -(&DAT_0000c186)[DAT_20000c4c];
  }
  else if (uVar4 == 0x7f) {
    DAT_2000038a = (&DAT_0000c186)[DAT_20000c4c];
  }
  else if (uVar4 == 0x80) {
    DAT_2000038b = -(&DAT_0000c186)[DAT_20000c4c];
  }
  else if (uVar4 == 0x81) {
    DAT_2000038b = (&DAT_0000c186)[DAT_20000c4c];
  }
  FUN_00006a24();
  DAT_2000038a = '\0';
  DAT_2000038b = '\0';
  goto LAB_00008440;
joined_r0x000083a6:
  for (; uVar2 < uVar3; uVar2 = uVar2 + 1 & 0xff) {
    (&DAT_20000e33)[uVar2] = (&DAT_20000e34)[uVar2];
    (&DAT_20000e34)[uVar2] = 0;
  }
  DAT_2000036f = DAT_2000036f - 1;
  iVar5 = 0;
LAB_000083cc:
  if (transport_is_wired == '\0') {
    ble_key_event(iVar5,uVar4);
  }
  else if (wired_protocol == '\x01') {
    usb_key_event(iVar5,uVar4);
  }
  else if (wired_protocol == '\x02') {
    ps2_key_event(uVar4,iVar5);
  }
  if (iVar5 == 1) {
    (&DAT_20000e33)[DAT_2000036f] = bVar1;
    DAT_2000036f = DAT_2000036f + 1;
  }
LAB_00008440:
  if (DAT_20000cb0 < DAT_20000cb6) {
    if (DAT_20000cae == '\0') goto LAB_000084cc;
    if (DAT_20000cb2 != 0) goto LAB_000084e0;
    goto LAB_00008326;
  }
  DAT_20000cb0 = 0;
  if (DAT_2000036f != 0) {
    uVar2 = 0;
    if (DAT_2000036f != 0) {
      do {
        if (transport_is_wired == '\0') {
          ble_key_event(0,(&DAT_20000e33)[uVar2]);
        }
        else if (wired_protocol == '\x01') {
          usb_key_event(0,(&DAT_20000e33)[uVar2]);
        }
        else if (wired_protocol == '\x02') {
          ps2_key_event((&DAT_20000e33)[uVar2],0);
        }
        (&DAT_20000e33)[uVar2] = 0;
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < DAT_2000036f);
    }
    DAT_2000036f = 0;
  }
  if ((DAT_20000cac == '\x02') && (DAT_20000cad = DAT_20000cad + -1, DAT_20000cad == '\0')) {
    DAT_20000cab = '\0';
  }
  else if (DAT_20000cab != '\0') goto LAB_000084c6;
  DAT_20000cb6 = 0;
  DAT_20000caa = 0;
LAB_000084c6:
  if (DAT_20000cae == '\0') {
LAB_000084cc:
    DAT_20000cb2 = DAT_20000cb4;
  }
LAB_000084e0:
  if (transport_is_wired == '\0') {
    FUN_00002d2c();
    return;
  }
  if (wired_protocol != '\x01') {
    return;
  }
  FUN_0000a1b4();
  return;
}

