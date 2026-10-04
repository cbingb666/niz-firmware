/* Address: 0x10007aec; body bytes: 364 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* Library Function - Single Match
    ___crtMessageBoxW
   
   Library: Visual Studio 2010 Release */

int __cdecl ___crtMessageBoxW(LPCWSTR _LpText,LPCWSTR _LpCaption,UINT _UType)

{
  HMODULE hModule;
  FARPROC pFVar1;
  code *pcVar2;
  code *pcVar3;
  int iVar4;
  undefined1 local_28 [4];
  LPCWSTR local_24;
  LPCWSTR local_20;
  PVOID local_1c;
  int local_18;
  undefined1 local_14 [8];
  byte local_c;
  uint local_8;
  
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  local_24 = _LpText;
  local_20 = _LpCaption;
  local_1c = (PVOID)FUN_10006191();
  local_18 = 0;
  if (DAT_10010990 == (PVOID)0x0) {
    hModule = LoadLibraryW(L"USER32.DLL");
    if (hModule == (HMODULE)0x0) {
      return 0;
    }
    pFVar1 = GetProcAddress(hModule,"MessageBoxW");
    if (pFVar1 == (FARPROC)0x0) {
      return 0;
    }
    DAT_10010990 = EncodePointer(pFVar1);
    pFVar1 = GetProcAddress(hModule,"GetActiveWindow");
    DAT_10010994 = EncodePointer(pFVar1);
    pFVar1 = GetProcAddress(hModule,"GetLastActivePopup");
    DAT_10010998 = EncodePointer(pFVar1);
    pFVar1 = GetProcAddress(hModule,"GetUserObjectInformationW");
    DAT_100109a0 = EncodePointer(pFVar1);
    if (DAT_100109a0 != (PVOID)0x0) {
      pFVar1 = GetProcAddress(hModule,"GetProcessWindowStation");
      DAT_1001099c = EncodePointer(pFVar1);
    }
  }
  if ((DAT_1001099c != local_1c) && (DAT_100109a0 != local_1c)) {
    pcVar2 = DecodePointer(DAT_1001099c);
    pcVar3 = DecodePointer(DAT_100109a0);
    if (((pcVar2 != (code *)0x0) && (pcVar3 != (code *)0x0)) &&
       (((iVar4 = (*pcVar2)(), iVar4 == 0 ||
         (iVar4 = (*pcVar3)(iVar4,1,local_14,0xc,local_28), iVar4 == 0)) || ((local_c & 1) == 0))))
    {
      _UType = _UType | 0x200000;
      goto LAB_10007c2b;
    }
  }
  if ((((DAT_10010994 != local_1c) && (pcVar2 = DecodePointer(DAT_10010994), pcVar2 != (code *)0x0))
      && (local_18 = (*pcVar2)(), local_18 != 0)) &&
     ((DAT_10010998 != local_1c && (pcVar2 = DecodePointer(DAT_10010998), pcVar2 != (code *)0x0))))
  {
    local_18 = (*pcVar2)(local_18);
  }
LAB_10007c2b:
  pcVar2 = DecodePointer(DAT_10010990);
  if (pcVar2 == (code *)0x0) {
    return 0;
  }
  iVar4 = (*pcVar2)(local_18,local_24,local_20,_UType);
  return iVar4;
}

