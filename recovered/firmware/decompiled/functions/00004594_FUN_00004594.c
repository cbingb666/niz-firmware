/* Address: 0x00004594; body bytes: 72 */

void FUN_00004594(void)

{
  if (DAT_20000c5f == '\0') {
    return;
  }
  if (DAT_20001ad6 == 0x10) {
    return;
  }
  scan_enabled = 0;
  if (DAT_20000c5f == '\x02') {
    if (DAT_20000c7c != '\x01') {
      DAT_20000c7c = '\x01';
      goto LAB_000045ca;
    }
  }
  else {
    if (DAT_20000c5f != '\x01') goto LAB_000045ca;
    if (DAT_20000c7c != '\x02') {
      DAT_20000c7c = '\x02';
      goto LAB_000045ca;
    }
  }
  DAT_20000c7c = '\0';
LAB_000045ca:
  FUN_000048e0(DAT_20000c7c + '\x01');
  scan_enabled = 1;
  return;
}

