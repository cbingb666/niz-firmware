/* Address: 0x00003010; body bytes: 42 */

/* Writes the staged frame to UART0 using the TX-full flag. */

void uart_send_staged_bytes(void)

{
  dword dVar1;
  uint uVar2;
  
  uVar2 = 0;
  DAT_20000cdd = 0;
  if (ble_tx_length != 0) {
    do {
      do {
        dVar1 = UART0_FSR;
      } while ((int)(dVar1 << 8) < 0);
      UART0_RBR = (uint)(byte)(&ble_tx_buffer)[uVar2];
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < ble_tx_length);
  }
  return;
}

