/* Address: 0x10004280; body bytes: 120 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

undefined4 __thiscall hid_read_payload(void *this,void *param_1,size_t *param_2)

{
  BOOL BVar1;
  uint uVar2;
  DWORD local_50;
  undefined1 local_4c;
  undefined1 local_4b [67];
  uint local_8;
  
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  BVar1 = ReadFile(*(HANDLE *)((int)this + 4),&local_4c,0x41,&local_50,(LPOVERLAPPED)0x0);
  if (BVar1 != 0) {
    FID_conflict__memcpy(param_1,local_4b,*param_2);
    uVar2 = local_50 - 1;
    if (local_50 - 1 < *param_2) {
      uVar2 = *param_2;
    }
    *param_2 = uVar2;
    return CONCAT31((int3)(uVar2 >> 8),1);
  }
  return 0;
}

