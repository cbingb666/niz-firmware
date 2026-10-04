/* Address: 0x00008270; body bytes: 42 */

void FUN_00008270(undefined4 param_1)

{
  undefined1 auStack_118 [268];
  
  FUN_000001c2(auStack_118,0x108);
  FUN_00004024(auStack_118,param_1,0x42);
  eeprom_write_block(auStack_118,0x108,65000);
  return;
}

