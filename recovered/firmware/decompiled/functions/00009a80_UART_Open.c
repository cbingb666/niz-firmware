/* Address: 0x00009a80; body bytes: 120 */

/* UART baud-rate and line-control configuration. */

void UART_Open(int param_1,uint param_2)

{
  dword dVar1;
  dword dVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 local_28 [5];
  
  local_28[0] = 4000000;
  local_28[1] = 0;
  local_28[2] = 0;
  local_28[3] = 0x1518000;
  dVar1 = CLK_CLKSEL1;
  dVar2 = CLK_CLKDIV;
  uVar5 = (dVar1 & 0x3ffffff) >> 0x18;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 *)(param_1 + 0xc) = 3;
  *(uint *)(param_1 + 8) = *(uint *)(param_1 + 8) & 0xfff0ff0f;
  if (uVar5 == 1) {
    local_28[1] = FUN_000038e0();
  }
  if (param_2 != 0) {
    iVar3 = aeabi_uidivmod(local_28[uVar5],((dVar2 & 0xfff) >> 8) + 1);
    iVar4 = aeabi_uidivmod(iVar3 + (param_2 >> 1),param_2);
    if (iVar4 - 2U < 0x10000) {
      uVar5 = iVar4 - 2U | 0x30000000;
    }
    else {
      uVar5 = aeabi_uidivmod(iVar3 + param_2 * 8,param_2);
      uVar5 = (uVar5 >> 4) - 2;
    }
    *(uint *)(param_1 + 0x24) = uVar5;
  }
  return;
}

