/* Address: 0x00002d08; body bytes: 32 */

void FUN_00002d08(void)

{
  undefined4 local_8;
  
  DAT_20000cd8 = 1;
  local_8 = (uint)CONCAT11(DAT_20000cd5,0xf4);
  ble_send_frame(&local_8,2);
  return;
}

