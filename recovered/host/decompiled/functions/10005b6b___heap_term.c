/* Address: 0x10005b6b; body bytes: 20 */

/* Library Function - Single Match
    __heap_term
   
   Library: Visual Studio 2010 Release */

void __cdecl __heap_term(void)

{
  HeapDestroy(DAT_10010058);
  DAT_10010058 = (HANDLE)0x0;
  return;
}

