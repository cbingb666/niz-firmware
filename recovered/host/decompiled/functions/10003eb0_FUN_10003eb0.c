/* Address: 0x10003eb0; body bytes: 258 */

void * __thiscall FUN_10003eb0(void *this,uint param_1)

{
  uint uVar1;
  size_t _Size;
  void *in_EAX;
  void *pvVar2;
  
  if (in_EAX != (void *)0x0) {
    uVar1 = *(uint *)((int)this + 0x14);
    pvVar2 = this;
    if (7 < uVar1) {
      pvVar2 = *(void **)this;
    }
    if (pvVar2 <= in_EAX) {
      pvVar2 = this;
      if (7 < uVar1) {
        pvVar2 = *(void **)this;
      }
      if (in_EAX < (void *)((int)pvVar2 + *(int *)((int)this + 0x10) * 2)) {
        if (7 < uVar1) {
          pvVar2 = (void *)FUN_10003cd0(this,(int)in_EAX - *(int *)this >> 1);
          return pvVar2;
        }
        pvVar2 = (void *)FUN_10003cd0(this,(int)in_EAX - (int)this >> 1);
        return pvVar2;
      }
    }
  }
  if (0x7ffffffe < param_1) {
    FUN_10004aff("string too long");
  }
  if (*(uint *)((int)this + 0x14) < param_1) {
    FUN_10004090((int)this,param_1);
    if (param_1 == 0) {
      return this;
    }
  }
  else if (param_1 == 0) {
    *(undefined4 *)((int)this + 0x10) = 0;
    if (7 < *(uint *)((int)this + 0x14)) {
      **(undefined2 **)this = 0;
      return this;
    }
    *(undefined2 *)this = 0;
    return this;
  }
  pvVar2 = this;
  if (7 < *(uint *)((int)this + 0x14)) {
    pvVar2 = *(void **)this;
  }
  _Size = param_1 * 2;
  FID_conflict__memcpy(pvVar2,in_EAX,_Size);
  *(uint *)((int)this + 0x10) = param_1;
  if (*(uint *)((int)this + 0x14) < 8) {
    *(undefined2 *)(_Size + (int)this) = 0;
    return this;
  }
  *(undefined2 *)(_Size + *(int *)this) = 0;
  return this;
}

