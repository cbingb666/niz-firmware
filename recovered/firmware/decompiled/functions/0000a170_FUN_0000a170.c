/* Address: 0x0000a170; body bytes: 54 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_0000a170(void)

{
  int iVar1;
  
  DAT_2000042c = 0;
  DAT_20000430 = 0;
  DAT_20000434 = 0;
  DAT_20000438 = 0;
  DAT_2000043c = 0;
  DAT_20000460 = 0;
  DAT_20000444 = 0;
  _DAT_20000468 = 0;
  _DAT_2000046c = 0;
  iVar1 = 0;
  do {
    (&USBD_EP0_CFG)[iVar1 * 4] = (&USBD_EP0_CFG)[iVar1 * 4] & 0xffffff7f;
    iVar1 = iVar1 + 1;
  } while (iVar1 < 8);
  USBD_FADDR = 0;
  return;
}

