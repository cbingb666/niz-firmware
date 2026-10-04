/* Address: 0x000007d8; body bytes: 70 */

void FUN_000007d8(void)

{
  CLK_EnableModuleClock(&DAT_40003c9b);
  CLK_SetModuleClock(&DAT_40003c9b,0,0x20);
  FUN_0000acbc((&DAT_0000bd5c)[DAT_20000c53]);
  if (DAT_20000c65 != '\0') {
    FUN_000068e8();
  }
  FUN_00009e14(&DAT_20000228,0x4615,0);
  usb_endpoint_init();
  FUN_0000a124();
  NVIC_ISER = 0x800000;
  return;
}

