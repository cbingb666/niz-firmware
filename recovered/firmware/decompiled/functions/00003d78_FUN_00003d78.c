/* Address: 0x00003d78; body bytes: 148 */

void FUN_00003d78(void)

{
  int iVar1;
  int in_r3;
  int local_18;
  
  if (transport_is_wired != '\0') {
    if (((DAT_20001ad4 == 0x20) || (DAT_20001ad4 == 2)) && ((DAT_20001ad8 & 0xfd) == 4)) {
      DAT_2000037e = DAT_2000037e + 1;
      if (0x32 < DAT_2000037e) {
        scan_enabled = 0;
        DAT_2000037e = 0;
        local_18 = in_r3;
        iVar1 = eeprom_read_u8(9);
        if (iVar1 == 0) {
          local_18 = CONCAT31(local_18._1_3_,1);
        }
        else {
          local_18 = (uint)local_18._1_3_ << 8;
        }
        eeprom_write_page(&local_18,1,9);
        FUN_000048e0((char)local_18 + '\x01');
        DAT_20000366 = '\x01';
        scan_enabled = 1;
      }
    }
    else {
      DAT_2000037e = 0;
      if (((DAT_20000366 != '\0') && (DAT_20001ad4 == 0)) &&
         ((DAT_20001ad8 == 0 && (DAT_20000369 == '\0')))) {
        DataSynchronizationBarrier(0xf);
        SCB_AIRCR = 0x5fa0004;
        DataSynchronizationBarrier(0xf);
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
    }
  }
  return;
}

