/* Address: 0x10005c2b; body bytes: 151 */

/* Library Function - Single Match
    __cinit
   
   Library: Visual Studio 2010 Release */

int __cdecl __cinit(int param_1)

{
  BOOL BVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if ((DAT_10010ef0 != (code *)0x0) &&
     (BVar1 = __IsNonwritableInCurrentImage((PBYTE)&DAT_10010ef0), BVar1 != 0)) {
    (*DAT_10010ef0)(param_1);
  }
  __initp_misc_cfltcvt_tab();
  iVar2 = __initterm_e((undefined4 *)&DAT_1000b124,(undefined4 *)&DAT_1000b134);
  if (iVar2 == 0) {
    _atexit(FUN_10006dd8);
    puVar3 = &DAT_1000b11c;
    do {
      if ((code *)*puVar3 != (code *)0x0) {
        (*(code *)*puVar3)();
      }
      puVar3 = puVar3 + 1;
    } while (puVar3 < &DAT_1000b120);
    if ((DAT_10010ef4 != (code *)0x0) &&
       (BVar1 = __IsNonwritableInCurrentImage((PBYTE)&DAT_10010ef4), BVar1 != 0)) {
      (*DAT_10010ef4)(0,2,0);
    }
    iVar2 = 0;
  }
  return iVar2;
}

