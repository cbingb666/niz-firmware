/* Address: 0x10003e40; body bytes: 104 */

uint __thiscall FUN_10003e40(void *this,ushort *param_1)

{
  uint in_EAX;
  uint uVar1;
  uint unaff_EDI;
  
  if (*(uint *)((int)this + 0x10) < in_EAX) {
    in_EAX = *(uint *)((int)this + 0x10);
  }
  uVar1 = in_EAX;
  if (unaff_EDI <= in_EAX) {
    uVar1 = unaff_EDI;
  }
  if (7 < *(uint *)((int)this + 0x14)) {
    this = *(void **)this;
  }
  do {
    if (uVar1 == 0) {
LAB_10003e91:
      if (unaff_EDI <= in_EAX) {
        return (uint)(in_EAX != unaff_EDI);
      }
      return 0xffffffff;
    }
    if (*(ushort *)this != *param_1) {
      uVar1 = (-(uint)(*(ushort *)this < *param_1) & 0xfffffffe) + 1;
      if (uVar1 != 0) {
        return uVar1;
      }
      goto LAB_10003e91;
    }
    this = (void *)((int)this + 2);
    param_1 = param_1 + 1;
    uVar1 = uVar1 - 1;
  } while( true );
}

