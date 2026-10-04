/* Address: 0x00007710; body bytes: 98 */

/* Averages fifty ADC3 readings. */

undefined2 ec_measure_idle_level(void)

{
  dword dVar1;
  undefined2 uVar2;
  byte bVar3;
  int iVar4;
  
  iVar4 = 0;
  ec_select_row(0);
  PC12_PIN = 1;
  PC11_PIN = 1;
  PC10_PIN = 1;
  PC9_PIN = 1;
  PC8_PIN = 1;
  PA15_PIN = 1;
  delay_ms(1);
  bVar3 = 0;
  do {
    watchdog_feed();
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
    do {
      dVar1 = ADC_ADSR;
    } while ((dVar1 & 1) == 0);
    ADC_ADSR = 1;
    dVar1 = ADC_ADDR3;
    bVar3 = bVar3 + 1;
    iVar4 = (dVar1 & 0x3ff) + iVar4;
  } while (bVar3 < 0x32);
  uVar2 = aeabi_uidivmod(iVar4,0x32);
  ec_select_row(scan_row);
  return uVar2;
}

