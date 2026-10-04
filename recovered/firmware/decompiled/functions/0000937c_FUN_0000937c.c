/* Address: 0x0000937c; body bytes: 104 */

undefined4 FUN_0000937c(dword *param_1)

{
  dword dVar1;
  uint uVar2;
  undefined4 local_28 [8];
  
  local_28[3] = 0;
  local_28[2] = 0;
  local_28[1] = 0;
  local_28[0] = 4000000;
  local_28[4] = 0;
  local_28[7] = 0x1518000;
  local_28[6] = 0;
  local_28[5] = 10000;
  if (param_1 == &TIMER0_TCSR) {
    dVar1 = CLK_CLKSEL1;
    uVar2 = dVar1 >> 8;
  }
  else if (param_1 == &TIMER1_TCSR) {
    dVar1 = CLK_CLKSEL1;
    uVar2 = dVar1 >> 0xc;
  }
  else {
    dVar1 = CLK_CLKSEL1;
    if (param_1 == &TIMER2_TCSR) {
      uVar2 = dVar1 >> 0x10;
    }
    else {
      uVar2 = dVar1 >> 0x14;
    }
  }
  if ((uVar2 & 7) != 2) {
    return local_28[uVar2 & 7];
  }
  return DAT_20000000;
}

