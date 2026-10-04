/* Address: 0x00002a0c; body bytes: 42 */

void FUN_00002a0c(void)

{
  dword dVar1;
  
  CLK_DisableModuleClock(0x57c00014);
  dVar1 = SYS_GPA_MFP;
  SYS_GPA_MFP = dVar1 & 0xffffefff;
  dVar1 = SYS_GPA_MFP;
  SYS_GPA_MFP = dVar1;
  GPIO_SetMode(&PA_PMD,0x1000,1);
  PA12_PIN = 0;
  return;
}

