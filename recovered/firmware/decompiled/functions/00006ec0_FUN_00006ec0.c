/* Address: 0x00006ec0; body bytes: 188 */

void FUN_00006ec0(uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined4 local_18;
  
  uVar1 = (undefined1)param_1;
  if (DAT_2000031e == -0xd) {
    local_18 = 0xfa;
    FUN_00006c84(&local_18,1);
    DAT_2000031e = uVar1;
    DAT_20000c5a = *(undefined2 *)(&DAT_0000c0d6 + ((param_1 & 0x7f) >> 5) * 2);
    return;
  }
  if (DAT_2000031e == -0x13) {
    uVar2 = uVar1;
    if (transport_is_wired != '\0') {
      DAT_20000c61 = uVar1;
      local_18 = param_4;
      FUN_00006470(param_1);
      uVar2 = DAT_20000c62;
    }
switchD_00006ee4_caseD_ed:
    DAT_20000c62 = uVar2;
    local_18 = 0xfa;
    FUN_00006c84(&local_18,1);
  }
  else {
    uVar2 = DAT_20000c62;
    switch(param_1) {
    case 0xec:
      local_18 = 0xfe;
      FUN_00006c84(&local_18,1);
      break;
    default:
      goto switchD_00006ee4_caseD_ed;
    case 0xee:
      local_18 = 0xee;
      FUN_00006c84(&local_18,1);
      break;
    case 0xf2:
      local_18 = 0xfa;
      FUN_00006c84(&local_18,1);
      local_18 = 0xab;
      FUN_00006c84(&local_18,1);
      local_18 = 0x83;
      FUN_00006c84(&local_18,1);
      break;
    case 0xfe:
      break;
    case 0xff:
      local_18 = 0xfa;
      FUN_00006c84(&local_18,1);
      delay_ms(10);
      local_18 = 0xaa;
      FUN_00006c84(&local_18,1);
    }
  }
  DAT_2000031e = uVar1;
  return;
}

