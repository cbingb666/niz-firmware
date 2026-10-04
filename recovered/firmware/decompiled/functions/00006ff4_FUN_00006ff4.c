/* Address: 0x00006ff4; body bytes: 44 */

void FUN_00006ff4(int param_1)

{
  if (param_1 != 1) {
    DAT_20000328 = 1;
    DAT_20000327 = 0;
    DAT_20000326 = 0;
    DAT_2000033e = 0;
    return;
  }
  DAT_20000cc7 = DAT_20000cc7 | 0x10;
  DAT_2000033e = 0x1e;
  DAT_20000328 = 0;
  return;
}

