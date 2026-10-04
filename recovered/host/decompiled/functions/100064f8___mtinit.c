/* Address: 0x100064f8; body bytes: 379 */

/* Library Function - Single Match
    __mtinit
   
   Library: Visual Studio 2010 Release */

int __cdecl __mtinit(void)

{
  HMODULE hModule;
  BOOL BVar1;
  int iVar2;
  code *pcVar3;
  _ptiddata _Ptd;
  DWORD DVar4;
  code *pcVar5;
  _ptiddata p_Var6;
  
  hModule = GetModuleHandleW(L"KERNEL32.DLL");
  if (hModule == (HMODULE)0x0) {
    __mtterm();
    return 0;
  }
  DAT_100106c0 = GetProcAddress(hModule,"FlsAlloc");
  DAT_100106c4 = GetProcAddress(hModule,"FlsGetValue");
  DAT_100106c8 = GetProcAddress(hModule,"FlsSetValue");
  DAT_100106cc = GetProcAddress(hModule,"FlsFree");
  if ((((DAT_100106c0 == (FARPROC)0x0) || (DAT_100106c4 == (FARPROC)0x0)) ||
      (DAT_100106c8 == (FARPROC)0x0)) || (DAT_100106cc == (FARPROC)0x0)) {
    DAT_100106c4 = TlsGetValue_exref;
    DAT_100106c0 = (FARPROC)&LAB_1000619a;
    DAT_100106c8 = TlsSetValue_exref;
    DAT_100106cc = TlsFree_exref;
  }
  DAT_1000f208 = TlsAlloc();
  if ((DAT_1000f208 != 0xffffffff) && (BVar1 = TlsSetValue(DAT_1000f208,DAT_100106c4), BVar1 != 0))
  {
    __init_pointers();
    DAT_100106c0 = EncodePointer(DAT_100106c0);
    DAT_100106c4 = EncodePointer(DAT_100106c4);
    DAT_100106c8 = EncodePointer(DAT_100106c8);
    DAT_100106cc = EncodePointer(DAT_100106cc);
    iVar2 = __mtinitlocks();
    if (iVar2 != 0) {
      pcVar5 = __freefls_4;
      pcVar3 = DecodePointer(DAT_100106c0);
      DAT_1000f204 = (*pcVar3)(pcVar5);
      if ((DAT_1000f204 != -1) && (_Ptd = __calloc_crt(1,0x214), _Ptd != (_ptiddata)0x0)) {
        iVar2 = DAT_1000f204;
        p_Var6 = _Ptd;
        pcVar3 = DecodePointer(DAT_100106c8);
        iVar2 = (*pcVar3)(iVar2,p_Var6);
        if (iVar2 != 0) {
          __initptd(_Ptd,(pthreadlocinfo)0x0);
          DVar4 = GetCurrentThreadId();
          _Ptd->_thandle = 0xffffffff;
          _Ptd->_tid = DVar4;
          return 1;
        }
      }
    }
    __mtterm();
  }
  return 0;
}

