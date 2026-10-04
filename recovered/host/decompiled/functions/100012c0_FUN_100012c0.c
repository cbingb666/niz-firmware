/* Address: 0x100012c0; body bytes: 84 */

int __fastcall FUN_100012c0(uint param_1)

{
  int iVar1;
  undefined **local_14 [3];
  char *local_8;
  
  if (param_1 == 0) {
    return 0;
  }
  if ((param_1 < 0x40000000) && (iVar1 = FUN_10005071(param_1 * 4), iVar1 != 0)) {
    return iVar1;
  }
  local_8 = (char *)0x0;
  std::exception::exception((exception *)local_14,&local_8);
  local_14[0] = std::bad_alloc::vftable;
                    /* WARNING: Subroutine does not return */
  __CxxThrowException_8(local_14,&DAT_1000dd50);
}

