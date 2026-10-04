/* Address: 0x00006d40; body bytes: 316 */

undefined4 FUN_00006d40(uint *param_1,uint param_2,undefined4 param_3,int param_4)

{
  byte bVar1;
  dword dVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  byte abStack_98 [68];
  uint local_54;
  undefined4 local_50 [9];
  undefined4 local_2c;
  uint *puStack_24;
  uint uStack_20;
  undefined4 local_1c;
  int local_18;
  
  local_50[3] = 0x1518000;
  local_50[2] = 0;
  local_50[1] = 0;
  local_50[0] = 4000000;
  local_50[4] = 0;
  local_50[7] = 10000;
  local_50[6] = 0;
  uVar6 = 1;
  uVar7 = 0xff;
  local_50[5] = 0;
  puStack_24 = param_1;
  uStack_20 = param_2;
  local_1c = param_3;
  local_18 = param_4;
  aeabi_memcpy(abStack_98,&DAT_0000cc7c,0x44);
  local_54 = 0xffff;
  dVar2 = CLK_CLKSEL2;
  if (param_2 < 2) {
    uVar3 = dVar2 >> 6;
    dVar2 = CLK_CLKSEL1;
    uVar5 = (dVar2 & 0x3fffffff) >> 0x1c;
  }
  else {
    uVar3 = dVar2 >> 7;
    dVar2 = CLK_CLKSEL1;
    uVar5 = dVar2 >> 0x1e;
  }
  uVar5 = uVar3 & 4 | uVar5;
  if (uVar5 == 2) {
    FUN_00008db8();
    local_50[8] = DAT_20000000;
  }
  else {
    local_50[8] = local_50[uVar5];
  }
  local_2c = aeabi_uidivmod(local_50[8],local_1c);
  do {
    uVar3 = aeabi_uidivmod(local_2c,uVar6);
    if (uVar3 < 0x1000001) {
      uVar7 = (uVar3 + 0xffff & 0xffffff) >> 0x10;
      if (uVar7 < 3) {
        uVar7 = 2;
      }
      uVar3 = aeabi_uidivmod(uVar3,uVar7);
      if (uVar3 < 0x10001) {
        local_54 = 1;
        if (uVar3 != 1) {
          local_54 = uVar3 & 0xffff;
        }
        goto LAB_00006dfc;
      }
    }
    uVar6 = (uVar6 & 0x7f) << 1;
    if (0x10 < uVar6) {
LAB_00006dfc:
      local_50[8] = aeabi_uidivmod(local_50[8],local_54 * uVar6 * uVar7);
      uVar3 = local_54 - 1 & 0xffff;
      bVar1 = abStack_98[uVar6 * 4];
      uVar6 = (param_2 >> 1) << 3;
      *param_1 = *param_1 & ~(0xff << (uVar6 & 0xff)) | (uVar7 - 1 & 0xff) << (uVar6 & 0xff);
      param_1[1] = param_1[1] & ~(7 << (param_2 << 2 & 0xff)) | (uint)bVar1 << (param_2 << 2 & 0xff)
      ;
      param_1[2] = param_1[2] & ~(0x40000000 << (param_2 >> 1 & 0xff));
      param_1[2] = param_1[2] | 8 << ((param_2 & 0x1f) << 3);
      uVar6 = 0;
      if (local_18 != 0) {
        iVar4 = aeabi_uidivmod((uVar3 + 1) * local_18,100);
        uVar6 = iVar4 - 1;
      }
      param_1[param_2 * 3 + 4] = uVar6;
      param_1[param_2 * 3 + 3] = uVar3;
      return local_50[8];
    }
  } while( true );
}

