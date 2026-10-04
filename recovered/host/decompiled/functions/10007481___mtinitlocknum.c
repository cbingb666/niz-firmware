/* Address: 0x10007481; body bytes: 183 */

/* WARNING: Function: __SEH_prolog4 replaced with injection: SEH_prolog4 */
/* WARNING: Function: __SEH_epilog4 replaced with injection: EH_epilog3 */
/* Library Function - Single Match
    __mtinitlocknum
   
   Library: Visual Studio 2010 Release */

int __cdecl __mtinitlocknum(int _LockNum)

{
  LPCRITICAL_SECTION lpCriticalSection;
  int *piVar1;
  BOOL BVar2;
  int iVar3;
  int local_20;
  
  iVar3 = 1;
  local_20 = 1;
  if (DAT_10010058 != 0) {
    piVar1 = &DAT_1000f250 + _LockNum * 2;
    if (*piVar1 == 0) {
      lpCriticalSection = __malloc_crt(0x18);
      if (lpCriticalSection == (LPCRITICAL_SECTION)0x0) {
        piVar1 = __errno();
        *piVar1 = 0xc;
        iVar3 = 0;
      }
      else {
        __lock(10);
        if (*piVar1 == 0) {
          BVar2 = InitializeCriticalSectionAndSpinCount(lpCriticalSection,4000);
          if (BVar2 == 0) {
            _free(lpCriticalSection);
            piVar1 = __errno();
            *piVar1 = 0xc;
            local_20 = 0;
          }
          else {
            *piVar1 = (int)lpCriticalSection;
          }
        }
        else {
          _free(lpCriticalSection);
        }
        FUN_1000753a();
        iVar3 = local_20;
      }
    }
    return iVar3;
  }
  __FF_MSGBANNER();
  __NMSG_WRITE(0x1e);
                    /* WARNING: Subroutine does not return */
  ___crtExitProcess(0xff);
}

