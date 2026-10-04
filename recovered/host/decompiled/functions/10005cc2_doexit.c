/* Address: 0x10005cc2; body bytes: 305 */

/* WARNING: Function: __SEH_prolog4 replaced with injection: SEH_prolog4 */
/* WARNING: Function: __SEH_epilog4 replaced with injection: EH_epilog3 */
/* Library Function - Single Match
    _doexit
   
   Library: Visual Studio 2010 Release */

void __cdecl doexit(int param_1,int param_2,int param_3)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  code *pcVar4;
  int *piVar5;
  int *piVar6;
  int *local_34;
  int *local_2c;
  int *local_28;
  undefined4 *local_24;
  undefined4 *local_20;
  
  __lock(8);
  if (DAT_1001008c != 1) {
    DAT_10010088 = 1;
    DAT_10010084 = (undefined1)param_3;
    if (param_2 == 0) {
      piVar1 = DecodePointer(DAT_10010ee8);
      if (piVar1 != (int *)0x0) {
        piVar2 = DecodePointer(DAT_10010ee4);
        local_34 = piVar1;
        local_2c = piVar2;
        local_28 = piVar1;
        while (piVar2 = piVar2 + -1, piVar1 <= piVar2) {
          iVar3 = FUN_10006191();
          if (*piVar2 != iVar3) {
            if (piVar2 < piVar1) break;
            pcVar4 = DecodePointer((PVOID)*piVar2);
            iVar3 = FUN_10006191();
            *piVar2 = iVar3;
            (*pcVar4)();
            piVar5 = DecodePointer(DAT_10010ee8);
            piVar6 = DecodePointer(DAT_10010ee4);
            if ((local_28 != piVar5) || (piVar1 = local_34, local_2c != piVar6)) {
              piVar1 = piVar5;
              piVar2 = piVar6;
              local_34 = piVar5;
              local_2c = piVar6;
              local_28 = piVar5;
            }
          }
        }
      }
      for (local_20 = &DAT_1000b138; local_20 < &DAT_1000b13c; local_20 = local_20 + 1) {
        if ((code *)*local_20 != (code *)0x0) {
          (*(code *)*local_20)();
        }
      }
    }
    for (local_24 = &DAT_1000b140; local_24 < &DAT_1000b144; local_24 = local_24 + 1) {
      if ((code *)*local_24 != (code *)0x0) {
        (*(code *)*local_24)();
      }
    }
  }
  FUN_10005ded();
  if (param_3 != 0) {
    return;
  }
  DAT_1001008c = 1;
  FUN_1000746a(8);
                    /* WARNING: Subroutine does not return */
  ___crtExitProcess(param_1);
}

