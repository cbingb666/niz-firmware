/* Address: 0x10001860; body bytes: 542 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

bool __thiscall write_key_configuration_stream(void *this,HWND param_1)

{
  undefined4 *puVar1;
  char cVar2;
  char cVar3;
  void *_Dst;
  size_t sVar4;
  void *_Src;
  int local_64;
  int local_60;
  int local_58;
  int local_54;
  size_t local_50;
  undefined2 local_4c;
  undefined1 local_4a;
  char local_49;
  char local_48;
  undefined2 local_47;
  uint local_8;
  
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  local_4c = 0;
  local_4a = 0xf1;
  _memset(&local_49,0,0x3e);
  cVar2 = (**(code **)**(undefined4 **)((int)this + 4))(&local_4c,0x41);
  if (cVar2 == '\0') {
    return false;
  }
  cVar2 = '\0';
  local_54 = 0;
  local_60 = 0;
  do {
    local_64 = 0;
    local_58 = local_54;
    do {
      puVar1 = *(undefined4 **)(local_58 + *(int *)((int)this + 8));
      if (puVar1 == (undefined4 *)0x0) {
        _memset(&local_4c,0,0x41);
        local_49 = cVar2 + '\x01';
        local_48 = (char)local_64 + '\x01';
        local_4c = 0;
        local_4a = 0xf0;
        local_47 = 0;
        cVar3 = (**(code **)**(undefined4 **)((int)this + 4))(&local_4c,0x41);
        if (cVar3 == '\0') {
          return false;
        }
      }
      else {
        (**(code **)*puVar1)(0,0x40,&local_50,0);
        sVar4 = local_50;
        _Dst = _malloc(local_50);
        if (_Dst == (void *)0x0) {
          return false;
        }
        _memset(_Dst,0,sVar4);
        (**(code **)*puVar1)(_Dst,0x40,&local_50,0);
        _Src = _Dst;
        for (; local_50 != 0; local_50 = local_50 - sVar4) {
          sVar4 = 0x40;
          if (local_50 < 0x41) {
            sVar4 = local_50;
          }
          FID_conflict__memcpy((void *)((int)&local_4c + 1),_Src,sVar4);
          cVar3 = (**(code **)**(undefined4 **)((int)this + 4))(&local_4c,0x41);
          if (cVar3 == '\0') {
            _free(_Dst);
            return false;
          }
          _Src = (void *)((int)_Src + sVar4);
        }
        _free(_Dst);
      }
      if (param_1 != (HWND)0x0) {
        PostMessageW(param_1,0x467,local_60 + local_64,0);
      }
      local_58 = local_58 + 4;
      local_64 = local_64 + 1;
    } while (local_64 < 0x42);
    cVar2 = cVar2 + '\x01';
    local_54 = local_54 + 0x108;
    local_60 = local_60 + 0x42;
    if (0x251 < local_60) {
      local_4c = 0;
      _memset(&local_4a,0xf6,0x3f);
      cVar2 = (**(code **)**(undefined4 **)((int)this + 4))(&local_4c,0x41);
      return cVar2 != '\0';
    }
  } while( true );
}

