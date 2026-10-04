/* Address: 0x100073c9; body bytes: 74 */

/* Library Function - Single Match
    __mtinitlocks
   
   Library: Visual Studio 2010 Release */

int __cdecl __mtinitlocks(void)

{
  BOOL BVar1;
  int iVar2;
  undefined *puVar3;
  
  iVar2 = 0;
  puVar3 = &DAT_100107e8;
  do {
    if ((&DAT_1000f254)[iVar2 * 2] == 1) {
      (&DAT_1000f250)[iVar2 * 2] = puVar3;
      puVar3 = puVar3 + 0x18;
      BVar1 = InitializeCriticalSectionAndSpinCount
                        ((LPCRITICAL_SECTION)(&DAT_1000f250)[iVar2 * 2],4000);
      if (BVar1 == 0) {
        (&DAT_1000f250)[iVar2 * 2] = 0;
        return 0;
      }
    }
    iVar2 = iVar2 + 1;
  } while (iVar2 < 0x24);
  return 1;
}

