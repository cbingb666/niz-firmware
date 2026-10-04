/* Address: 0x00003b78; body bytes: 90 */

void FUN_00003b78(void)

{
  ushort uVar1;
  ushort uVar2;
  undefined4 local_10;
  uint local_c;
  uint local_8;
  
  local_c = (uint)transport_is_wired;
  uVar2 = DAT_2000037a;
  if ((((local_c == 0) && (uVar1 = (ushort)transport_is_wired, uVar2 = uVar1, DAT_20001ace == 4)) &&
      (DAT_20001ad4 == 1)) &&
     ((DAT_20001ad6 == 4 && (uVar2 = DAT_2000037a + 1, 0x1e < (ushort)(DAT_2000037a + 1))))) {
    local_10 = 0xf0;
    DAT_2000037a = uVar1;
    local_8 = local_c;
    ble_send_frame(&local_10,9);
    delay_ms(100);
    FUN_00002cf8(0xf8);
    return;
  }
  DAT_2000037a = uVar2;
  return;
}

