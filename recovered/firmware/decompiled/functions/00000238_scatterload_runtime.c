/* Address: 0x00000238; body bytes: 36 */

/* Copies or clears initialized memory, then branches to main via runtime thunk. */

longlong scatterload_runtime(void)

{
  uint uVar1;
  uint extraout_r2;
  undefined4 *puVar2;
  undefined8 uVar3;
  
  for (puVar2 = &DAT_0000ccc0; puVar2 < &DAT_0000cce0; puVar2 = puVar2 + 4) {
    (*(code *)puVar2[3])(*puVar2,puVar2[1],puVar2[2]);
  }
  uVar3 = main();
  uVar1 = (uint)uVar3;
  if (0x1f < (int)extraout_r2) {
    return (ulonglong)(uVar1 << (extraout_r2 - 0x20 & 0xff)) << 0x20;
  }
  return CONCAT44((int)((ulonglong)uVar3 >> 0x20) << (extraout_r2 & 0xff) |
                  uVar1 >> (0x20 - extraout_r2 & 0xff),uVar1 << (extraout_r2 & 0xff));
}

