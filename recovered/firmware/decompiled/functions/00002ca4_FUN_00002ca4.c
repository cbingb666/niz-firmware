/* Address: 0x00002ca4; body bytes: 68 */

void FUN_00002ca4(void)

{
  dword dVar1;
  
  CLK_DisableModuleClock(0x57803d10);
  dVar1 = SYS_GPC_MFP;
  SYS_GPC_MFP = dVar1 & 0xffffffcf;
  dVar1 = SYS_GPC_MFP;
  SYS_GPC_MFP = dVar1;
  dVar1 = SYS_ALT_MFP;
  SYS_ALT_MFP = dVar1 & 0x9fffffff;
  dVar1 = SYS_ALT_MFP;
  SYS_ALT_MFP = dVar1;
  GPIO_SetMode(&PC_PMD,0x20,0);
  GPIO_SetMode(&PC_PMD,0x10,0);
  PC3_PIN = 1;
  return;
}

