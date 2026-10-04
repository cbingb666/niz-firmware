/* Address: 0x10001490; body bytes: 63 */

void FUN_10001490(void)

{
  undefined4 *unaff_EBX;
  int iVar1;
  int iVar2;
  
  *unaff_EBX = CKB75::vftable;
  iVar1 = 0;
  do {
    iVar2 = 0x42;
    do {
      if (*(void **)(iVar1 + unaff_EBX[2]) != (void *)0x0) {
        FUN_10004d04(*(void **)(iVar1 + unaff_EBX[2]));
      }
      iVar1 = iVar1 + 4;
      iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
  } while (iVar1 < 0x948);
  *unaff_EBX = CKeyboardDefine::vftable;
  return;
}

