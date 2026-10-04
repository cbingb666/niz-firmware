/* Address: 0x10003550; body bytes: 1111 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

undefined4 FUN_10003550(void)

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
  WCHAR *pWVar11;
  uint uVar12;
  uint uStack_104;
  DWORD local_100;
  DWORD DStack_fc;
  HDEVINFO pvStack_f8;
  void *apvStack_f4 [4];
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
  puStack_10 = &LAB_1000ad30;
  local_14 = ExceptionList;
  local_1c = DAT_1000f080 ^ (uint)&uStack_104;
  ExceptionList = &local_14;
  local_100 = 0;
  HidD_GetHidGuid(&GStack_68.Data2,DAT_1000f080 ^ (uint)&stack0xfffffef0);
  DeviceInfoSet = SetupDiGetClassDevsW(&GStack_68,(PCWSTR)0x0,(HWND)0x0,0x12);
  if (DeviceInfoSet != (HDEVINFO)0xffffffff) {
    DStack_fc = 0;
    _Stack_3c.cbSize = 0x1c;
    pvStack_f8 = DeviceInfoSet;
    iVar3 = SetupDiEnumDeviceInfo(DeviceInfoSet,0,&_Stack_3c);
    while (iVar3 == 1) {
      _Stack_58.cbSize = 0x1c;
      BVar4 = SetupDiEnumDeviceInterfaces
                        (DeviceInfoSet,(PSP_DEVINFO_DATA)0x0,&GStack_68,DStack_fc,&_Stack_58);
      if (BVar4 != 1) {
        ExceptionList = pvStack_18;
        return 0;
      }
      SetupDiGetDeviceInterfaceDetailW
                (DeviceInfoSet,&_Stack_58,(PSP_DEVICE_INTERFACE_DETAIL_DATA_W)0x0,0,&local_100,
                 (PSP_DEVINFO_DATA)0x0);
      DeviceInterfaceDetailData = _malloc(local_100);
      DeviceInterfaceDetailData->cbSize = 6;
      BVar4 = SetupDiGetDeviceInterfaceDetailW
                        (pvStack_f8,&_Stack_58,DeviceInterfaceDetailData,local_100,&local_100,
                         (PSP_DEVINFO_DATA)0x0);
      if (BVar4 != 1) {
        _free(DeviceInterfaceDetailData);
        ExceptionList = pvStack_18;
        return 0;
      }
      pWVar11 = DeviceInterfaceDetailData->DevicePath;
      apvStack_f4[0] = (void *)((uint)apvStack_f4[0] & 0xffff0000);
      uStack_e0 = 7;
      uStack_e4 = 0;
      do {
        WVar1 = *pWVar11;
        pWVar11 = pWVar11 + 1;
      } while (WVar1 != L'\0');
      FUN_10003eb0(apvStack_f4,(int)pWVar11 - (int)(DeviceInterfaceDetailData + 1) >> 1);
      puStack_10 = (undefined1 *)0x0;
      iVar3 = FUN_10003d80((ushort *)apvStack_f4,(ushort *)L"vid_",4);
      iVar5 = FUN_10003d80((ushort *)apvStack_f4,(ushort *)L"pid_",4);
      uVar10 = iVar5 + 4;
      iVar5 = FUN_10003d80((ushort *)apvStack_f4,(ushort *)L"mi_02",5);
      if (iVar5 < 1) {
LAB_1000381d:
        bVar2 = false;
      }
      else {
        puVar6 = (ushort *)FUN_10003c70(iVar3 + 4,(int *)apvStack_f4);
        puStack_10 = (undefined1 *)CONCAT31(puStack_10._1_3_,1);
        uVar9 = *(uint *)(puVar6 + 8);
        uStack_104 = uStack_104 | 1;
        uVar12 = uVar9;
        if (3 < uVar9) {
          uVar12 = 4;
        }
        if (7 < *(uint *)(puVar6 + 10)) {
          puVar6 = *(ushort **)puVar6;
        }
        puVar7 = &DAT_1000d464;
        for (; uVar12 != 0; uVar12 = uVar12 - 1) {
          if (*puVar6 != *puVar7) {
            if ((-(uint)(*puVar6 < *puVar7) & 0xfffffffe) != 0xffffffff) goto LAB_1000381d;
            break;
          }
          puVar6 = puVar6 + 1;
          puVar7 = puVar7 + 1;
        }
        if ((uVar9 < 4) || (uVar9 != 4)) goto LAB_1000381d;
        pvVar8 = (void *)FUN_10003c70(uVar10,(int *)apvStack_f4);
        puStack_10 = (undefined1 *)0x2;
        uStack_104 = uStack_104 | 2;
        uVar9 = FUN_10003e40(pvVar8,(ushort *)L"0220");
        if (uVar9 != 0) {
          pvVar8 = (void *)FUN_10003c70(uVar10,(int *)apvStack_f4);
          puStack_10 = (undefined1 *)0x3;
          uStack_104 = uStack_104 | 4;
          uVar9 = FUN_10003e40(pvVar8,(ushort *)L"022c");
          if (uVar9 != 0) {
            pvVar8 = (void *)FUN_10003c70(uVar10,(int *)apvStack_f4);
            puStack_10 = (undefined1 *)0x4;
            uStack_104 = uStack_104 | 8;
            uVar10 = FUN_10003e40(pvVar8,(ushort *)L"0252");
            if (uVar10 != 0) goto LAB_1000381d;
          }
        }
        bVar2 = true;
      }
      if ((uStack_104 & 8) != 0) {
        uStack_104 = uStack_104 & 0xfffffff7;
        if (7 < uStack_70) {
          FUN_10004d04(pvStack_84);
        }
        uStack_70 = 7;
        uStack_74 = 0;
        pvStack_84 = (void *)((uint)pvStack_84 & 0xffff0000);
      }
      if ((uStack_104 & 4) != 0) {
        uStack_104 = uStack_104 & 0xfffffffb;
        if (7 < uStack_a8) {
          FUN_10004d04(pvStack_bc);
        }
        uStack_a8 = 7;
        uStack_ac = 0;
        pvStack_bc = (void *)((uint)pvStack_bc & 0xffff0000);
      }
      if ((uStack_104 & 2) != 0) {
        uStack_104 = uStack_104 & 0xfffffffd;
        if (7 < uStack_c4) {
          FUN_10004d04(pvStack_d8);
        }
        uStack_c4 = 7;
        uStack_c8 = 0;
        pvStack_d8 = (void *)((uint)pvStack_d8 & 0xffff0000);
      }
      puStack_10 = (undefined1 *)0x0;
      if ((uStack_104 & 1) != 0) {
        uStack_104 = uStack_104 & 0xfffffffe;
        if (7 < uStack_8c) {
          FUN_10004d04(pvStack_a0);
        }
        uStack_8c = 7;
        uStack_90 = 0;
        pvStack_a0 = (void *)((uint)pvStack_a0 & 0xffff0000);
      }
      if (bVar2) {
        if (7 < uStack_e0) {
          FUN_10004d04(apvStack_f4[0]);
        }
        ExceptionList = pvStack_18;
        return 1;
      }
      puStack_10 = (undefined1 *)0xffffffff;
      if (7 < uStack_e0) {
        FUN_10004d04(apvStack_f4[0]);
      }
      DStack_fc = DStack_fc + 1;
      _Stack_3c.cbSize = 0x1c;
      iVar3 = SetupDiEnumDeviceInfo(pvStack_f8,DStack_fc,&_Stack_3c);
      DeviceInfoSet = pvStack_f8;
    }
  }
  ExceptionList = pvStack_18;
  return 0;
}

