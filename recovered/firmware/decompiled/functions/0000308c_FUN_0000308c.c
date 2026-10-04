/* Address: 0x0000308c; body bytes: 312 */

void FUN_0000308c(int param_1)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  char cVar4;
  
  uVar3 = (uint)DAT_20000cc7;
  cVar4 = DAT_20000cd7 + 1;
  if (5 < DAT_20000cd4) {
switchD_000030ae_caseD_0:
    return;
  }
                    /* WARNING: Switch is manually overridden */
  switch(DAT_20000cd4) {
  case 0:
    goto switchD_000030ae_caseD_0;
  case 1:
    if (param_1 != 0) {
      if (4 < DAT_20000cd7) {
        DAT_20000cc7 = DAT_20000cc7 & 0xf8;
        return;
      }
      DAT_20000cc7 = DAT_20000cc7 & 0xf8 | 4;
      DAT_20000cd7 = cVar4;
      return;
    }
    bVar2 = (byte)(uVar3 & 0xfc);
    if ((int)((uVar3 & 0xfc) << 0x1d) < 0) {
      bVar1 = 0xfb;
LAB_00003112:
      DAT_20000cc7 = bVar2 & bVar1;
      return;
    }
    bVar1 = 4;
    goto LAB_000031c4;
  case 2:
    if (param_1 != 0) {
      DAT_20000cc7 = DAT_20000cc7 & 0xf8;
      if (4 < DAT_20000cd7) {
        return;
      }
LAB_000030fc:
      DAT_20000cd7 = cVar4;
      DAT_20000cc7 = DAT_20000cc7 | 2;
      return;
    }
    bVar2 = (byte)(uVar3 & 0xfa);
    if ((int)((uVar3 & 0xfa) << 0x1e) < 0) {
      bVar1 = 0xfd;
      goto LAB_00003112;
    }
    break;
  case 3:
    if (param_1 == 0) {
      if ((DAT_20000cc7 & 1) != 0) {
        DAT_20000cc7 = DAT_20000cc7 & 0xf8;
        return;
      }
      DAT_20000cc7 = DAT_20000cc7 & 0xf9 | 1;
      return;
    }
    DAT_20000cc7 = DAT_20000cc7 & 0xf8;
    if (4 < DAT_20000cd7) {
      return;
    }
LAB_00003128:
    DAT_20000cc7 = DAT_20000cc7 | 1;
    DAT_20000cd7 = cVar4;
    return;
  case 4:
    if (param_1 != 0) {
      if (4 < DAT_20000cd7) {
        DAT_20000cc7 = DAT_20000cc7 & 0xf8;
        return;
      }
      DAT_20000cc7 = DAT_20000cc7 & 0xf8 | 4;
      goto LAB_000030fc;
    }
    bVar2 = (DAT_20000cc7 >> 1) << 1;
    if ((int)((uint)(DAT_20000cc7 >> 1) << 0x1e) < 0) {
      bVar2 = bVar2 & 0xfb;
    }
    else {
      bVar2 = bVar2 | 4;
    }
    if ((int)((uint)bVar2 << 0x1e) < 0) {
      DAT_20000cc7 = bVar2 & 0xfd;
      return;
    }
    break;
  case 5:
    if (param_1 != 0) {
      if (4 < DAT_20000cd7) {
        DAT_20000cc7 = DAT_20000cc7 & 0xf8;
        return;
      }
      DAT_20000cc7 = DAT_20000cc7 & 0xf8 | 2;
      goto LAB_00003128;
    }
    if ((int)(uVar3 << 0x1e) < 0) {
      bVar2 = DAT_20000cc7 & 0xf9;
    }
    else {
      bVar2 = DAT_20000cc7 & 0xfb | 2;
    }
    if ((bVar2 & 1) != 0) {
      DAT_20000cc7 = bVar2 & 0xfe;
      return;
    }
    bVar1 = 1;
    goto LAB_000031c4;
  }
  bVar1 = 2;
LAB_000031c4:
  DAT_20000cc7 = bVar2 | bVar1;
  return;
}

