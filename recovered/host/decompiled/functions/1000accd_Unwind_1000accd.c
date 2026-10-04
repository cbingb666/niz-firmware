/* Address: 0x1000accd; body bytes: 34 */

void Unwind_1000accd(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0xf8) & 2) != 0) {
    *(uint *)(unaff_EBP + -0xf8) = *(uint *)(unaff_EBP + -0xf8) & 0xfffffffd;
    FUN_10003c40();
    return;
  }
  return;
}

