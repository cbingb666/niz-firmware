/* Address: 0x10007396; body bytes: 51 */

/* Library Function - Single Match
    __msize
   
   Library: Visual Studio 2010 Release */

size_t __cdecl __msize(void *_Memory)

{
  int *piVar1;
  SIZE_T SVar2;
  
  if (_Memory == (void *)0x0) {
    piVar1 = __errno();
    *piVar1 = 0x16;
    FUN_10007386();
    return 0xffffffff;
  }
  SVar2 = HeapSize(DAT_10010058,0,_Memory);
  return SVar2;
}

