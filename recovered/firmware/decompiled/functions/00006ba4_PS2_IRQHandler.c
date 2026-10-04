/* Address: 0x00006ba4; body bytes: 34 */

/* NUC123 vector IRQ24, documented as PS/2 interrupt. */

void PS2_IRQHandler(void)

{
  dword dVar1;
  
  dVar1 = PS2_PS2INTID;
  if ((dVar1 & 1) != 0) {
    PS2_PS2INTID = 1;
    FUN_00006c78();
    FUN_00006ec0();
  }
  dVar1 = PS2_PS2INTID;
  if ((int)(dVar1 << 0x1e) < 0) {
    PS2_PS2INTID = 2;
  }
  return;
}

