/* Address: 0x00002d5c; body bytes: 100 */

void FUN_00002d5c(void)

{
  uint uVar1;
  
  DAT_20000cd6 = 0;
  DAT_20000cd1 = 0;
  DAT_20000cd7 = 0;
  DAT_20000cd4 = 0;
  DAT_20000cd5 = 0;
  DAT_20000cd8 = 0;
  DAT_20000cda = 0;
  DAT_20000cdc = 0;
  DAT_20000cdd = 0xea;
  DAT_20000cca = 0;
  DAT_20000cde = 0;
  DAT_20000cdf = 1;
  DAT_200003b1 = 0;
  DAT_200003b2 = 0;
  ble_tx_length = 0;
  uVar1 = 0;
  do {
    (&ble_tx_buffer)[uVar1] = 0;
    uVar1 = uVar1 + 1;
  } while (uVar1 < 0x20);
  uVar1 = 0;
  do {
    (&DAT_200003b9)[uVar1] = 0;
    uVar1 = uVar1 + 1;
  } while (uVar1 < 6);
  uVar1 = 0;
  do {
    (&DAT_200003b3)[uVar1] = 0;
    uVar1 = uVar1 + 1;
  } while (uVar1 < 6);
  uVar1 = 0;
  do {
    (&DAT_2000382a)[uVar1] = 0;
    uVar1 = uVar1 + 1;
  } while (uVar1 < 0x40);
  return;
}

