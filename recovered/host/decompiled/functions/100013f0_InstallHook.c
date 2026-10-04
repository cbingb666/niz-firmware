/* Address: 0x100013f0; body bytes: 40 */

/* void __cdecl InstallHook(struct HWND__ *) */

void __cdecl InstallHook(HWND__ *param_1)

{
                    /* 0x13f0  7  ?InstallHook@@YAXPAUHWND__@@@Z */
  DAT_10011004 = param_1;
  DAT_10011000 = SetWindowsHookExW(0xd,KeyBoardProc,DAT_100109cc,0);
  return;
}

