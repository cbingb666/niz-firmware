/* Address: 0x00005c84; body bytes: 366 */

/* Loads stored calibration and thresholds, initializes matrix and scan buffers. */

void ec_keyboard_init(void)

{
  undefined1 uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  watchdog_feed();
  eeprom_read_block(&DAT_20000f29,0x4a4,0x1c1);
  FUN_0000ad4c();
  scan_record_count = 0;
  uVar4 = 0;
  do {
    uVar2 = 0;
    do {
      (&scan_records)[uVar2 + uVar4 * 7] = 0;
      uVar2 = uVar2 + 1 & 0xffff;
    } while (uVar2 < 7);
    uVar4 = uVar4 + 1 & 0xffff;
  } while (uVar4 < 0x100);
  uVar4 = 0;
  do {
    (&matrix_pressed_bits)[uVar4] = 0;
    uVar2 = 0;
    do {
      (&matrix_debounce)[uVar2 + uVar4 * 6] = 0;
      uVar2 = uVar2 + 1 & 0xffff;
    } while (uVar2 < 6);
    uVar4 = uVar4 + 1 & 0xffff;
  } while (uVar4 < 0xb);
  key_event_count = 0;
  scan_row = 0;
  scan_column = 0;
  report_state_clear();
  DAT_20000315 = 0;
  ec_select_row(0);
  PC12_PIN = 1;
  PC11_PIN = 1;
  PC10_PIN = 1;
  PC9_PIN = 1;
  PC8_PIN = 1;
  PA15_PIN = 1;
  watchdog_feed();
  FUN_00007170(&matrix_baseline,&DAT_20000ca2);
  FUN_000071dc(&DAT_20001be2);
  uVar4 = 0;
  do {
    iVar3 = uVar4 * 6;
    uVar2 = 0;
    do {
      if (0x7f < (byte)(&matrix_baseline)[uVar2 + iVar3]) {
        (&matrix_baseline)[uVar2 + iVar3] = 0x10;
      }
      if ((byte)(&DAT_20001be2)[uVar2 + iVar3] < 0x10) {
        (&DAT_20001be2)[uVar2 + iVar3] = 0xff;
      }
      uVar1 = aeabi_uidivmod((uint)(byte)(&matrix_baseline)[uVar2 + iVar3] * 7,10);
      (&DAT_20001b5e)[uVar2 + iVar3] = uVar1;
      uVar2 = uVar2 + 1 & 0xffff;
    } while (uVar2 < 6);
    uVar4 = uVar4 + 1 & 0xffff;
  } while (uVar4 < 0xb);
  if (DAT_20000ca2 < 0x303) {
    uVar4 = ec_measure_idle_level();
    if (uVar4 < 0x313) {
      DAT_20000ca4 = ((short)uVar4 - DAT_20000ca2) + 0x303;
    }
    else {
      DAT_20000ca4 = 0x303;
    }
  }
  else {
    DAT_20000ca2 = 0x303;
    DAT_20000ca4 = 0x303;
  }
  uVar4 = eeprom_read_u8(6);
  DAT_20000c55 = (undefined1)uVar4;
  if (2 < uVar4) {
    DAT_20000c55 = 1;
  }
  FUN_00005c58();
  if (rgb_active == '\0') {
    FUN_000007a8(*(undefined2 *)(&DAT_0000bd6c + (uint)DAT_20000c54 * 2));
    CLK_DisableModuleClock(0x5ec00003);
  }
  if (((transport_is_wired == '\0') && (DAT_20000cd2 == '\0')) && (DAT_20000c63 == '\0')) {
    watchdog_feed();
    FUN_00002a0c();
    clock_set_profile(2);
    FUN_000007a8(10000);
    CLK_DisableModuleClock(0x5ec00003);
  }
  scan_enabled = 1;
  return;
}

