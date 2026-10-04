/* Address: 0x00003938; body bytes: 140 */

/* Selects peripheral clock source and divider using encoded module ID. */

void CLK_SetModuleClock(uint param_1,uint param_2,uint param_3)

{
  dword dVar1;
  int local_14 [3];
  
  local_14[0] = 0;
  local_14[2] = 0xc;
  local_14[1] = 4;
  if ((param_1 >> 0x19 & 7) != 0) {
    *(uint *)((int)&CLK_CLKSEL0 + local_14[(param_1 & 0x3fffffff) >> 0x1c]) =
         *(uint *)((int)&CLK_CLKSEL0 + local_14[(param_1 & 0x3fffffff) >> 0x1c]) &
         ~(((param_1 & 0xfffffff) >> 0x19) << ((param_1 & 0x1ffffff) >> 0x14)) | param_2;
    if (param_1 == 0x57c00014) {
      dVar1 = CLK_CLKSEL2;
      CLK_CLKSEL2 = dVar1 & 0xfffffeff | param_2 & 0x100;
    }
    else if (param_1 == 0x57e00015) {
      dVar1 = CLK_CLKSEL2;
      CLK_CLKSEL2 = dVar1 & 0xfffffdff | param_2 & 0x200;
    }
  }
  if ((param_1 >> 10 & 0xff) != 0) {
    (&CLK_CLKDIV)[(param_1 & 0xfffff) >> 0x12] =
         (&CLK_CLKDIV)[(param_1 & 0xfffff) >> 0x12] &
         ~((param_1 >> 10 & 0xff) << ((param_1 & 0x3ff) >> 5)) | param_3;
  }
  return;
}

