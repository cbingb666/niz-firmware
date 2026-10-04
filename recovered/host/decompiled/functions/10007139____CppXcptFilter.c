/* Address: 0x10007139; body bytes: 32 */

/* Library Function - Single Match
    ___CppXcptFilter
   
   Library: Visual Studio 2010 Release */

int __cdecl ___CppXcptFilter(ulong _ExceptionNum,_EXCEPTION_POINTERS *_ExceptionPtr)

{
  int iVar1;
  
  if (_ExceptionNum == 0xe06d7363) {
    iVar1 = __XcptFilter(0xe06d7363,_ExceptionPtr);
    return iVar1;
  }
  return 0;
}

