/* Address: 0x00008c80; body bytes: 304 */

/* Selects clock and PLL profiles for active and low-power modes. */

void clock_set_profile(int param_1)

{
  dword dVar1;
  
  do {
    SYS_REGWRPROT = 0x59;
    SYS_REGWRPROT = 0x16;
    SYS_REGWRPROT = 0x88;
    dVar1 = SYS_REGWRPROT;
  } while (dVar1 == 0);
  if (param_1 == 0) {
    dVar1 = CLK_PLLCON;
    CLK_PLLCON = dVar1 & 0xffff3fff;
    dVar1 = CLK_PLLCON;
    CLK_PLLCON = dVar1 & 0xffffc1ff;
    dVar1 = CLK_PLLCON;
    CLK_PLLCON = dVar1 & 0xfffffe00 | 0x46;
    dVar1 = CLK_PLLCON;
    CLK_PLLCON = dVar1 & 0xfffeffff;
    dVar1 = CLK_PLLCON;
    CLK_PLLCON = dVar1 & 0xfffbffff;
    do {
      dVar1 = CLK_CLKSTATUS;
    } while ((dVar1 & 4) == 0);
    dVar1 = CLK_CLKSEL0;
    CLK_CLKSEL0 = dVar1 & 0xfffffff8 | 1;
  }
  else {
    if (param_1 == 1) {
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xffff3fff | 0xc000;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xffffc1ff;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffffe00 | 0x5e;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffeffff;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffbffff;
      do {
        dVar1 = CLK_CLKSTATUS;
      } while ((dVar1 & 4) == 0);
    }
    else if (param_1 == 2) {
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xffff3fff | 0xc000;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xffffc1ff;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffffe00 | 0x3e;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffeffff;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffbffff;
      do {
        dVar1 = CLK_CLKSTATUS;
      } while ((dVar1 & 4) == 0);
    }
    else {
      if (param_1 != 3) {
        if (param_1 == 4) {
          dVar1 = CLK_CLKSEL0;
          CLK_CLKSEL0 = dVar1 & 0xfffffff8;
          dVar1 = CLK_PLLCON;
          CLK_PLLCON = dVar1 | 0x40000;
          dVar1 = CLK_PLLCON;
          CLK_PLLCON = dVar1 | 0x10000;
        }
        goto LAB_00008da8;
      }
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xffff3fff | 0xc000;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xffffc1ff;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffffe00 | 0x2e;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffeffff;
      dVar1 = CLK_PLLCON;
      CLK_PLLCON = dVar1 & 0xfffbffff;
      do {
        dVar1 = CLK_CLKSTATUS;
      } while ((dVar1 & 4) == 0);
    }
    dVar1 = CLK_CLKSEL0;
    CLK_CLKSEL0 = dVar1 & 0xfffffff8 | 2;
  }
LAB_00008da8:
  FUN_00008db8();
  SYS_REGWRPROT = 0;
  return;
}

