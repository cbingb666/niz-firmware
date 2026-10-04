/* Address: 0x00006b94; body bytes: 10 */

void FUN_00006b94(uint param_1)

{
  dword dVar1;
  
  dVar1 = PS2_PS2CON;
  PS2_PS2CON = dVar1 | param_1;
  return;
}

