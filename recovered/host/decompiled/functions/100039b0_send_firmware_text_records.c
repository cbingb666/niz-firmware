/* Address: 0x100039b0; body bytes: 430 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

uint __fastcall
send_firmware_text_records(HWND param_1,char *param_2,undefined4 *param_3,int param_4)

{
  WPARAM WVar1;
  char cVar2;
  char *pcVar3;
  uint uVar4;
  undefined4 *puVar5;
  WPARAM wParam;
  char *pcVar6;
  int iVar7;
  undefined4 *puVar8;
  int local_44c;
  HWND local_448;
  undefined4 *local_444;
  int local_440;
  int local_43c;
  WPARAM local_438;
  char local_434 [1000];
  undefined1 local_4c;
  undefined4 local_4b [16];
  uint local_8;
  
  local_8 = DAT_1000f080 ^ (uint)&stack0xfffffffc;
  local_444 = param_3;
  if (((param_2 == (char *)0x0) || (param_4 == 0)) || (*param_2 != ':')) {
    return (uint)param_3 & 0xffffff00;
  }
  local_440 = 0;
  cVar2 = ':';
  pcVar6 = param_2;
  do {
    if (cVar2 == '\r') {
      local_440 = local_440 + 1;
    }
    cVar2 = pcVar6[1];
    pcVar6 = pcVar6 + 1;
  } while (cVar2 != '\0');
  local_43c = 0;
  local_448 = param_1;
  WVar1 = 0;
  while( true ) {
    local_438 = WVar1;
    pcVar6 = _strstr(param_2,"\r");
    if (pcVar6 == (char *)0x0) {
      iVar7 = (int)local_434 - (int)param_2;
      do {
        cVar2 = *param_2;
        param_2[iVar7] = cVar2;
        param_2 = param_2 + 1;
      } while (cVar2 != '\0');
    }
    else {
      FID_conflict__memcpy(local_434,param_2,(int)pcVar6 - (int)param_2);
      local_434[(int)pcVar6 - (int)param_2] = '\0';
    }
    pcVar3 = local_434;
    do {
      cVar2 = *pcVar3;
      pcVar3 = pcVar3 + 1;
    } while (cVar2 != '\0');
    uVar4 = (int)pcVar3 - (int)(local_434 + 1);
    if (uVar4 == 0) {
      return 1;
    }
    param_2 = pcVar6 + 1;
    if (pcVar6[1] == '\n') {
      param_2 = pcVar6 + 2;
    }
    if (local_434[0] != ':') break;
    puVar5 = (undefined4 *)parse_firmware_record_hex(&local_44c);
    local_4c = 0;
    _memset(local_4b,0,0x40);
    puVar8 = local_4b;
    for (iVar7 = 0x10; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar8 = *puVar5;
      puVar5 = puVar5 + 1;
      puVar8 = puVar8 + 1;
    }
    uVar4 = (**(code **)*local_444)(&local_4c,0x41);
    if ((char)uVar4 == '\0') break;
    local_43c = local_43c + 0x96;
    wParam = local_43c / local_440;
    WVar1 = local_438;
    if (((int)local_438 < (int)wParam) && (WVar1 = wParam, local_448 != (HWND)0x0)) {
      PostMessageW(local_448,0x467,wParam,0);
    }
  }
  return uVar4 & 0xffffff00;
}

