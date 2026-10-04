/* Address: 0x100014d0; body bytes: 888 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

undefined1 __thiscall read_key_configuration_stream(void *this,HWND param_1)

{
  WPARAM wParam;
  char cVar1;
  int iVar2;
  undefined4 *_Memory;
  uint uVar3;
  char *pcVar4;
  uint uVar5;
  undefined4 *puVar6;
  int local_a8;
  undefined4 *local_9c;
  undefined4 local_94;
  int *local_90;
  undefined2 local_8c;
  undefined1 local_8a;
  undefined1 local_89 [65];
  char local_48;
  char local_47;
  byte local_46;
  byte local_45;
  undefined1 local_44;
  undefined1 local_3f;
  undefined1 local_3e;
  uint local_8;
  
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  local_8c = 0;
  local_8a = 0xf2;
  _memset(local_89,0,0x3e);
  cVar1 = (**(code **)**(undefined4 **)((int)this + 4))(&local_8c,0x41);
  if (cVar1 == '\0') {
    return 0;
  }
  local_94 = 0x40;
  cVar1 = (**(code **)(**(int **)((int)this + 4) + 4))(&local_48,&local_94,100000);
  do {
    if (cVar1 == '\0') {
      return 0;
    }
    if (local_48 == -10) {
      return 1;
    }
    if (local_47 != -0x10) goto LAB_1000164d;
    uVar3 = (uint)local_46;
    uVar5 = (uint)local_45;
    wParam = (uVar5 - 0x43) + uVar3 * 0x42;
    if (*(int *)(*(int *)((int)this + 8) + wParam * 4) != 0) {
      FUN_10004d04(*(void **)(*(int *)((int)this + 8) + wParam * 4));
    }
    local_90 = (int *)0x0;
    switch(local_44) {
    case 0:
      local_90 = (int *)FUN_10005071(0x24);
      if (local_90 == (int *)0x0) {
LAB_100015f7:
        local_90 = (int *)0x0;
      }
      else {
        local_90[1] = uVar5;
        local_90[2] = uVar3;
        *local_90 = (int)CNormalKeyDefine::vftable;
        local_90[4] = 0;
        local_90[5] = 0;
        local_90[6] = 0;
        local_90[3] = 0;
      }
      break;
    case 1:
      local_90 = (int *)FUN_10005071(0x28);
      if (local_90 == (int *)0x0) goto LAB_100015f7;
      local_90[1] = uVar5;
      local_90[2] = uVar3;
      *local_90 = (int)CContinousKeyDefine::vftable;
      local_90[5] = 0;
      local_90[6] = 0;
      local_90[7] = 0;
      local_90[3] = 1;
      break;
    case 2:
      iVar2 = FUN_10005071(0x40);
      if (iVar2 == 0) {
        local_90 = (int *)0x0;
        uRam0000000c = 2;
      }
      else {
        local_90 = (int *)FUN_10004300(uVar5,uVar3);
        local_90[3] = 2;
      }
      goto LAB_1000173f;
    case 3:
      iVar2 = FUN_10005071(0x40);
      if (iVar2 == 0) {
        local_90 = (int *)0x0;
        uRam0000000c = 3;
      }
      else {
        local_90 = (int *)FUN_10004300(uVar5,uVar3);
        local_90[3] = 3;
      }
      goto LAB_1000173f;
    case 4:
      iVar2 = FUN_10005071(0x40);
      if (iVar2 == 0) {
        local_90 = (int *)0x0;
      }
      else {
        local_90 = (int *)FUN_10004300(uVar5,uVar3);
      }
      local_90[3] = 4;
LAB_1000173f:
      if (CONCAT11(local_3f,local_3e) < 0x36) break;
      uVar3 = (CONCAT11(local_3f,local_3e) + 0x34) / 0x35;
      _Memory = _malloc(uVar3 * 0x40);
      pcVar4 = &local_48;
      puVar6 = _Memory;
      for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar6 = *(undefined4 *)pcVar4;
        pcVar4 = pcVar4 + 4;
        puVar6 = puVar6 + 1;
      }
      local_a8 = 1;
      local_9c = _Memory;
      if (1 < uVar3) {
        do {
          local_9c = local_9c + 0x10;
          cVar1 = (**(code **)(**(int **)((int)this + 4) + 4))(&local_48,&local_94,100000);
          if (cVar1 == '\0') {
            return 0;
          }
          local_a8 = local_a8 + 1;
          pcVar4 = &local_48;
          puVar6 = local_9c;
          for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
            *puVar6 = *(undefined4 *)pcVar4;
            pcVar4 = pcVar4 + 4;
            puVar6 = puVar6 + 1;
          }
        } while (local_a8 < (int)uVar3);
      }
      (**(code **)(*local_90 + 4))(_Memory,0x40,uVar3 * 0x40);
      _free(_Memory);
      goto LAB_10001619;
    }
    (**(code **)(*local_90 + 4))(&local_48,0x40,local_94);
LAB_10001619:
    *(int **)(*(int *)((int)this + 8) + wParam * 4) = local_90;
    if (param_1 != (HWND)0x0) {
      PostMessageW(param_1,0x467,wParam,0);
    }
LAB_1000164d:
    local_94 = 0x40;
    cVar1 = (**(code **)(**(int **)((int)this + 4) + 4))(&local_48,&local_94,100000);
  } while( true );
}

