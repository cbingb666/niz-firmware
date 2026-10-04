/* Address: 0x0000ae10; body bytes: 50 */

/* Watchdog refresh called throughout foreground loops. */

void watchdog_feed(void)

{
  dword dVar1;
  
  dVar1 = SYS_REGWRPROT;
  while (dVar1 != 1) {
    SYS_REGWRPROT = 0x59;
    SYS_REGWRPROT = 0x16;
    SYS_REGWRPROT = 0x88;
    dVar1 = SYS_REGWRPROT;
  }
  dVar1 = WDT_WTCR;
  WDT_WTCR = dVar1 & 0xffffffd3 | 1;
  SYS_REGWRPROT = 0;
  return;
}

