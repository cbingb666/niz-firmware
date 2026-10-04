/* Address: 0x000070e8; body bytes: 124 */

undefined2 FUN_000070e8(void)

{
  dword dVar1;
  undefined2 uVar2;
  int iVar3;
  undefined4 in_r3;
  undefined4 uVar4;
  ushort uVar5;
  
  dVar1 = ADC_ADCHER;
  ADC_ADCHER = (dVar1 & 0xffffff00) + 0x20;
  iVar3 = 0;
  uVar5 = 0;
  do {
    dVar1 = ADC_ADCR;
    uVar4 = 0x800;
    ADC_ADCR = dVar1 | 0x800;
    dVar1 = ADC_ADSR;
    while ((dVar1 & 1) == 0) {
      dVar1 = SYS_REGWRPROT;
      while (dVar1 != 1) {
        SYS_REGWRPROT = 0x59;
        SYS_REGWRPROT = 0x16;
        SYS_REGWRPROT = 0x88;
        dVar1 = SYS_REGWRPROT;
      }
      dVar1 = WDT_WTCR;
      uVar4 = 1;
      WDT_WTCR = dVar1 & 0xffffffd3 | 1;
      SYS_REGWRPROT = 0;
      dVar1 = ADC_ADSR;
    }
    ADC_ADSR = 1;
    dVar1 = ADC_ADDR5;
    uVar5 = uVar5 + 1;
    iVar3 = (dVar1 & 0x3ff) + iVar3;
  } while (uVar5 < 10);
  uVar2 = aeabi_uidivmod(iVar3,10,dVar1 & 0x3ff,uVar4,in_r3);
  dVar1 = ADC_ADCHER;
  ADC_ADCHER = (dVar1 & 0xffffff00) + 8;
  return uVar2;
}

