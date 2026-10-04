/* Address: 0x00002f2c; body bytes: 190 */

undefined4 FUN_00002f2c(char *param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  char cVar3;
  
  if (DAT_200003b3 == 0) {
    if ((((DAT_200003b4 == 0) && (DAT_200003b5 == 0)) && (DAT_200003b6 == 0)) &&
       ((DAT_200003b7 == 0 && (DAT_200003b8 == 0)))) {
      return 0;
    }
  }
  else if (DAT_200003b3 == 0xf6) {
    bVar2 = (DAT_200003b4 - 10) + DAT_200003b5 + DAT_200003b6 + DAT_200003b7;
    cVar3 = '\x01';
    bVar1 = DAT_200003b8;
    goto LAB_00002f66;
  }
  bVar2 = DAT_200003b3 + DAT_200003b4 + DAT_200003b5;
  cVar3 = '\0';
  bVar1 = DAT_200003b6;
LAB_00002f66:
  *param_1 = cVar3;
  if (bVar1 == bVar2) {
    DAT_20000cca = 0;
    if (*param_1 == '\0') {
      if (((DAT_200003b5 < 7) && (DAT_200003b4 < 6)) && (DAT_200003b3 < 8)) {
        DAT_20000cca = 0;
        return 1;
      }
    }
    else if ((((DAT_200003b7 < 7) && (DAT_200003b6 < 6)) && (DAT_200003b5 < 8)) &&
            (DAT_200003b4 < 2)) {
      return 1;
    }
  }
  else if (((DAT_20000ccb != '\x01') && (DAT_20000ccc == '\0')) &&
          ((param_2 != 0 && (FUN_00007784(), DAT_20000cca < 5)))) {
    FUN_00002cf8(0xf6);
    DAT_20000cca = DAT_20000cca + 1;
  }
  return 0;
}

