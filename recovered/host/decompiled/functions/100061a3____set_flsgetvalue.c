/* Address: 0x100061a3; body bytes: 52 */

/* Library Function - Single Match
    ___set_flsgetvalue
   
   Library: Visual Studio 2010 Release */

LPVOID ___set_flsgetvalue(void)

{
  LPVOID lpTlsValue;
  
  lpTlsValue = TlsGetValue(DAT_1000f208);
  if (lpTlsValue == (LPVOID)0x0) {
    lpTlsValue = DecodePointer(DAT_100106c4);
    TlsSetValue(DAT_1000f208,lpTlsValue);
  }
  return lpTlsValue;
}

