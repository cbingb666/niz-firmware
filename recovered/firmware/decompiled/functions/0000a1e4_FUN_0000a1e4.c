/* Address: 0x0000a1e4; body bytes: 50 */

void FUN_0000a1e4(void)

{
  if (DAT_20000361 != '\0') {
    usb_key_event(0);
    FUN_0000a1b4();
    usb_key_event(1,DAT_20000361);
    FUN_0000a1b4();
    watchdog_feed();
    return;
  }
  DAT_20000346 = 0;
  DAT_20000322 = 0;
  return;
}

