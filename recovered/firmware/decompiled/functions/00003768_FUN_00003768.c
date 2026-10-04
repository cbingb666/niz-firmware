/* Address: 0x00003768; body bytes: 70 */

void FUN_00003768(int param_1,uint param_2)

{
  ble_key_event();
  if (((param_2 < 0x6c) || (param_2 - 0xcc < 0x12)) && (DAT_20000c6f != '\0')) {
    if (param_1 == 0) {
      if (param_2 == DAT_20000361) {
        DAT_20000346 = 0;
        DAT_20000322 = 0;
        DAT_20000361 = 0;
        return;
      }
    }
    else {
      DAT_20000361 = (byte)param_2;
      DAT_20000346 = DAT_20000c5a;
      DAT_20000322 = 1;
    }
  }
  return;
}

