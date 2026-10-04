/* Address: 0x000040bc; body bytes: 118 */

void FUN_000040bc(void)

{
  undefined1 uVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  undefined1 local_98;
  undefined1 local_97;
  undefined1 local_96;
  byte local_58 [68];
  
  FUN_000001c2(&local_98,0x40);
  uVar1 = scan_enabled;
  scan_enabled = 0;
  FUN_00007554(local_58);
  uVar2 = ec_measure_idle_level();
  FUN_0000b000(local_58,uVar2);
  local_98 = 0;
  local_97 = 0xda;
  local_96 = 0xda;
  usb_send_host_payload(&local_98,0x40);
  uVar5 = 0;
  do {
    iVar4 = uVar5 * 6;
    uVar3 = 0;
    do {
      if (local_58[uVar3 + iVar4] < 0x80) {
        (&matrix_baseline)[uVar3 + iVar4] = local_58[uVar3 + iVar4];
      }
      else {
        (&matrix_baseline)[uVar3 + iVar4] = 0x10;
      }
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 6);
    uVar5 = uVar5 + 1 & 0xff;
  } while (uVar5 < 0xb);
  ec_select_row(scan_row);
  scan_enabled = uVar1;
  return;
}

