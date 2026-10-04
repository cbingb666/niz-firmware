/* Address: 0x000038e0; body bytes: 70 */

uint FUN_000038e0(void)

{
  dword dVar1;
  uint uVar2;
  int iVar3;
  byte local_8 [4];
  
  local_8[0] = 1;
  local_8[1] = 2;
  local_8[2] = 2;
  local_8[3] = 4;
  dVar1 = CLK_PLLCON;
  if ((dVar1 & 0x50000) == 0) {
    if ((int)(dVar1 << 0xc) < 0) {
      uVar2 = 0x1518000;
    }
    else {
      uVar2 = 4000000;
    }
    if (-1 < (int)(dVar1 << 0xe)) {
      iVar3 = aeabi_uidivmod(((dVar1 & 0x1ff) + 2) * (uVar2 >> 2),
                             (uint)local_8[(dVar1 & 0xffff) >> 0xe] * (((dVar1 & 0x3fff) >> 9) + 2))
      ;
      return iVar3 << 2;
    }
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

