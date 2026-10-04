/* Address: 0x0000a124; body bytes: 56 */

void FUN_0000a124(void)

{
  dword dVar1;
  uint uVar2;
  int iVar3;
  
  SYSTICK_LOAD = DAT_20000004 * 100000;
  SYSTICK_VAL = 0;
  uVar2 = SYSTICK_CTRL;
  SYSTICK_CTRL = uVar2 | 5;
  do {
    iVar3 = SYSTICK_CTRL;
  } while (-1 < iVar3 << 0xf);
  dVar1 = USBD_DRVSE0;
  USBD_DRVSE0 = dVar1 & 0xfffffffe;
  USBD_INTSTS = 0x10f;
  dVar1 = USBD_INTEN;
  USBD_INTEN = dVar1 | 0x10f;
  return;
}

