/* Address: 0x1000771e; body bytes: 48 */

/* WARNING: Function: __SEH_prolog4 replaced with injection: SEH_prolog4 */
/* Library Function - Single Match
    void __cdecl _inconsistency(void)
   
   Library: Visual Studio 2010 Release */

void __cdecl _inconsistency(void)

{
  code *pcVar1;
  
  pcVar1 = DecodePointer(DAT_10010974);
  if (pcVar1 != (code *)0x0) {
    (*pcVar1)();
  }
                    /* WARNING: Subroutine does not return */
  terminate();
}

