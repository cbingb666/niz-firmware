/* Address: 0x1000adf3; body bytes: 31 */

void Unwind_1000adf3(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0x114) & 0x10) != 0) {
    *(uint *)(unaff_EBP + -0x114) = *(uint *)(unaff_EBP + -0x114) & 0xffffffef;
    FUN_10003c40();
    return;
  }
  return;
}

