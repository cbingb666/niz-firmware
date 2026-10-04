/* Address: 0x0000acd8; body bytes: 90 */

/* Copies bytes into USBD hardware endpoint 3 buffer (wire endpoint 0x82). */

void usb_send_host_payload(undefined1 *param_1,int param_2)

{
  uint uVar1;
  undefined1 *puVar2;
  uint uVar3;
  int iVar4;
  
  uVar3 = 0;
  if (DAT_20000307 == '\0') {
    do {
      SYSTICK_LOAD = DAT_20000004;
      SYSTICK_VAL = 0;
      uVar1 = SYSTICK_CTRL;
      SYSTICK_CTRL = uVar1 | 5;
      do {
        iVar4 = SYSTICK_CTRL;
      } while (-1 < iVar4 << 0xf);
      uVar3 = uVar3 + 1;
    } while (uVar3 < 30000);
  }
  DAT_20000307 = 0;
  iVar4 = USBD_EP3_BUFSEG;
  puVar2 = &DAT_40060100 + iVar4;
  for (iVar4 = param_2; iVar4 != 0; iVar4 = iVar4 + -1) {
    *puVar2 = *param_1;
    param_1 = param_1 + 1;
    puVar2 = puVar2 + 1;
  }
  USBD_EP3_MXPLD = param_2;
  return;
}

