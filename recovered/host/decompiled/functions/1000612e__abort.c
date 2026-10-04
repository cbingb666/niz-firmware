/* Address: 0x1000612e; body bytes: 50 */

/* Library Function - Single Match
    _abort
   
   Library: Visual Studio 2010 Release */

void __cdecl _abort(void)

{
  int iVar1;
  
  iVar1 = FUN_100077bc();
  if (iVar1 != 0) {
    _raise(0x16);
  }
  if (((byte)DAT_1000f200 & 2) != 0) {
    __call_reportfault(3,0x40000015,1);
  }
                    /* WARNING: Subroutine does not return */
  __exit(3);
}

