/* Address: 0x1000ad8d; body bytes: 34 */

void Unwind_1000ad8d(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0x114) & 2) != 0) {
    *(uint *)(unaff_EBP + -0x114) = *(uint *)(unaff_EBP + -0x114) & 0xfffffffd;
    FUN_10003c40();
    return;
  }
  return;
}

