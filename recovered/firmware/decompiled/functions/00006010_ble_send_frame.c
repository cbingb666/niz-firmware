/* Address: 0x00006010; body bytes: 70 */

/* Minimum 10-byte UART frame; additive 8-bit checksum. */

void ble_send_frame(int param_1,uint param_2)

{
  uint uVar1;
  char cVar2;
  
  cVar2 = '\0';
  uVar1 = 0;
  do {
    (&ble_tx_buffer)[uVar1] = 0;
    uVar1 = uVar1 + 1;
  } while (uVar1 < 0x20);
  uVar1 = 0;
  if (param_2 != 0) {
    do {
      (&ble_tx_buffer)[uVar1] = *(undefined1 *)(param_1 + uVar1);
      cVar2 = *(char *)(param_1 + uVar1) + cVar2;
      uVar1 = uVar1 + 1 & 0xff;
    } while (uVar1 < param_2);
  }
  if (param_2 < 10) {
    ble_tx_length = '\n';
    DAT_20003813 = cVar2;
  }
  else {
    (&ble_tx_buffer)[param_2] = cVar2;
    ble_tx_length = (char)param_2 + '\x01';
  }
  uart_send_staged_bytes();
  return;
}

