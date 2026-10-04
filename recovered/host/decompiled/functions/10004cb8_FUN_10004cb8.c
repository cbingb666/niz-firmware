/* Address: 0x10004cb8; body bytes: 39 */

void * __thiscall FUN_10004cb8(void *this,byte param_1)

{
  *(undefined ***)this = std::exception::vftable;
  std::exception::_Tidy(this);
  if ((param_1 & 1) != 0) {
    FUN_10004d04(this);
  }
  return this;
}

