/* Address: 0x10004500; body bytes: 1250 */

undefined4 __thiscall FUN_10004500(void *this,int param_1,int param_2,void *param_3)

{
  int iVar1;
  byte bVar2;
  undefined1 uVar3;
  byte bVar4;
  undefined1 uVar5;
  void *_Memory;
  uint uVar6;
  int iVar7;
  void *pvVar8;
  undefined4 extraout_EAX;
  int extraout_ECX;
  int iVar9;
  int extraout_ECX_00;
  uint uVar10;
  int extraout_ECX_01;
  int iVar11;
  int extraout_ECX_02;
  int extraout_EDX;
  int extraout_EDX_00;
  uint uVar12;
  void *pvVar13;
  int *piVar14;
  size_t _Size;
  int *piVar15;
  undefined4 *puVar16;
  undefined8 uVar17;
  int local_c;
  
  bVar2 = *(byte *)(param_1 + 6);
  uVar3 = *(undefined1 *)(param_1 + 9);
  bVar4 = *(byte *)(param_1 + 5);
  uVar5 = *(undefined1 *)(param_1 + 10);
  *(uint *)((int)this + 0x3c) =
       (uint)CONCAT11(*(undefined1 *)(param_1 + 7),*(undefined1 *)(param_1 + 8));
  uVar12 = (uint)CONCAT11(uVar3,uVar5);
  *(uint *)((int)this + 0x14) = (uint)bVar4;
  *(uint *)((int)this + 0x10) = (uint)bVar2;
  local_c = (int)param_3 / param_2;
  _Size = param_2 - 0xb;
  _Memory = _malloc(_Size * local_c);
  if (0 < local_c) {
    pvVar13 = (void *)(param_1 + 0xb);
    param_3 = _Memory;
    do {
      FID_conflict__memcpy(param_3,pvVar13,_Size);
      pvVar13 = (void *)((int)pvVar13 + param_2);
      param_3 = (void *)((int)param_3 + _Size);
      local_c = local_c + -1;
    } while (local_c != 0);
  }
  if (bVar2 != 0) {
    iVar7 = (int)(((int)(uVar12 - 1) >> 0x1f & 3U) + (uVar12 - 1)) >> 2;
    uVar12 = iVar7 + 1;
    *(uint *)((int)this + 0x38) = uVar12;
    pvVar13 = *(void **)((int)this + 0x28);
    piVar15 = (int *)((int)this + 0x28);
    if (pvVar13 != *(void **)((int)this + 0x2c)) {
      FID_conflict__memcpy(pvVar13,*(void **)((int)this + 0x2c),0);
      *(void **)((int)this + 0x2c) = pvVar13;
    }
    pvVar13 = *(void **)((int)this + 0x2c);
    iVar9 = *piVar15;
    uVar6 = (int)pvVar13 - iVar9 >> 2;
    uVar17 = CONCAT44(iVar9,uVar6);
    if (uVar12 < uVar6) {
      pvVar8 = (void *)(iVar9 + uVar12 * 4);
      if (pvVar8 != pvVar13) {
        FID_conflict__memcpy(pvVar8,pvVar13,0);
        *(void **)((int)this + 0x2c) = pvVar8;
      }
    }
    else if (uVar6 < uVar12) {
      iVar9 = uVar12 - uVar6;
      if (0x3fffffffU - iVar9 < uVar6) {
        uVar17 = FUN_10004aff("vector<T> too long");
        iVar9 = extraout_ECX_01;
      }
      uVar10 = (int)uVar17 + iVar9;
      uVar6 = *(int *)((int)this + 0x30) - (int)((ulonglong)uVar17 >> 0x20) >> 2;
      if (uVar6 < uVar10) {
        if (0x3fffffff - (uVar6 >> 1) < uVar6) {
          uVar6 = 0;
        }
        else {
          uVar6 = uVar6 + (uVar6 >> 1);
        }
        if (uVar6 < uVar10) {
          uVar6 = uVar10;
        }
        FUN_10001240(uVar6);
      }
      puVar16 = *(undefined4 **)((int)this + 0x2c);
      iVar9 = uVar12 - ((int)puVar16 - *piVar15 >> 2);
      if (iVar9 != 0) {
        for (; iVar9 != 0; iVar9 = iVar9 + -1) {
          *puVar16 = 0;
          puVar16 = puVar16 + 1;
        }
      }
      *(uint *)((int)this + 0x2c) =
           *(int *)((int)this + 0x2c) + (uVar12 - (*(int *)((int)this + 0x2c) - *piVar15 >> 2)) * 4;
    }
    pvVar13 = *(void **)((int)this + 0x18);
    piVar14 = (int *)((int)this + 0x18);
    if (pvVar13 != *(void **)((int)this + 0x1c)) {
      FID_conflict__memcpy(pvVar13,*(void **)((int)this + 0x1c),0);
      *(void **)((int)this + 0x1c) = pvVar13;
    }
    pvVar13 = *(void **)((int)this + 0x1c);
    iVar9 = *piVar14;
    uVar6 = (int)pvVar13 - iVar9 >> 2;
    if (uVar12 < uVar6) {
      pvVar8 = (void *)(iVar9 + uVar12 * 4);
      if (pvVar8 != pvVar13) {
        FID_conflict__memcpy(pvVar8,pvVar13,0);
LAB_1000497f:
        *(void **)((int)this + 0x1c) = pvVar8;
      }
    }
    else if (uVar6 < uVar12) {
      iVar11 = uVar12 - uVar6;
      if (0x3fffffffU - iVar11 < uVar6) {
        FUN_10004aff("vector<T> too long");
        iVar11 = extraout_ECX_02;
        iVar9 = extraout_EDX_00;
      }
      uVar6 = uVar6 + iVar11;
      uVar10 = *(int *)((int)this + 0x20) - iVar9 >> 2;
      if (uVar10 < uVar6) {
        if (0x3fffffff - (uVar10 >> 1) < uVar10) {
          uVar10 = 0;
        }
        else {
          uVar10 = uVar10 + (uVar10 >> 1);
        }
        if (uVar10 < uVar6) {
          uVar10 = uVar6;
        }
        FUN_10001240(uVar10);
      }
      puVar16 = *(undefined4 **)((int)this + 0x1c);
      iVar9 = uVar12 - ((int)puVar16 - *piVar14 >> 2);
      if (iVar9 != 0) {
        for (; iVar9 != 0; iVar9 = iVar9 + -1) {
          *puVar16 = 0;
          puVar16 = puVar16 + 1;
        }
      }
      pvVar8 = (void *)(*(int *)((int)this + 0x1c) +
                       (uVar12 - (*(int *)((int)this + 0x1c) - *piVar14 >> 2)) * 4);
      goto LAB_1000497f;
    }
    iVar9 = 0;
    param_3 = (void *)0x0;
    if (0 < (int)uVar12) {
      do {
        *(uint *)(*piVar15 + iVar9 * 4) = (uint)*(byte *)((int)param_3 + (int)_Memory);
        if (iVar9 != iVar7) {
          iVar11 = (int)param_3 + 2;
          iVar1 = (int)param_3 + 3;
          param_3 = (void *)((int)param_3 + 4);
          *(uint *)(*piVar14 + iVar9 * 4) =
               (uint)CONCAT11(*(undefined1 *)(iVar11 + (int)_Memory),
                              *(undefined1 *)(iVar1 + (int)_Memory));
        }
        iVar9 = iVar9 + 1;
      } while (iVar9 < (int)uVar12);
    }
    goto LAB_100049cb;
  }
  *(uint *)((int)this + 0x38) = uVar12;
  pvVar13 = *(void **)((int)this + 0x28);
  piVar15 = (int *)((int)this + 0x28);
  if (pvVar13 != *(void **)((int)this + 0x2c)) {
    FID_conflict__memcpy(pvVar13,*(void **)((int)this + 0x2c),0);
    *(void **)((int)this + 0x2c) = pvVar13;
  }
  pvVar13 = *(void **)((int)this + 0x2c);
  iVar7 = *piVar15;
  uVar6 = (int)pvVar13 - iVar7 >> 2;
  uVar17 = CONCAT44(iVar7,uVar6);
  if (uVar12 < uVar6) {
    pvVar8 = (void *)(iVar7 + uVar12 * 4);
    if (pvVar8 != pvVar13) {
      FID_conflict__memcpy(pvVar8,pvVar13,0);
      *(void **)((int)this + 0x2c) = pvVar8;
    }
  }
  else if (uVar6 < uVar12) {
    iVar7 = uVar12 - uVar6;
    if (0x3fffffffU - iVar7 < uVar6) {
      uVar17 = FUN_10004aff("vector<T> too long");
      iVar7 = extraout_ECX;
    }
    uVar10 = (int)uVar17 + iVar7;
    uVar6 = *(int *)((int)this + 0x30) - (int)((ulonglong)uVar17 >> 0x20) >> 2;
    if (uVar6 < uVar10) {
      if (0x3fffffff - (uVar6 >> 1) < uVar6) {
        uVar6 = 0;
      }
      else {
        uVar6 = uVar6 + (uVar6 >> 1);
      }
      if (uVar6 < uVar10) {
        uVar6 = uVar10;
      }
      FUN_10001240(uVar6);
    }
    puVar16 = *(undefined4 **)((int)this + 0x2c);
    iVar7 = uVar12 - ((int)puVar16 - *piVar15 >> 2);
    if (iVar7 != 0) {
      for (; iVar7 != 0; iVar7 = iVar7 + -1) {
        *puVar16 = 0;
        puVar16 = puVar16 + 1;
      }
    }
    *(uint *)((int)this + 0x2c) =
         *(int *)((int)this + 0x2c) + (uVar12 - (*(int *)((int)this + 0x2c) - *piVar15 >> 2)) * 4;
  }
  pvVar13 = *(void **)((int)this + 0x18);
  piVar14 = (int *)((int)this + 0x18);
  if (pvVar13 != *(void **)((int)this + 0x1c)) {
    FID_conflict__memcpy(pvVar13,*(void **)((int)this + 0x1c),0);
    *(void **)((int)this + 0x1c) = pvVar13;
  }
  pvVar13 = *(void **)((int)this + 0x1c);
  iVar7 = *piVar14;
  uVar6 = (int)pvVar13 - iVar7 >> 2;
  if (uVar12 < uVar6) {
    pvVar8 = (void *)(iVar7 + uVar12 * 4);
    if (pvVar8 != pvVar13) {
      FID_conflict__memcpy(pvVar8,pvVar13,0);
LAB_10004773:
      *(void **)((int)this + 0x1c) = pvVar8;
    }
  }
  else if (uVar6 < uVar12) {
    iVar9 = uVar12 - uVar6;
    if (0x3fffffffU - iVar9 < uVar6) {
      FUN_10004aff("vector<T> too long");
      iVar9 = extraout_ECX_00;
      iVar7 = extraout_EDX;
    }
    uVar6 = uVar6 + iVar9;
    uVar10 = *(int *)((int)this + 0x20) - iVar7 >> 2;
    if (uVar10 < uVar6) {
      if (0x3fffffff - (uVar10 >> 1) < uVar10) {
        uVar10 = 0;
      }
      else {
        uVar10 = uVar10 + (uVar10 >> 1);
      }
      if (uVar10 < uVar6) {
        uVar10 = uVar6;
      }
      FUN_10001240(uVar10);
    }
    puVar16 = *(undefined4 **)((int)this + 0x1c);
    iVar7 = uVar12 - ((int)puVar16 - *piVar14 >> 2);
    if (iVar7 != 0) {
      for (; iVar7 != 0; iVar7 = iVar7 + -1) {
        *puVar16 = 0;
        puVar16 = puVar16 + 1;
      }
    }
    pvVar8 = (void *)(*(int *)((int)this + 0x1c) +
                     (uVar12 - (*(int *)((int)this + 0x1c) - *piVar14 >> 2)) * 4);
    goto LAB_10004773;
  }
  iVar7 = 0;
  if (uVar12 != 0) {
    do {
      *(uint *)(*piVar15 + iVar7 * 4) = (uint)*(byte *)(iVar7 + (int)_Memory);
      iVar7 = iVar7 + 1;
    } while (iVar7 < (int)uVar12);
  }
LAB_100049cb:
  _free(_Memory);
  return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
}

