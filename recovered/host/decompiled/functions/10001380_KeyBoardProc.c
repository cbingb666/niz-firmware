/* Address: 0x10001380; body bytes: 86 */

/* long __stdcall KeyBoardProc(int,unsigned int,long) */

long KeyBoardProc(int param_1,uint param_2,long param_3)

{
  uint wParam;
  
                    /* 0x1380  8  ?KeyBoardProc@@YGJHIJ@Z */
  wParam = *(uint *)param_3;
  switch(param_2) {
  case 0x101:
    wParam = wParam | 0x80000000;
    break;
  case 0x104:
    wParam = wParam | 0x40000000;
    break;
  case 0x105:
    wParam = wParam | 0xc0000000;
  }
  PostMessageW(DAT_10011004,0x466,wParam,(*(uint *)(param_3 + 8) & 1) << 0x18);
  return 1;
}

