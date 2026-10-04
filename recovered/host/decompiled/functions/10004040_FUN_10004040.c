/* Address: 0x10004040; body bytes: 73 */

bool FUN_10004040(void)

{
  undefined4 *in_EAX;
  uint unaff_ESI;
  
  if (0x7ffffffe < unaff_ESI) {
    in_EAX = (undefined4 *)FUN_10004aff("string too long");
  }
  if ((uint)in_EAX[5] < unaff_ESI) {
    FUN_10004090((int)in_EAX,unaff_ESI);
    return unaff_ESI != 0;
  }
  if (unaff_ESI == 0) {
    in_EAX[4] = 0;
    if (7 < (uint)in_EAX[5]) {
      in_EAX = (undefined4 *)*in_EAX;
    }
    *(undefined2 *)in_EAX = 0;
  }
  return unaff_ESI != 0;
}

