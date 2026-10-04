/* Address: 0x1000acef; body bytes: 34 */

void Unwind_1000acef(void)

{
  int unaff_EBP;
  
  if ((*(uint *)(unaff_EBP + -0xf8) & 4) != 0) {
    *(uint *)(unaff_EBP + -0xf8) = *(uint *)(unaff_EBP + -0xf8) & 0xfffffffb;
    FUN_10003c40();
    return;
  }
  return;
}

