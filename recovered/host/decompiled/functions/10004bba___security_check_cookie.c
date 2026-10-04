/* Address: 0x10004bba; body bytes: 15 */

/* WARNING: This is an inlined function */
/* Library Function - Single Match
    @__security_check_cookie@4
   
   Libraries: Visual Studio 2005 Release, Visual Studio 2008 Release, Visual Studio 2010 Release */

void __fastcall __security_check_cookie(uintptr_t _StackCookie)

{
  if (_StackCookie == DAT_1000f080) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  ___report_gsfailure();
}

