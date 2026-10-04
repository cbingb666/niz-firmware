/* Address: 0x10001a80; body bytes: 233 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

undefined1 read_rgb_configuration_stream(void)

{
  char cVar1;
  int iVar2;
  int unaff_ESI;
  uint _Size;
  undefined4 local_90;
  undefined2 local_8c;
  undefined1 local_8a;
  undefined1 local_89 [65];
  undefined1 local_48;
  char local_47;
  byte local_46;
  undefined1 local_45 [61];
  uint local_8;
  
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  iVar2 = 0;
  local_8c = 0;
  local_8a = 0xe2;
  _memset(local_89,0,0x3e);
  cVar1 = (**(code **)**(undefined4 **)(unaff_ESI + 4))(&local_8c,0x41);
  if (cVar1 == '\0') {
    return 0;
  }
  local_90 = 0x40;
  cVar1 = (**(code **)(**(int **)(unaff_ESI + 4) + 4))(&local_48,&local_90,100000);
  while( true ) {
    if (cVar1 == '\0') {
      return 0;
    }
    if (local_47 == -0x1a) break;
    if (local_47 == -0x20) {
      _Size = (uint)local_46;
      FID_conflict__memcpy((void *)(unaff_ESI + 0xc + iVar2),local_45,_Size);
      iVar2 = iVar2 + _Size;
    }
    cVar1 = (**(code **)(**(int **)(unaff_ESI + 4) + 4))(&local_48,&local_90,100000);
  }
  return 1;
}

