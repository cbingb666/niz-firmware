/* Address: 0x000064a8; body bytes: 226 */

void FUN_000064a8(int param_1)

{
  dword dVar1;
  undefined1 uVar2;
  uint uVar3;
  
  if (DAT_20000c63 != '\0') {
    scan_enabled = 0;
    if (param_1 == 0) {
      DAT_20000cbc = rgb_active;
      if (rgb_active == '\0') {
        FUN_000007a8((&DAT_0000bd60)[DAT_20000c54]);
        CLK_EnableModuleClock(0x5ec00003);
        dVar1 = TIMER1_TCSR;
        TIMER1_TCSR = dVar1 | 0x40000000;
        rgb_active = '\x01';
        DAT_20000cbb = 1;
        DAT_20000c72 = 0;
        FUN_00000a68(7);
        FUN_0000068c((&DAT_0000c66b)[DAT_20000c74]);
      }
      DAT_200003ff = 0;
      DAT_20000401 = 0;
      DAT_20000400 = 0;
      DAT_20003880 = 0;
      DAT_20003881 = 0;
      DAT_20003882 = 0;
    }
    else {
      if (DAT_20000cbc == '\0') {
        rgb_active = '\0';
        DAT_20000cbb = 0;
        dVar1 = TIMER1_TCSR;
        TIMER1_TCSR = dVar1 & 0xbfffffff;
        CLK_DisableModuleClock(0x5ec00003);
        FUN_00006778();
        FUN_00002a0c();
        FUN_00000660((&DAT_0000c66b)[DAT_20000c74]);
        uVar3 = eeprom_read_u8(0x16);
        DAT_20000c72 = (undefined1)uVar3;
        if (0xe < uVar3) {
          DAT_20000c72 = 0;
        }
        uVar2 = DAT_200003c2;
        if (DAT_200003c7 != '\0') {
          uVar2 = 0xb;
        }
        FUN_00000a68(uVar2);
        FUN_000007a8(*(undefined2 *)(&DAT_0000bd6c + (uint)DAT_20000c54 * 2));
      }
      if (DAT_200003c7 == '\0') {
        FUN_000008ec(0,DAT_200003c2);
      }
      else {
        FUN_000008ec(0,0xb);
      }
    }
    scan_enabled = 1;
  }
  return;
}

