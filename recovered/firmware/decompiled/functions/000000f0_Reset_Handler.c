/* Address: 0x000000f0; body bytes: 32 */

/* WARNING: This function may have set the stack pointer */
/* Startup writes SYS lock and vector remap, calls SystemInit and C runtime. */

void Reset_Handler(void)

{
  SYS_REGWRPROT = 0x59;
  SYS_REGWRPROT = 0x16;
  SYS_REGWRPROT = 0x88;
  SYS_PORCR = 0x5aa5;
  SYS_REGWRPROT = 0;
  SystemInit();
  scatterload_runtime();
  main();
  return;
}

