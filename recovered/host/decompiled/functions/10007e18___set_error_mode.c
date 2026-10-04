/* Address: 0x10007e18; body bytes: 63 */

/* Library Function - Single Match
    __set_error_mode
   
   Library: Visual Studio 2010 Release */

int __cdecl __set_error_mode(int _Mode)

{
  int iVar1;
  int *piVar2;
  
  if (-1 < _Mode) {
    if (_Mode < 3) {
      iVar1 = DAT_1000fd1c;
      DAT_1000fd1c = _Mode;
      return iVar1;
    }
    if (_Mode == 3) {
      return DAT_1000fd1c;
    }
  }
  piVar2 = __errno();
  *piVar2 = 0x16;
  FUN_10007386();
  return -1;
}

