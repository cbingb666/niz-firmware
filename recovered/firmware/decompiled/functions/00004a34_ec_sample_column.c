/* Address: 0x00004a34; body bytes: 110 */

/* Samples one column per call and queues a record after six columns. */

void ec_sample_column(void)

{
  undefined1 uVar1;
  uint uVar2;
  
  uVar2 = ec_read_column_adc(scan_column);
  if ((DAT_20000ca4 <= uVar2) ||
     (uVar2 = DAT_20000ca4 - uVar2, uVar1 = (undefined1)uVar2, 0x80 < (uVar2 & 0xff))) {
    uVar1 = 0;
  }
  (&DAT_2000038d)[scan_column] = uVar1;
  uVar2 = scan_column + 1;
  scan_column = (byte)uVar2;
  if (5 < (uVar2 & 0xff)) {
    scan_column = 0;
    uVar2 = 0;
    do {
      (&DAT_2000310b)[(uint)scan_record_count * 7 + uVar2] = (&DAT_2000038d)[uVar2];
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < 6);
    (&scan_records)[(uint)scan_record_count * 7] = scan_row;
    scan_record_count = scan_record_count + 1;
    scan_row = scan_row + 1;
    if (10 < scan_row) {
      scan_row = 0;
    }
    ec_select_row(scan_row);
  }
  return;
}

