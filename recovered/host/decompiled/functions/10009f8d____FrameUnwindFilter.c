/* Address: 0x10009f8d; body bytes: 79 */

/* Library Function - Single Match
    ___FrameUnwindFilter
   
   Library: Visual Studio 2010 Release */

undefined4 __cdecl ___FrameUnwindFilter(undefined4 *param_1)

{
  int iVar1;
  _ptiddata p_Var2;
  
  iVar1 = *(int *)*param_1;
  if ((iVar1 == -0x1fbcbcae) || (iVar1 == -0x1fbcb0b3)) {
    p_Var2 = __getptd();
    if (0 < p_Var2->_ProcessingThrow) {
      p_Var2 = __getptd();
      p_Var2->_ProcessingThrow = p_Var2->_ProcessingThrow + -1;
    }
  }
  else if (iVar1 == -0x1f928c9d) {
    p_Var2 = __getptd();
    p_Var2->_ProcessingThrow = 0;
                    /* WARNING: Subroutine does not return */
    terminate();
  }
  return 0;
}

