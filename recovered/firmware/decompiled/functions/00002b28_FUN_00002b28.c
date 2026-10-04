/* Address: 0x00002b28; body bytes: 32 */

void FUN_00002b28(undefined1 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 local_8;
  undefined1 local_7;
  undefined2 uStack_6;
  
  if (DAT_20000ccc == '\0') {
    uStack_6 = (undefined2)((uint)param_4 >> 0x10);
    _local_8 = CONCAT11(param_1,0xfd);
    DAT_20000ce0 = param_1;
    ble_send_frame(&local_8,2);
    return;
  }
  return;
}

