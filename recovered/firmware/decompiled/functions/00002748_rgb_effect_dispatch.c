/* Address: 0x00002748; body bytes: 122 */

/* Selector 0..14; ARMCC inline jump table manually resolved. */

void rgb_effect_dispatch(void)

{
  undefined4 uVar1;
  
  if (rgb_active == '\0') {
    return;
  }
  FUN_00002988();
  if (DAT_20000c72 < 0xf) {
                    /* WARNING: Switch is manually overridden */
    switch(DAT_20000c72) {
    case 0:
      return;
    case 1:
      if (DAT_20000cbe != '\0') {
        return;
      }
      FUN_00000894();
      return;
    case 2:
      FUN_000018a8();
      return;
    case 3:
      uVar1 = 1;
      break;
    case 4:
      uVar1 = 0;
      break;
    case 5:
      FUN_00001158();
      return;
    case 6:
      FUN_00000fe0();
      return;
    case 7:
      FUN_00000c6c();
      return;
    case 8:
      FUN_00000d4c();
      return;
    case 9:
      FUN_00002564();
      return;
    case 10:
      FUN_000023a0();
      return;
    case 0xb:
      FUN_00002248();
      return;
    case 0xc:
      FUN_00002520();
      return;
    case 0xd:
      FUN_00000b34();
      return;
    case 0xe:
      FUN_00000e2c();
      return;
    }
    FUN_00001728(uVar1);
    return;
  }
  return;
}

