/* Address: 0x0000681c; body bytes: 184 */

/* Row selector: PD0/PD1/PD2, PA13/PA14; row inputs 0..10. */

void ec_select_row(undefined4 param_1)

{
  switch(param_1) {
  case 0:
    PD0_PIN = 0;
    PD1_PIN = 0;
    PD2_PIN = 0;
    PA13_PIN = 0;
    break;
  case 1:
    PD0_PIN = 1;
    PD1_PIN = 0;
    PD2_PIN = 0;
    PA13_PIN = 0;
    PA14_PIN = 1;
    return;
  case 2:
    PD0_PIN = 0;
    PD1_PIN = 1;
    PD2_PIN = 0;
    goto LAB_000068a8;
  case 3:
    PD0_PIN = 1;
    PD1_PIN = 1;
    PD2_PIN = 0;
    PA13_PIN = 0;
    break;
  case 4:
    PD0_PIN = 0;
    PD1_PIN = 0;
    PD2_PIN = 1;
    PA13_PIN = 0;
    break;
  case 5:
    PD0_PIN = 1;
    PD1_PIN = 0;
    PD2_PIN = 1;
    PA13_PIN = 0;
    break;
  case 6:
    PD0_PIN = 0;
    PD1_PIN = 1;
    PD2_PIN = 1;
    PA13_PIN = 0;
    break;
  case 7:
    PD0_PIN = 1;
    PD1_PIN = 1;
    PD2_PIN = 1;
LAB_000068a8:
    PA13_PIN = 0;
    break;
  case 8:
    PD0_PIN = 0;
    PD1_PIN = 0;
    PD2_PIN = 0;
    PA13_PIN = 1;
    PA14_PIN = 0;
    return;
  case 9:
    PD0_PIN = 1;
    PD1_PIN = 0;
    PD2_PIN = 0;
    PA13_PIN = 1;
    PA14_PIN = 0;
    return;
  case 10:
    PD0_PIN = 0;
    PD1_PIN = 1;
    PD2_PIN = 0;
    PA13_PIN = 1;
    PA14_PIN = 0;
    return;
  default:
    PA13_PIN = 1;
  }
  PA14_PIN = 1;
  return;
}

