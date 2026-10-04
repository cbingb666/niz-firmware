/* Address: 0x1000891b; body bytes: 130 */

/* Library Function - Single Match
    __calloc_impl
   
   Library: Visual Studio 2010 Release */

LPVOID __cdecl __calloc_impl(uint param_1,uint param_2,undefined4 *param_3)

{
  int *piVar1;
  LPVOID pvVar2;
  int iVar3;
  uint dwBytes;
  
  if ((param_1 != 0) && (0xffffffe0 / param_1 < param_2)) {
    piVar1 = __errno();
    *piVar1 = 0xc;
    return (LPVOID)0x0;
  }
  dwBytes = param_1 * param_2;
  if (dwBytes == 0) {
    dwBytes = 1;
  }
  do {
    if ((dwBytes < 0xffffffe1) &&
       (pvVar2 = HeapAlloc(DAT_10010058,8,dwBytes), pvVar2 != (LPVOID)0x0)) {
      return pvVar2;
    }
    if (DAT_100106b8 == 0) {
      if (param_3 == (undefined4 *)0x0) {
        return (LPVOID)0x0;
      }
      *param_3 = 0xc;
      return (LPVOID)0x0;
    }
    iVar3 = __callnewh(dwBytes);
  } while (iVar3 != 0);
  if (param_3 != (undefined4 *)0x0) {
    *param_3 = 0xc;
  }
  return (LPVOID)0x0;
}

