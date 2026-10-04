/* Address: 0x10002a50; body bytes: 1261 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

uint FUN_10002a50(void)

{
  uint uVar1;
  WCHAR WVar2;
  bool bVar3;
  HDEVINFO DeviceInfoSet;
  HDEVINFO DeviceInfoSet_00;
  HDEVINFO pvVar4;
  PSP_DEVICE_INTERFACE_DETAIL_DATA_W DeviceInterfaceDetailData;
  BOOL BVar5;
  int iVar6;
  int iVar7;
  ushort *puVar8;
  ushort *puVar9;
  void *pvVar10;
  uint uVar11;
  uint extraout_EAX;
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
  DeviceInfoSet_00 = SetupDiGetClassDevsW(&GStack_68,(PCWSTR)0x0,(HWND)0x0,0x12);
  if (DeviceInfoSet_00 != (HDEVINFO)0xffffffff) {
    local_11c = 0;
    _Stack_3c.cbSize = 0x1c;
    pvStack_114 = DeviceInfoSet_00;
    pvVar4 = (HDEVINFO)SetupDiEnumDeviceInfo(DeviceInfoSet_00,0,&_Stack_3c);
    DeviceInfoSet = DeviceInfoSet_00;
    DeviceInfoSet_00 = pvVar4;
    while (DeviceInfoSet_00 == (HDEVINFO)0x1) {
      _Stack_58.cbSize = 0x1c;
      DeviceInfoSet_00 =
           (HDEVINFO)
           SetupDiEnumDeviceInterfaces
                     (DeviceInfoSet,(PSP_DEVINFO_DATA)0x0,&GStack_68,local_11c,&_Stack_58);
      if (DeviceInfoSet_00 != (HDEVINFO)0x1) break;
      SetupDiGetDeviceInterfaceDetailW
                (DeviceInfoSet,&_Stack_58,(PSP_DEVICE_INTERFACE_DETAIL_DATA_W)0x0,0,&sStack_118,
                 (PSP_DEVINFO_DATA)0x0);
      DeviceInterfaceDetailData = _malloc(sStack_118);
      DeviceInterfaceDetailData->cbSize = 6;
      BVar5 = SetupDiGetDeviceInterfaceDetailW
                        (DeviceInfoSet,&_Stack_58,DeviceInterfaceDetailData,sStack_118,&sStack_118,
                         (PSP_DEVINFO_DATA)0x0);
      if (BVar5 != 1) {
        _free(DeviceInterfaceDetailData);
        ExceptionList = pvStack_18;
        return extraout_EAX & 0xffffff00;
      }
      pWVar12 = DeviceInterfaceDetailData->DevicePath;
      apvStack_110[0] = (void *)((uint)apvStack_110[0] & 0xffff0000);
      uStack_fc = 7;
      uStack_100 = 0;
      do {
        WVar2 = *pWVar12;
        pWVar12 = pWVar12 + 1;
      } while (WVar2 != L'\0');
      FUN_10003eb0(apvStack_110,(int)pWVar12 - (int)(DeviceInterfaceDetailData + 1) >> 1);
      puStack_10 = (undefined1 *)0x0;
      iVar6 = FUN_10003d80((ushort *)apvStack_110,(ushort *)L"vid_",4);
      iVar7 = FUN_10003d80((ushort *)apvStack_110,(ushort *)L"pid_",4);
      uVar1 = iVar7 + 4;
      puVar8 = (ushort *)FUN_10003d80((ushort *)apvStack_110,(ushort *)L"mi_01",5);
      uVar14 = unaff_EBX;
      if ((int)puVar8 < 1) {
LAB_10002d67:
        bVar3 = false;
      }
      else {
        puVar9 = (ushort *)FUN_10003c70(iVar6 + 4,(int *)apvStack_110);
        puStack_10 = (undefined1 *)CONCAT31(puStack_10._1_3_,1);
        uVar11 = *(uint *)(puVar9 + 8);
        uVar13 = uVar11;
        if (3 < uVar11) {
          uVar13 = 4;
        }
        if (7 < *(uint *)(puVar9 + 10)) {
          puVar9 = *(ushort **)puVar9;
        }
        puVar8 = &DAT_1000d3f8;
        for (; uVar14 = unaff_EBX | 1, uVar13 != 0; uVar13 = uVar13 - 1) {
          if (*puVar9 != *puVar8) {
            puVar8 = (ushort *)((-(uint)(*puVar9 < *puVar8) & 0xfffffffe) + 1);
            if (puVar8 != (ushort *)0x0) goto LAB_10002c6e;
            break;
          }
          puVar9 = puVar9 + 1;
          puVar8 = puVar8 + 1;
        }
        if (uVar11 < 4) goto LAB_10002d67;
        puVar8 = (ushort *)(uint)(uVar11 != 4);
LAB_10002c6e:
        if (puVar8 != (ushort *)0x0) goto LAB_10002d67;
        pvVar10 = (void *)FUN_10003c70(uVar1,(int *)apvStack_110);
        puStack_10 = (undefined1 *)0x2;
        uVar14 = unaff_EBX | 3;
        uVar11 = FUN_10003e40(pvVar10,(ushort *)L"502a");
        puVar8 = (ushort *)0x0;
        if (uVar11 != 0) {
          pvVar10 = (void *)FUN_10003c70(uVar1,(int *)apvStack_110);
          puStack_10 = (undefined1 *)0x3;
          uVar14 = unaff_EBX | 7;
          uVar11 = FUN_10003e40(pvVar10,(ushort *)L"512a");
          puVar8 = (ushort *)0x0;
          if (uVar11 != 0) {
            pvVar10 = (void *)FUN_10003c70(uVar1,(int *)apvStack_110);
            puStack_10 = (undefined1 *)0x4;
            uVar14 = unaff_EBX | 0xf;
            uVar11 = FUN_10003e40(pvVar10,(ushort *)L"522a");
            puVar8 = (ushort *)0x0;
            if (uVar11 != 0) {
              pvVar10 = (void *)FUN_10003c70(uVar1,(int *)apvStack_110);
              puStack_10 = (undefined1 *)0x5;
              uVar14 = unaff_EBX | 0x1f;
              puVar8 = (ushort *)FUN_10003e40(pvVar10,(ushort *)L"542a");
              if (puVar8 != (ushort *)0x0) goto LAB_10002d67;
            }
          }
        }
        bVar3 = true;
      }
      if ((uVar14 & 0x10) != 0) {
        uVar14 = uVar14 & 0xffffffef;
        if (7 < uStack_e0) {
          puVar8 = (ushort *)FUN_10004d04(pvStack_f4);
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
        puVar8 = (ushort *)0x0;
        uStack_70 = 7;
        uStack_74 = 0;
        pvStack_84 = (void *)((uint)pvStack_84 & 0xffff0000);
      }
      if ((uVar14 & 4) != 0) {
        uVar14 = uVar14 & 0xfffffffb;
        if (7 < uStack_a8) {
          puVar8 = (ushort *)FUN_10004d04(pvStack_bc);
        }
        uStack_a8 = 7;
        uStack_ac = 0;
        pvStack_bc = (void *)((uint)pvStack_bc & 0xffff0000);
      }
      if ((uVar14 & 2) != 0) {
        uVar14 = uVar14 & 0xfffffffd;
        if (7 < uStack_c4) {
          puVar8 = (ushort *)FUN_10004d04(pvStack_d8);
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
        puVar8 = (ushort *)0x0;
        uStack_8c = 7;
        uStack_90 = 0;
        pvStack_a0 = (void *)((uint)pvStack_a0 & 0xffff0000);
      }
      if (bVar3) {
        if (7 < uStack_fc) {
          puVar8 = (ushort *)FUN_10004d04(apvStack_110[0]);
        }
        ExceptionList = pvStack_18;
        return CONCAT31((int3)((uint)puVar8 >> 8),1);
      }
      puStack_10 = (undefined1 *)0xffffffff;
      if (7 < uStack_fc) {
        FUN_10004d04(apvStack_110[0]);
      }
      local_11c = local_11c + 1;
      _Stack_3c.cbSize = 0x1c;
      DeviceInfoSet_00 = (HDEVINFO)SetupDiEnumDeviceInfo(pvStack_114,local_11c,&_Stack_3c);
      DeviceInfoSet = pvStack_114;
      unaff_EBX = uVar14;
    }
  }
  ExceptionList = pvStack_18;
  return (uint)DeviceInfoSet_00 & 0xffffff00;
}

