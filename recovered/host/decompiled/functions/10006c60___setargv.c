/* Address: 0x10006c60; body bytes: 187 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Library Function - Single Match
    __setargv
   
   Library: Visual Studio 2010 Release */

int __cdecl __setargv(void)

{
  uint _Size;
  uint uVar1;
  undefined4 *puVar2;
  uint local_10;
  uint local_c;
  char *local_8;
  
  if (DAT_10010eec == 0) {
    ___initmbctable();
  }
  DAT_100107dc = 0;
  GetModuleFileNameA((HMODULE)0x0,&DAT_100106d8,0x104);
  _DAT_1001007c = &DAT_100106d8;
  if ((DAT_10010efc == (char *)0x0) || (local_8 = DAT_10010efc, *DAT_10010efc == '\0')) {
    local_8 = &DAT_100106d8;
  }
  parse_cmdline((undefined4 *)0x0,(byte *)0x0,(int *)&local_c);
  uVar1 = local_c;
  if ((local_c < 0x3fffffff) && (local_10 != 0xffffffff)) {
    _Size = local_c * 4 + local_10;
    if ((local_10 <= _Size) && (puVar2 = __malloc_crt(_Size), puVar2 != (undefined4 *)0x0)) {
      parse_cmdline(puVar2,(byte *)(puVar2 + uVar1),(int *)&local_c);
      _DAT_10010060 = local_c - 1;
      _DAT_10010064 = puVar2;
      return 0;
    }
  }
  return -1;
}

