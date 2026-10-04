/* Address: 0x00004574; body bytes: 26 */

/* FMC word program command and completion polling. */

void FMC_WriteWord(dword param_1,dword param_2)

{
  dword dVar1;
  
  FMC_ISPCMD = 0x21;
  FMC_ISPADR = param_1;
  FMC_ISPDAT = param_2;
  FMC_ISPTRG = 1;
  InstructionSynchronizationBarrier(0xf);
  do {
    dVar1 = FMC_ISPTRG;
  } while (dVar1 != 0);
  return;
}

