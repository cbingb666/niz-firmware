/* Address: 0x00004140; body bytes: 192 */

void FUN_00004140(void)

{
  int iVar1;
  char cVar2;
  uint uVar3;
  byte bVar4;
  int iVar5;
  uint uVar6;
  undefined1 local_a8;
  undefined1 local_a7;
  undefined1 local_a6;
  uint local_68;
  undefined1 *local_64;
  uint local_60;
  byte abStack_5c [72];
  
  FUN_000001c2(&local_a8,0x40);
  local_60 = (uint)scan_enabled;
  scan_enabled = 0;
  FUN_00007554(abStack_5c);
  local_68 = 0;
  do {
    uVar6 = 0;
    iVar5 = local_68 * 6;
    uVar3 = 0;
    iVar1 = iVar5 + -0x5c;
    do {
      if ((byte)(&matrix_baseline)[uVar3 + iVar5] < abStack_5c[uVar3 + iVar1 + 0x5c]) {
        bVar4 = abStack_5c[uVar3 + iVar1 + 0x5c] - (&matrix_baseline)[uVar3 + iVar5];
        abStack_5c[uVar3 + iVar1 + 0x5c] = bVar4;
      }
      else {
        bVar4 = 0;
        abStack_5c[uVar3 + iVar1 + 0x5c] = 0;
      }
      uVar3 = uVar3 + 1 & 0xff;
      uVar6 = bVar4 + uVar6 & 0xffff;
    } while (uVar3 < 6);
    uVar3 = 0;
    local_64 = &DAT_20001be2 + iVar5;
    do {
      bVar4 = abStack_5c[uVar3 + iVar1 + 0x5c];
      if (10 < bVar4) {
        cVar2 = aeabi_idivmod((uVar6 - bVar4) * 5,100);
        abStack_5c[uVar3 + iVar1 + 0x5c] = cVar2 + bVar4;
      }
      if (0xf < abStack_5c[uVar3 + iVar1 + 0x5c]) {
        local_64[uVar3] = abStack_5c[uVar3 + iVar1 + 0x5c];
      }
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 6);
    local_68 = local_68 + 1 & 0xff;
  } while (local_68 < 0xb);
  FUN_0000b078(&DAT_20001be2);
  FUN_00005c58();
  local_a8 = 0;
  local_a7 = 0xde;
  local_a6 = 0xde;
  usb_send_host_payload(&local_a8,0x40);
  ec_select_row(scan_row);
  scan_enabled = (char)local_60;
  return;
}

