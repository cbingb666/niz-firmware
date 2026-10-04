/* Address: 0x00007b88; body bytes: 90 */

void FUN_00007b88(void)

{
  if (DAT_200003cb == '\0') {
    DAT_2000041a = DAT_2000041a + 0x10;
    if (0xef < DAT_2000041a) {
      DAT_200003cb = '\x01';
    }
  }
  else if (DAT_200003cb == '\x01') {
    DAT_2000041c = DAT_2000041c - 0x10;
    if (DAT_2000041c < 0x10) {
      DAT_200003cb = '\x02';
    }
  }
  else if (DAT_200003cb == '\x02') {
    DAT_2000041c = DAT_2000041c + 0x10;
    if (0xef < DAT_2000041c) {
      DAT_200003cb = '\x03';
    }
  }
  else if ((DAT_200003cb == '\x03') && (DAT_2000041a = DAT_2000041a - 0x10, DAT_2000041a < 0x10)) {
    DAT_200003cb = '\0';
  }
  return;
}

