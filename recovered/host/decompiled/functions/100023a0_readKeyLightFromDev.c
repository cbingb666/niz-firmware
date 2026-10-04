/* Address: 0x100023a0; body bytes: 11 */

/* public: bool __thiscall CKB75HWI::readKeyLightFromDev(void) */

bool __thiscall CKB75HWI::readKeyLightFromDev(CKB75HWI *this)

{
  bool bVar1;
  
                    /* 0x23a0  20  ?readKeyLightFromDev@CKB75HWI@@QAE_NXZ */
  bVar1 = (bool)read_rgb_configuration_stream();
  return bVar1;
}

