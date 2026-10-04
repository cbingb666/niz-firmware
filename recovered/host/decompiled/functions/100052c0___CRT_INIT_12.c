/* Address: 0x100052c0; body bytes: 332 */

/* WARNING: Function: __SEH_prolog4 replaced with injection: SEH_prolog4 */
/* WARNING: Function: __SEH_epilog4 replaced with injection: EH_epilog3 */
/* Library Function - Single Match
    __CRT_INIT@12
   
   Library: Visual Studio 2010 Release */

undefined4 __CRT_INIT_12(undefined4 param_1,int param_2,int param_3)

{
  int iVar1;
  _ptiddata _Ptd;
  code *pcVar2;
  DWORD DVar3;
  undefined4 uVar4;
  _ptiddata p_Var5;
  
  if (param_2 == 1) {
    iVar1 = __heap_init();
    if (iVar1 != 0) {
      iVar1 = __mtinit();
      if (iVar1 != 0) {
        __RTC_Initialize();
        DAT_10010efc = GetCommandLineA();
        DAT_1000fd14 = ___crtGetEnvironmentStringsA();
        iVar1 = __ioinit();
        if (-1 < iVar1) {
          iVar1 = __setargv();
          if (((-1 < iVar1) && (iVar1 = __setenvp(), -1 < iVar1)) &&
             (iVar1 = __cinit(0), iVar1 == 0)) {
            DAT_1000fd10 = DAT_1000fd10 + 1;
            return 1;
          }
          __ioterm();
        }
        __mtterm();
      }
      __heap_term();
    }
  }
  else if (param_2 == 0) {
    if (0 < DAT_1000fd10) {
      DAT_1000fd10 = DAT_1000fd10 + -1;
      if (DAT_10010088 == 0) {
        __cexit();
      }
      if (param_3 == 0) {
        __ioterm();
        __mtterm();
        __heap_term();
      }
      FUN_10005399();
      return 1;
    }
  }
  else {
    if (param_2 != 2) {
      if (param_2 != 3) {
        return 1;
      }
      __freeptd((_ptiddata)0x0);
      return 1;
    }
    ___set_flsgetvalue();
    _Ptd = __calloc_crt(1,0x214);
    if (_Ptd != (_ptiddata)0x0) {
      uVar4 = DAT_1000f204;
      p_Var5 = _Ptd;
      pcVar2 = DecodePointer(DAT_100106c8);
      iVar1 = (*pcVar2)(uVar4,p_Var5);
      if (iVar1 != 0) {
        __initptd(_Ptd,(pthreadlocinfo)0x0);
        DVar3 = GetCurrentThreadId();
        _Ptd->_tid = DVar3;
        _Ptd->_thandle = 0xffffffff;
        return 1;
      }
      _free(_Ptd);
    }
  }
  return 0;
}

