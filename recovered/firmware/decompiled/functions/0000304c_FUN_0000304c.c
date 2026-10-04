/* Address: 0x0000304c; body bytes: 50 */

void FUN_0000304c(void)

{
  if (DAT_20000361 != '\0') {
    ble_key_event(0);
    FUN_00002d2c();
    ble_key_event(1,DAT_20000361);
    FUN_00002d2c();
    watchdog_feed();
    return;
  }
  DAT_20000346 = 0;
  DAT_20000322 = 0;
  return;
}

