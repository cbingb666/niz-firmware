/* Address: 0x00002520; body bytes: 54 */

void FUN_00002520(void)

{
  if (DAT_200003c5 == '\0') {
    DAT_200003f5 = DAT_200003f5 + 1;
    if (DAT_2000040f < DAT_200003f5) {
      DAT_200003f5 = 0;
      if (DAT_200003f9 == '\0') {
        FUN_000096bc();
        return;
      }
      if (DAT_200003f9 == '\x01') {
        FUN_000097d0();
      }
    }
  }
  return;
}

