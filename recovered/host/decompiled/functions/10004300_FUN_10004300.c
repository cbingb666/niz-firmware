/* Address: 0x10004300; body bytes: 33 */

void __fastcall FUN_10004300(undefined4 param_1,undefined4 param_2)

{
  undefined4 *in_EAX;
  
  in_EAX[1] = param_1;
  in_EAX[2] = param_2;
  *in_EAX = CMacroKeyDefine::vftable;
  in_EAX[6] = 0;
  in_EAX[7] = 0;
  in_EAX[8] = 0;
  in_EAX[10] = 0;
  in_EAX[0xb] = 0;
  in_EAX[0xc] = 0;
  return;
}

