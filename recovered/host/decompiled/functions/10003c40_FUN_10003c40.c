/* Address: 0x10003c40; body bytes: 37 */

void FUN_10003c40(void)

{
  undefined4 *unaff_ESI;
  
  if (7 < (uint)unaff_ESI[5]) {
    FUN_10004d04((void *)*unaff_ESI);
  }
  unaff_ESI[5] = 7;
  unaff_ESI[4] = 0;
  *(undefined2 *)unaff_ESI = 0;
  return;
}

