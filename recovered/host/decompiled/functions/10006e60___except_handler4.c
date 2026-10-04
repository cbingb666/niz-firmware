/* Address: 0x10006e60; body bytes: 399 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* Library Function - Single Match
    __except_handler4
   
   Library: Visual Studio 2010 Release */

undefined4 __cdecl __except_handler4(PEXCEPTION_RECORD param_1,PVOID param_2,undefined4 param_3)

{
  undefined *puVar1;
  int iVar2;
  BOOL BVar3;
  PVOID pvVar4;
  uint uVar5;
  PEXCEPTION_RECORD local_1c;
  undefined4 local_18;
  uint *local_14;
  undefined4 local_10;
  PVOID local_c;
  undefined1 local_5;
  
  uVar5 = *(uint *)((int)param_2 + 8) ^ DAT_1000f080;
  local_5 = 0;
  local_10 = 1;
  pvVar4 = param_2;
  if ((param_1->ExceptionFlags & 0x66) == 0) {
    *(PEXCEPTION_RECORD **)((int)param_2 + -4) = &local_1c;
    local_c = *(PVOID *)((int)param_2 + 0xc);
    local_1c = param_1;
    local_18 = param_3;
    do {
      do {
        pvVar4 = local_c;
        if (pvVar4 == (PVOID)0xfffffffe) {
          return local_10;
        }
        puVar1 = *(undefined **)(uVar5 + ((int)pvVar4 * 3 + 5) * 4);
        local_14 = (uint *)(uVar5 + ((int)pvVar4 * 3 + 4) * 4);
        local_c = (PVOID)*local_14;
      } while (puVar1 == (undefined *)0x0);
      iVar2 = _EH4_CallFilterFunc(puVar1);
      local_5 = 1;
      if (iVar2 < 0) {
        return 0;
      }
    } while (iVar2 < 1);
    if ((param_1->ExceptionCode == 0xe06d7363) &&
       (BVar3 = __IsNonwritableInCurrentImage((PBYTE)&PTR____DestructExceptionObject_1000d500),
       BVar3 != 0)) {
      ___DestructExceptionObject((int *)param_1);
    }
    _EH4_GlobalUnwind2(param_2,param_1);
    if (*(PVOID *)((int)param_2 + 0xc) != pvVar4) {
      _EH4_LocalUnwind((int)param_2,(uint)pvVar4,(int)param_2 + 0x10,&DAT_1000f080);
    }
    *(PVOID *)((int)param_2 + 0xc) = local_c;
    _EH4_TransferToHandler((undefined *)local_14[2]);
  }
  if (*(int *)((int)pvVar4 + 0xc) != -2) {
    _EH4_LocalUnwind((int)pvVar4,0xfffffffe,(int)param_2 + 0x10,&DAT_1000f080);
  }
  return local_10;
}

