/* Address: 0x10005210; body bytes: 134 */

/* Library Function - Single Match
    _strstr
   
   Libraries: Visual Studio 2005, Visual Studio 2008, Visual Studio 2010, Visual Studio 2019 */

char * __cdecl _strstr(char *_Str,char *_SubStr)

{
  char *pcVar1;
  char *pcVar2;
  char cVar3;
  uint *puVar4;
  char *pcVar5;
  char *pcVar6;
  
  if (*_SubStr == '\0') {
    return _Str;
  }
  if (_SubStr[1] == '\0') {
    puVar4 = FUN_10006076((uint *)_Str);
    return (char *)puVar4;
  }
  do {
    cVar3 = *_Str;
    do {
      while (_Str = _Str + 1, cVar3 != *_SubStr) {
        if (cVar3 == '\0') {
          return (char *)0x0;
        }
        cVar3 = *_Str;
      }
      cVar3 = *_Str;
      pcVar6 = _Str + 1;
      pcVar5 = _SubStr;
    } while (cVar3 != _SubStr[1]);
    do {
      if (pcVar5[2] == '\0') {
LAB_10005289:
        return _Str + -1;
      }
      if (*pcVar6 != pcVar5[2]) break;
      pcVar1 = pcVar5 + 3;
      if (*pcVar1 == '\0') goto LAB_10005289;
      pcVar2 = pcVar6 + 1;
      pcVar5 = pcVar5 + 2;
      pcVar6 = pcVar6 + 2;
    } while (*pcVar1 == *pcVar2);
  } while( true );
}

