/* Address: 0x00003fd4; body bytes: 68 */

void FUN_00003fd4(void)

{
  undefined1 uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = scan_enabled;
  scan_enabled = 0;
  rgb_active = 0;
  FUN_00006778();
  uVar3 = 0;
  do {
    uVar2 = 0;
    do {
      (&DAT_20001be2)[uVar2 + uVar3 * 6] = 0xff;
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < 6);
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 0xb);
  FUN_0000b078(&DAT_20001be2);
  FUN_00005c58();
  scan_enabled = uVar1;
  rgb_active = DAT_20000cbb;
  return;
}

