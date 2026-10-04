/* Address: 0x00007554; body bytes: 196 */

void FUN_00007554(int param_1)

{
  dword dVar1;
  undefined1 uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  byte bVar6;
  int iVar7;
  uint uVar8;
  int local_30 [6];
  int local_18;
  
  dVar1 = TIMER2_TCSR;
  TIMER2_TCSR = dVar1 & 0xbfffffff;
  dVar1 = TIMER1_TCSR;
  TIMER1_TCSR = dVar1 & 0xbfffffff;
  local_18 = param_1;
  FUN_00006778();
  dVar1 = TIMER0_TCSR;
  TIMER0_TCSR = dVar1 & 0xbfffffff;
  uVar8 = 0;
  do {
    ec_select_row(uVar8);
    delay_ms(10);
    uVar5 = 0;
    do {
      uVar3 = uVar5 + 1 & 0xff;
      local_30[uVar5] = 0;
      uVar5 = uVar3;
    } while (uVar3 < 6);
    bVar6 = 0;
    do {
      delay_ms(1);
      uVar5 = 0;
      do {
        delay_us(100);
        uVar3 = ec_read_column_adc(uVar5);
        if (uVar3 < 0x303) {
          uVar3 = 0x303 - uVar3 & 0xff;
        }
        else {
          uVar3 = 0;
        }
        uVar4 = uVar5 + 1 & 0xff;
        local_30[uVar5] = local_30[uVar5] + uVar3;
        uVar5 = uVar4;
      } while (uVar4 < 6);
      bVar6 = bVar6 + 1;
    } while (bVar6 < 0x32);
    uVar5 = 0;
    iVar7 = uVar8 * 6 + local_18;
    do {
      uVar2 = aeabi_uidivmod(local_30[uVar5],0x32);
      *(undefined1 *)(iVar7 + uVar5) = uVar2;
      uVar5 = uVar5 + 1 & 0xff;
    } while (uVar5 < 6);
    uVar8 = uVar8 + 1 & 0xff;
  } while (uVar8 < 0xb);
  dVar1 = TIMER0_TCSR;
  TIMER0_TCSR = dVar1 | 0x40000000;
  dVar1 = TIMER1_TCSR;
  TIMER1_TCSR = dVar1 | 0x40000000;
  dVar1 = TIMER2_TCSR;
  TIMER2_TCSR = dVar1 | 0x40000000;
  return;
}

