/* Address: 0x100061d7; body bytes: 61 */

/* Library Function - Single Match
    __mtterm
   
   Library: Visual Studio 2010 Release */

void __cdecl __mtterm(void)

{
  code *pcVar1;
  int iVar2;
  
  if (DAT_1000f204 != -1) {
    iVar2 = DAT_1000f204;
    pcVar1 = DecodePointer(DAT_100106cc);
    (*pcVar1)(iVar2);
    DAT_1000f204 = -1;
  }
  if (DAT_1000f208 != 0xffffffff) {
    TlsFree(DAT_1000f208);
    DAT_1000f208 = 0xffffffff;
  }
  __mtdeletelocks();
  return;
}

