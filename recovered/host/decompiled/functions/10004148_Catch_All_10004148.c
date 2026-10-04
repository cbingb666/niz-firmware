/* Address: 0x10004148; body bytes: 30 */

undefined * Catch_All_10004148(void)

{
  int iVar1;
  int unaff_EBP;
  
  iVar1 = *(int *)(unaff_EBP + 0xc);
  *(BADSPACEBASE **)(unaff_EBP + -0x10) = register0x00000010;
  *(int *)(unaff_EBP + 0xc) = iVar1;
  *(undefined1 *)(unaff_EBP + -4) = 2;
  iVar1 = FUN_10004200(iVar1 + 1);
  *(int *)(unaff_EBP + -0x14) = iVar1;
  return &DAT_10004166;
}

