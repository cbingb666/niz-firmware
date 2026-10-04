/* Address: 0x00009cc4; body bytes: 18 */

void FUN_00009cc4(undefined1 *param_1)

{
  undefined1 *puVar1;
  int iVar2;
  bool bVar3;
  
  puVar1 = &DAT_20000468;
  iVar2 = 7;
  do {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
    bVar3 = iVar2 != 0;
    iVar2 = iVar2 + -1;
  } while (bVar3);
  return;
}

