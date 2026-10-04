/* Address: 0x00000894; body bytes: 80 */

void FUN_00000894(void)

{
  DAT_200003c9 = DAT_200003c9 + 1;
  if (DAT_20000410 < DAT_200003c9) {
    DAT_200003c9 = 0;
    if (DAT_200003c8 == '\0') {
      DAT_200003ca = DAT_200003ca + 1;
      FUN_00000660();
      if (100 < DAT_200003ca) {
        DAT_200003c8 = 1;
        return;
      }
    }
    else if (DAT_200003c8 == '\x01') {
      DAT_200003ca = DAT_200003ca - 1;
      FUN_00000660();
      if (DAT_200003ca == 0) {
        DAT_200003c8 = '\0';
      }
    }
  }
  return;
}

