/* Address: 0x10005e27; body bytes: 29 */

/* Library Function - Single Match
    __amsg_exit
   
   Library: Visual Studio 2010 Release */

void __cdecl __amsg_exit(int param_1)

{
  __FF_MSGBANNER();
  __NMSG_WRITE(param_1);
                    /* WARNING: Subroutine does not return */
  __exit(0xff);
}

