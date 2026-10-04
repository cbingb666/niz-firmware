/* Address: 0x100088fd; body bytes: 30 */

/* Library Function - Single Match
    ___initmbctable
   
   Libraries: Visual Studio 2008 Release, Visual Studio 2010 Release */

undefined4 ___initmbctable(void)

{
  if (DAT_10010eec == 0) {
    __setmbcp(-3);
    DAT_10010eec = 1;
  }
  return 0;
}

