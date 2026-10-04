/* Address: 0x00007238; body bytes: 168 */

/* Streams 66 little-endian 32-bit counters, then 0xe6 terminator. */

void host_send_press_counters(void)

{
  uint uVar1;
  
  uVar1 = 0;
  do {
    (&DAT_2000047c)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xffff;
  } while (uVar1 < 0x40);
  DAT_2000047c = 0;
  DAT_2000047d = 0xe3;
  DAT_2000047e = 0x3c;
  FUN_00004024(&DAT_2000047f,&key_press_counters,0xf);
  usb_send_host_payload(&DAT_2000047c,0x40);
  FUN_00004024(&DAT_2000047f,&DAT_20000d20,0xf);
  usb_send_host_payload(&DAT_2000047c,0x40);
  FUN_00004024(&DAT_2000047f,&DAT_20000d5c,0xf);
  usb_send_host_payload(&DAT_2000047c,0x40);
  FUN_00004024(&DAT_2000047f,&DAT_20000d98,0xf);
  usb_send_host_payload(&DAT_2000047c,0x40);
  uVar1 = 3;
  do {
    (&DAT_2000047c)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xffff;
  } while (uVar1 < 0x40);
  DAT_2000047e = 0x18;
  FUN_00004024(&DAT_2000047f,&DAT_20000dd4,6);
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

