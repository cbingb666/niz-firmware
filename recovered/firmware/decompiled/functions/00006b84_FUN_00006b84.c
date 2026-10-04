/* Address: 0x00006b84; body bytes: 12 */

void FUN_00006b84(void)

{
  dword dVar1;
  
  dVar1 = PS2_PS2CON;
  PS2_PS2CON = dVar1 & 0xfffffffe;
  return;
}

