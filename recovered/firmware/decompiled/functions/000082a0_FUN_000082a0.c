/* Address: 0x000082a0; body bytes: 72 */

void FUN_000082a0(void)

{
  if (transport_is_wired == '\0') {
    ble_key_event(1,0x57);
    FUN_00002d2c();
  }
  else if (wired_protocol == '\x01') {
    usb_key_event(1,0x57);
    FUN_0000a1b4();
  }
  else if (wired_protocol == '\x02') {
    ps2_key_event(0x57,1);
  }
  DAT_20000373 = 0x57;
  DAT_20000316 = 0;
  return;
}

