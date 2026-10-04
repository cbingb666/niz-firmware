/* Address: 0x00004520; body bytes: 46 */

/* FMC erase command and completion polling. */

undefined4 FMC_ErasePage(dword param_1)

{
  dword dVar1;
  
  FMC_ISPCMD = 0x22;
  FMC_ISPADR = param_1;
  FMC_ISPTRG = 1;
  InstructionSynchronizationBarrier(0xf);
  do {
    dVar1 = FMC_ISPTRG;
  } while (dVar1 != 0);
  dVar1 = FMC_ISPCON;
  if ((int)(dVar1 << 0x19) < 0) {
    dVar1 = FMC_ISPCON;
    FMC_ISPCON = dVar1 | 0x40;
    return 0xffffffff;
  }
  return 0;
}

