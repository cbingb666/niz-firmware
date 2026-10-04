/* Address: 0x10007e57; body bytes: 32 */

/* Library Function - Single Match
    __freea
   
   Library: Visual Studio 2010 Release */

void __cdecl __freea(void *_Memory)

{
  if ((_Memory != (void *)0x0) && (*(int *)((int)_Memory + -8) == 0xdddd)) {
    _free((int *)((int)_Memory + -8));
  }
  return;
}

