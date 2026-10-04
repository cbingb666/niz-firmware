/* Address: 0x000000d4; body bytes: 24 */

void HardFault_Handler(void)

{
  undefined4 *puVar1;
  uint unaff_lr;
  
  if ((unaff_lr & 4) == 0) {
    puVar1 = (undefined4 *)getMainStackPointer();
  }
  else {
    puVar1 = (undefined4 *)getProcessStackPointer();
  }
  FUN_0000b154("In Hard Fault Handler\n");
  FUN_0000b154("r0  = 0x%x\n",*puVar1);
  FUN_0000b154("r1  = 0x%x\n",puVar1[1]);
  FUN_0000b154("r2  = 0x%x\n",puVar1[2]);
  FUN_0000b154("r3  = 0x%x\n",puVar1[3]);
  FUN_0000b154("r12 = 0x%x\n",puVar1[4]);
  FUN_0000b154("lr  = 0x%x\n",puVar1[5]);
  FUN_0000b154("pc  = 0x%x\n",puVar1[6]);
  FUN_0000b154("psr = 0x%x\n",puVar1[7]);
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

