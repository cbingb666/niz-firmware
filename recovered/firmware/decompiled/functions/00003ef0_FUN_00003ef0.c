/* Address: 0x00003ef0; body bytes: 204 */

void FUN_00003ef0(void)

{
  byte bVar1;
  
  if ((((matrix_pressed_bits == 1) && (DAT_20001ad4 == 1)) && (DAT_20001ad6 == 0x20)) &&
     ((DAT_20001ad8 & 0xfd) == 4)) {
    DAT_20000378 = DAT_20000378 + 1;
    if (0x32 < DAT_20000378) {
      if (DAT_20000365 != '\0') goto LAB_00003f5a;
      scan_enabled = 0;
      DAT_20000378 = 0;
      configuration_factory_reset();
      DAT_20000365 = '\x01';
      DAT_20000cc7 = DAT_20000cc7 & 0x9f;
      rgb_active = 0;
      FUN_00006778();
      scan_enabled = 1;
    }
    if (DAT_20000365 == '\0') {
      return;
    }
  }
  else {
    if (DAT_20000365 == '\0') {
      DAT_20000378 = 0;
      return;
    }
    if (((matrix_pressed_bits == 0) && (DAT_20001ad4 == 0)) &&
       ((DAT_20001ad6 == 0 && ((DAT_20001ad8 == 0 && (DAT_20000369 == '\0')))))) {
      DataSynchronizationBarrier(0xf);
      SCB_AIRCR = 0x5fa0004;
      DataSynchronizationBarrier(0xf);
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
  }
LAB_00003f5a:
  if ((ushort)(DAT_20000378 + 1) < 3) {
    DAT_20000378 = DAT_20000378 + 1;
    return;
  }
  DAT_20000378 = 0;
  if ((int)((uint)DAT_20000cc7 << 0x19) < 0) {
    bVar1 = DAT_20000cc7 & 0xbf;
  }
  else {
    bVar1 = DAT_20000cc7 | 0x40;
  }
  if ((int)((uint)bVar1 << 0x1a) < 0) {
    DAT_20000cc7 = bVar1 & 0xdf;
  }
  else {
    DAT_20000cc7 = bVar1 | 0x20;
  }
  return;
}

