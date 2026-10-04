/* Address: 0x10004330; body bytes: 126 */

void FUN_10004330(int param_1,undefined4 param_2)

{
  void *pvVar1;
  
  *(undefined4 *)(param_1 + 0x38) = param_2;
  pvVar1 = *(void **)(param_1 + 0x28);
  if (pvVar1 != *(void **)(param_1 + 0x2c)) {
    FID_conflict__memcpy(pvVar1,*(void **)(param_1 + 0x2c),0);
    *(void **)(param_1 + 0x2c) = pvVar1;
  }
  FUN_10001160();
  pvVar1 = *(void **)(param_1 + 0x18);
  if (pvVar1 != *(void **)(param_1 + 0x1c)) {
    FID_conflict__memcpy(pvVar1,*(void **)(param_1 + 0x1c),0);
    *(void **)(param_1 + 0x1c) = pvVar1;
  }
  FUN_10001160();
  return;
}

