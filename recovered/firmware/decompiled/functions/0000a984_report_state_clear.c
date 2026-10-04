/* Address: 0x0000a984; body bytes: 114 */

/* Clears transport report buffers and key state. */

void report_state_clear(void)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = 0;
  do {
    (&DAT_20000e0c)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 9);
  uVar1 = 0;
  do {
    (&DAT_20000e15)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 0xf);
  DAT_20000367 = 0;
  uVar1 = 0;
  do {
    uVar2 = 0;
    do {
      (&DAT_20002264)[uVar2 + uVar1 * 0xf] = 0;
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < 0xf);
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 0xfa);
  DAT_20000369 = 0;
  DAT_2000036a = 0;
  DAT_2000036b = 0;
  DAT_20000348 = 0;
  DAT_2000036e = 0;
  DAT_20000c6c = 0;
  uVar1 = 0;
  do {
    (&DAT_20000384)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 4);
  uVar1 = 0;
  do {
    (&DAT_20000388)[uVar1] = 0;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 5);
  return;
}

