/* Address: 0x00006bcc; body bytes: 50 */

/* Encodes key events for the PS/2 peripheral. */

void ps2_key_event(uint param_1,int param_2)

{
  FUN_00006c10();
  if (param_2 == 0) {
    if (param_1 == DAT_20000361) {
      DAT_20000346 = 0;
      DAT_20000322 = 0;
      DAT_20000361 = 0;
      return;
    }
  }
  else {
    DAT_20000361 = (byte)param_1;
    DAT_20000346 = DAT_20000c5a;
    DAT_20000322 = 1;
  }
  return;
}

