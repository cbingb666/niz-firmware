/* Address: 0x1000959a; body bytes: 487 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* WARNING: Function: __alloca_probe_16 replaced with injection: alloca_probe */
/* Library Function - Single Match
    int __cdecl __crtLCMapStringA_stat(struct localeinfo_struct *,unsigned long,unsigned long,char
   const *,int,char *,int,int,int)
   
   Library: Visual Studio 2010 Release */

int __cdecl
__crtLCMapStringA_stat
          (localeinfo_struct *param_1,ulong param_2,ulong param_3,char *param_4,int param_5,
          char *param_6,int param_7,int param_8,int param_9)

{
  uint uVar1;
  bool bVar2;
  char *pcVar3;
  int iVar4;
  uint cchWideChar;
  undefined4 *puVar5;
  LPCWSTR lpDestStr;
  int iVar6;
  LPCWSTR local_10;
  uint local_c;
  
  pcVar3 = param_4;
  iVar6 = param_5;
  if (0 < param_5) {
    do {
      iVar6 = iVar6 + -1;
      if (*pcVar3 == '\0') goto LAB_100095ca;
      pcVar3 = pcVar3 + 1;
    } while (iVar6 != 0);
    iVar6 = -1;
LAB_100095ca:
    iVar6 = param_5 - iVar6;
    iVar4 = iVar6 + -1;
    bVar2 = iVar4 < param_5;
    param_5 = iVar4;
    if (bVar2) {
      param_5 = iVar6;
    }
  }
  local_c = 0;
  if (param_8 == 0) {
    param_8 = param_1->locinfo->lc_codepage;
  }
  cchWideChar = MultiByteToWideChar(param_8,(uint)(param_9 != 0) * 8 + 1,param_4,param_5,(LPWSTR)0x0
                                    ,0);
  if (cchWideChar == 0) {
    return 0;
  }
  if (((int)cchWideChar < 1) || (0xffffffe0 / cchWideChar < 2)) {
    local_10 = (LPCWSTR)0x0;
  }
  else {
    uVar1 = cchWideChar * 2 + 8;
    if (uVar1 < 0x401) {
      puVar5 = (undefined4 *)&stack0xffffffe0;
      local_10 = (LPCWSTR)&stack0xffffffe0;
      if (&stack0x00000000 != (undefined1 *)0x20) {
LAB_1000965a:
        local_10 = (LPCWSTR)(puVar5 + 2);
      }
    }
    else {
      puVar5 = _malloc(uVar1);
      local_10 = (LPCWSTR)0x0;
      if (puVar5 != (undefined4 *)0x0) {
        *puVar5 = 0xdddd;
        goto LAB_1000965a;
      }
    }
  }
  if (local_10 == (LPCWSTR)0x0) {
    return 0;
  }
  iVar6 = MultiByteToWideChar(param_8,1,param_4,param_5,local_10,cchWideChar);
  if ((iVar6 != 0) &&
     (local_c = LCMapStringW(param_2,param_3,local_10,cchWideChar,(LPWSTR)0x0,0), local_c != 0)) {
    if ((param_3 & 0x400) == 0) {
      if (((int)local_c < 1) || (0xffffffe0 / local_c < 2)) {
        lpDestStr = (LPCWSTR)0x0;
      }
      else {
        uVar1 = local_c * 2 + 8;
        if (uVar1 < 0x401) {
          if (&stack0x00000000 == (undefined1 *)0x20) goto LAB_10009763;
          lpDestStr = (LPCWSTR)&stack0xffffffe8;
        }
        else {
          lpDestStr = _malloc(uVar1);
          if (lpDestStr != (LPCWSTR)0x0) {
            lpDestStr[0] = L'\xdddd';
            lpDestStr[1] = L'\0';
            lpDestStr = lpDestStr + 4;
          }
        }
      }
      if (lpDestStr != (LPCWSTR)0x0) {
        iVar6 = LCMapStringW(param_2,param_3,local_10,cchWideChar,lpDestStr,local_c);
        if (iVar6 != 0) {
          if (param_7 == 0) {
            param_7 = 0;
            param_6 = (LPSTR)0x0;
          }
          local_c = WideCharToMultiByte(param_8,0,lpDestStr,local_c,param_6,param_7,(LPCSTR)0x0,
                                        (LPBOOL)0x0);
        }
        __freea(lpDestStr);
      }
    }
    else if ((param_7 != 0) && ((int)local_c <= param_7)) {
      LCMapStringW(param_2,param_3,local_10,cchWideChar,(LPWSTR)param_6,param_7);
    }
  }
LAB_10009763:
  __freea(local_10);
  return local_c;
}

