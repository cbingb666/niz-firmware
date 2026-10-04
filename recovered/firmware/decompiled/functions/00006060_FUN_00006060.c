/* Address: 0x00006060; body bytes: 158 */

void FUN_00006060(void)

{
  int iVar1;
  
  if (((rgb_active != '\0') && (DAT_20000c5e == '\0')) &&
     (DAT_20000414 = DAT_20000414 + 1, 1 < DAT_20000414)) {
    DAT_20000414 = 0;
    if (DAT_20000401 == '\0') {
      DAT_20000400 = DAT_20000400 + 1;
      if (0x30 < DAT_20000400) {
        DAT_20000401 = '\x01';
      }
    }
    else {
      DAT_20000400 = DAT_20000400 - 1;
      if (DAT_20000400 == 0) {
        DAT_20000401 = '\0';
        DAT_200003ff = DAT_200003ff + 1;
        if (6 < DAT_200003ff) {
          DAT_200003ff = 0;
        }
        DAT_20003880 = 0;
        DAT_20003881 = 0;
        DAT_20003882 = 0;
      }
    }
    iVar1 = (uint)DAT_200003ff * 3;
    if ((&DAT_0000c86b)[iVar1] != '\0') {
      DAT_20003880 = (&DAT_0000c839)[DAT_20000400];
    }
    if ((&DAT_0000c86c)[iVar1] != '\0') {
      DAT_20003881 = (&DAT_0000c839)[DAT_20000400];
    }
    if ((&DAT_0000c86d)[iVar1] != '\0') {
      DAT_20003882 = (&DAT_0000c839)[DAT_20000400];
    }
    return;
  }
  return;
}

