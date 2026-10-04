/* Address: 0x00006a24; body bytes: 42 */

void FUN_00006a24(void)

{
  if (transport_is_wired != '\0') {
    if (wired_protocol == '\x01') {
      DAT_20000388 = 4;
      FUN_0000aafc(&DAT_20000388);
    }
    return;
  }
  DAT_20000388 = 0xf3;
  FUN_000037c4(&DAT_20000388);
  return;
}

