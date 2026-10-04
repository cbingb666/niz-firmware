/* Address: 0x00006b4c; body bytes: 42 */

void FUN_00006b4c(void)

{
  if (DAT_20000361 != '\0') {
    if ((DAT_20000361 != 'N') && (DAT_20000361 != 'P')) {
      FUN_00006c10(DAT_20000361,1);
    }
    watchdog_feed();
    return;
  }
  DAT_20000346 = 0;
  DAT_20000322 = 0;
  return;
}

