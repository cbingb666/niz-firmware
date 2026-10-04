/* Address: 0x0000068c; body bytes: 90 */

void FUN_0000068c(undefined4 param_1)

{
  dword dVar1;
  int iVar2;
  
  dVar1 = SYS_GPA_MFP;
  SYS_GPA_MFP = dVar1 & 0xffffefff;
  dVar1 = SYS_GPA_MFP;
  SYS_GPA_MFP = dVar1 | 0x1000;
  FUN_0000822e(0x4000014);
  CLK_SetModuleClock(0x57c00014,0x20000000,0);
  CLK_EnableModuleClock(0x57c00014);
  iVar2 = 0;
  do {
    iVar2 = iVar2 + 1;
  } while (iVar2 < 4);
  FUN_00006d40(&DAT_40040000,0,18000,param_1);
  FUN_00006e98(&DAT_40040000,1);
  FUN_00006e90(&DAT_40040000,1);
  return;
}

