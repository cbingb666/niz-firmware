/* Address: 0x1000acab; body bytes: 34 */

void Unwind_1000acab(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0xf8) & 1) != 0) {
    *(uint *)(unaff_EBP + -0xf8) = *(uint *)(unaff_EBP + -0xf8) & 0xfffffffe;
    FUN_10003c40();
    return;
  }
  return;
}

