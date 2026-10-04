/* Address: 0x0000473c; body bytes: 78 */

/* Initializes control, programming and keyboard HID endpoints. */

void usb_endpoint_init(void)

{
  USBD_STBUFSEG = 0;
  USBD_EP0_CFG = 0x240;
  USBD_EP0_BUFSEG = 8;
  USBD_EP1_CFG = 0x220;
  USBD_EP1_BUFSEG = 8;
  USBD_EP2_CFG = 0x21;
  USBD_EP2_BUFSEG = 0x10;
  USBD_EP2_MXPLD = 0x40;
  USBD_EP3_CFG = 0x42;
  USBD_EP3_BUFSEG = 0x50;
  USBD_EP4_CFG = 0x43;
  USBD_EP4_BUFSEG = 0x90;
  USBD_EP5_CFG = 0x44;
  USBD_EP5_BUFSEG = 0x98;
  DAT_20000305 = 1;
  DAT_20000306 = 1;
  DAT_20000307 = 1;
  DAT_20000304 = 0;
  return;
}

