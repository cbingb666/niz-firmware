/* Address: 0x00006a8c; body bytes: 114 */

void FUN_00006a8c(int param_1)

{
  byte bVar1;
  char cVar2;
  undefined *puVar3;
  
  if (param_1 == 0) {
    cVar2 = (&DAT_0000c186)[DAT_20000c4c];
  }
  else {
    if (DAT_20000c4f == '\0') {
      puVar3 = &DAT_0000c18c;
      bVar1 = DAT_20000c4d;
    }
    else {
      puVar3 = &DAT_0000c192;
      bVar1 = DAT_20000c4e;
    }
    cVar2 = puVar3[bVar1];
  }
  DAT_20000388 = 4;
  if (DAT_20000384 != '\0') {
    DAT_2000038a = DAT_2000038a - cVar2 * DAT_20000384;
  }
  if (DAT_20000385 != '\0') {
    DAT_2000038a = DAT_2000038a + cVar2 * DAT_20000385;
  }
  if (DAT_20000386 != '\0') {
    DAT_2000038b = DAT_2000038b - cVar2 * DAT_20000386;
  }
  if (DAT_20000387 != '\0') {
    DAT_2000038b = DAT_2000038b + cVar2 * DAT_20000387;
  }
  FUN_00006a24();
  DAT_2000038a = 0;
  DAT_2000038b = 0;
  return;
}

