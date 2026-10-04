/* Address: 0x1000ad6b; body bytes: 34 */

void Unwind_1000ad6b(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0x114) & 1) != 0) {
    *(uint *)(unaff_EBP + -0x114) = *(uint *)(unaff_EBP + -0x114) & 0xfffffffe;
    FUN_10003c40();
    return;
  }
  return;
}

