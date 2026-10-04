/* Address: 0x10008171; body bytes: 77 */

/* Library Function - Single Match
    __updatetlocinfoEx_nolock
   
   Library: Visual Studio 2010 Release */

LONG * __cdecl __updatetlocinfoEx_nolock(undefined4 *param_1,LONG *param_2)

{
  LONG *pLVar1;
  
  if ((param_2 == (LONG *)0x0) || (param_1 == (undefined4 *)0x0)) {
    param_2 = (LONG *)0x0;
  }
  else {
    pLVar1 = (LONG *)*param_1;
    if (pLVar1 != param_2) {
      *param_1 = param_2;
      ___addlocaleref(param_2);
      if (((pLVar1 != (LONG *)0x0) && (___removelocaleref(pLVar1), *pLVar1 == 0)) &&
         (pLVar1 != (LONG *)&DAT_1000f508)) {
        ___freetlocinfo(pLVar1);
      }
    }
  }
  return param_2;
}

