/* Address: 0x0000629c; body bytes: 82 */

void FUN_0000629c(void)

{
  uint uVar1;
  
  DAT_20000367 = 0;
  uVar1 = 0;
  do {
    (&DAT_20000e0c)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 9);
  DAT_20000e0c = 1;
  DAT_20000363 = 1;
  uVar1 = 0;
  do {
    (&DAT_20000e15)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 0xf);
  DAT_20000e15 = 3;
  DAT_20000364 = 1;
  if (transport_is_wired != '\0') {
    if (wired_protocol == '\x01') {
      FUN_0000a1b4();
    }
    return;
  }
  DAT_20000e0c = 0xf0;
  DAT_20000e15 = 0xf7;
  FUN_00002d2c();
  return;
}

