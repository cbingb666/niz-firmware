/* Address: 0x000094a0; body bytes: 392 */

/* NUC123 vector IRQ10. */

void TMR2_IRQHandler(void)

{
  dword dVar1;
  short sVar2;
  bool bVar3;
  
  dVar1 = TIMER2_TISR;
  if ((int)(dVar1 << 0x1f) < 0) {
    TIMER2_TISR = 1;
    if (DAT_20000344 != 0) {
      DAT_20000344 = DAT_20000344 + -1;
    }
    if (DAT_20000cb2 != 0) {
      DAT_20000cb2 = DAT_20000cb2 + -1;
    }
    if (DAT_20000348 != 0) {
      DAT_20000348 = DAT_20000348 + -1;
    }
    if (DAT_2000034a != 0) {
      DAT_2000034a = DAT_2000034a + -1;
    }
    if (DAT_2000034e != 0) {
      DAT_2000034e = DAT_2000034e + -1;
    }
    if (DAT_2000034c != 0) {
      DAT_2000034c = DAT_2000034c + -1;
    }
    if (DAT_20000342 != 0) {
      DAT_20000342 = DAT_20000342 + -1;
    }
    if (DAT_20000346 != 0) {
      DAT_20000346 = DAT_20000346 + -1;
    }
    if (DAT_20000352 != 0) {
      DAT_20000352 = DAT_20000352 + -1;
    }
    if (DAT_20000334 != 0) {
      DAT_20000334 = DAT_20000334 + -1;
    }
    if ((DAT_20000cce != 0) &&
       (sVar2 = DAT_20000cce + -1, bVar3 = DAT_20000cce == 1, DAT_20000cce = sVar2, bVar3)) {
      DAT_20000cd1 = 1;
    }
    DAT_20000350 = DAT_20000350 + 1;
    if (DAT_20000cda != 0) {
      sVar2 = DAT_20000cda + -1;
      bVar3 = DAT_20000cda == 1;
      DAT_20000cda = sVar2;
      if (bVar3) {
        FUN_00007784();
      }
    }
    if ((DAT_20000c7e != 0) &&
       (sVar2 = DAT_20000c7e + -1, bVar3 = DAT_20000c7e == 1, DAT_20000c7e = sVar2, bVar3)) {
      DAT_20000c80 = 1;
    }
    if ((DAT_20000c82 != 0) &&
       (sVar2 = DAT_20000c82 + -1, bVar3 = DAT_20000c82 == 1, DAT_20000c82 = sVar2, bVar3)) {
      DAT_20000c84 = 1;
    }
    if ((DAT_20000c86 != 0) &&
       (sVar2 = DAT_20000c86 + -1, bVar3 = DAT_20000c86 == 1, DAT_20000c86 = sVar2, bVar3)) {
      DAT_20000c88 = 1;
    }
    if ((DAT_20000c8a != 0) &&
       (sVar2 = DAT_20000c8a + -1, bVar3 = DAT_20000c8a == 1, DAT_20000c8a = sVar2, bVar3)) {
      DAT_20000c8c = 1;
    }
    if ((DAT_20000c8e != 0) &&
       (sVar2 = DAT_20000c8e + -1, bVar3 = DAT_20000c8e == 1, DAT_20000c8e = sVar2, bVar3)) {
      DAT_20000c90 = 1;
    }
    if ((DAT_20000c9e != 0) &&
       (sVar2 = DAT_20000c9e + -1, bVar3 = DAT_20000c9e == 1, DAT_20000c9e = sVar2, bVar3)) {
      DAT_20000ca0 = 1;
    }
    if ((DAT_20000c92 != 0) &&
       (sVar2 = DAT_20000c92 + -1, bVar3 = DAT_20000c92 == 1, DAT_20000c92 = sVar2, bVar3)) {
      DAT_20000c94 = 1;
    }
    if ((DAT_20000c9a != 0) &&
       (sVar2 = DAT_20000c9a + -1, bVar3 = DAT_20000c9a == 1, DAT_20000c9a = sVar2, bVar3)) {
      DAT_20000c9c = 1;
    }
    if (DAT_20000c96 != 0) {
      sVar2 = DAT_20000c96 + -1;
      bVar3 = DAT_20000c96 == 1;
      DAT_20000c96 = sVar2;
      if (bVar3) {
        DAT_20000c98 = 1;
      }
    }
    DAT_20000332 = DAT_20000332 + 1;
    DAT_20000336 = DAT_20000336 + 1;
    DAT_20000338 = DAT_20000338 + 1;
    if (DAT_2000032a != 0) {
      DAT_2000032a = DAT_2000032a + -1;
    }
    FUN_0000494c();
    return;
  }
  return;
}

