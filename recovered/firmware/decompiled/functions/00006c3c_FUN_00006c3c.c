/* Address: 0x00006c3c; body bytes: 54 */

void FUN_00006c3c(void)

{
  dword dVar1;
  
  dVar1 = SYS_IPRSTC2;
  SYS_IPRSTC2 = dVar1 | 0x800000;
  dVar1 = SYS_IPRSTC2;
  SYS_IPRSTC2 = dVar1 & 0xff7fffff;
  dVar1 = PS2_PS2CON;
  PS2_PS2CON = dVar1 | 1;
  dVar1 = PS2_PS2CON;
  PS2_PS2CON = dVar1 & 0xffffff87;
  dVar1 = PS2_PS2CON;
  PS2_PS2CON = dVar1 | 0x100;
  dVar1 = PS2_PS2CON;
  PS2_PS2CON = dVar1 & 0xfffffeff;
  return;
}

