/* Address: 0x0000abe0; body bytes: 188 */

void FUN_0000abe0(void)

{
  dword dVar1;
  uint uVar2;
  int iVar3;
  
  uVar2 = eeprom_read_u8(7);
  DAT_20000c65 = (char)uVar2;
  if (1 < uVar2) {
    DAT_20000c65 = '\0';
  }
  uVar2 = eeprom_read_u8(0x13);
  DAT_20000c53 = (undefined1)uVar2;
  if (2 < uVar2) {
    DAT_20000c53 = 0;
  }
  if (transport_is_wired != '\0') {
    uVar2 = 0;
    DAT_20000429 = '\0';
    PB8_PIN = 0;
    delay_ms(1);
    FUN_000007d8();
    wired_protocol = 1;
    delay_ms(1);
    if (DAT_20000429 == '\0') {
      while( true ) {
        delay_ms(1);
        uVar2 = uVar2 + 1;
        if (2000 < uVar2) break;
        if (DAT_20000429 != '\0') {
          return;
        }
      }
      iVar3 = eeprom_read_u8(9);
      if ((iVar3 != 0) && (DAT_20000c65 == '\0')) {
        PB8_PIN = 1;
        delay_ms(1);
        CLK_EnableModuleClock(&DAT_4000001f);
        dVar1 = SYS_GPF_MFP;
        SYS_GPF_MFP = dVar1 | 0xc;
        FUN_00006c3c();
        FUN_00006b94(6);
        NVIC_ISER = 0x1000000;
        wired_protocol = 2;
        CLK_DisableModuleClock(&DAT_40003c9b);
        NVIC_ICER = 0x800000;
      }
    }
    return;
  }
  PB8_PIN = 0;
  wired_protocol = 1;
  return;
}

