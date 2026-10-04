/* Address: 0x10003ca0; body bytes: 34 */

void __fastcall FUN_10003ca0(void *param_1)

{
  ushort uVar1;
  ushort *puVar2;
  ushort *unaff_ESI;
  
  puVar2 = unaff_ESI;
  do {
    uVar1 = *puVar2;
    puVar2 = puVar2 + 1;
  } while (uVar1 != 0);
  FUN_10003e40(param_1,unaff_ESI);
  return;
}

