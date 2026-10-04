/* Address: 0x00004554; body bytes: 26 */

/* FMC read command and completion polling. */

dword FMC_ReadWord(dword param_1)

{
  dword dVar1;
  
  FMC_ISPCMD = 0;
  FMC_ISPADR = param_1;
  FMC_ISPTRG = 1;
  InstructionSynchronizationBarrier(0xf);
  do {
    dVar1 = FMC_ISPTRG;
  } while (dVar1 != 0);
  dVar1 = FMC_ISPDAT;
  return dVar1;
}

