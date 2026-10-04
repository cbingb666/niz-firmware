/* Address: 0x1000add1; body bytes: 34 */

void Unwind_1000add1(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0x114) & 8) != 0) {
    *(uint *)(unaff_EBP + -0x114) = *(uint *)(unaff_EBP + -0x114) & 0xfffffff7;
    FUN_10003c40();
    return;
  }
  return;
}

