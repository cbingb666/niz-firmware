/* Address: 0x0000aafc; body bytes: 210 */

void FUN_0000aafc(char *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  undefined1 *puVar5;
  
  if (0xf9 < DAT_20000369) {
    iVar2 = (uint)DAT_2000036b * 0xf;
    cVar1 = (&DAT_20002264)[iVar2];
    puVar5 = &DAT_20002264 + iVar2;
    if (cVar1 == '\x01') {
      DAT_20000348 = 0x28;
      FUN_0000aa8c(&DAT_20002265 + iVar2);
    }
    else if (cVar1 == '\x03') {
      DAT_2000034a = 0x28;
      FUN_0000aa18(puVar5,0xf,0x28,puVar5,param_4);
    }
    else if (cVar1 == '\x04') {
      DAT_2000034a = 0x28;
      FUN_0000aa18(puVar5,5,0x28,puVar5,param_4);
    }
    DAT_2000036b = DAT_2000036b + 1;
    DAT_20000369 = DAT_20000369 - 1;
    if (0xf9 < DAT_2000036b) {
      DAT_2000036b = 0;
    }
  }
  cVar1 = *param_1;
  if (cVar1 == '\x01') {
    uVar4 = (uint)DAT_2000036a;
    uVar3 = 0;
    do {
      (&DAT_20002264)[uVar3 + uVar4 * 0xf] = param_1[uVar3];
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 9);
  }
  else if (cVar1 == '\x03') {
    uVar4 = (uint)DAT_2000036a;
    uVar3 = 0;
    do {
      (&DAT_20002264)[uVar3 + uVar4 * 0xf] = param_1[uVar3];
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 0xf);
  }
  else if (cVar1 == '\x04') {
    uVar4 = (uint)DAT_2000036a;
    uVar3 = 0;
    do {
      (&DAT_20002264)[uVar3 + uVar4 * 0xf] = param_1[uVar3];
      uVar3 = uVar3 + 1 & 0xff;
    } while (uVar3 < 5);
  }
  DAT_2000036a = DAT_2000036a + 1;
  DAT_20000369 = DAT_20000369 + 1;
  if (0xf9 < DAT_2000036a) {
    DAT_2000036a = 0;
  }
  return;
}

