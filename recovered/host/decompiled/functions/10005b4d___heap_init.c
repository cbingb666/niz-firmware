/* Address: 0x10005b4d; body bytes: 30 */

/* Library Function - Single Match
    __heap_init
   
   Library: Visual Studio 2010 Release */

int __cdecl __heap_init(void)

{
  DAT_10010058 = HeapCreate(0,0x1000,0);
  return (uint)(DAT_10010058 != (HANDLE)0x0);
}

