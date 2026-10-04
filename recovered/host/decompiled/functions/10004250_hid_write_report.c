/* Address: 0x10004250; body bytes: 36 */

bool __thiscall hid_write_report(void *this,LPCVOID param_1,DWORD param_2)

{
  BOOL BVar1;
  
  BVar1 = WriteFile(*(HANDLE *)((int)this + 4),param_1,param_2,&param_2,(LPOVERLAPPED)0x0);
  return BVar1 != 0;
}

