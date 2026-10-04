/* Address: 0x1000648a; body bytes: 110 */

/* Library Function - Single Match
    __freeptd
   
   Library: Visual Studio 2010 Release */

void __cdecl __freeptd(_ptiddata _Ptd)

{
  LPVOID pvVar1;
  code *pcVar2;
  int iVar3;
  undefined4 uVar4;
  
  if (DAT_1000f204 != -1) {
    if ((_Ptd == (_ptiddata)0x0) && (pvVar1 = TlsGetValue(DAT_1000f208), pvVar1 != (LPVOID)0x0)) {
      iVar3 = DAT_1000f204;
      pcVar2 = TlsGetValue(DAT_1000f208);
      _Ptd = (_ptiddata)(*pcVar2)(iVar3);
    }
    uVar4 = 0;
    iVar3 = DAT_1000f204;
    pcVar2 = DecodePointer(DAT_100106c8);
    (*pcVar2)(iVar3,uVar4);
    __freefls_4(_Ptd);
  }
  if (DAT_1000f208 != 0xffffffff) {
    TlsSetValue(DAT_1000f208,(LPVOID)0x0);
  }
  return;
}

