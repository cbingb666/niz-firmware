/* Address: 0x00008db8; body bytes: 124 */

void FUN_00008db8(void)

{
  dword dVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  byte local_10 [4];
  
  local_10[0] = 1;
  local_10[1] = 2;
  local_10[2] = 2;
  local_10[3] = 4;
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
                             (uint)local_10[(dVar1 & 0xffff) >> 0xe] * (((dVar1 & 0x3fff) >> 9) + 2)
                            );
      uVar2 = iVar3 << 2;
    }
  }
  else {
    uVar2 = 0;
  }
  dVar1 = CLK_CLKSEL0;
  uVar5 = dVar1 & 7;
  uVar4 = uVar2;
  if (uVar5 != 2) {
    if (uVar5 == 1) {
      uVar4 = uVar2 >> 1;
    }
    else {
      uVar4 = *(uint *)(&DAT_2000000c + uVar5 * 4);
    }
  }
  dVar1 = CLK_CLKDIV;
  DAT_20000008 = uVar2;
  DAT_20000000 = aeabi_uidivmod(uVar4,(dVar1 & 0xf) + 1);
  DAT_20000004 = aeabi_uidivmod(DAT_20000000 + 500000);
  return;
}

