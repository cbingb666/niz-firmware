/* Address: 0x10005296; body bytes: 42 */

/* Library Function - Single Match
    __purecall
   
   Library: Visual Studio 2010 Release */

void __purecall(void)

{
  code *pcVar1;
  
  pcVar1 = DecodePointer(DAT_100106bc);
  if (pcVar1 != (code *)0x0) {
    (*pcVar1)();
  }
  __NMSG_WRITE(0x19);
  __set_abort_behavior(0,1);
                    /* WARNING: Subroutine does not return */
  _abort();
}

