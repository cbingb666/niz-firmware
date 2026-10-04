/* Address: 0x10005071; body bytes: 127 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __cdecl FUN_10005071(size_t param_1)

{
  int iVar1;
  void *pvVar2;
  undefined **local_14 [3];
  char *local_8;
  
  do {
    pvVar2 = _malloc(param_1);
    if (pvVar2 != (void *)0x0) {
      return;
    }
    iVar1 = __callnewh(param_1);
  } while (iVar1 != 0);
  if ((_DAT_1000fd0c & 1) == 0) {
    _DAT_1000fd0c = _DAT_1000fd0c | 1;
    local_8 = "bad allocation";
    FUN_10004bc9(&DAT_1000fd00,&local_8);
    _DAT_1000fd00 = std::bad_alloc::vftable;
    _atexit(FUN_1000af6b);
  }
  std::exception::exception((exception *)local_14,(exception *)&DAT_1000fd00);
  local_14[0] = std::bad_alloc::vftable;
                    /* WARNING: Subroutine does not return */
  __CxxThrowException_8(local_14,&DAT_1000dd50);
}

