/* Address: 0x00005b24; body bytes: 290 */

void FUN_00005b24(uint param_1,int param_2,undefined1 *param_3,undefined1 *param_4)

{
  char cVar1;
  int iVar2;
  undefined1 uVar3;
  
  uVar3 = 0;
  if (param_1 == 0x4e) {
    *param_3 = 0xe0;
    if (param_2 == 0) {
      param_3[1] = 0xf0;
      param_3[2] = 0x7c;
      param_3[3] = 0xe0;
      param_3[4] = 0xf0;
      param_3[5] = 0x12;
      uVar3 = 6;
    }
    else {
      param_3[1] = 0x12;
      param_3[2] = 0xe0;
      param_3[3] = 0x7c;
      uVar3 = 4;
    }
  }
  else if (param_1 == 0x50) {
    if (param_2 != 0) {
      *param_3 = 0xe1;
      param_3[1] = 0x14;
      param_3[2] = 0x77;
      param_3[3] = 0xe1;
      param_3[4] = 0xf0;
      param_3[5] = 0x14;
      param_3[6] = 0xf0;
      param_3[7] = 0x77;
      uVar3 = 8;
    }
  }
  else {
    iVar2 = param_1 * 3;
    if ((((param_1 == 0x37) || (param_1 - 0x42 < 4)) || (param_1 - 0x47 < 4)) ||
       (((param_1 == 0x2a || (param_1 == 0x4f)) || (param_1 == 0x5b)))) {
      cVar1 = (&DAT_0000c1de)[iVar2];
    }
    else {
      if (0x7d < param_1) {
        if (param_1 == 0xcc) {
          if (param_2 == 0) {
            *param_3 = 0xf0;
            param_3[1] = 0x61;
            uVar3 = 2;
          }
          else {
            *param_3 = 0x61;
            uVar3 = 1;
          }
        }
        else if (param_1 - 0xd2 < 0xc) {
          if (param_2 == 0) {
            *param_3 = 0xf0;
            param_3[1] = (&DAT_0000c286)[param_1];
            uVar3 = 2;
          }
          else {
            *param_3 = (&DAT_0000c286)[param_1];
            uVar3 = 1;
          }
        }
        goto LAB_00005c3e;
      }
      cVar1 = (&DAT_0000c1de)[iVar2];
    }
    if (param_2 == 0) {
      if (cVar1 == '\x01') {
        *param_3 = 0xf0;
        param_3[1] = (&DAT_0000c1df)[iVar2];
        uVar3 = 2;
      }
      else if (cVar1 == '\x02') {
        *param_3 = (&DAT_0000c1df)[iVar2];
        param_3[1] = 0xf0;
        param_3[2] = (&DAT_0000c1e0)[iVar2];
        uVar3 = 3;
      }
    }
    else if (cVar1 == '\x01') {
      *param_3 = (&DAT_0000c1df)[iVar2];
      uVar3 = 1;
    }
    else if (cVar1 == '\x02') {
      *param_3 = (&DAT_0000c1df)[iVar2];
      param_3[1] = (&DAT_0000c1e0)[iVar2];
      uVar3 = 2;
    }
  }
LAB_00005c3e:
  *param_4 = uVar3;
  return;
}

