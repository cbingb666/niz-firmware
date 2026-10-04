/* Address: 0x00000428; body bytes: 330 */

void FUN_00000428(void)

{
  dword dVar1;
  undefined4 in_r3;
  
  DAT_20000cc7 = 0;
  GPIO_SetMode(&PB_PMD,0x40,0,in_r3,in_r3);
  GPIO_SetMode(&PB_PMD,0x100);
  GPIO_SetMode(&PB_PMD,0x20,0);
  GPIO_SetMode(&PB_PMD,0x10,1);
  dVar1 = PB6_PIN;
  if (dVar1 == 0) {
    transport_is_wired = 0;
    dVar1 = PB5_PIN;
    if (dVar1 == 0) {
      DataSynchronizationBarrier(0xf);
      SCB_AIRCR = 0x5fa0004;
      DataSynchronizationBarrier(0xf);
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    PB4_PIN = 1;
    DAT_20000cc5 = 1;
    DAT_20000cc7 = DAT_20000cc7 | 8;
    DAT_20000cc6 = 1;
  }
  else {
    transport_is_wired = 1;
    PB4_PIN = 0;
    DAT_20000cc6 = 0;
  }
  DAT_20000cc9 = FUN_00007628();
  GPIO_SetMode(&PB_PMD,0x400);
  GPIO_SetMode(&PB_PMD,0x200);
  GPIO_SetMode(&PC_PMD,0x2000);
  FUN_00006730(0);
  GPIO_SetMode(&PA_PMD,0x1000);
  GPIO_SetMode(&PC_PMD,1);
  GPIO_SetMode(&PC_PMD,2,1);
  GPIO_SetMode(&PC_PMD,4,1);
  PA12_PIN = 0;
  FUN_00006778();
  GPIO_SetMode(&PA_PMD,0x2000,1);
  GPIO_SetMode(&PA_PMD,0x4000);
  GPIO_SetMode(&PD_PMD,1);
  GPIO_SetMode(&PD_PMD,2,1);
  GPIO_SetMode(&PD_PMD,4,1);
  PA13_PIN = 0;
  PA14_PIN = 0;
  GPIO_SetMode(&PC_PMD,0x1000);
  GPIO_SetMode(&PC_PMD,0x800);
  GPIO_SetMode(&PC_PMD,0x400);
  GPIO_SetMode(&PC_PMD,0x200);
  GPIO_SetMode(&PC_PMD,0x100);
  GPIO_SetMode(&PA_PMD,0x8000);
  GPIO_SetMode(&PB_PMD,0x80,0);
  return;
}

