/* Address: 0x00008528; body bytes: 182 */

void FUN_00008528(int param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  undefined1 local_58;
  undefined1 local_57;
  undefined1 local_56;
  undefined1 local_55;
  undefined1 auStack_54 [60];
  uint local_18;
  
  FUN_000001c2(&local_58,0x40);
  local_18 = (uint)scan_enabled;
  scan_enabled = 0;
  rgb_active = 0;
  FUN_00006778();
  uVar1 = 0;
  do {
    local_58 = 0;
    local_57 = 0xdc;
    local_56 = (undefined1)(uVar1 + 1);
    local_55 = (undefined1)param_1;
    iVar2 = uVar1 * 6;
    uVar3 = 0;
    do {
      if (param_1 == 0) {
        auStack_54[uVar3] = (&matrix_baseline)[uVar3 + iVar2];
      }
      else if (param_1 == 1) {
        auStack_54[uVar3] = (&matrix_threshold)[uVar3 + iVar2];
      }
      else if (param_1 == 2) {
        auStack_54[uVar3] = (&DAT_20001be2)[uVar3 + iVar2];
      }
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 6);
    usb_send_host_payload(&local_58,0x40);
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 0xb);
  if (param_1 == 0) {
    local_58 = 0;
    local_57 = 0xdf;
    local_56 = (undefined1)((ushort)DAT_20000ca2 >> 8);
    local_55 = (undefined1)DAT_20000ca2;
    usb_send_host_payload(&local_58,0x40);
  }
  rgb_active = DAT_20000cbb;
  scan_enabled = (char)local_18;
  return;
}

