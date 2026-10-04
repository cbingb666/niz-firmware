/* Address: 0x00005c58; body bytes: 38 */

void FUN_00005c58(void)

{
  undefined4 uVar1;
  
  if (DAT_20000c55 == '\0') {
    uVar1 = 0x14;
  }
  else {
    if (DAT_20000c55 != '\x02') {
      if (DAT_20000c55 == '\x01') {
        FUN_00009648(0x18);
      }
      return;
    }
    uVar1 = 0x1c;
  }
  FUN_00009648(uVar1);
  return;
}

