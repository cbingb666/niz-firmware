/* Address: 0x1000770b; body bytes: 19 */

void FUN_1000770b(void)

{
  _ptiddata p_Var1;
  
  p_Var1 = __getptd();
  if (p_Var1->_unexpected != (code *)0x0) {
    (*p_Var1->_unexpected)();
  }
                    /* WARNING: Subroutine does not return */
  terminate();
}

