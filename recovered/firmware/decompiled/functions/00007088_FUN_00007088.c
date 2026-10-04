/* Address: 0x00007088; body bytes: 88 */

undefined2 FUN_00007088(void)

{
  dword dVar1;
  undefined2 uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  
  iVar5 = 0;
  dVar1 = ADC_ADCHER;
  ADC_ADCHER = (dVar1 & 0xffffff00) + 0x20;
  dVar1 = ADC_ADCR;
  ADC_ADCR = dVar1 | 0x800;
  do {
    dVar1 = ADC_ADSR;
  } while ((dVar1 & 1) == 0);
  ADC_ADSR = 1;
  dVar1 = ADC_ADDR5;
  uVar3 = 0;
  do {
    iVar5 = (uint)(ushort)(&DAT_20000472)[uVar3] + iVar5;
    uVar4 = uVar3 + 1 & 0xff;
    (&DAT_20000470)[uVar3] = (&DAT_20000472)[uVar3];
    uVar3 = uVar4;
  } while (uVar4 < 4);
  DAT_20000478 = (undefined2)(dVar1 & 0x3ff);
  uVar2 = aeabi_uidivmod(iVar5 + (dVar1 & 0x3ff),5);
  dVar1 = ADC_ADCHER;
  ADC_ADCHER = (dVar1 & 0xffffff00) + 8;
  return uVar2;
}

