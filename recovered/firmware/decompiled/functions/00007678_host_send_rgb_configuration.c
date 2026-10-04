/* Address: 0x00007678; body bytes: 138 */

/* Streams the 198-byte RGB configuration, then 0xe6 terminator. */

void host_send_rgb_configuration(void)

{
  uint uVar1;
  
  DAT_2000047c = 0;
  DAT_2000047d = 0xe0;
  DAT_2000047e = 0x3d;
  eeprom_read_block(&DAT_2000047f,0x3d,0x35);
  usb_send_host_payload(&DAT_2000047c,0x40);
  eeprom_read_block(&DAT_2000047f,0x3d,0x72);
  usb_send_host_payload(&DAT_2000047c,0x40);
  eeprom_read_block(&DAT_2000047f,0x3d,0xaf);
  usb_send_host_payload(&DAT_2000047c,0x40);
  uVar1 = 3;
  do {
    (&DAT_2000047c)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xffff;
  } while (uVar1 < 0x40);
  DAT_2000047e = 0xf;
  eeprom_read_block(&DAT_2000047f,0xf,0xec);
  usb_send_host_payload(&DAT_2000047c,0x40);
  uVar1 = 0;
  do {
    (&DAT_2000047c)[uVar1] = 0xe6;
    uVar1 = uVar1 + 1 & 0xffff;
  } while (uVar1 < 0x40);
  usb_send_host_payload(&DAT_2000047c,0x40);
  application_state = 0;
  scan_enabled = 1;
  return;
}

