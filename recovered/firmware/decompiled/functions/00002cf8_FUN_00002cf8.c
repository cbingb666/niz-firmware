/* Address: 0x00002cf8; body bytes: 16 */

void FUN_00002cf8(undefined1 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 local_8;
  undefined3 uStack_7;
  
  _local_8 = CONCAT31((int3)((uint)param_4 >> 8),param_1);
  ble_send_frame(&local_8,1);
  return;
}

