/* Address: 0x0000a224; body bytes: 42 */

void FUN_0000a224(void)

{
  if ((transport_is_wired != '\0') && (DAT_20000cc7 = DAT_20000cc7 & 0x9f, rgb_active != '\0')) {
    DAT_20000cbb = 1;
    rgb_active = 0;
    FUN_00006778();
    return;
  }
  return;
}

