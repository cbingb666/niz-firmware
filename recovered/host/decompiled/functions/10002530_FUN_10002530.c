/* Address: 0x10002530; body bytes: 1307 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* WARNING: Type propagation algorithm not settling */

undefined4 FUN_10002530(void)

{
  WCHAR WVar1;
  bool bVar2;
  HDEVINFO DeviceInfoSet;
  int iVar3;
  BOOL BVar4;
  PSP_DEVICE_INTERFACE_DETAIL_DATA_W DeviceInterfaceDetailData;
  int iVar5;
  ushort *puVar6;
  ushort *puVar7;
  void *pvVar8;
  uint uVar9;
  uint uVar10;
  undefined4 uVar11;
  WCHAR *pWVar12;
  uint uVar13;
  uint unaff_EBX;
  uint uVar14;
  DWORD local_11c;
  size_t sStack_118;
  HDEVINFO pvStack_114;
  void *apvStack_110 [4];
  undefined4 uStack_100;
  uint uStack_fc;
  void *pvStack_f4;
  undefined4 uStack_e4;
  uint uStack_e0;
  void *pvStack_d8;
  undefined4 uStack_c8;
  uint uStack_c4;
  void *pvStack_bc;
  undefined4 uStack_ac;
  uint uStack_a8;
  void *pvStack_a0;
  undefined4 uStack_90;
  uint uStack_8c;
  void *pvStack_84;
  undefined4 uStack_74;
  uint uStack_70;
  GUID GStack_68;
  _SP_DEVICE_INTERFACE_DATA _Stack_58;
  _SP_DEVINFO_DATA _Stack_3c;
  uint local_1c;
  void *pvStack_18;
  void *local_14;
  undefined1 *puStack_10;
  undefined4 uStack_c;
  
  uStack_c = 0xffffffff;
  puStack_10 = &LAB_1000af22;
  local_14 = ExceptionList;
  local_1c = DAT_1000f080 ^ (uint)&local_11c;
  ExceptionList = &local_14;
  local_11c = 0;
  HidD_GetHidGuid(&GStack_68.Data2,DAT_1000f080 ^ (uint)&stack0xfffffed8);
  DeviceInfoSet = SetupDiGetClassDevsW(&GStack_68,(PCWSTR)0x0,(HWND)0x0,0x12);
  if (DeviceInfoSet != (HDEVINFO)0xffffffff) {
    local_11c = 0;
    _Stack_3c.cbSize = 0x1c;
    pvStack_114 = DeviceInfoSet;
    iVar3 = SetupDiEnumDeviceInfo(DeviceInfoSet,0,&_Stack_3c);
    while (iVar3 == 1) {
      _Stack_58.cbSize = 0x1c;
      BVar4 = SetupDiEnumDeviceInterfaces
                        (DeviceInfoSet,(PSP_DEVINFO_DATA)0x0,&GStack_68,local_11c,&_Stack_58);
      if (BVar4 != 1) {
        ExceptionList = pvStack_18;
        return 0;
      }
      SetupDiGetDeviceInterfaceDetailW
                (DeviceInfoSet,&_Stack_58,(PSP_DEVICE_INTERFACE_DETAIL_DATA_W)0x0,0,&sStack_118,
                 (PSP_DEVINFO_DATA)0x0);
      DeviceInterfaceDetailData = _malloc(sStack_118);
      DeviceInterfaceDetailData->cbSize = 6;
      BVar4 = SetupDiGetDeviceInterfaceDetailW
                        (DeviceInfoSet,&_Stack_58,DeviceInterfaceDetailData,sStack_118,&sStack_118,
                         (PSP_DEVINFO_DATA)0x0);
      if (BVar4 != 1) {
        _free(DeviceInterfaceDetailData);
        ExceptionList = pvStack_18;
        return 0;
      }
      pWVar12 = DeviceInterfaceDetailData->DevicePath;
      apvStack_110[0] = (void *)((uint)apvStack_110[0] & 0xffff0000);
      uStack_fc = 7;
      uStack_100 = 0;
      do {
        WVar1 = *pWVar12;
        pWVar12 = pWVar12 + 1;
      } while (WVar1 != L'\0');
      FUN_10003eb0(apvStack_110,(int)pWVar12 - (int)(DeviceInterfaceDetailData + 1) >> 1);
      puStack_10 = (undefined1 *)0x0;
      iVar3 = FUN_10003d80((ushort *)apvStack_110,(ushort *)L"vid_",4);
      iVar5 = FUN_10003d80((ushort *)apvStack_110,(ushort *)L"pid_",4);
      uVar10 = iVar5 + 4;
      iVar5 = FUN_10003d80((ushort *)apvStack_110,(ushort *)L"mi_01",5);
      uVar14 = unaff_EBX;
      if (iVar5 < 1) {
LAB_10002847:
        bVar2 = false;
      }
      else {
        puVar6 = (ushort *)FUN_10003c70(iVar3 + 4,(int *)apvStack_110);
        puStack_10 = (undefined1 *)CONCAT31(puStack_10._1_3_,1);
        uVar9 = *(uint *)(puVar6 + 8);
        uVar13 = uVar9;
        if (3 < uVar9) {
          uVar13 = 4;
        }
        if (7 < *(uint *)(puVar6 + 10)) {
          puVar6 = *(ushort **)puVar6;
        }
        puVar7 = &DAT_1000d3f8;
        for (; uVar14 = unaff_EBX | 1, uVar13 != 0; uVar13 = uVar13 - 1) {
          if (*puVar6 != *puVar7) {
            uVar13 = (-(uint)(*puVar6 < *puVar7) & 0xfffffffe) + 1;
            if (uVar13 != 0) goto LAB_1000274e;
            break;
          }
          puVar6 = puVar6 + 1;
          puVar7 = puVar7 + 1;
        }
        if (uVar9 < 4) goto LAB_10002847;
        uVar13 = (uint)(uVar9 != 4);
LAB_1000274e:
        if (uVar13 != 0) goto LAB_10002847;
        pvVar8 = (void *)FUN_10003c70(uVar10,(int *)apvStack_110);
        puStack_10 = (undefined1 *)0x2;
        uVar14 = unaff_EBX | 3;
        uVar9 = FUN_10003e40(pvVar8,(ushort *)L"502a");
        if (uVar9 != 0) {
          pvVar8 = (void *)FUN_10003c70(uVar10,(int *)apvStack_110);
          puStack_10 = (undefined1 *)0x3;
          uVar14 = unaff_EBX | 7;
          uVar9 = FUN_10003e40(pvVar8,(ushort *)L"512a");
          if (uVar9 != 0) {
            pvVar8 = (void *)FUN_10003c70(uVar10,(int *)apvStack_110);
            puStack_10 = (undefined1 *)0x4;
            uVar14 = unaff_EBX | 0xf;
            uVar9 = FUN_10003e40(pvVar8,(ushort *)L"522a");
            if (uVar9 != 0) {
              pvVar8 = (void *)FUN_10003c70(uVar10,(int *)apvStack_110);
              puStack_10 = (undefined1 *)0x5;
              uVar14 = unaff_EBX | 0x1f;
              uVar10 = FUN_10003e40(pvVar8,(ushort *)L"542a");
              if (uVar10 != 0) goto LAB_10002847;
            }
          }
        }
        bVar2 = true;
      }
      if ((uVar14 & 0x10) != 0) {
        uVar14 = uVar14 & 0xffffffef;
        if (7 < uStack_e0) {
          FUN_10004d04(pvStack_f4);
        }
        uStack_e0 = 7;
        uStack_e4 = 0;
        pvStack_f4 = (void *)((uint)pvStack_f4 & 0xffff0000);
      }
      if ((uVar14 & 8) != 0) {
        uVar14 = uVar14 & 0xfffffff7;
        if (7 < uStack_70) {
          FUN_10004d04(pvStack_84);
        }
        uStack_70 = 7;
        uStack_74 = 0;
        pvStack_84 = (void *)((uint)pvStack_84 & 0xffff0000);
      }
      if ((uVar14 & 4) != 0) {
        uVar14 = uVar14 & 0xfffffffb;
        if (7 < uStack_a8) {
          FUN_10004d04(pvStack_bc);
        }
        uStack_a8 = 7;
        uStack_ac = 0;
        pvStack_bc = (void *)((uint)pvStack_bc & 0xffff0000);
      }
      if ((uVar14 & 2) != 0) {
        uVar14 = uVar14 & 0xfffffffd;
        if (7 < uStack_c4) {
          FUN_10004d04(pvStack_d8);
        }
        uStack_c4 = 7;
        uStack_c8 = 0;
        pvStack_d8 = (void *)((uint)pvStack_d8 & 0xffff0000);
      }
      puStack_10 = (undefined1 *)0x0;
      if ((uVar14 & 1) != 0) {
        uVar14 = uVar14 & 0xfffffffe;
        if (7 < uStack_8c) {
          FUN_10004d04(pvStack_a0);
        }
        uStack_8c = 7;
        uStack_90 = 0;
        pvStack_a0 = (void *)((uint)pvStack_a0 & 0xffff0000);
      }
      if (bVar2) {
        iVar3 = FUN_10005071(0x10);
        if (iVar3 == 0) {
          uVar11 = 0;
        }
        else {
          uVar11 = FUN_10002440();
        }
        if (uStack_fc < 8) {
          ExceptionList = pvStack_18;
          return uVar11;
        }
        FUN_10004d04(apvStack_110[0]);
        ExceptionList = pvStack_18;
        return uVar11;
      }
      puStack_10 = (undefined1 *)0xffffffff;
      if (7 < uStack_fc) {
        FUN_10004d04(apvStack_110[0]);
      }
      local_11c = local_11c + 1;
      _Stack_3c.cbSize = 0x1c;
      iVar3 = SetupDiEnumDeviceInfo(pvStack_114,local_11c,&_Stack_3c);
      DeviceInfoSet = pvStack_114;
      unaff_EBX = uVar14;
    }
  }
  ExceptionList = pvStack_18;
  return 0;
}

