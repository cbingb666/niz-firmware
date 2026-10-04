/* Address: 0x100097c7; body bytes: 231 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* WARNING: Function: __alloca_probe_16 replaced with injection: alloca_probe */
/* Library Function - Single Match
    int __cdecl __crtGetStringTypeA_stat(struct localeinfo_struct *,unsigned long,char const
   *,int,unsigned short *,int,int,int)
   
   Library: Visual Studio 2010 Release */

int __cdecl
__crtGetStringTypeA_stat
          (localeinfo_struct *param_1,ulong param_2,char *param_3,int param_4,ushort *param_5,
          int param_6,int param_7,int param_8)

{
  uint _Size;
  uint cchWideChar;
  undefined4 *puVar1;
  int cchSrc;
  LPCWSTR lpWideCharStr;
  BOOL local_c;
  
  lpWideCharStr = (LPCWSTR)0x0;
  local_c = 0;
  if (param_6 == 0) {
    param_6 = param_1->locinfo->lc_codepage;
  }
  cchWideChar = MultiByteToWideChar(param_6,(uint)(param_7 != 0) * 8 + 1,param_3,param_4,(LPWSTR)0x0
                                    ,0);
  if (cchWideChar == 0) {
    return 0;
  }
  if ((0 < (int)cchWideChar) && (cchWideChar < 0x7ffffff1)) {
    _Size = cchWideChar * 2 + 8;
    if (_Size < 0x401) {
      puVar1 = (undefined4 *)&stack0xffffffe8;
      lpWideCharStr = (LPCWSTR)&stack0xffffffe8;
      if (&stack0x00000000 == (undefined1 *)0x18) goto LAB_1000985b;
    }
    else {
      puVar1 = _malloc(_Size);
      lpWideCharStr = (LPCWSTR)0x0;
      if (puVar1 == (undefined4 *)0x0) goto LAB_1000985b;
      *puVar1 = 0xdddd;
    }
    lpWideCharStr = (LPCWSTR)(puVar1 + 2);
  }
LAB_1000985b:
  if (lpWideCharStr == (LPCWSTR)0x0) {
    return 0;
  }
  _memset(lpWideCharStr,0,cchWideChar * 2);
  cchSrc = MultiByteToWideChar(param_6,1,param_3,param_4,lpWideCharStr,cchWideChar);
  if (cchSrc != 0) {
    local_c = GetStringTypeW(param_2,lpWideCharStr,cchSrc,param_5);
  }
  __freea(lpWideCharStr);
  return local_c;
}

