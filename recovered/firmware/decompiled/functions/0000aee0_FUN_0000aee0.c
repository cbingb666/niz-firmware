/* Address: 0x0000aee0; body bytes: 196 */

void FUN_0000aee0(void)

{
  undefined1 *puVar1;
  undefined4 uVar2;
  
  if (wired_protocol == '\x02') {
    return;
  }
  scan_enabled = 0;
  DAT_20000c5f = 0;
  if (transport_is_wired != '\0') {
    DAT_20000c65 = DAT_20000c65 == '\0';
    eeprom_write_page(&DAT_20000c65,1,7);
    FUN_000048e0(DAT_20000c65 + '\x01');
    DataSynchronizationBarrier(0xf);
    SCB_AIRCR = 0x5fa0004;
    DataSynchronizationBarrier(0xf);
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  DAT_20000c66 = DAT_20000c66 == '\0';
  if (DAT_20000cd4 == '\x01') {
    DAT_20000c67 = DAT_20000c66;
    eeprom_write_page(&DAT_20000c67,1,0x30);
  }
  else {
    if (DAT_20000cd4 == '\x02') {
      uVar2 = 0x31;
      puVar1 = &DAT_20000c68;
      DAT_20000c68 = DAT_20000c66;
    }
    else if (DAT_20000cd4 == '\x03') {
      uVar2 = 0x32;
      puVar1 = &DAT_20000c69;
      DAT_20000c69 = DAT_20000c66;
    }
    else if (DAT_20000cd4 == '\x04') {
      uVar2 = 0x33;
      puVar1 = &DAT_20000c6a;
      DAT_20000c6a = DAT_20000c66;
    }
    else {
      if (DAT_20000cd4 != '\x05') goto LAB_0000af7a;
      uVar2 = 0x34;
      puVar1 = &DAT_20000c6b;
      DAT_20000c6b = DAT_20000c66;
    }
    eeprom_write_page(puVar1,1,uVar2);
  }
LAB_0000af7a:
  FUN_0000ae9c();
  FUN_000048e0(DAT_20000c66 + '\x01');
  scan_enabled = 1;
  return;
}

