/* Address: 0x00001804; body bytes: 140 */

/* RGB update called from TMR1_IRQHandler. */

void rgb_timer_update(void)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  
  cVar1 = DAT_200003c0;
  if (rgb_active != '\0') {
    bVar2 = DAT_200003c1 + 0x10;
    bVar3 = DAT_200003c0 * '\v';
    uVar5 = 0;
    DAT_200003c1 = bVar2;
    do {
      uVar4 = uVar5 + 1 & 0xff;
      (&DAT_2000041e)[uVar5] = 0xffff;
      uVar5 = uVar4;
    } while (uVar4 < 3);
    uVar5 = 0;
    do {
      uVar4 = 0;
      do {
        if (bVar2 <= (byte)(&DAT_20003880)[uVar4 + (bVar3 + uVar5) * 3]) {
          (&DAT_2000041e)[uVar4] = (&DAT_2000041e)[uVar4] & (&DAT_0000c6c6)[uVar5];
        }
        uVar4 = uVar4 + 1 & 0xff;
      } while (uVar4 < 3);
      uVar5 = uVar5 + 1 & 0xff;
    } while (uVar5 < 0xb);
    FUN_000067c0(cVar1);
    if (0xef < DAT_200003c1) {
      DAT_200003c1 = 0;
    }
    DAT_200003c0 = DAT_200003c0 + 1;
    if (5 < DAT_200003c0) {
      DAT_200003c0 = 0;
    }
    return;
  }
  return;
}

