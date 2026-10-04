/* Address: 0x10006161; body bytes: 33 */

/* Library Function - Single Match
    __set_abort_behavior
   
   Library: Visual Studio 2010 Release */

uint __cdecl __set_abort_behavior(uint _Flags,uint _Mask)

{
  uint uVar1;
  
  uVar1 = DAT_1000f200;
  DAT_1000f200 = ~_Mask & DAT_1000f200 | _Flags & _Mask;
  return uVar1;
}

