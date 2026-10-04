/* Address: 0x00003d1c; body bytes: 76 */

void FUN_00003d1c(void)

{
  uint uVar1;
  uint uVar2;
  
  if ((DAT_20001ad4 == 0x22) && (DAT_20001ad6 == 0x10)) {
    DAT_2000037c = DAT_2000037c + 1;
    if (0x32 < DAT_2000037c) {
      scan_enabled = 0;
      DAT_2000037c = 0;
      uVar1 = 0;
      do {
        uVar2 = uVar1 + 1 & 0xff;
        (&key_press_counters)[uVar1] = 0;
        uVar1 = uVar2;
      } while (uVar2 < 0x42);
      FUN_00008270(&key_press_counters);
      FUN_000048e0(1);
      scan_enabled = 1;
      return;
    }
  }
  else {
    DAT_2000037c = 0;
  }
  return;
}

