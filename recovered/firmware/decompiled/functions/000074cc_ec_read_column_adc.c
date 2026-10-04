/* Address: 0x000074cc; body bytes: 118 */

/* Active-low column gates PC12..PC8 and PA15; reads ten-bit ADC3. */

uint ec_read_column_adc(undefined4 param_1)

{
  dword dVar1;
  
  switch(param_1) {
  case 0:
    PC12_PIN = 0;
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
    break;
  case 1:
    PC11_PIN = 0;
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
    break;
  case 2:
    PC10_PIN = 0;
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
    break;
  case 3:
    PC9_PIN = 0;
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
    break;
  case 4:
    PC8_PIN = 0;
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
    break;
  case 5:
    PA15_PIN = 0;
    dVar1 = ADC_ADCR;
    ADC_ADCR = dVar1 | 0x800;
  }
  do {
    dVar1 = ADC_ADSR;
  } while ((dVar1 & 1) == 0);
  ADC_ADSR = 1;
  dVar1 = ADC_ADDR3;
  PC12_PIN = 1;
  PC11_PIN = 1;
  PC10_PIN = 1;
  PC9_PIN = 1;
  PC8_PIN = 1;
  PA15_PIN = 1;
  return dVar1 & 0x3ff;
}

