/* Address: 0x1000aebf; body bytes: 34 */

void Unwind_1000aebf(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0x114) & 4) != 0) {
    *(uint *)(unaff_EBP + -0x114) = *(uint *)(unaff_EBP + -0x114) & 0xfffffffb;
    FUN_10003c40();
    return;
  }
  return;
}

