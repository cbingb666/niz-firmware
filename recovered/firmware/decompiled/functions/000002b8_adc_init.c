/* Address: 0x000002b8; body bytes: 170 */

/* Initializes ADC3 for the capacitive matrix; ADC5 is used for other measurements. */

void adc_init(void)

{
  dword dVar1;
  uint uVar2;
  uint uVar3;
  undefined4 in_r3;
  byte bVar4;
  
  dVar1 = SYS_GPD_MFP;
  SYS_GPD_MFP = dVar1 & 0xffffffd7;
  dVar1 = SYS_GPD_MFP;
  SYS_GPD_MFP = dVar1 | 0x28;
  dVar1 = SYS_ALT_MFP1;
  SYS_ALT_MFP1 = dVar1 & 0xffd7ffff;
  dVar1 = SYS_ALT_MFP1;
  SYS_ALT_MFP1 = dVar1 | 0x280000;
  dVar1 = PD_OFFD;
  PD_OFFD = dVar1 | 0x280000;
  CLK_EnableModuleClock(0x5623fe1c);
  CLK_SetModuleClock(0x5623fe1c,0xc,0x30000);
  FUN_0000822e(0x400001c);
  FUN_0000029e(&ADC_ADDR0,0,0,8,in_r3);
  dVar1 = ADC_ADCR;
  ADC_ADCR = dVar1 | 1;
  bVar4 = 0;
  do {
    dVar1 = ADC_ADCHER;
    ADC_ADCHER = (dVar1 & 0xffffff00) + 0x20;
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
    do {
      dVar1 = ADC_ADSR;
    } while ((dVar1 & 1) == 0);
    ADC_ADSR = 1;
    dVar1 = ADC_ADDR5;
    uVar2 = 0;
    do {
      uVar3 = uVar2 + 1 & 0xff;
      (&DAT_20000470)[uVar2] = (&DAT_20000472)[uVar2];
      uVar2 = uVar3;
    } while (uVar3 < 4);
    DAT_20000478 = (ushort)dVar1 & 0x3ff;
    dVar1 = ADC_ADCHER;
    ADC_ADCHER = (dVar1 & 0xffffff00) + 8;
    bVar4 = bVar4 + 1;
  } while (bVar4 < 5);
  return;
}

