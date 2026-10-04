/* Address: 0x10001420; body bytes: 13 */

/* void __cdecl UninstallHook(void) */

void __cdecl UninstallHook(void)

{
                    /* 0x1420  10  ?UninstallHook@@YAXXZ */
  UnhookWindowsHookEx(DAT_10011000);
  return;
}

