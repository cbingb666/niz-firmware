/* Address: 0x10009433; body bytes: 105 */

/* Library Function - Single Match
    ___free_lconv_num
   
   Library: Visual Studio 2010 Release */

void __cdecl ___free_lconv_num(undefined4 *param_1)

{
  if (param_1 != (undefined4 *)0x0) {
    if ((undefined *)*param_1 != PTR_DAT_1000fb38) {
      _free((undefined *)*param_1);
    }
    if ((undefined *)param_1[1] != PTR_DAT_1000fb3c) {
      _free((undefined *)param_1[1]);
    }
    if ((undefined *)param_1[2] != PTR_DAT_1000fb40) {
      _free((undefined *)param_1[2]);
    }
    if ((undefined *)param_1[0xc] != PTR_DAT_1000fb68) {
      _free((undefined *)param_1[0xc]);
    }
    if ((undefined *)param_1[0xd] != PTR_DAT_1000fb6c) {
      _free((undefined *)param_1[0xd]);
    }
  }
  return;
}

