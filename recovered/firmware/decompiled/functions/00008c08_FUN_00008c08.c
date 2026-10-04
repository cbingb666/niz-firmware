/* Address: 0x00008c08; body bytes: 46 */

void FUN_00008c08(void)

{
  if (DAT_200003cb == '\0') {
    DAT_2000041b = DAT_2000041b + 0x10;
    if (0xef < DAT_2000041b) {
      DAT_200003cb = '\x01';
    }
  }
  else if ((DAT_200003cb == '\x01') && (DAT_2000041b = DAT_2000041b - 0x10, DAT_2000041b < 0x10)) {
    DAT_200003cb = '\0';
  }
  return;
}

