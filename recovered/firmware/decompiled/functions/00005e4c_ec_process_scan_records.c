/* Address: 0x00005e4c; body bytes: 404 */

/* 11x6 matrix, baseline subtraction, 5/18-percent coupling correction, 3-frame debounce. */

void ec_process_scan_records(void)

{
  ushort uVar1;
  char cVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  byte *pbVar8;
  uint uVar9;
  uint local_30;
  
  cVar2 = rgb_active;
  if (scan_record_count == 0) {
    return;
  }
  local_30 = 0;
  if (scan_record_count != 0) {
    do {
      iVar6 = local_30 * 7;
      pbVar8 = &scan_records + iVar6;
      uVar5 = 0;
      uVar4 = 0;
      do {
        if ((byte)(&matrix_baseline)[uVar4 + (uint)*pbVar8 * 6] < pbVar8[uVar4 + 1]) {
          uVar7 = (uint)(byte)(pbVar8[uVar4 + 1] - (&matrix_baseline)[uVar4 + (uint)*pbVar8 * 6]);
        }
        else {
          uVar7 = 0;
        }
        uVar4 = uVar4 + 1 & 0xff;
        uVar5 = uVar5 + uVar7 & 0xffff;
      } while (uVar4 < 6);
      uVar4 = (uint)(byte)(&scan_records)[iVar6];
      (&scan_records)[iVar6] = 0;
      iVar6 = uVar4 * 6;
      uVar7 = 0;
      do {
        bVar3 = pbVar8[uVar7 + 1];
        pbVar8[uVar7 + 1] = 0;
        if ((byte)(&matrix_baseline)[uVar7 + iVar6] < bVar3) {
          uVar9 = (uint)(byte)(bVar3 - (&matrix_baseline)[uVar7 + iVar6]);
        }
        else {
          uVar9 = 0;
        }
        if (cVar2 == '\0') {
          bVar3 = aeabi_idivmod((uVar5 - uVar9) * 5,100);
        }
        else {
          bVar3 = aeabi_idivmod((uVar5 - uVar9) * 0x12,100);
        }
        if (10 < uVar9) {
          uVar9 = bVar3 + uVar9 & 0xff;
        }
        if (uVar9 < (byte)(&matrix_threshold)[uVar7 + iVar6]) {
          if (uVar9 < ((byte)(&matrix_threshold)[uVar7 + iVar6] - 3 & 0xff)) {
            if (((&matrix_pressed_bits)[uVar4] & (&DAT_0000c19e)[uVar7]) == 0) goto LAB_00005fb6;
            bVar3 = (&matrix_debounce)[uVar7 + iVar6] + 1;
            (&matrix_debounce)[uVar7 + iVar6] = bVar3;
            if (2 < bVar3) {
              (&key_events)[key_event_count] = (&matrix_physical_key_ids)[iVar6 + uVar7] & 0x7f;
              key_event_count = key_event_count + 1;
              (&matrix_pressed_bits)[uVar4] = (&matrix_pressed_bits)[uVar4] & (&DAT_0000c1be)[uVar7]
              ;
              (&matrix_debounce)[uVar7 + iVar6] = 0;
              DAT_20000321 = 1;
            }
          }
        }
        else {
          uVar1 = (&DAT_0000c19e)[uVar7];
          if (((&matrix_pressed_bits)[uVar4] & uVar1) == 0) {
            bVar3 = (&matrix_debounce)[uVar7 + iVar6] + 1;
            (&matrix_debounce)[uVar7 + iVar6] = bVar3;
            if (2 < bVar3) {
              (&key_events)[key_event_count] = (&matrix_physical_key_ids)[iVar6 + uVar7] | 0x80;
              key_event_count = key_event_count + 1;
              (&matrix_pressed_bits)[uVar4] = (&matrix_pressed_bits)[uVar4] | uVar1;
              (&matrix_debounce)[uVar7 + iVar6] = 0;
              DAT_20000321 = 1;
            }
          }
          else {
LAB_00005fb6:
            (&matrix_debounce)[uVar7 + iVar6] = 0;
          }
        }
        uVar7 = uVar7 + 1 & 0xff;
      } while (uVar7 < 6);
      local_30 = local_30 + 1 & 0xff;
    } while (local_30 < scan_record_count);
  }
  scan_record_count = 0;
  return;
}

