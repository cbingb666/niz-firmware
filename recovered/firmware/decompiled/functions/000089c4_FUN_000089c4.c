/* Address: 0x000089c4; body bytes: 296 */

void FUN_000089c4(void)

{
  ushort uVar1;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  byte local_20 [12];
  
  local_20[0] = 0;
  local_20[1] = 0;
  local_20[2] = 0;
  local_20[3] = 0;
  uVar4 = 0;
  local_20[4] = 0;
  local_20[5] = 0;
  local_20[6] = 0;
  local_20[7] = 0;
  do {
    delay_us(7);
    uVar3 = ec_read_column_adc(uVar4);
    if (uVar3 < DAT_20000ca4) {
      bVar2 = (char)DAT_20000ca4 - (char)uVar3;
    }
    else {
      bVar2 = 0;
    }
    local_20[uVar4] = bVar2;
    uVar4 = uVar4 + 1 & 0xff;
  } while (uVar4 < 6);
  uVar4 = (uint)scan_row;
  scan_row = (byte)(uVar4 + 1);
  if (10 < (uVar4 + 1 & 0xff)) {
    scan_row = 0;
  }
  ec_select_row(scan_row);
  iVar5 = uVar4 * 6;
  uVar3 = 0;
  do {
    if ((byte)(&DAT_20001b5e)[uVar3 + iVar5] < local_20[uVar3]) {
      bVar2 = local_20[uVar3] - (&DAT_20001b5e)[uVar3 + iVar5];
    }
    else {
      bVar2 = 0;
    }
    if (bVar2 < 6) {
      if (bVar2 < 4) {
        if (((&matrix_pressed_bits)[uVar4] & (&DAT_0000c19e)[uVar3]) == 0) goto LAB_00008adc;
        bVar2 = (&matrix_debounce)[uVar3 + iVar5] + 1;
        (&matrix_debounce)[uVar3 + iVar5] = bVar2;
        if (1 < bVar2) {
          (&key_events)[key_event_count] = (&matrix_physical_key_ids)[iVar5 + uVar3] & 0x7f;
          key_event_count = key_event_count + 1;
          (&matrix_pressed_bits)[uVar4] = (&matrix_pressed_bits)[uVar4] & (&DAT_0000c1be)[uVar3];
          (&matrix_debounce)[uVar3 + iVar5] = 0;
          DAT_20000321 = 1;
        }
      }
    }
    else {
      uVar1 = (&DAT_0000c19e)[uVar3];
      if (((&matrix_pressed_bits)[uVar4] & uVar1) == 0) {
        bVar2 = (&matrix_debounce)[uVar3 + iVar5] + 1;
        (&matrix_debounce)[uVar3 + iVar5] = bVar2;
        if (1 < bVar2) {
          (&key_events)[key_event_count] = (&matrix_physical_key_ids)[iVar5 + uVar3] | 0x80;
          key_event_count = key_event_count + 1;
          (&matrix_pressed_bits)[uVar4] = (&matrix_pressed_bits)[uVar4] | uVar1;
          (&matrix_debounce)[uVar3 + iVar5] = 0;
          DAT_20000321 = 1;
        }
      }
      else {
LAB_00008adc:
        (&matrix_debounce)[uVar3 + iVar5] = 0;
      }
    }
    uVar3 = uVar3 + 1 & 0xff;
    if (5 < uVar3) {
      return;
    }
  } while( true );
}

