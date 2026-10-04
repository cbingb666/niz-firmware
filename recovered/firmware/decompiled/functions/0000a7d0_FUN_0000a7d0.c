/* Address: 0x0000a7d0; body bytes: 70 */

void FUN_0000a7d0(int param_1,uint param_2)

{
  usb_key_event();
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

