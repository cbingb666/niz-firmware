/* Address: 0x1000ae7b; body bytes: 34 */

void Unwind_1000ae7b(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0x114) & 1) != 0) {
    *(uint *)(unaff_EBP + -0x114) = *(uint *)(unaff_EBP + -0x114) & 0xfffffffe;
    FUN_10003c40();
    return;
  }
  return;
}

