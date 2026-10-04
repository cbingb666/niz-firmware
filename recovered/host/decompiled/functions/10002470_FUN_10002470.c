/* Address: 0x10002470; body bytes: 181 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

uint __thiscall FUN_10002470(void *this,LPWSTR param_1)

{
  uint uVar1;
  int iVar2;
  int local_90;
  undefined1 local_8c [2];
  CHAR local_8a [62];
  undefined2 local_4c;
  undefined1 local_4a;
  undefined1 local_49 [65];
  uint local_8;
  
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  local_4c = 0;
  local_4a = 0xf9;
  _memset(local_49,0,0x3e);
  uVar1 = (*(code *)**(undefined4 **)this)(&local_4c,0x41);
  if ((char)uVar1 != '\0') {
    local_90 = 0x40;
    uVar1 = (**(code **)(*(int *)this + 4))(local_8c,&local_90,100000);
    if ((char)uVar1 != '\0') {
      iVar2 = MultiByteToWideChar(0,0,local_8a,local_90 + -2,param_1,local_90 + -2);
      return CONCAT31((int3)((uint)iVar2 >> 8),1);
    }
  }
  return uVar1 & 0xffffff00;
}

