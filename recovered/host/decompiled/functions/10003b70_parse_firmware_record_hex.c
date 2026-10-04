/* Address: 0x10003b70; body bytes: 199 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined * __cdecl parse_firmware_record_hex(int *param_1)

{
  char cVar1;
  char *in_EAX;
  char cVar2;
  char *pcVar3;
  int iVar4;
  char *pcVar5;
  
  iVar4 = 0;
  pcVar5 = &DAT_100109da;
  _memset(&DAT_100109d8,0,1000);
  _DAT_100109d8 = 0x3a00;
  cVar2 = *in_EAX;
  if (cVar2 != '\0') {
    pcVar3 = in_EAX + 1;
    do {
      if (cVar2 == '\n') break;
      iVar4 = iVar4 + 1;
      cVar1 = '\0';
      if (('`' < cVar2) && (cVar2 < 'g')) {
        cVar1 = cVar2 + -0x57;
      }
      if (('@' < cVar2) && (cVar2 < 'G')) {
        cVar1 = cVar2 + -0x37;
      }
      if (('/' < cVar2) && (cVar2 < ':')) {
        cVar1 = cVar2 + -0x30;
      }
      cVar2 = *pcVar3;
      cVar1 = cVar1 * '\x10';
      if (('`' < cVar2) && (cVar2 < 'g')) {
        cVar1 = cVar1 + -0x57 + cVar2;
      }
      if (('@' < cVar2) && (cVar2 < 'G')) {
        cVar1 = cVar1 + -0x37 + cVar2;
      }
      if (('/' < cVar2) && (cVar2 < ':')) {
        cVar1 = cVar1 + -0x30 + cVar2;
      }
      *pcVar5 = cVar1;
      cVar2 = pcVar3[1];
      pcVar5 = pcVar5 + 1;
      pcVar3 = pcVar3 + 2;
    } while (cVar2 != '\0');
  }
  *param_1 = iVar4 + 3;
  return &DAT_100109d8;
}

