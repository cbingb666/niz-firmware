/* Address: 0x1000ad11; body bytes: 31 */

void Unwind_1000ad11(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0xf8) & 8) != 0) {
    *(uint *)(unaff_EBP + -0xf8) = *(uint *)(unaff_EBP + -0xf8) & 0xfffffff7;
    FUN_10003c40();
    return;
  }
  return;
}

