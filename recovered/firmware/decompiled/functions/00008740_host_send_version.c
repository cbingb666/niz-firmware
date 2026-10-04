/* Address: 0x00008740; body bytes: 58 */

/* Responds to host version command 0xf9. */

void host_send_version(void)

{
  uint uVar1;
  char *pcVar2;
  char local_48 [68];
  
  FUN_000001c2(local_48,0x40);
  local_48[0] = '\0';
  pcVar2 = "66EC(RGB)BLe;V1.5.1;V1.0;";
  local_48[1] = 0xf9;
  uVar1 = 2;
  do {
    if (*pcVar2 == '\0') break;
    local_48[uVar1] = *pcVar2;
    pcVar2 = pcVar2 + 1;
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 0x40);
  usb_send_host_payload(local_48,0x40);
  return;
}

