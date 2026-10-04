/* Address: 0x000049c4; body bytes: 98 */

/* Samples all six columns then advances the 11-row mux. */

void ec_sample_row_rgb(void)

{
  undefined1 uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar3 = 0;
  do {
    delay_us(7);
    uVar2 = ec_read_column_adc(uVar3);
    if ((DAT_20000ca4 <= uVar2) ||
       (uVar2 = DAT_20000ca4 - uVar2, uVar1 = (undefined1)uVar2, 0x80 < (uVar2 & 0xff))) {
      uVar1 = 0;
    }
    (&DAT_2000310b)[(uint)scan_record_count * 7 + uVar3] = uVar1;
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 6);
  (&scan_records)[(uint)scan_record_count * 7] = scan_row;
  scan_record_count = scan_record_count + 1;
  scan_row = scan_row + 1;
  if (10 < scan_row) {
    scan_row = 0;
  }
  ec_select_row(scan_row);
  return;
}

