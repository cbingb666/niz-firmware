/* Address: 0x10002040; body bytes: 287 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* public: bool __thiscall CKB75HWI::setKeyboardLightArea(int *) */

bool __thiscall CKB75HWI::setKeyboardLightArea(CKB75HWI *this,int *param_1)

{
  char cVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 local_114 [50];
  ushort local_4c;
  undefined1 local_4a;
  char local_49;
  undefined1 local_48 [64];
  uint local_8;
  
                    /* 0x2040  22  ?setKeyboardLightArea@CKB75HWI@@QAE_NPAH@Z */
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  iVar2 = 0;
  do {
    *(char *)((int)local_114 + iVar2) = (char)param_1[iVar2];
    iVar2 = iVar2 + 1;
  } while (iVar2 < 0xc6);
  puVar4 = local_114;
  puVar6 = (undefined4 *)(*(int *)(this + 4) + 0xc);
  for (iVar2 = 0x31; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar6 = *puVar4;
    puVar4 = puVar4 + 1;
    puVar6 = puVar6 + 1;
  }
  *(undefined2 *)puVar6 = *(undefined2 *)puVar4;
  iVar2 = *(int *)(this + 4);
  local_4c = 0;
  local_4a = 0xe1;
  _memset(&local_49,0,0x3e);
  cVar1 = (**(code **)**(undefined4 **)(iVar2 + 4))(&local_4c,0x41);
  if (cVar1 != '\0') {
    iVar5 = 0;
    do {
      uVar3 = 0xca - iVar5;
      if (0x41 < uVar3) {
        uVar3 = 0x41;
      }
      _memset(&local_4c,0,0x41);
      local_49 = (char)uVar3 + -4;
      local_4c = 0;
      local_4a = 0xe0;
      FID_conflict__memcpy(local_48,(void *)(iVar2 + 0xc + iVar5),uVar3 - 4);
      iVar5 = iVar5 + -4 + uVar3;
      cVar1 = (**(code **)**(undefined4 **)(iVar2 + 4))(&local_4c,0x41);
      if (cVar1 == '\0') {
        return true;
      }
    } while (iVar5 < 0xc6);
    _memset(&local_4c,0xe6,0x41);
    local_4c = local_4c & 0xff00;
    (**(code **)**(undefined4 **)(iVar2 + 4))(&local_4c,0x41);
  }
  return true;
}

