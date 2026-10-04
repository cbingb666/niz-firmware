/* Address: 0x00009e14; body bytes: 34 */

void FUN_00009e14(int *param_1,undefined4 param_2,undefined4 param_3)

{
  dword dVar1;
  
  DAT_20000458 = param_3;
  DAT_20000454 = param_2;
  DAT_20000464 = param_1;
  DAT_20000448 = (uint)*(byte *)(*param_1 + 7);
  USBD_ATTR = 2000;
  dVar1 = USBD_DRVSE0;
  USBD_DRVSE0 = dVar1 | 1;
  return;
}

