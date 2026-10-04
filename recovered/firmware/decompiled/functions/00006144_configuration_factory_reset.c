/* Address: 0x00006144; body bytes: 322 */

/* Writes factory settings, nine groups of 66 key definitions and default RGB data to EEPROM. */

void configuration_factory_reset(void)

{
  byte bVar1;
  int extraout_r1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined1 local_60;
  byte local_5f;
  undefined1 local_5e;
  undefined1 local_5d;
  char local_5c;
  undefined1 local_5b;
  undefined1 local_5a;
  undefined1 local_59;
  undefined1 local_58;
  undefined1 local_57;
  undefined1 local_56;
  undefined1 local_55;
  undefined1 local_54;
  undefined1 local_53;
  undefined1 local_52;
  undefined1 local_51;
  undefined1 local_50;
  undefined1 local_4f;
  undefined1 local_4e;
  undefined1 local_4d;
  undefined1 local_4c;
  undefined1 local_4b;
  undefined1 local_4a;
  undefined1 local_49;
  undefined1 local_48;
  undefined1 local_47;
  undefined1 local_46;
  undefined1 local_45;
  undefined1 local_44;
  undefined1 local_43;
  undefined1 local_42;
  undefined1 local_41;
  undefined1 uStack_40;
  undefined1 uStack_3f;
  undefined1 uStack_3e;
  undefined1 uStack_3d;
  undefined1 uStack_3c;
  undefined1 uStack_3b;
  undefined1 uStack_3a;
  undefined1 uStack_39;
  undefined1 uStack_38;
  undefined1 uStack_37;
  undefined1 uStack_36;
  undefined1 uStack_35;
  undefined1 uStack_34;
  undefined1 uStack_33;
  undefined1 uStack_32;
  undefined1 uStack_31;
  undefined1 uStack_30;
  uint local_20;
  int local_1c;
  uint local_18;
  
  FUN_000001c2(&local_60,0x40);
  eeprom_write_block(&local_60,4,0);
  local_60 = 1;
  local_5f = 0;
  local_5e = 1;
  local_5d = 0;
  local_5c = '\0';
  local_5b = 0;
  local_5a = 2;
  local_59 = 2;
  local_58 = 1;
  local_57 = 4;
  local_56 = 2;
  local_55 = 3;
  local_54 = 2;
  local_53 = 0;
  local_52 = 1;
  local_51 = 0;
  local_50 = 0;
  local_4f = 4;
  local_4e = 0;
  local_4d = 1;
  local_4c = 0;
  local_4b = 0;
  local_4a = 1;
  local_49 = 1;
  local_48 = 1;
  local_47 = 1;
  local_46 = 1;
  local_45 = 1;
  local_44 = 1;
  local_43 = 1;
  local_42 = 1;
  local_41 = 1;
  uStack_40 = 1;
  uStack_3f = 1;
  uStack_3e = 1;
  uStack_3d = 1;
  uStack_3c = 0;
  uStack_3b = 0;
  uStack_3a = 0;
  uStack_39 = 0;
  uStack_38 = 1;
  uStack_37 = 0;
  uStack_36 = 0;
  uStack_35 = 0;
  uStack_34 = 0;
  uStack_33 = 0;
  uStack_32 = 0;
  uStack_31 = 0;
  uStack_30 = 0;
  eeprom_write_block(&local_60,0x31,4);
  eeprom_write_block(&default_rgb_channels,0xc6,0x35);
  iVar4 = 0x665;
  uVar3 = 0;
  do {
    local_20 = uVar3 + 1;
    local_18 = local_20 & 0xff;
    uVar2 = 0;
    aeabi_uidivmod(uVar3,3);
    local_1c = extraout_r1;
    do {
      local_60 = (undefined1)local_18;
      bVar1 = (char)uVar2 + 1;
      local_5e = 0;
      local_5c = (&default_internal_key_codes)[local_1c + uVar2 * 3];
      local_5f = bVar1;
      if (local_5c == '\0') {
        local_5d = 0;
        (&DAT_20000f29)[uVar2 * 2 + uVar3 * 0x84] = 0;
        (&DAT_20000f29)[uVar2 * 2 + uVar3 * 0x84 + 1] = 0;
      }
      else {
        local_5d = 1;
        eeprom_write_block(&local_60,5,iVar4);
        (&DAT_20000f29)[uVar2 * 2 + uVar3 * 0x84] = (char)((uint)iVar4 >> 8);
        (&DAT_20000f29)[uVar2 * 2 + uVar3 * 0x84 + 1] = (char)iVar4;
        iVar4 = iVar4 + 5;
      }
      uVar2 = (uint)bVar1;
    } while (uVar2 < 0x42);
    uVar3 = local_20 & 0xff;
  } while (uVar3 < 9);
  eeprom_write_block(&DAT_20000f29,0x4a4,0x1c1);
  return;
}

