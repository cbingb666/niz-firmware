/* Address: 0x10004c33; body bytes: 30 */

/* Library Function - Single Match
    private: void __thiscall std::exception::_Tidy(void)
   
   Library: Visual Studio 2010 Release */

void __thiscall std::exception::_Tidy(exception *this)

{
  if (this[8] != (exception)0x0) {
    _free(*(void **)(this + 4));
  }
  *(undefined4 *)(this + 4) = 0;
  this[8] = (exception)0x0;
  return;
}

