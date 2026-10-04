10001000: c701b4b10010             mov dword ptr [ecx], 0x1000b1b4
10001006: e9a23c0000               jmp 0x10004cad
1000100b: cc                       int3 
1000100c: cc                       int3 
1000100d: cc                       int3 
1000100e: cc                       int3 
1000100f: cc                       int3 
10001010: 55                       push ebp
10001011: 8bec                     mov ebp, esp
10001013: 56                       push esi
10001014: 8bf1                     mov esi, ecx
10001016: c706b4b10010             mov dword ptr [esi], 0x1000b1b4
1000101c: e88c3c0000               call 0x10004cad
10001021: f6450801                 test byte ptr [ebp + 8], 1
10001025: 7409                     je 0x10001030
10001027: 56                       push esi
10001028: e8d73c0000               call 0x10004d04
1000102d: 83c404                   add esp, 4
10001030: 8bc6                     mov eax, esi
10001032: 5e                       pop esi
10001033: 5d                       pop ebp
10001034: c20400                   ret 4
10001037: cc                       int3 
10001038: cc                       int3 
10001039: cc                       int3 
1000103a: cc                       int3 
1000103b: cc                       int3 
1000103c: cc                       int3 
1000103d: cc                       int3 
1000103e: cc                       int3 
1000103f: cc                       int3 
10001040: 55                       push ebp
10001041: 8bec                     mov ebp, esp
10001043: 56                       push esi
10001044: 8b7508                   mov esi, dword ptr [ebp + 8]
10001047: 57                       push edi
10001048: 8bf9                     mov edi, ecx
1000104a: 85f6                     test esi, esi
1000104c: 7521                     jne 0x1000106f
1000104e: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10001051: 85c0                     test eax, eax
10001053: 7405                     je 0x1000105a
10001055: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10001058: 8908                     mov dword ptr [eax], ecx
1000105a: 8b4514                   mov eax, dword ptr [ebp + 0x14]
1000105d: 85c0                     test eax, eax
1000105f: 7406                     je 0x10001067
10001061: c70008000000             mov dword ptr [eax], 8
10001067: 5f                       pop edi
10001068: 32c0                     xor al, al
1000106a: 5e                       pop esi
1000106b: 5d                       pop ebp
1000106c: c21000                   ret 0x10
1000106f: 8b5510                   mov edx, dword ptr [ebp + 0x10]
10001072: 8b02                     mov eax, dword ptr [edx]
10001074: 50                       push eax
10001075: 6a00                     push 0
10001077: 56                       push esi
10001078: e8437a0000               call 0x10008ac0
1000107d: 66c70600f0               mov word ptr [esi], 0xf000
10001082: 8a4f08                   mov cl, byte ptr [edi + 8]
10001085: 884e02                   mov byte ptr [esi + 2], cl
10001088: 8a5704                   mov dl, byte ptr [edi + 4]
1000108b: 885603                   mov byte ptr [esi + 3], dl
1000108e: c6460401                 mov byte ptr [esi + 4], 1
10001092: 8b4f24                   mov ecx, dword ptr [edi + 0x24]
10001095: 83c40c                   add esp, 0xc
10001098: 85c9                     test ecx, ecx
1000109a: 7ecb                     jle 0x10001067
1000109c: 884e07                   mov byte ptr [esi + 7], cl
1000109f: 8b4710                   mov eax, dword ptr [edi + 0x10]
100010a2: c1f808                   sar eax, 8
100010a5: 884605                   mov byte ptr [esi + 5], al
100010a8: 8a5710                   mov dl, byte ptr [edi + 0x10]
100010ab: 33c0                     xor eax, eax
100010ad: 885606                   mov byte ptr [esi + 6], dl
100010b0: 85c9                     test ecx, ecx
100010b2: 7e0f                     jle 0x100010c3
100010b4: 8b5714                   mov edx, dword ptr [edi + 0x14]
100010b7: 8a1482                   mov dl, byte ptr [edx + eax*4]
100010ba: 88540608                 mov byte ptr [esi + eax + 8], dl
100010be: 40                       inc eax
100010bf: 3bc1                     cmp eax, ecx
100010c1: 7cf1                     jl 0x100010b4
100010c3: 5f                       pop edi
100010c4: b001                     mov al, 1
100010c6: 5e                       pop esi
100010c7: 5d                       pop ebp
100010c8: c21000                   ret 0x10
100010cb: cc                       int3 
100010cc: cc                       int3 
100010cd: cc                       int3 
100010ce: cc                       int3 
100010cf: cc                       int3 
100010d0: 55                       push ebp
100010d1: 8bec                     mov ebp, esp
100010d3: 83ec0c                   sub esp, 0xc
100010d6: 8b4508                   mov eax, dword ptr [ebp + 8]
100010d9: 0fb65006                 movzx edx, byte ptr [eax + 6]
100010dd: 53                       push ebx
100010de: 0fb65805                 movzx ebx, byte ptr [eax + 5]
100010e2: 56                       push esi
100010e3: 57                       push edi
100010e4: 0fb67807                 movzx edi, byte ptr [eax + 7]
100010e8: c1e308                   shl ebx, 8
100010eb: 8d7114                   lea esi, [ecx + 0x14]
100010ee: 03da                     add ebx, edx
100010f0: 897924                   mov dword ptr [ecx + 0x24], edi
100010f3: 8b16                     mov edx, dword ptr [esi]
100010f5: 8b4604                   mov eax, dword ptr [esi + 4]
100010f8: 894df4                   mov dword ptr [ebp - 0xc], ecx
100010fb: 8955f8                   mov dword ptr [ebp - 8], edx
100010fe: 3bd0                     cmp edx, eax
10001100: 7422                     je 0x10001124
10001102: 8bc8                     mov ecx, eax
10001104: 2bc8                     sub ecx, eax
10001106: c1f902                   sar ecx, 2
10001109: 03c9                     add ecx, ecx
1000110b: 03c9                     add ecx, ecx
1000110d: 51                       push ecx
1000110e: 50                       push eax
1000110f: 52                       push edx
10001110: 894dfc                   mov dword ptr [ebp - 4], ecx
10001113: e8f83b0000               call 0x10004d10
10001118: 8b45fc                   mov eax, dword ptr [ebp - 4]
1000111b: 83c40c                   add esp, 0xc
1000111e: 0345f8                   add eax, dword ptr [ebp - 8]
10001121: 894604                   mov dword ptr [esi + 4], eax
10001124: 8bc7                     mov eax, edi
10001126: e835000000               call 0x10001160
1000112b: 8b55f4                   mov edx, dword ptr [ebp - 0xc]
1000112e: 33c0                     xor eax, eax
10001130: 895a10                   mov dword ptr [edx + 0x10], ebx
10001133: 85ff                     test edi, edi
10001135: 7e1b                     jle 0x10001152
10001137: eb07                     jmp 0x10001140
10001139: 8da42400000000           lea esp, [esp]
10001140: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10001143: 0fb6540108               movzx edx, byte ptr [ecx + eax + 8]
10001148: 8b0e                     mov ecx, dword ptr [esi]
1000114a: 891481                   mov dword ptr [ecx + eax*4], edx
1000114d: 40                       inc eax
1000114e: 3bc7                     cmp eax, edi
10001150: 7cee                     jl 0x10001140
10001152: 5f                       pop edi
10001153: 5e                       pop esi
10001154: b001                     mov al, 1
10001156: 5b                       pop ebx
10001157: 8be5                     mov esp, ebp
10001159: 5d                       pop ebp
1000115a: c20c00                   ret 0xc
1000115d: cc                       int3 
1000115e: cc                       int3 
1000115f: cc                       int3 
10001160: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001163: 8b16                     mov edx, dword ptr [esi]
10001165: 53                       push ebx
10001166: 8bd8                     mov ebx, eax
10001168: 8bc1                     mov eax, ecx
1000116a: 2bc2                     sub eax, edx
1000116c: c1f802                   sar eax, 2
1000116f: 57                       push edi
10001170: 3bc3                     cmp eax, ebx
10001172: 7628                     jbe 0x1000119c
10001174: 8d3c9a                   lea edi, [edx + ebx*4]
10001177: 3bf9                     cmp edi, ecx
10001179: 7454                     je 0x100011cf
1000117b: 8bc1                     mov eax, ecx
1000117d: 2bc1                     sub eax, ecx
1000117f: c1f802                   sar eax, 2
10001182: 8d1c8500000000           lea ebx, [eax*4]
10001189: 53                       push ebx
1000118a: 51                       push ecx
1000118b: 57                       push edi
1000118c: e87f3b0000               call 0x10004d10
10001191: 83c40c                   add esp, 0xc
10001194: 03df                     add ebx, edi
10001196: 5f                       pop edi
10001197: 895e04                   mov dword ptr [esi + 4], ebx
1000119a: 5b                       pop ebx
1000119b: c3                       ret 
1000119c: 7331                     jae 0x100011cf
1000119e: 8bcb                     mov ecx, ebx
100011a0: 2bc8                     sub ecx, eax
100011a2: 8bc6                     mov eax, esi
100011a4: e837000000               call 0x100011e0
100011a9: 8b7e04                   mov edi, dword ptr [esi + 4]
100011ac: 8bc7                     mov eax, edi
100011ae: 2b06                     sub eax, dword ptr [esi]
100011b0: 8bcb                     mov ecx, ebx
100011b2: c1f802                   sar eax, 2
100011b5: 2bc8                     sub ecx, eax
100011b7: 7404                     je 0x100011bd
100011b9: 33c0                     xor eax, eax
100011bb: f3ab                     rep stosd dword ptr es:[edi], eax
100011bd: 8b4604                   mov eax, dword ptr [esi + 4]
100011c0: 8bc8                     mov ecx, eax
100011c2: 2b0e                     sub ecx, dword ptr [esi]
100011c4: c1f902                   sar ecx, 2
100011c7: 2bd9                     sub ebx, ecx
100011c9: 8d1498                   lea edx, [eax + ebx*4]
100011cc: 895604                   mov dword ptr [esi + 4], edx
100011cf: 5f                       pop edi
100011d0: 5b                       pop ebx
100011d1: c3                       ret 
100011d2: cc                       int3 
100011d3: cc                       int3 
100011d4: cc                       int3 
100011d5: cc                       int3 
100011d6: cc                       int3 
100011d7: cc                       int3 
100011d8: cc                       int3 
100011d9: cc                       int3 
100011da: cc                       int3 
100011db: cc                       int3 
100011dc: cc                       int3 
100011dd: cc                       int3 
100011de: cc                       int3 
100011df: cc                       int3 
100011e0: 56                       push esi
100011e1: 8bf0                     mov esi, eax
100011e3: 8b16                     mov edx, dword ptr [esi]
100011e5: 8b4604                   mov eax, dword ptr [esi + 4]
100011e8: 57                       push edi
100011e9: 2bc2                     sub eax, edx
100011eb: bfffffff3f               mov edi, 0x3fffffff
100011f0: c1f802                   sar eax, 2
100011f3: 2bf9                     sub edi, ecx
100011f5: 3bf8                     cmp edi, eax
100011f7: 730a                     jae 0x10001203
100011f9: 6880d00010               push 0x1000d080
100011fe: e8fc380000               call 0x10004aff
10001203: 03c1                     add eax, ecx
10001205: 8b4e08                   mov ecx, dword ptr [esi + 8]
10001208: 2bca                     sub ecx, edx
1000120a: c1f902                   sar ecx, 2
1000120d: 3bc1                     cmp eax, ecx
1000120f: 7621                     jbe 0x10001232
10001211: 8bd1                     mov edx, ecx
10001213: d1ea                     shr edx, 1
10001215: bfffffff3f               mov edi, 0x3fffffff
1000121a: 2bfa                     sub edi, edx
1000121c: 3bf9                     cmp edi, ecx
1000121e: 7304                     jae 0x10001224
10001220: 33c9                     xor ecx, ecx
10001222: eb02                     jmp 0x10001226
10001224: 03ca                     add ecx, edx
10001226: 3bc8                     cmp ecx, eax
10001228: 7302                     jae 0x1000122c
1000122a: 8bc8                     mov ecx, eax
1000122c: 51                       push ecx
1000122d: e80e000000               call 0x10001240
10001232: 5f                       pop edi
10001233: 5e                       pop esi
10001234: c3                       ret 
10001235: cc                       int3 
10001236: cc                       int3 
10001237: cc                       int3 
10001238: cc                       int3 
10001239: cc                       int3 
1000123a: cc                       int3 
1000123b: cc                       int3 
1000123c: cc                       int3 
1000123d: cc                       int3 
1000123e: cc                       int3 
1000123f: cc                       int3 
10001240: 55                       push ebp
10001241: 8bec                     mov ebp, esp
10001243: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10001246: 81f9ffffff3f             cmp ecx, 0x3fffffff
1000124c: 760a                     jbe 0x10001258
1000124e: 6880d00010               push 0x1000d080
10001253: e8a7380000               call 0x10004aff
10001258: 8b4608                   mov eax, dword ptr [esi + 8]
1000125b: 2b06                     sub eax, dword ptr [esi]
1000125d: c1f802                   sar eax, 2
10001260: 3bc1                     cmp eax, ecx
10001262: 734c                     jae 0x100012b0
10001264: 53                       push ebx
10001265: 57                       push edi
10001266: e855000000               call 0x100012c0
1000126b: 8b4e04                   mov ecx, dword ptr [esi + 4]
1000126e: 8bd8                     mov ebx, eax
10001270: 8b06                     mov eax, dword ptr [esi]
10001272: 2bc8                     sub ecx, eax
10001274: c1f902                   sar ecx, 2
10001277: 03c9                     add ecx, ecx
10001279: 03c9                     add ecx, ecx
1000127b: 51                       push ecx
1000127c: 50                       push eax
1000127d: 53                       push ebx
1000127e: e88d3a0000               call 0x10004d10
10001283: 8b06                     mov eax, dword ptr [esi]
10001285: 8b7e04                   mov edi, dword ptr [esi + 4]
10001288: 2bf8                     sub edi, eax
1000128a: 83c40c                   add esp, 0xc
1000128d: c1ff02                   sar edi, 2
10001290: 85c0                     test eax, eax
10001292: 7409                     je 0x1000129d
10001294: 50                       push eax
10001295: e86a3a0000               call 0x10004d04
1000129a: 83c404                   add esp, 4
1000129d: 8b5508                   mov edx, dword ptr [ebp + 8]
100012a0: 8d0cbb                   lea ecx, [ebx + edi*4]
100012a3: 8d0493                   lea eax, [ebx + edx*4]
100012a6: 5f                       pop edi
100012a7: 891e                     mov dword ptr [esi], ebx
100012a9: 894608                   mov dword ptr [esi + 8], eax
100012ac: 894e04                   mov dword ptr [esi + 4], ecx
100012af: 5b                       pop ebx
100012b0: 5d                       pop ebp
100012b1: c20400                   ret 4
100012b4: cc                       int3 
100012b5: cc                       int3 
100012b6: cc                       int3 
100012b7: cc                       int3 
100012b8: cc                       int3 
100012b9: cc                       int3 
100012ba: cc                       int3 
100012bb: cc                       int3 
100012bc: cc                       int3 
100012bd: cc                       int3 
100012be: cc                       int3 
100012bf: cc                       int3 
100012c0: 55                       push ebp
100012c1: 8bec                     mov ebp, esp
100012c3: 83ec10                   sub esp, 0x10
100012c6: 33c0                     xor eax, eax
100012c8: 85c9                     test ecx, ecx
100012ca: 7444                     je 0x10001310
100012cc: 81f9ffffff3f             cmp ecx, 0x3fffffff
100012d2: 7714                     ja 0x100012e8
100012d4: 8d048d00000000           lea eax, [ecx*4]
100012db: 50                       push eax
100012dc: e8903d0000               call 0x10005071
100012e1: 83c404                   add esp, 4
100012e4: 85c0                     test eax, eax
100012e6: 7528                     jne 0x10001310
100012e8: 8d4dfc                   lea ecx, [ebp - 4]
100012eb: 51                       push ecx
100012ec: 8d4df0                   lea ecx, [ebp - 0x10]
100012ef: c745fc00000000           mov dword ptr [ebp - 4], 0
100012f6: e856390000               call 0x10004c51
100012fb: 6850dd0010               push 0x1000dd50
10001300: 8d55f0                   lea edx, [ebp - 0x10]
10001303: 52                       push edx
10001304: c745f0b4b10010           mov dword ptr [ebp - 0x10], 0x1000b1b4
1000130b: e82d420000               call 0x1000553d
10001310: 8be5                     mov esp, ebp
10001312: 5d                       pop ebp
10001313: c3                       ret 
10001314: cc                       int3 
10001315: cc                       int3 
10001316: cc                       int3 
10001317: cc                       int3 
10001318: cc                       int3 
10001319: cc                       int3 
1000131a: cc                       int3 
1000131b: cc                       int3 
1000131c: cc                       int3 
1000131d: cc                       int3 
1000131e: cc                       int3 
1000131f: cc                       int3 
10001320: 55                       push ebp
10001321: 8bec                     mov ebp, esp
10001323: 8b4508                   mov eax, dword ptr [ebp + 8]
10001326: 56                       push esi
10001327: 50                       push eax
10001328: 8bf1                     mov esi, ecx
1000132a: e8b0390000               call 0x10004cdf
1000132f: c706b4b10010             mov dword ptr [esi], 0x1000b1b4
10001335: 8bc6                     mov eax, esi
10001337: 5e                       pop esi
10001338: 5d                       pop ebp
10001339: c20400                   ret 4
1000133c: cc                       int3 
1000133d: cc                       int3 
1000133e: cc                       int3 
1000133f: cc                       int3 
10001340: 55                       push ebp
10001341: 8bec                     mov ebp, esp
10001343: 56                       push esi
10001344: 8b7508                   mov esi, dword ptr [ebp + 8]
10001347: 57                       push edi
10001348: 8bc1                     mov eax, ecx
1000134a: b922000000               mov ecx, 0x22
1000134f: 8bf8                     mov edi, eax
10001351: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10001353: 5f                       pop edi
10001354: 5e                       pop esi
10001355: 5d                       pop ebp
10001356: c20400                   ret 4
10001359: cc                       int3 
1000135a: cc                       int3 
1000135b: cc                       int3 
1000135c: cc                       int3 
1000135d: cc                       int3 
1000135e: cc                       int3 
1000135f: cc                       int3 
10001360: 55                       push ebp
10001361: 8bec                     mov ebp, esp
10001363: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10001366: 48                       dec eax
10001367: 7508                     jne 0x10001371
10001369: 8b4508                   mov eax, dword ptr [ebp + 8]
1000136c: a3cc090110               mov dword ptr [0x100109cc], eax
10001371: b801000000               mov eax, 1
10001376: 5d                       pop ebp
10001377: c20c00                   ret 0xc
1000137a: cc                       int3 
1000137b: cc                       int3 
1000137c: cc                       int3 
1000137d: cc                       int3 
1000137e: cc                       int3 
1000137f: cc                       int3 
10001380: 55                       push ebp
10001381: 8bec                     mov ebp, esp
10001383: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10001386: 8b5510                   mov edx, dword ptr [ebp + 0x10]
10001389: 8b02                     mov eax, dword ptr [edx]
1000138b: 81c100ffffff             add ecx, 0xffffff00
10001391: 83f905                   cmp ecx, 5
10001394: 771a                     ja 0x100013b0
10001396: ff248dd8130010           jmp dword ptr [ecx*4 + 0x100013d8]
1000139d: 0d00000080               or eax, 0x80000000
100013a2: eb0c                     jmp 0x100013b0
100013a4: 0d00000040               or eax, 0x40000000
100013a9: eb05                     jmp 0x100013b0
100013ab: 0d000000c0               or eax, 0xc0000000
100013b0: 8b4a08                   mov ecx, dword ptr [edx + 8]
100013b3: 8b1504100110             mov edx, dword ptr [0x10011004]
100013b9: 83e101                   and ecx, 1
100013bc: c1e118                   shl ecx, 0x18
100013bf: 51                       push ecx
100013c0: 50                       push eax
100013c1: 6866040000               push 0x466
100013c6: 52                       push edx
100013c7: ff1514b10010             call dword ptr [0x1000b114]
100013cd: b801000000               mov eax, 1
100013d2: 5d                       pop ebp
100013d3: c20c00                   ret 0xc
100013d6: 8bff                     mov edi, edi
100013d8: b013                     mov al, 0x13
100013da: 0010                     add byte ptr [eax], dl
100013dc: 9d                       popfd 
100013dd: 1300                     adc eax, dword ptr [eax]
100013df: 10b0130010b0             adc byte ptr [eax - 0x4fefffed], dh
100013e5: 1300                     adc eax, dword ptr [eax]
100013e7: 10a4130010ab13           adc byte ptr [ebx + edx + 0x13ab1000], ah
100013ee: 0010                     add byte ptr [eax], dl
100013f0: 55                       push ebp
100013f1: 8bec                     mov ebp, esp
100013f3: 8b0dcc090110             mov ecx, dword ptr [0x100109cc]
100013f9: 8b4508                   mov eax, dword ptr [ebp + 8]
100013fc: 6a00                     push 0
100013fe: 51                       push ecx
100013ff: 6880130010               push 0x10001380
10001404: 6a0d                     push 0xd
10001406: a304100110               mov dword ptr [0x10011004], eax
1000140b: ff150cb10010             call dword ptr [0x1000b10c]
10001411: a300100110               mov dword ptr [0x10011000], eax
10001416: 5d                       pop ebp
10001417: c3                       ret 
10001418: cc                       int3 
10001419: cc                       int3 
1000141a: cc                       int3 
1000141b: cc                       int3 
1000141c: cc                       int3 
1000141d: cc                       int3 
1000141e: cc                       int3 
1000141f: cc                       int3 
10001420: a100100110               mov eax, dword ptr [0x10011000]
10001425: 50                       push eax
10001426: ff1510b10010             call dword ptr [0x1000b110]
1000142c: c3                       ret 
1000142d: cc                       int3 
1000142e: cc                       int3 
1000142f: cc                       int3 
10001430: b8ecd30010               mov eax, 0x1000d3ec
10001435: c3                       ret 
10001436: cc                       int3 
10001437: cc                       int3 
10001438: cc                       int3 
10001439: cc                       int3 
1000143a: cc                       int3 
1000143b: cc                       int3 
1000143c: cc                       int3 
1000143d: cc                       int3 
1000143e: cc                       int3 
1000143f: cc                       int3 
10001440: b8f8d30010               mov eax, 0x1000d3f8
10001445: c3                       ret 
10001446: cc                       int3 
10001447: cc                       int3 
10001448: cc                       int3 
10001449: cc                       int3 
1000144a: cc                       int3 
1000144b: cc                       int3 
1000144c: cc                       int3 
1000144d: cc                       int3 
1000144e: cc                       int3 
1000144f: cc                       int3 
10001450: 6848090000               push 0x948
10001455: 894604                   mov dword ptr [esi + 4], eax
10001458: c70608d40010             mov dword ptr [esi], 0x1000d408
1000145e: e8193d0000               call 0x1000517c
10001463: 6848090000               push 0x948
10001468: 6a00                     push 0
1000146a: 50                       push eax
1000146b: 894608                   mov dword ptr [esi + 8], eax
1000146e: e84d760000               call 0x10008ac0
10001473: 68c6000000               push 0xc6
10001478: 8d4e0c                   lea ecx, [esi + 0xc]
1000147b: 6a00                     push 0
1000147d: 51                       push ecx
1000147e: e83d760000               call 0x10008ac0
10001483: 83c41c                   add esp, 0x1c
10001486: 8bc6                     mov eax, esi
10001488: c3                       ret 
10001489: cc                       int3 
1000148a: cc                       int3 
1000148b: cc                       int3 
1000148c: cc                       int3 
1000148d: cc                       int3 
1000148e: cc                       int3 
1000148f: cc                       int3 
10001490: 56                       push esi
10001491: 57                       push edi
10001492: c70308d40010             mov dword ptr [ebx], 0x1000d408
10001498: 33f6                     xor esi, esi
1000149a: 8d9b00000000             lea ebx, [ebx]
100014a0: bf42000000               mov edi, 0x42
100014a5: 8b4308                   mov eax, dword ptr [ebx + 8]
100014a8: 8b0406                   mov eax, dword ptr [esi + eax]
100014ab: 85c0                     test eax, eax
100014ad: 7409                     je 0x100014b8
100014af: 50                       push eax
100014b0: e84f380000               call 0x10004d04
100014b5: 83c404                   add esp, 4
100014b8: 83c604                   add esi, 4
100014bb: 4f                       dec edi
100014bc: 75e7                     jne 0x100014a5
100014be: 81fe48090000             cmp esi, 0x948
100014c4: 7cda                     jl 0x100014a0
100014c6: 5f                       pop edi
100014c7: c703d4d40010             mov dword ptr [ebx], 0x1000d4d4
100014cd: 5e                       pop esi
100014ce: c3                       ret 
100014cf: cc                       int3 
100014d0: 55                       push ebp
100014d1: 8bec                     mov ebp, esp
100014d3: 81ecac000000             sub esp, 0xac
100014d9: a180f00010               mov eax, dword ptr [0x1000f080]
100014de: 33c5                     xor eax, ebp
100014e0: 8945fc                   mov dword ptr [ebp - 4], eax
100014e3: 8b4508                   mov eax, dword ptr [ebp + 8]
100014e6: 53                       push ebx
100014e7: 56                       push esi
100014e8: 8bf1                     mov esi, ecx
100014ea: 6a3e                     push 0x3e
100014ec: 33db                     xor ebx, ebx
100014ee: 8d8d7bffffff             lea ecx, [ebp - 0x85]
100014f4: 53                       push ebx
100014f5: 51                       push ecx
100014f6: 89b56cffffff             mov dword ptr [ebp - 0x94], esi
100014fc: 898560ffffff             mov dword ptr [ebp - 0xa0], eax
10001502: 66c78578ffffff0000       mov word ptr [ebp - 0x88], 0
1000150b: c6857afffffff2           mov byte ptr [ebp - 0x86], 0xf2
10001512: e8a9750000               call 0x10008ac0
10001517: 8b4e04                   mov ecx, dword ptr [esi + 4]
1000151a: 8b11                     mov edx, dword ptr [ecx]
1000151c: 8b12                     mov edx, dword ptr [edx]
1000151e: 83c40c                   add esp, 0xc
10001521: 6a41                     push 0x41
10001523: 8d8578ffffff             lea eax, [ebp - 0x88]
10001529: 50                       push eax
1000152a: ffd2                     call edx
1000152c: 84c0                     test al, al
1000152e: 7512                     jne 0x10001542
10001530: 5e                       pop esi
10001531: 5b                       pop ebx
10001532: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001535: 33cd                     xor ecx, ebp
10001537: e87e360000               call 0x10004bba
1000153c: 8be5                     mov esp, ebp
1000153e: 5d                       pop ebp
1000153f: c20400                   ret 4
10001542: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001545: 57                       push edi
10001546: 68a0860100               push 0x186a0
1000154b: 8d9570ffffff             lea edx, [ebp - 0x90]
10001551: 52                       push edx
10001552: c78570ffffff40000000     mov dword ptr [ebp - 0x90], 0x40
1000155c: 8b01                     mov eax, dword ptr [ecx]
1000155e: 8b4004                   mov eax, dword ptr [eax + 4]
10001561: 8d55bc                   lea edx, [ebp - 0x44]
10001564: 52                       push edx
10001565: ffd0                     call eax
10001567: 84c0                     test al, al
10001569: 0f8410010000             je 0x1000167f
1000156f: 90                       nop 
10001570: 807dbcf6                 cmp byte ptr [ebp - 0x44], 0xf6
10001574: 0f84b9020000             je 0x10001833
1000157a: 807dbdf0                 cmp byte ptr [ebp - 0x43], 0xf0
1000157e: 0f85c9000000             jne 0x1000164d
10001584: 0fb675be                 movzx esi, byte ptr [ebp - 0x42]
10001588: 0fb67dbf                 movzx edi, byte ptr [ebp - 0x41]
1000158c: 8b956cffffff             mov edx, dword ptr [ebp - 0x94]
10001592: 8bce                     mov ecx, esi
10001594: c1e105                   shl ecx, 5
10001597: 03ce                     add ecx, esi
10001599: 8d444fbd                 lea eax, [edi + ecx*2 - 0x43]
1000159d: 8b4a08                   mov ecx, dword ptr [edx + 8]
100015a0: 391c81                   cmp dword ptr [ecx + eax*4], ebx
100015a3: 898558ffffff             mov dword ptr [ebp - 0xa8], eax
100015a9: 8d0481                   lea eax, [ecx + eax*4]
100015ac: 740b                     je 0x100015b9
100015ae: 8b10                     mov edx, dword ptr [eax]
100015b0: 52                       push edx
100015b1: e84e370000               call 0x10004d04
100015b6: 83c404                   add esp, 4
100015b9: 0fb645c0                 movzx eax, byte ptr [ebp - 0x40]
100015bd: 899d74ffffff             mov dword ptr [ebp - 0x8c], ebx
100015c3: 83f804                   cmp eax, 4
100015c6: 7737                     ja 0x100015ff
100015c8: ff248548180010           jmp dword ptr [eax*4 + 0x10001848]
100015cf: 6a24                     push 0x24
100015d1: e89b3a0000               call 0x10005071
100015d6: 83c404                   add esp, 4
100015d9: 3bc3                     cmp eax, ebx
100015db: 741a                     je 0x100015f7
100015dd: 897804                   mov dword ptr [eax + 4], edi
100015e0: 897008                   mov dword ptr [eax + 8], esi
100015e3: c700f8d40010             mov dword ptr [eax], 0x1000d4f8
100015e9: 895810                   mov dword ptr [eax + 0x10], ebx
100015ec: 895814                   mov dword ptr [eax + 0x14], ebx
100015ef: 895818                   mov dword ptr [eax + 0x18], ebx
100015f2: 89580c                   mov dword ptr [eax + 0xc], ebx
100015f5: eb02                     jmp 0x100015f9
100015f7: 33c0                     xor eax, eax
100015f9: 898574ffffff             mov dword ptr [ebp - 0x8c], eax
100015ff: 8b8570ffffff             mov eax, dword ptr [ebp - 0x90]
10001605: 8b8d74ffffff             mov ecx, dword ptr [ebp - 0x8c]
1000160b: 8b11                     mov edx, dword ptr [ecx]
1000160d: 8b5204                   mov edx, dword ptr [edx + 4]
10001610: 50                       push eax
10001611: 6a40                     push 0x40
10001613: 8d45bc                   lea eax, [ebp - 0x44]
10001616: 50                       push eax
10001617: ffd2                     call edx
10001619: 8b856cffffff             mov eax, dword ptr [ebp - 0x94]
1000161f: 8b4808                   mov ecx, dword ptr [eax + 8]
10001622: 8b9574ffffff             mov edx, dword ptr [ebp - 0x8c]
10001628: 8b8558ffffff             mov eax, dword ptr [ebp - 0xa8]
1000162e: 891481                   mov dword ptr [ecx + eax*4], edx
10001631: 399d60ffffff             cmp dword ptr [ebp - 0xa0], ebx
10001637: 7414                     je 0x1000164d
10001639: 53                       push ebx
1000163a: 50                       push eax
1000163b: 8b8560ffffff             mov eax, dword ptr [ebp - 0xa0]
10001641: 6867040000               push 0x467
10001646: 50                       push eax
10001647: ff1514b10010             call dword ptr [0x1000b114]
1000164d: 8b8d6cffffff             mov ecx, dword ptr [ebp - 0x94]
10001653: 8b4904                   mov ecx, dword ptr [ecx + 4]
10001656: 68a0860100               push 0x186a0
1000165b: 8d8570ffffff             lea eax, [ebp - 0x90]
10001661: 50                       push eax
10001662: c78570ffffff40000000     mov dword ptr [ebp - 0x90], 0x40
1000166c: 8b11                     mov edx, dword ptr [ecx]
1000166e: 8b5204                   mov edx, dword ptr [edx + 4]
10001671: 8d45bc                   lea eax, [ebp - 0x44]
10001674: 50                       push eax
10001675: ffd2                     call edx
10001677: 84c0                     test al, al
10001679: 0f85f1feffff             jne 0x10001570
1000167f: 5f                       pop edi
10001680: 5e                       pop esi
10001681: 32c0                     xor al, al
10001683: 5b                       pop ebx
10001684: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001687: 33cd                     xor ecx, ebp
10001689: e82c350000               call 0x10004bba
1000168e: 8be5                     mov esp, ebp
10001690: 5d                       pop ebp
10001691: c20400                   ret 4
10001694: 6a28                     push 0x28
10001696: e8d6390000               call 0x10005071
1000169b: 83c404                   add esp, 4
1000169e: 3bc3                     cmp eax, ebx
100016a0: 0f8451ffffff             je 0x100015f7
100016a6: 897804                   mov dword ptr [eax + 4], edi
100016a9: 897008                   mov dword ptr [eax + 8], esi
100016ac: c70098d00010             mov dword ptr [eax], 0x1000d098
100016b2: 895814                   mov dword ptr [eax + 0x14], ebx
100016b5: 895818                   mov dword ptr [eax + 0x18], ebx
100016b8: 89581c                   mov dword ptr [eax + 0x1c], ebx
100016bb: c7400c01000000           mov dword ptr [eax + 0xc], 1
100016c2: e932ffffff               jmp 0x100015f9
100016c7: 6a40                     push 0x40
100016c9: e8a3390000               call 0x10005071
100016ce: 83c404                   add esp, 4
100016d1: 3bc3                     cmp eax, ebx
100016d3: 7412                     je 0x100016e7
100016d5: 8bcf                     mov ecx, edi
100016d7: 8bd6                     mov edx, esi
100016d9: e8222c0000               call 0x10004300
100016de: c7400c02000000           mov dword ptr [eax + 0xc], 2
100016e5: eb58                     jmp 0x1000173f
100016e7: 33c0                     xor eax, eax
100016e9: c7400c02000000           mov dword ptr [eax + 0xc], 2
100016f0: eb4d                     jmp 0x1000173f
100016f2: 6a40                     push 0x40
100016f4: e878390000               call 0x10005071
100016f9: 83c404                   add esp, 4
100016fc: 3bc3                     cmp eax, ebx
100016fe: 7412                     je 0x10001712
10001700: 8bcf                     mov ecx, edi
10001702: 8bd6                     mov edx, esi
10001704: e8f72b0000               call 0x10004300
10001709: c7400c03000000           mov dword ptr [eax + 0xc], 3
10001710: eb2d                     jmp 0x1000173f
10001712: 33c0                     xor eax, eax
10001714: c7400c03000000           mov dword ptr [eax + 0xc], 3
1000171b: eb22                     jmp 0x1000173f
1000171d: 6a40                     push 0x40
1000171f: e84d390000               call 0x10005071
10001724: 83c404                   add esp, 4
10001727: 3bc3                     cmp eax, ebx
10001729: 740b                     je 0x10001736
1000172b: 8bcf                     mov ecx, edi
1000172d: 8bd6                     mov edx, esi
1000172f: e8cc2b0000               call 0x10004300
10001734: eb02                     jmp 0x10001738
10001736: 33c0                     xor eax, eax
10001738: c7400c04000000           mov dword ptr [eax + 0xc], 4
1000173f: 0fb64dc6                 movzx ecx, byte ptr [ebp - 0x3a]
10001743: 898574ffffff             mov dword ptr [ebp - 0x8c], eax
10001749: 0fb645c5                 movzx eax, byte ptr [ebp - 0x3b]
1000174d: c1e008                   shl eax, 8
10001750: 03c1                     add eax, ecx
10001752: 83f835                   cmp eax, 0x35
10001755: 0f8ea4feffff             jle 0x100015ff
1000175b: 8d4834                   lea ecx, [eax + 0x34]
1000175e: b8ed73484d               mov eax, 0x4d4873ed
10001763: f7e9                     imul ecx
10001765: c1fa04                   sar edx, 4
10001768: 8bda                     mov ebx, edx
1000176a: c1eb1f                   shr ebx, 0x1f
1000176d: 03da                     add ebx, edx
1000176f: 8bc3                     mov eax, ebx
10001771: c1e006                   shl eax, 6
10001774: 50                       push eax
10001775: 898554ffffff             mov dword ptr [ebp - 0xac], eax
1000177b: e8fc390000               call 0x1000517c
10001780: 83c404                   add esp, 4
10001783: b910000000               mov ecx, 0x10
10001788: 8d75bc                   lea esi, [ebp - 0x44]
1000178b: 8bf8                     mov edi, eax
1000178d: 898564ffffff             mov dword ptr [ebp - 0x9c], eax
10001793: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10001795: c7855cffffff01000000     mov dword ptr [ebp - 0xa4], 1
1000179f: 83fb01                   cmp ebx, 1
100017a2: 7e62                     jle 0x10001806
100017a4: 83c040                   add eax, 0x40
100017a7: 898568ffffff             mov dword ptr [ebp - 0x98], eax
100017ad: 8d4900                   lea ecx, [ecx]
100017b0: 8b956cffffff             mov edx, dword ptr [ebp - 0x94]
100017b6: 8b4a04                   mov ecx, dword ptr [edx + 4]
100017b9: 8b01                     mov eax, dword ptr [ecx]
100017bb: 8b4004                   mov eax, dword ptr [eax + 4]
100017be: 68a0860100               push 0x186a0
100017c3: 8d9570ffffff             lea edx, [ebp - 0x90]
100017c9: 52                       push edx
100017ca: 8d55bc                   lea edx, [ebp - 0x44]
100017cd: 52                       push edx
100017ce: ffd0                     call eax
100017d0: 84c0                     test al, al
100017d2: 0f84a7feffff             je 0x1000167f
100017d8: 8b855cffffff             mov eax, dword ptr [ebp - 0xa4]
100017de: 8bbd68ffffff             mov edi, dword ptr [ebp - 0x98]
100017e4: 838568ffffff40           add dword ptr [ebp - 0x98], 0x40
100017eb: 40                       inc eax
100017ec: b910000000               mov ecx, 0x10
100017f1: 8d75bc                   lea esi, [ebp - 0x44]
100017f4: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
100017f6: 89855cffffff             mov dword ptr [ebp - 0xa4], eax
100017fc: 3bc3                     cmp eax, ebx
100017fe: 7cb0                     jl 0x100017b0
10001800: 8b8564ffffff             mov eax, dword ptr [ebp - 0x9c]
10001806: 8bb554ffffff             mov esi, dword ptr [ebp - 0xac]
1000180c: 8b8d74ffffff             mov ecx, dword ptr [ebp - 0x8c]
10001812: 8b11                     mov edx, dword ptr [ecx]
10001814: 56                       push esi
10001815: 6a40                     push 0x40
10001817: 50                       push eax
10001818: 8b4204                   mov eax, dword ptr [edx + 4]
1000181b: ffd0                     call eax
1000181d: 8b8d64ffffff             mov ecx, dword ptr [ebp - 0x9c]
10001823: 51                       push ecx
10001824: e819390000               call 0x10005142
10001829: 83c404                   add esp, 4
1000182c: 33db                     xor ebx, ebx
1000182e: e9e6fdffff               jmp 0x10001619
10001833: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001836: 5f                       pop edi
10001837: 5e                       pop esi
10001838: 33cd                     xor ecx, ebp
1000183a: b001                     mov al, 1
1000183c: 5b                       pop ebx
1000183d: e878330000               call 0x10004bba
10001842: 8be5                     mov esp, ebp
10001844: 5d                       pop ebp
10001845: c20400                   ret 4
10001848: cf                       iretd 
10001849: 1500109416               adc eax, 0x16941000
1000184e: 0010                     add byte ptr [eax], dl
10001850: c7                       .byte 0xc7
10001851: 16                       push ss
10001852: 0010                     add byte ptr [eax], dl
10001854: f216                     push ss
10001856: 0010                     add byte ptr [eax], dl
10001858: 1d170010cc               sbb eax, 0xcc100017
1000185d: cc                       int3 
1000185e: cc                       int3 
1000185f: cc                       int3 
10001860: 55                       push ebp
10001861: 8bec                     mov ebp, esp
10001863: 83ec6c                   sub esp, 0x6c
10001866: a180f00010               mov eax, dword ptr [0x1000f080]
1000186b: 33c5                     xor eax, ebp
1000186d: 8945fc                   mov dword ptr [ebp - 4], eax
10001870: 8b4508                   mov eax, dword ptr [ebp + 8]
10001873: 56                       push esi
10001874: 57                       push edi
10001875: 8bf9                     mov edi, ecx
10001877: 6a3e                     push 0x3e
10001879: 33f6                     xor esi, esi
1000187b: 8d4dbb                   lea ecx, [ebp - 0x45]
1000187e: 56                       push esi
1000187f: 51                       push ecx
10001880: 897d9c                   mov dword ptr [ebp - 0x64], edi
10001883: 894594                   mov dword ptr [ebp - 0x6c], eax
10001886: 66c745b80000             mov word ptr [ebp - 0x48], 0
1000188c: c645baf1                 mov byte ptr [ebp - 0x46], 0xf1
10001890: e82b720000               call 0x10008ac0
10001895: 8b4f04                   mov ecx, dword ptr [edi + 4]
10001898: 8b11                     mov edx, dword ptr [ecx]
1000189a: 8b12                     mov edx, dword ptr [edx]
1000189c: 83c40c                   add esp, 0xc
1000189f: 6a41                     push 0x41
100018a1: 8d45b8                   lea eax, [ebp - 0x48]
100018a4: 50                       push eax
100018a5: ffd2                     call edx
100018a7: 84c0                     test al, al
100018a9: 7512                     jne 0x100018bd
100018ab: 5f                       pop edi
100018ac: 5e                       pop esi
100018ad: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
100018b0: 33cd                     xor ecx, ebp
100018b2: e803330000               call 0x10004bba
100018b7: 8be5                     mov esp, ebp
100018b9: 5d                       pop ebp
100018ba: c20400                   ret 4
100018bd: 8975a8                   mov dword ptr [ebp - 0x58], esi
100018c0: 8975b0                   mov dword ptr [ebp - 0x50], esi
100018c3: 8975a4                   mov dword ptr [ebp - 0x5c], esi
100018c6: 53                       push ebx
100018c7: 8b45b0                   mov eax, dword ptr [ebp - 0x50]
100018ca: 33db                     xor ebx, ebx
100018cc: 895da0                   mov dword ptr [ebp - 0x60], ebx
100018cf: 8945ac                   mov dword ptr [ebp - 0x54], eax
100018d2: 8b5708                   mov edx, dword ptr [edi + 8]
100018d5: 8b45ac                   mov eax, dword ptr [ebp - 0x54]
100018d8: 8b4da4                   mov ecx, dword ptr [ebp - 0x5c]
100018db: 8b3410                   mov esi, dword ptr [eax + edx]
100018de: 03cb                     add ecx, ebx
100018e0: 894d98                   mov dword ptr [ebp - 0x68], ecx
100018e3: 85f6                     test esi, esi
100018e5: 0f84a8000000             je 0x10001993
100018eb: 8b16                     mov edx, dword ptr [esi]
100018ed: 8b12                     mov edx, dword ptr [edx]
100018ef: 6a00                     push 0
100018f1: 8d45b4                   lea eax, [ebp - 0x4c]
100018f4: 50                       push eax
100018f5: 6a40                     push 0x40
100018f7: 6a00                     push 0
100018f9: 8bce                     mov ecx, esi
100018fb: ffd2                     call edx
100018fd: 8b7db4                   mov edi, dword ptr [ebp - 0x4c]
10001900: 57                       push edi
10001901: e876380000               call 0x1000517c
10001906: 8bd8                     mov ebx, eax
10001908: 83c404                   add esp, 4
1000190b: 85db                     test ebx, ebx
1000190d: 0f8456010000             je 0x10001a69
10001913: 57                       push edi
10001914: 6a00                     push 0
10001916: 53                       push ebx
10001917: e8a4710000               call 0x10008ac0
1000191c: 8b06                     mov eax, dword ptr [esi]
1000191e: 8b10                     mov edx, dword ptr [eax]
10001920: 83c40c                   add esp, 0xc
10001923: 6a00                     push 0
10001925: 8d4db4                   lea ecx, [ebp - 0x4c]
10001928: 51                       push ecx
10001929: 6a40                     push 0x40
1000192b: 53                       push ebx
1000192c: 8bce                     mov ecx, esi
1000192e: ffd2                     call edx
10001930: 8b45b4                   mov eax, dword ptr [ebp - 0x4c]
10001933: 8bfb                     mov edi, ebx
10001935: 85c0                     test eax, eax
10001937: 7449                     je 0x10001982
10001939: 8da42400000000           lea esp, [esp]
10001940: be40000000               mov esi, 0x40
10001945: 83f840                   cmp eax, 0x40
10001948: 7702                     ja 0x1000194c
1000194a: 8bf0                     mov esi, eax
1000194c: 56                       push esi
1000194d: 8d45b9                   lea eax, [ebp - 0x47]
10001950: 57                       push edi
10001951: 50                       push eax
10001952: e8c9730000               call 0x10008d20
10001957: 8b4d9c                   mov ecx, dword ptr [ebp - 0x64]
1000195a: 8b4904                   mov ecx, dword ptr [ecx + 4]
1000195d: 8b11                     mov edx, dword ptr [ecx]
1000195f: 8b12                     mov edx, dword ptr [edx]
10001961: 83c40c                   add esp, 0xc
10001964: 6a41                     push 0x41
10001966: 8d45b8                   lea eax, [ebp - 0x48]
10001969: 50                       push eax
1000196a: ffd2                     call edx
1000196c: 84c0                     test al, al
1000196e: 0f84ec000000             je 0x10001a60
10001974: 8b45b4                   mov eax, dword ptr [ebp - 0x4c]
10001977: 2bc6                     sub eax, esi
10001979: 03fe                     add edi, esi
1000197b: 8945b4                   mov dword ptr [ebp - 0x4c], eax
1000197e: 85c0                     test eax, eax
10001980: 75be                     jne 0x10001940
10001982: 53                       push ebx
10001983: e8ba370000               call 0x10005142
10001988: 8b5da0                   mov ebx, dword ptr [ebp - 0x60]
1000198b: 8b7d9c                   mov edi, dword ptr [ebp - 0x64]
1000198e: 83c404                   add esp, 4
10001991: eb45                     jmp 0x100019d8
10001993: 6a41                     push 0x41
10001995: 8d45b8                   lea eax, [ebp - 0x48]
10001998: 6a00                     push 0
1000199a: 50                       push eax
1000199b: e820710000               call 0x10008ac0
100019a0: 8a4da8                   mov cl, byte ptr [ebp - 0x58]
100019a3: fec1                     inc cl
100019a5: 884dbb                   mov byte ptr [ebp - 0x45], cl
100019a8: 8b4f04                   mov ecx, dword ptr [edi + 4]
100019ab: 83c40c                   add esp, 0xc
100019ae: 8d5301                   lea edx, [ebx + 1]
100019b1: 8855bc                   mov byte ptr [ebp - 0x44], dl
100019b4: 66c745b80000             mov word ptr [ebp - 0x48], 0
100019ba: c645baf0                 mov byte ptr [ebp - 0x46], 0xf0
100019be: 66c745bd0000             mov word ptr [ebp - 0x43], 0
100019c4: 8b01                     mov eax, dword ptr [ecx]
100019c6: 8b00                     mov eax, dword ptr [eax]
100019c8: 6a41                     push 0x41
100019ca: 8d55b8                   lea edx, [ebp - 0x48]
100019cd: 52                       push edx
100019ce: ffd0                     call eax
100019d0: 84c0                     test al, al
100019d2: 0f8491000000             je 0x10001a69
100019d8: 8b4594                   mov eax, dword ptr [ebp - 0x6c]
100019db: 85c0                     test eax, eax
100019dd: 7412                     je 0x100019f1
100019df: 8b4d98                   mov ecx, dword ptr [ebp - 0x68]
100019e2: 6a00                     push 0
100019e4: 51                       push ecx
100019e5: 6867040000               push 0x467
100019ea: 50                       push eax
100019eb: ff1514b10010             call dword ptr [0x1000b114]
100019f1: 8345ac04                 add dword ptr [ebp - 0x54], 4
100019f5: 43                       inc ebx
100019f6: 895da0                   mov dword ptr [ebp - 0x60], ebx
100019f9: 83fb42                   cmp ebx, 0x42
100019fc: 0f8cd0feffff             jl 0x100018d2
10001a02: 8b45a4                   mov eax, dword ptr [ebp - 0x5c]
10001a05: ff45a8                   inc dword ptr [ebp - 0x58]
10001a08: 8145b008010000           add dword ptr [ebp - 0x50], 0x108
10001a0f: 83c042                   add eax, 0x42
10001a12: 8945a4                   mov dword ptr [ebp - 0x5c], eax
10001a15: 3d52020000               cmp eax, 0x252
10001a1a: 0f8ca7feffff             jl 0x100018c7
10001a20: 6a3f                     push 0x3f
10001a22: 8d55ba                   lea edx, [ebp - 0x46]
10001a25: 68f6000000               push 0xf6
10001a2a: 52                       push edx
10001a2b: 66c745b80000             mov word ptr [ebp - 0x48], 0
10001a31: e88a700000               call 0x10008ac0
10001a36: 8b4f04                   mov ecx, dword ptr [edi + 4]
10001a39: 8b01                     mov eax, dword ptr [ecx]
10001a3b: 8b00                     mov eax, dword ptr [eax]
10001a3d: 83c40c                   add esp, 0xc
10001a40: 6a41                     push 0x41
10001a42: 8d55b8                   lea edx, [ebp - 0x48]
10001a45: 52                       push edx
10001a46: ffd0                     call eax
10001a48: 5b                       pop ebx
10001a49: 84c0                     test al, al
10001a4b: 5f                       pop edi
10001a4c: 0f95c0                   setne al
10001a4f: 5e                       pop esi
10001a50: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001a53: 33cd                     xor ecx, ebp
10001a55: e860310000               call 0x10004bba
10001a5a: 8be5                     mov esp, ebp
10001a5c: 5d                       pop ebp
10001a5d: c20400                   ret 4
10001a60: 53                       push ebx
10001a61: e8dc360000               call 0x10005142
10001a66: 83c404                   add esp, 4
10001a69: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001a6c: 5b                       pop ebx
10001a6d: 5f                       pop edi
10001a6e: 33cd                     xor ecx, ebp
10001a70: 32c0                     xor al, al
10001a72: 5e                       pop esi
10001a73: e842310000               call 0x10004bba
10001a78: 8be5                     mov esp, ebp
10001a7a: 5d                       pop ebp
10001a7b: c20400                   ret 4
10001a7e: cc                       int3 
10001a7f: cc                       int3 
10001a80: 55                       push ebp
10001a81: 8bec                     mov ebp, esp
10001a83: 81ec8c000000             sub esp, 0x8c
10001a89: a180f00010               mov eax, dword ptr [0x1000f080]
10001a8e: 33c5                     xor eax, ebp
10001a90: 8945fc                   mov dword ptr [ebp - 4], eax
10001a93: 53                       push ebx
10001a94: 33db                     xor ebx, ebx
10001a96: 6a3e                     push 0x3e
10001a98: 8d857bffffff             lea eax, [ebp - 0x85]
10001a9e: 53                       push ebx
10001a9f: 50                       push eax
10001aa0: 66899d78ffffff           mov word ptr [ebp - 0x88], bx
10001aa7: c6857affffffe2           mov byte ptr [ebp - 0x86], 0xe2
10001aae: e80d700000               call 0x10008ac0
10001ab3: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001ab6: 8b11                     mov edx, dword ptr [ecx]
10001ab8: 8b12                     mov edx, dword ptr [edx]
10001aba: 83c40c                   add esp, 0xc
10001abd: 6a41                     push 0x41
10001abf: 8d8578ffffff             lea eax, [ebp - 0x88]
10001ac5: 50                       push eax
10001ac6: ffd2                     call edx
10001ac8: 84c0                     test al, al
10001aca: 750f                     jne 0x10001adb
10001acc: 5b                       pop ebx
10001acd: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001ad0: 33cd                     xor ecx, ebp
10001ad2: e8e3300000               call 0x10004bba
10001ad7: 8be5                     mov esp, ebp
10001ad9: 5d                       pop ebp
10001ada: c3                       ret 
10001adb: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001ade: 57                       push edi
10001adf: 68a0860100               push 0x186a0
10001ae4: 8d9574ffffff             lea edx, [ebp - 0x8c]
10001aea: 52                       push edx
10001aeb: c78574ffffff40000000     mov dword ptr [ebp - 0x8c], 0x40
10001af5: 8b01                     mov eax, dword ptr [ecx]
10001af7: 8b4004                   mov eax, dword ptr [eax + 4]
10001afa: 8d55bc                   lea edx, [ebp - 0x44]
10001afd: 52                       push edx
10001afe: ffd0                     call eax
10001b00: 84c0                     test al, al
10001b02: 7441                     je 0x10001b45
10001b04: 8a45bd                   mov al, byte ptr [ebp - 0x43]
10001b07: 3ce6                     cmp al, 0xe6
10001b09: 744c                     je 0x10001b57
10001b0b: 3ce0                     cmp al, 0xe0
10001b0d: 7518                     jne 0x10001b27
10001b0f: 0fb67dbe                 movzx edi, byte ptr [ebp - 0x42]
10001b13: 57                       push edi
10001b14: 8d4dbf                   lea ecx, [ebp - 0x41]
10001b17: 51                       push ecx
10001b18: 8d541e0c                 lea edx, [esi + ebx + 0xc]
10001b1c: 52                       push edx
10001b1d: e8fe710000               call 0x10008d20
10001b22: 83c40c                   add esp, 0xc
10001b25: 03df                     add ebx, edi
10001b27: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001b2a: 8b01                     mov eax, dword ptr [ecx]
10001b2c: 8b4004                   mov eax, dword ptr [eax + 4]
10001b2f: 68a0860100               push 0x186a0
10001b34: 8d9574ffffff             lea edx, [ebp - 0x8c]
10001b3a: 52                       push edx
10001b3b: 8d55bc                   lea edx, [ebp - 0x44]
10001b3e: 52                       push edx
10001b3f: ffd0                     call eax
10001b41: 84c0                     test al, al
10001b43: 75bf                     jne 0x10001b04
10001b45: 5f                       pop edi
10001b46: 32c0                     xor al, al
10001b48: 5b                       pop ebx
10001b49: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001b4c: 33cd                     xor ecx, ebp
10001b4e: e867300000               call 0x10004bba
10001b53: 8be5                     mov esp, ebp
10001b55: 5d                       pop ebp
10001b56: c3                       ret 
10001b57: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001b5a: 5f                       pop edi
10001b5b: 33cd                     xor ecx, ebp
10001b5d: b001                     mov al, 1
10001b5f: 5b                       pop ebx
10001b60: e855300000               call 0x10004bba
10001b65: 8be5                     mov esp, ebp
10001b67: 5d                       pop ebp
10001b68: c3                       ret 
10001b69: cc                       int3 
10001b6a: cc                       int3 
10001b6b: cc                       int3 
10001b6c: cc                       int3 
10001b6d: cc                       int3 
10001b6e: cc                       int3 
10001b6f: cc                       int3 
10001b70: 55                       push ebp
10001b71: 8bec                     mov ebp, esp
10001b73: 81ec8c000000             sub esp, 0x8c
10001b79: a180f00010               mov eax, dword ptr [0x1000f080]
10001b7e: 33c5                     xor eax, ebp
10001b80: 8945fc                   mov dword ptr [ebp - 4], eax
10001b83: 53                       push ebx
10001b84: 33db                     xor ebx, ebx
10001b86: 6a3e                     push 0x3e
10001b88: 8d857bffffff             lea eax, [ebp - 0x85]
10001b8e: 53                       push ebx
10001b8f: 50                       push eax
10001b90: 66899d78ffffff           mov word ptr [ebp - 0x88], bx
10001b97: c6857affffffe3           mov byte ptr [ebp - 0x86], 0xe3
10001b9e: e81d6f0000               call 0x10008ac0
10001ba3: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001ba6: 8b11                     mov edx, dword ptr [ecx]
10001ba8: 8b12                     mov edx, dword ptr [edx]
10001baa: 83c40c                   add esp, 0xc
10001bad: 6a41                     push 0x41
10001baf: 8d8578ffffff             lea eax, [ebp - 0x88]
10001bb5: 50                       push eax
10001bb6: ffd2                     call edx
10001bb8: 84c0                     test al, al
10001bba: 750f                     jne 0x10001bcb
10001bbc: 5b                       pop ebx
10001bbd: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001bc0: 33cd                     xor ecx, ebp
10001bc2: e8f32f0000               call 0x10004bba
10001bc7: 8be5                     mov esp, ebp
10001bc9: 5d                       pop ebp
10001bca: c3                       ret 
10001bcb: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001bce: 57                       push edi
10001bcf: 68a0860100               push 0x186a0
10001bd4: 8d9574ffffff             lea edx, [ebp - 0x8c]
10001bda: 52                       push edx
10001bdb: c78574ffffff40000000     mov dword ptr [ebp - 0x8c], 0x40
10001be5: 8b01                     mov eax, dword ptr [ecx]
10001be7: 8b4004                   mov eax, dword ptr [eax + 4]
10001bea: 8d55bc                   lea edx, [ebp - 0x44]
10001bed: 52                       push edx
10001bee: ffd0                     call eax
10001bf0: 84c0                     test al, al
10001bf2: 7444                     je 0x10001c38
10001bf4: 8a45bd                   mov al, byte ptr [ebp - 0x43]
10001bf7: 3ce6                     cmp al, 0xe6
10001bf9: 744f                     je 0x10001c4a
10001bfb: 3ce3                     cmp al, 0xe3
10001bfd: 751b                     jne 0x10001c1a
10001bff: 0fb67dbe                 movzx edi, byte ptr [ebp - 0x42]
10001c03: 57                       push edi
10001c04: 8d4dbf                   lea ecx, [ebp - 0x41]
10001c07: 51                       push ecx
10001c08: 8d941ed4000000           lea edx, [esi + ebx + 0xd4]
10001c0f: 52                       push edx
10001c10: e80b710000               call 0x10008d20
10001c15: 83c40c                   add esp, 0xc
10001c18: 03df                     add ebx, edi
10001c1a: 8b4e04                   mov ecx, dword ptr [esi + 4]
10001c1d: 8b01                     mov eax, dword ptr [ecx]
10001c1f: 8b4004                   mov eax, dword ptr [eax + 4]
10001c22: 68a0860100               push 0x186a0
10001c27: 8d9574ffffff             lea edx, [ebp - 0x8c]
10001c2d: 52                       push edx
10001c2e: 8d55bc                   lea edx, [ebp - 0x44]
10001c31: 52                       push edx
10001c32: ffd0                     call eax
10001c34: 84c0                     test al, al
10001c36: 75bc                     jne 0x10001bf4
10001c38: 5f                       pop edi
10001c39: 32c0                     xor al, al
10001c3b: 5b                       pop ebx
10001c3c: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001c3f: 33cd                     xor ecx, ebp
10001c41: e8742f0000               call 0x10004bba
10001c46: 8be5                     mov esp, ebp
10001c48: 5d                       pop ebp
10001c49: c3                       ret 
10001c4a: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10001c4d: 5f                       pop edi
10001c4e: 33cd                     xor ecx, ebp
10001c50: b001                     mov al, 1
10001c52: 5b                       pop ebx
10001c53: e8622f0000               call 0x10004bba
10001c58: 8be5                     mov esp, ebp
10001c5a: 5d                       pop ebp
10001c5b: c3                       ret 
10001c5c: cc                       int3 
10001c5d: cc                       int3 
10001c5e: cc                       int3 
10001c5f: cc                       int3 
10001c60: 8bc1                     mov eax, ecx
10001c62: c70000000000             mov dword ptr [eax], 0
10001c68: c7400400000000           mov dword ptr [eax + 4], 0
10001c6f: c3                       ret 
10001c70: 53                       push ebx
10001c71: 56                       push esi
10001c72: 8bf1                     mov esi, ecx
10001c74: 8b5e04                   mov ebx, dword ptr [esi + 4]
10001c77: 85db                     test ebx, ebx
10001c79: 740e                     je 0x10001c89
10001c7b: e810f8ffff               call 0x10001490
10001c80: 53                       push ebx
10001c81: e87e300000               call 0x10004d04
10001c86: 83c404                   add esp, 4
10001c89: 8b1e                     mov ebx, dword ptr [esi]
10001c8b: 85db                     test ebx, ebx
10001c8d: 741d                     je 0x10001cac
10001c8f: 8b4304                   mov eax, dword ptr [ebx + 4]
10001c92: c703e0d40010             mov dword ptr [ebx], 0x1000d4e0
10001c98: 85c0                     test eax, eax
10001c9a: 7407                     je 0x10001ca3
10001c9c: 50                       push eax
10001c9d: ff151cb00010             call dword ptr [0x1000b01c]
10001ca3: 53                       push ebx
10001ca4: e85b300000               call 0x10004d04
10001ca9: 83c404                   add esp, 4
10001cac: c7460400000000           mov dword ptr [esi + 4], 0
10001cb3: c70600000000             mov dword ptr [esi], 0
10001cb9: 5e                       pop esi
10001cba: 5b                       pop ebx
10001cbb: c3                       ret 
10001cbc: cc                       int3 
10001cbd: cc                       int3 
10001cbe: cc                       int3 
10001cbf: cc                       int3 
10001cc0: 57                       push edi
10001cc1: 8bf9                     mov edi, ecx
10001cc3: 833f00                   cmp dword ptr [edi], 0
10001cc6: 7404                     je 0x10001ccc
10001cc8: b001                     mov al, 1
10001cca: 5f                       pop edi
10001ccb: c3                       ret 
10001ccc: e85f080000               call 0x10002530
10001cd1: 8907                     mov dword ptr [edi], eax
10001cd3: ff1510b00010             call dword ptr [0x1000b010]
10001cd9: 833f00                   cmp dword ptr [edi], 0
10001cdc: 742e                     je 0x10001d0c
10001cde: 56                       push esi
10001cdf: 68dc010000               push 0x1dc
10001ce4: e888330000               call 0x10005071
10001ce9: 8bf0                     mov esi, eax
10001ceb: 83c404                   add esp, 4
10001cee: 85f6                     test esi, esi
10001cf0: 7414                     je 0x10001d06
10001cf2: 8b07                     mov eax, dword ptr [edi]
10001cf4: e857f7ffff               call 0x10001450
10001cf9: 894704                   mov dword ptr [edi + 4], eax
10001cfc: 33c0                     xor eax, eax
10001cfe: 3907                     cmp dword ptr [edi], eax
10001d00: 5e                       pop esi
10001d01: 0f95c0                   setne al
10001d04: 5f                       pop edi
10001d05: c3                       ret 
10001d06: 33c0                     xor eax, eax
10001d08: 894704                   mov dword ptr [edi + 4], eax
10001d0b: 5e                       pop esi
10001d0c: 33c0                     xor eax, eax
10001d0e: 3907                     cmp dword ptr [edi], eax
10001d10: 5f                       pop edi
10001d11: 0f95c0                   setne al
10001d14: c3                       ret 
10001d15: cc                       int3 
10001d16: cc                       int3 
10001d17: cc                       int3 
10001d18: cc                       int3 
10001d19: cc                       int3 
10001d1a: cc                       int3 
10001d1b: cc                       int3 
10001d1c: cc                       int3 
10001d1d: cc                       int3 
10001d1e: cc                       int3 
10001d1f: cc                       int3 
10001d20: 53                       push ebx
10001d21: 56                       push esi
10001d22: 57                       push edi
10001d23: 8bf9                     mov edi, ecx
10001d25: 8b5f04                   mov ebx, dword ptr [edi + 4]
10001d28: 85db                     test ebx, ebx
10001d2a: 740e                     je 0x10001d3a
10001d2c: e85ff7ffff               call 0x10001490
10001d31: 53                       push ebx
10001d32: e8cd2f0000               call 0x10004d04
10001d37: 83c404                   add esp, 4
10001d3a: 8b37                     mov esi, dword ptr [edi]
10001d3c: 85f6                     test esi, esi
10001d3e: 741d                     je 0x10001d5d
10001d40: 8b4604                   mov eax, dword ptr [esi + 4]
10001d43: c706e0d40010             mov dword ptr [esi], 0x1000d4e0
10001d49: 85c0                     test eax, eax
10001d4b: 7407                     je 0x10001d54
10001d4d: 50                       push eax
10001d4e: ff151cb00010             call dword ptr [0x1000b01c]
10001d54: 56                       push esi
10001d55: e8aa2f0000               call 0x10004d04
10001d5a: 83c404                   add esp, 4
10001d5d: c70700000000             mov dword ptr [edi], 0
10001d63: c7470400000000           mov dword ptr [edi + 4], 0
10001d6a: 5f                       pop edi
10001d6b: 5e                       pop esi
10001d6c: b001                     mov al, 1
10001d6e: 5b                       pop ebx
10001d6f: c3                       ret 
10001d70: 8bc1                     mov eax, ecx
10001d72: 8b08                     mov ecx, dword ptr [eax]
10001d74: 56                       push esi
10001d75: 8d7008                   lea esi, [eax + 8]
10001d78: 8b01                     mov eax, dword ptr [ecx]
10001d7a: 8b5008                   mov edx, dword ptr [eax + 8]
10001d7d: 56                       push esi
10001d7e: ffd2                     call edx
10001d80: ff1510b00010             call dword ptr [0x1000b010]
10001d86: 8bc6                     mov eax, esi
10001d88: 5e                       pop esi
10001d89: c3                       ret 
10001d8a: cc                       int3 
10001d8b: cc                       int3 
10001d8c: cc                       int3 
10001d8d: cc                       int3 
10001d8e: cc                       int3 
10001d8f: cc                       int3 
10001d90: 55                       push ebp
10001d91: 8bec                     mov ebp, esp
10001d93: 83ec10                   sub esp, 0x10
10001d96: 53                       push ebx
10001d97: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10001d9a: 56                       push esi
10001d9b: 57                       push edi
10001d9c: 8b7d10                   mov edi, dword ptr [ebp + 0x10]
10001d9f: 8b07                     mov eax, dword ptr [edi]
10001da1: 43                       inc ebx
10001da2: 33f6                     xor esi, esi
10001da4: 2bc6                     sub eax, esi
10001da6: 894dfc                   mov dword ptr [ebp - 4], ecx
10001da9: 895d08                   mov dword ptr [ebp + 8], ebx
10001dac: 0f84b2010000             je 0x10001f64
10001db2: 48                       dec eax
10001db3: 0f8403010000             je 0x10001ebc
10001db9: 48                       dec eax
10001dba: 0f8567020000             jne 0x10002027
10001dc0: 6a40                     push 0x40
10001dc2: e8aa320000               call 0x10005071
10001dc7: 83c404                   add esp, 4
10001dca: 3bc6                     cmp eax, esi
10001dcc: 7423                     je 0x10001df1
10001dce: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10001dd1: 894804                   mov dword ptr [eax + 4], ecx
10001dd4: 895808                   mov dword ptr [eax + 8], ebx
10001dd7: c700ecd40010             mov dword ptr [eax], 0x1000d4ec
10001ddd: 897018                   mov dword ptr [eax + 0x18], esi
10001de0: 89701c                   mov dword ptr [eax + 0x1c], esi
10001de3: 897020                   mov dword ptr [eax + 0x20], esi
10001de6: 897028                   mov dword ptr [eax + 0x28], esi
10001de9: 89702c                   mov dword ptr [eax + 0x2c], esi
10001dec: 897030                   mov dword ptr [eax + 0x30], esi
10001def: 8bf0                     mov esi, eax
10001df1: 8b4704                   mov eax, dword ptr [edi + 4]
10001df4: 83e800                   sub eax, 0
10001df7: 7418                     je 0x10001e11
10001df9: 48                       dec eax
10001dfa: 740c                     je 0x10001e08
10001dfc: 48                       dec eax
10001dfd: 7519                     jne 0x10001e18
10001dff: c7460c04000000           mov dword ptr [esi + 0xc], 4
10001e06: eb10                     jmp 0x10001e18
10001e08: c7460c03000000           mov dword ptr [esi + 0xc], 3
10001e0f: eb07                     jmp 0x10001e18
10001e11: c7460c02000000           mov dword ptr [esi + 0xc], 2
10001e18: 8b5708                   mov edx, dword ptr [edi + 8]
10001e1b: 895614                   mov dword ptr [esi + 0x14], edx
10001e1e: 8b470c                   mov eax, dword ptr [edi + 0xc]
10001e21: 894610                   mov dword ptr [esi + 0x10], eax
10001e24: 8b4f10                   mov ecx, dword ptr [edi + 0x10]
10001e27: 894e3c                   mov dword ptr [esi + 0x3c], ecx
10001e2a: 8b5714                   mov edx, dword ptr [edi + 0x14]
10001e2d: 52                       push edx
10001e2e: 56                       push esi
10001e2f: e8fc240000               call 0x10004330
10001e34: 8b470c                   mov eax, dword ptr [edi + 0xc]
10001e37: 85c0                     test eax, eax
10001e39: 7517                     jne 0x10001e52
10001e3b: 394714                   cmp dword ptr [edi + 0x14], eax
10001e3e: 7e3e                     jle 0x10001e7e
10001e40: 8b548718                 mov edx, dword ptr [edi + eax*4 + 0x18]
10001e44: 8b4e28                   mov ecx, dword ptr [esi + 0x28]
10001e47: 891481                   mov dword ptr [ecx + eax*4], edx
10001e4a: 40                       inc eax
10001e4b: 3b4714                   cmp eax, dword ptr [edi + 0x14]
10001e4e: 7cf0                     jl 0x10001e40
10001e50: eb2c                     jmp 0x10001e7e
10001e52: 83f801                   cmp eax, 1
10001e55: 7527                     jne 0x10001e7e
10001e57: 33c0                     xor eax, eax
10001e59: 394714                   cmp dword ptr [edi + 0x14], eax
10001e5c: 7e20                     jle 0x10001e7e
10001e5e: 8d4f1c                   lea ecx, [edi + 0x1c]
10001e61: 8b59fc                   mov ebx, dword ptr [ecx - 4]
10001e64: 8b5628                   mov edx, dword ptr [esi + 0x28]
10001e67: 891c82                   mov dword ptr [edx + eax*4], ebx
10001e6a: 8b19                     mov ebx, dword ptr [ecx]
10001e6c: 8b5618                   mov edx, dword ptr [esi + 0x18]
10001e6f: 891c82                   mov dword ptr [edx + eax*4], ebx
10001e72: 40                       inc eax
10001e73: 83c108                   add ecx, 8
10001e76: 3b4714                   cmp eax, dword ptr [edi + 0x14]
10001e79: 7ce6                     jl 0x10001e61
10001e7b: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10001e7e: 8b45fc                   mov eax, dword ptr [ebp - 4]
10001e81: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10001e84: 8b7804                   mov edi, dword ptr [eax + 4]
10001e87: 8b4708                   mov eax, dword ptr [edi + 8]
10001e8a: 8bcb                     mov ecx, ebx
10001e8c: c1e105                   shl ecx, 5
10001e8f: 03cb                     add ecx, ebx
10001e91: 8d1c4a                   lea ebx, [edx + ecx*2]
10001e94: 8d1c9df4feffff           lea ebx, [ebx*4 - 0x10c]
10001e9b: 8b0403                   mov eax, dword ptr [ebx + eax]
10001e9e: 85c0                     test eax, eax
10001ea0: 7409                     je 0x10001eab
10001ea2: 50                       push eax
10001ea3: e85c2e0000               call 0x10004d04
10001ea8: 83c404                   add esp, 4
10001eab: 8b4f08                   mov ecx, dword ptr [edi + 8]
10001eae: 5f                       pop edi
10001eaf: 89340b                   mov dword ptr [ebx + ecx], esi
10001eb2: 5e                       pop esi
10001eb3: 32c0                     xor al, al
10001eb5: 5b                       pop ebx
10001eb6: 8be5                     mov esp, ebp
10001eb8: 5d                       pop ebp
10001eb9: c21000                   ret 0x10
10001ebc: 6a28                     push 0x28
10001ebe: e8ae310000               call 0x10005071
10001ec3: 83c404                   add esp, 4
10001ec6: 3bc6                     cmp eax, esi
10001ec8: 7424                     je 0x10001eee
10001eca: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10001ecd: 895004                   mov dword ptr [eax + 4], edx
10001ed0: 895808                   mov dword ptr [eax + 8], ebx
10001ed3: c70098d00010             mov dword ptr [eax], 0x1000d098
10001ed9: 897014                   mov dword ptr [eax + 0x14], esi
10001edc: 897018                   mov dword ptr [eax + 0x18], esi
10001edf: 89701c                   mov dword ptr [eax + 0x1c], esi
10001ee2: c7400c01000000           mov dword ptr [eax + 0xc], 1
10001ee9: 894510                   mov dword ptr [ebp + 0x10], eax
10001eec: eb05                     jmp 0x10001ef3
10001eee: 897510                   mov dword ptr [ebp + 0x10], esi
10001ef1: 8bc6                     mov eax, esi
10001ef3: 8b4f04                   mov ecx, dword ptr [edi + 4]
10001ef6: 894810                   mov dword ptr [eax + 0x10], ecx
10001ef9: 8b4f08                   mov ecx, dword ptr [edi + 8]
10001efc: 8d7014                   lea esi, [eax + 0x14]
10001eff: 894824                   mov dword ptr [eax + 0x24], ecx
10001f02: 8b16                     mov edx, dword ptr [esi]
10001f04: 8b4604                   mov eax, dword ptr [esi + 4]
10001f07: 894df0                   mov dword ptr [ebp - 0x10], ecx
10001f0a: 8955f4                   mov dword ptr [ebp - 0xc], edx
10001f0d: 3bd0                     cmp edx, eax
10001f0f: 7425                     je 0x10001f36
10001f11: 8bc8                     mov ecx, eax
10001f13: 2bc8                     sub ecx, eax
10001f15: c1f902                   sar ecx, 2
10001f18: 03c9                     add ecx, ecx
10001f1a: 03c9                     add ecx, ecx
10001f1c: 51                       push ecx
10001f1d: 50                       push eax
10001f1e: 52                       push edx
10001f1f: 894df8                   mov dword ptr [ebp - 8], ecx
10001f22: e8e92d0000               call 0x10004d10
10001f27: 8b55f8                   mov edx, dword ptr [ebp - 8]
10001f2a: 8b4df0                   mov ecx, dword ptr [ebp - 0x10]
10001f2d: 83c40c                   add esp, 0xc
10001f30: 0355f4                   add edx, dword ptr [ebp - 0xc]
10001f33: 895604                   mov dword ptr [esi + 4], edx
10001f36: 8bc1                     mov eax, ecx
10001f38: e823f2ffff               call 0x10001160
10001f3d: 33c0                     xor eax, eax
10001f3f: 394708                   cmp dword ptr [edi + 8], eax
10001f42: 0f8ea9000000             jle 0x10001ff1
10001f48: eb06                     jmp 0x10001f50
10001f4a: 8d9b00000000             lea ebx, [ebx]
10001f50: 8b54870c                 mov edx, dword ptr [edi + eax*4 + 0xc]
10001f54: 8b0e                     mov ecx, dword ptr [esi]
10001f56: 891481                   mov dword ptr [ecx + eax*4], edx
10001f59: 40                       inc eax
10001f5a: 3b4708                   cmp eax, dword ptr [edi + 8]
10001f5d: 7cf1                     jl 0x10001f50
10001f5f: e98d000000               jmp 0x10001ff1
10001f64: 6a24                     push 0x24
10001f66: e806310000               call 0x10005071
10001f6b: 83c404                   add esp, 4
10001f6e: 3bc6                     cmp eax, esi
10001f70: 7420                     je 0x10001f92
10001f72: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10001f75: 894804                   mov dword ptr [eax + 4], ecx
10001f78: 895808                   mov dword ptr [eax + 8], ebx
10001f7b: c700f8d40010             mov dword ptr [eax], 0x1000d4f8
10001f81: 897010                   mov dword ptr [eax + 0x10], esi
10001f84: 897014                   mov dword ptr [eax + 0x14], esi
10001f87: 897018                   mov dword ptr [eax + 0x18], esi
10001f8a: 89700c                   mov dword ptr [eax + 0xc], esi
10001f8d: 894510                   mov dword ptr [ebp + 0x10], eax
10001f90: eb05                     jmp 0x10001f97
10001f92: 897510                   mov dword ptr [ebp + 0x10], esi
10001f95: 8bc6                     mov eax, esi
10001f97: 8b4f04                   mov ecx, dword ptr [edi + 4]
10001f9a: 8d7010                   lea esi, [eax + 0x10]
10001f9d: 894820                   mov dword ptr [eax + 0x20], ecx
10001fa0: 8b16                     mov edx, dword ptr [esi]
10001fa2: 8b4604                   mov eax, dword ptr [esi + 4]
10001fa5: 894df8                   mov dword ptr [ebp - 8], ecx
10001fa8: 8955f0                   mov dword ptr [ebp - 0x10], edx
10001fab: 3bd0                     cmp edx, eax
10001fad: 7425                     je 0x10001fd4
10001faf: 8bc8                     mov ecx, eax
10001fb1: 2bc8                     sub ecx, eax
10001fb3: c1f902                   sar ecx, 2
10001fb6: 03c9                     add ecx, ecx
10001fb8: 03c9                     add ecx, ecx
10001fba: 51                       push ecx
10001fbb: 50                       push eax
10001fbc: 52                       push edx
10001fbd: 894df4                   mov dword ptr [ebp - 0xc], ecx
10001fc0: e84b2d0000               call 0x10004d10
10001fc5: 8b55f0                   mov edx, dword ptr [ebp - 0x10]
10001fc8: 8b4df8                   mov ecx, dword ptr [ebp - 8]
10001fcb: 83c40c                   add esp, 0xc
10001fce: 0355f4                   add edx, dword ptr [ebp - 0xc]
10001fd1: 895604                   mov dword ptr [esi + 4], edx
10001fd4: 8bc1                     mov eax, ecx
10001fd6: e885f1ffff               call 0x10001160
10001fdb: 33c0                     xor eax, eax
10001fdd: 394704                   cmp dword ptr [edi + 4], eax
10001fe0: 7e0f                     jle 0x10001ff1
10001fe2: 8b548708                 mov edx, dword ptr [edi + eax*4 + 8]
10001fe6: 8b0e                     mov ecx, dword ptr [esi]
10001fe8: 891481                   mov dword ptr [ecx + eax*4], edx
10001feb: 40                       inc eax
10001fec: 3b4704                   cmp eax, dword ptr [edi + 4]
10001fef: 7cf1                     jl 0x10001fe2
10001ff1: 8b45fc                   mov eax, dword ptr [ebp - 4]
10001ff4: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10001ff7: 8b7004                   mov esi, dword ptr [eax + 4]
10001ffa: 8b4608                   mov eax, dword ptr [esi + 8]
10001ffd: 8bcb                     mov ecx, ebx
10001fff: c1e105                   shl ecx, 5
10002002: 03cb                     add ecx, ebx
10002004: 8d3c4a                   lea edi, [edx + ecx*2]
10002007: 8d3cbdf4feffff           lea edi, [edi*4 - 0x10c]
1000200e: 8b0407                   mov eax, dword ptr [edi + eax]
10002011: 85c0                     test eax, eax
10002013: 7409                     je 0x1000201e
10002015: 50                       push eax
10002016: e8e92c0000               call 0x10004d04
1000201b: 83c404                   add esp, 4
1000201e: 8b4e08                   mov ecx, dword ptr [esi + 8]
10002021: 8b5510                   mov edx, dword ptr [ebp + 0x10]
10002024: 89140f                   mov dword ptr [edi + ecx], edx
10002027: 5f                       pop edi
10002028: 5e                       pop esi
10002029: 32c0                     xor al, al
1000202b: 5b                       pop ebx
1000202c: 8be5                     mov esp, ebp
1000202e: 5d                       pop ebp
1000202f: c21000                   ret 0x10
10002032: cc                       int3 
10002033: cc                       int3 
10002034: cc                       int3 
10002035: cc                       int3 
10002036: cc                       int3 
10002037: cc                       int3 
10002038: cc                       int3 
10002039: cc                       int3 
1000203a: cc                       int3 
1000203b: cc                       int3 
1000203c: cc                       int3 
1000203d: cc                       int3 
1000203e: cc                       int3 
1000203f: cc                       int3 
10002040: 55                       push ebp
10002041: 8bec                     mov ebp, esp
10002043: 81ec10010000             sub esp, 0x110
10002049: a180f00010               mov eax, dword ptr [0x1000f080]
1000204e: 33c5                     xor eax, ebp
10002050: 8945fc                   mov dword ptr [ebp - 4], eax
10002053: 56                       push esi
10002054: 8b7508                   mov esi, dword ptr [ebp + 8]
10002057: 57                       push edi
10002058: 8bd1                     mov edx, ecx
1000205a: 33c0                     xor eax, eax
1000205c: 8d642400                 lea esp, [esp]
10002060: 8a0c86                   mov cl, byte ptr [esi + eax*4]
10002063: 888c05f0feffff           mov byte ptr [ebp + eax - 0x110], cl
1000206a: 40                       inc eax
1000206b: 3dc6000000               cmp eax, 0xc6
10002070: 7cee                     jl 0x10002060
10002072: 8b7a04                   mov edi, dword ptr [edx + 4]
10002075: 83c70c                   add edi, 0xc
10002078: b931000000               mov ecx, 0x31
1000207d: 8db5f0feffff             lea esi, [ebp - 0x110]
10002083: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10002085: 6a3e                     push 0x3e
10002087: 66a5                     movsw word ptr es:[edi], word ptr [esi]
10002089: 8b7a04                   mov edi, dword ptr [edx + 4]
1000208c: 8d55bb                   lea edx, [ebp - 0x45]
1000208f: 6a00                     push 0
10002091: 52                       push edx
10002092: 66c745b80000             mov word ptr [ebp - 0x48], 0
10002098: c645bae1                 mov byte ptr [ebp - 0x46], 0xe1
1000209c: e81f6a0000               call 0x10008ac0
100020a1: 8b4f04                   mov ecx, dword ptr [edi + 4]
100020a4: 8b01                     mov eax, dword ptr [ecx]
100020a6: 8b00                     mov eax, dword ptr [eax]
100020a8: 83c40c                   add esp, 0xc
100020ab: 6a41                     push 0x41
100020ad: 8d55b8                   lea edx, [ebp - 0x48]
100020b0: 52                       push edx
100020b1: ffd0                     call eax
100020b3: 84c0                     test al, al
100020b5: 0f8490000000             je 0x1000214b
100020bb: 33f6                     xor esi, esi
100020bd: 53                       push ebx
100020be: 8bff                     mov edi, edi
100020c0: bbca000000               mov ebx, 0xca
100020c5: 2bde                     sub ebx, esi
100020c7: 83fb41                   cmp ebx, 0x41
100020ca: 7605                     jbe 0x100020d1
100020cc: bb41000000               mov ebx, 0x41
100020d1: 6a41                     push 0x41
100020d3: 8d4db8                   lea ecx, [ebp - 0x48]
100020d6: 6a00                     push 0
100020d8: 51                       push ecx
100020d9: e8e2690000               call 0x10008ac0
100020de: 8d43fc                   lea eax, [ebx - 4]
100020e1: 8d53fc                   lea edx, [ebx - 4]
100020e4: 50                       push eax
100020e5: 8d4c370c                 lea ecx, [edi + esi + 0xc]
100020e9: 8855bb                   mov byte ptr [ebp - 0x45], dl
100020ec: 51                       push ecx
100020ed: 8d55bc                   lea edx, [ebp - 0x44]
100020f0: 52                       push edx
100020f1: 66c745b80000             mov word ptr [ebp - 0x48], 0
100020f7: c645bae0                 mov byte ptr [ebp - 0x46], 0xe0
100020fb: e8206c0000               call 0x10008d20
10002100: 8b4f04                   mov ecx, dword ptr [edi + 4]
10002103: 8b01                     mov eax, dword ptr [ecx]
10002105: 8b00                     mov eax, dword ptr [eax]
10002107: 83c418                   add esp, 0x18
1000210a: 6a41                     push 0x41
1000210c: 8d55b8                   lea edx, [ebp - 0x48]
1000210f: 52                       push edx
10002110: 8d741efc                 lea esi, [esi + ebx - 4]
10002114: ffd0                     call eax
10002116: 84c0                     test al, al
10002118: 7430                     je 0x1000214a
1000211a: 81fec6000000             cmp esi, 0xc6
10002120: 7c9e                     jl 0x100020c0
10002122: 6a41                     push 0x41
10002124: 8d4db8                   lea ecx, [ebp - 0x48]
10002127: 68e6000000               push 0xe6
1000212c: 51                       push ecx
1000212d: e88e690000               call 0x10008ac0
10002132: 8b7f04                   mov edi, dword ptr [edi + 4]
10002135: 83c40c                   add esp, 0xc
10002138: c645b800                 mov byte ptr [ebp - 0x48], 0
1000213c: 8b17                     mov edx, dword ptr [edi]
1000213e: 8b12                     mov edx, dword ptr [edx]
10002140: 6a41                     push 0x41
10002142: 8d45b8                   lea eax, [ebp - 0x48]
10002145: 50                       push eax
10002146: 8bcf                     mov ecx, edi
10002148: ffd2                     call edx
1000214a: 5b                       pop ebx
1000214b: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
1000214e: 5f                       pop edi
1000214f: 33cd                     xor ecx, ebp
10002151: b001                     mov al, 1
10002153: 5e                       pop esi
10002154: e8612a0000               call 0x10004bba
10002159: 8be5                     mov esp, ebp
1000215b: 5d                       pop ebp
1000215c: c20400                   ret 4
1000215f: cc                       int3 
10002160: 55                       push ebp
10002161: 8bec                     mov ebp, esp
10002163: 8b4508                   mov eax, dword ptr [ebp + 8]
10002166: 8bd0                     mov edx, eax
10002168: c1e205                   shl edx, 5
1000216b: 03d0                     add edx, eax
1000216d: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10002170: 8d1450                   lea edx, [eax + edx*2]
10002173: 8b4104                   mov eax, dword ptr [ecx + 4]
10002176: 8b4808                   mov ecx, dword ptr [eax + 8]
10002179: 8b4491fc                 mov eax, dword ptr [ecx + edx*4 - 4]
1000217d: 33d2                     xor edx, edx
1000217f: 3bc2                     cmp eax, edx
10002181: 750e                     jne 0x10002191
10002183: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10002186: 8910                     mov dword ptr [eax], edx
10002188: 895004                   mov dword ptr [eax + 4], edx
1000218b: b001                     mov al, 1
1000218d: 5d                       pop ebp
1000218e: c21000                   ret 0x10
10002191: 8b480c                   mov ecx, dword ptr [eax + 0xc]
10002194: 83f904                   cmp ecx, 4
10002197: 0f871b010000             ja 0x100022b8
1000219d: 56                       push esi
1000219e: 57                       push edi
1000219f: ff248dc0220010           jmp dword ptr [ecx*4 + 0x100022c0]
100021a6: 8b7510                   mov esi, dword ptr [ebp + 0x10]
100021a9: 8916                     mov dword ptr [esi], edx
100021ab: 8b7820                   mov edi, dword ptr [eax + 0x20]
100021ae: 33c9                     xor ecx, ecx
100021b0: 897e04                   mov dword ptr [esi + 4], edi
100021b3: 3bfa                     cmp edi, edx
100021b5: 0f8efb000000             jle 0x100022b6
100021bb: eb03                     jmp 0x100021c0
100021bd: 8d4900                   lea ecx, [ecx]
100021c0: 8b5010                   mov edx, dword ptr [eax + 0x10]
100021c3: 8b148a                   mov edx, dword ptr [edx + ecx*4]
100021c6: 89548e08                 mov dword ptr [esi + ecx*4 + 8], edx
100021ca: 41                       inc ecx
100021cb: 3b4e04                   cmp ecx, dword ptr [esi + 4]
100021ce: 7cf0                     jl 0x100021c0
100021d0: 5f                       pop edi
100021d1: 5e                       pop esi
100021d2: b001                     mov al, 1
100021d4: 5d                       pop ebp
100021d5: c21000                   ret 0x10
100021d8: 8b7510                   mov esi, dword ptr [ebp + 0x10]
100021db: c70601000000             mov dword ptr [esi], 1
100021e1: 8b4810                   mov ecx, dword ptr [eax + 0x10]
100021e4: 894e04                   mov dword ptr [esi + 4], ecx
100021e7: 8b7824                   mov edi, dword ptr [eax + 0x24]
100021ea: 33c9                     xor ecx, ecx
100021ec: 897e08                   mov dword ptr [esi + 8], edi
100021ef: 3bfa                     cmp edi, edx
100021f1: 0f8ebf000000             jle 0x100022b6
100021f7: eb07                     jmp 0x10002200
100021f9: 8da42400000000           lea esp, [esp]
10002200: 8b5014                   mov edx, dword ptr [eax + 0x14]
10002203: 8b148a                   mov edx, dword ptr [edx + ecx*4]
10002206: 89548e0c                 mov dword ptr [esi + ecx*4 + 0xc], edx
1000220a: 41                       inc ecx
1000220b: 3b4e08                   cmp ecx, dword ptr [esi + 8]
1000220e: 7cf0                     jl 0x10002200
10002210: 5f                       pop edi
10002211: 5e                       pop esi
10002212: b001                     mov al, 1
10002214: 5d                       pop ebp
10002215: c21000                   ret 0x10
10002218: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
1000221b: c70102000000             mov dword ptr [ecx], 2
10002221: 8b700c                   mov esi, dword ptr [eax + 0xc]
10002224: 83ee02                   sub esi, 2
10002227: 7418                     je 0x10002241
10002229: 4e                       dec esi
1000222a: 740c                     je 0x10002238
1000222c: 4e                       dec esi
1000222d: 7515                     jne 0x10002244
1000222f: c7410402000000           mov dword ptr [ecx + 4], 2
10002236: eb0c                     jmp 0x10002244
10002238: c7410401000000           mov dword ptr [ecx + 4], 1
1000223f: eb03                     jmp 0x10002244
10002241: 895104                   mov dword ptr [ecx + 4], edx
10002244: 8b7014                   mov esi, dword ptr [eax + 0x14]
10002247: 897108                   mov dword ptr [ecx + 8], esi
1000224a: 8b7010                   mov esi, dword ptr [eax + 0x10]
1000224d: 89710c                   mov dword ptr [ecx + 0xc], esi
10002250: 8b703c                   mov esi, dword ptr [eax + 0x3c]
10002253: 8b790c                   mov edi, dword ptr [ecx + 0xc]
10002256: 897110                   mov dword ptr [ecx + 0x10], esi
10002259: 8b7038                   mov esi, dword ptr [eax + 0x38]
1000225c: 897114                   mov dword ptr [ecx + 0x14], esi
1000225f: 3bfa                     cmp edi, edx
10002261: 7525                     jne 0x10002288
10002263: 3bf2                     cmp esi, edx
10002265: 7e4f                     jle 0x100022b6
10002267: eb07                     jmp 0x10002270
10002269: 8da42400000000           lea esp, [esp]
10002270: 8b7028                   mov esi, dword ptr [eax + 0x28]
10002273: 8b3496                   mov esi, dword ptr [esi + edx*4]
10002276: 89749118                 mov dword ptr [ecx + edx*4 + 0x18], esi
1000227a: 42                       inc edx
1000227b: 3b5114                   cmp edx, dword ptr [ecx + 0x14]
1000227e: 7cf0                     jl 0x10002270
10002280: 5f                       pop edi
10002281: 5e                       pop esi
10002282: b001                     mov al, 1
10002284: 5d                       pop ebp
10002285: c21000                   ret 0x10
10002288: 83ff01                   cmp edi, 1
1000228b: 7529                     jne 0x100022b6
1000228d: 3bf2                     cmp esi, edx
1000228f: 7e25                     jle 0x100022b6
10002291: 8d711c                   lea esi, [ecx + 0x1c]
10002294: 8b7828                   mov edi, dword ptr [eax + 0x28]
10002297: 8b3c97                   mov edi, dword ptr [edi + edx*4]
1000229a: 897efc                   mov dword ptr [esi - 4], edi
1000229d: 8b7914                   mov edi, dword ptr [ecx + 0x14]
100022a0: 4f                       dec edi
100022a1: 3bd7                     cmp edx, edi
100022a3: 7408                     je 0x100022ad
100022a5: 8b7818                   mov edi, dword ptr [eax + 0x18]
100022a8: 8b3c97                   mov edi, dword ptr [edi + edx*4]
100022ab: 893e                     mov dword ptr [esi], edi
100022ad: 42                       inc edx
100022ae: 83c608                   add esi, 8
100022b1: 3b5114                   cmp edx, dword ptr [ecx + 0x14]
100022b4: 7cde                     jl 0x10002294
100022b6: 5f                       pop edi
100022b7: 5e                       pop esi
100022b8: b001                     mov al, 1
100022ba: 5d                       pop ebp
100022bb: c21000                   ret 0x10
100022be: 8bff                     mov edi, edi
100022c0: a6                       cmpsb byte ptr [esi], byte ptr es:[edi]
100022c1: 2100                     and dword ptr [eax], eax
100022c3: 10d8                     adc al, bl
100022c5: 2100                     and dword ptr [eax], eax
100022c7: 1018                     adc byte ptr [eax], bl
100022c9: 2200                     and al, byte ptr [eax]
100022cb: 1018                     adc byte ptr [eax], bl
100022cd: 2200                     and al, byte ptr [eax]
100022cf: 1018                     adc byte ptr [eax], bl
100022d1: 2200                     and al, byte ptr [eax]
100022d3: 10cc                     adc ah, cl
100022d5: cc                       int3 
100022d6: cc                       int3 
100022d7: cc                       int3 
100022d8: cc                       int3 
100022d9: cc                       int3 
100022da: cc                       int3 
100022db: cc                       int3 
100022dc: cc                       int3 
100022dd: cc                       int3 
100022de: cc                       int3 
100022df: cc                       int3 
100022e0: 55                       push ebp
100022e1: 8bec                     mov ebp, esp
100022e3: 81eccc000000             sub esp, 0xcc
100022e9: a180f00010               mov eax, dword ptr [0x1000f080]
100022ee: 33c5                     xor eax, ebp
100022f0: 8945fc                   mov dword ptr [ebp - 4], eax
100022f3: 8b5508                   mov edx, dword ptr [ebp + 8]
100022f6: 56                       push esi
100022f7: 8b7104                   mov esi, dword ptr [ecx + 4]
100022fa: 57                       push edi
100022fb: 83c60c                   add esi, 0xc
100022fe: b931000000               mov ecx, 0x31
10002303: 8dbd34ffffff             lea edi, [ebp - 0xcc]
10002309: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
1000230b: 66a5                     movsw word ptr es:[edi], word ptr [esi]
1000230d: 5f                       pop edi
1000230e: 33c0                     xor eax, eax
10002310: 5e                       pop esi
10002311: 0fb68c0534ffffff         movzx ecx, byte ptr [ebp + eax - 0xcc]
10002319: 890c82                   mov dword ptr [edx + eax*4], ecx
1000231c: 40                       inc eax
1000231d: 3dc6000000               cmp eax, 0xc6
10002322: 7ced                     jl 0x10002311
10002324: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10002327: 33cd                     xor ecx, ebp
10002329: b001                     mov al, 1
1000232b: e88a280000               call 0x10004bba
10002330: 8be5                     mov esp, ebp
10002332: 5d                       pop ebp
10002333: c20400                   ret 4
10002336: cc                       int3 
10002337: cc                       int3 
10002338: cc                       int3 
10002339: cc                       int3 
1000233a: cc                       int3 
1000233b: cc                       int3 
1000233c: cc                       int3 
1000233d: cc                       int3 
1000233e: cc                       int3 
1000233f: cc                       int3 
10002340: 56                       push esi
10002341: 57                       push edi
10002342: 8b7904                   mov edi, dword ptr [ecx + 4]
10002345: 33f6                     xor esi, esi
10002347: 8b4708                   mov eax, dword ptr [edi + 8]
1000234a: 8b0406                   mov eax, dword ptr [esi + eax]
1000234d: 85c0                     test eax, eax
1000234f: 7409                     je 0x1000235a
10002351: 50                       push eax
10002352: e8ad290000               call 0x10004d04
10002357: 83c404                   add esp, 4
1000235a: 8b4f08                   mov ecx, dword ptr [edi + 8]
1000235d: c7040e00000000           mov dword ptr [esi + ecx], 0
10002364: 83c604                   add esi, 4
10002367: 81fe48090000             cmp esi, 0x948
1000236d: 7cd8                     jl 0x10002347
1000236f: 5f                       pop edi
10002370: b001                     mov al, 1
10002372: 5e                       pop esi
10002373: c3                       ret 
10002374: cc                       int3 
10002375: cc                       int3 
10002376: cc                       int3 
10002377: cc                       int3 
10002378: cc                       int3 
10002379: cc                       int3 
1000237a: cc                       int3 
1000237b: cc                       int3 
1000237c: cc                       int3 
1000237d: cc                       int3 
1000237e: cc                       int3 
1000237f: cc                       int3 
10002380: 55                       push ebp
10002381: 8bec                     mov ebp, esp
10002383: 8b4904                   mov ecx, dword ptr [ecx + 4]
10002386: 5d                       pop ebp
10002387: e9d4f4ffff               jmp 0x10001860
1000238c: cc                       int3 
1000238d: cc                       int3 
1000238e: cc                       int3 
1000238f: cc                       int3 
10002390: 55                       push ebp
10002391: 8bec                     mov ebp, esp
10002393: 8b4904                   mov ecx, dword ptr [ecx + 4]
10002396: 5d                       pop ebp
10002397: e934f1ffff               jmp 0x100014d0
1000239c: cc                       int3 
1000239d: cc                       int3 
1000239e: cc                       int3 
1000239f: cc                       int3 
100023a0: 56                       push esi
100023a1: 8b7104                   mov esi, dword ptr [ecx + 4]
100023a4: e8d7f6ffff               call 0x10001a80
100023a9: 5e                       pop esi
100023aa: c3                       ret 
100023ab: cc                       int3 
100023ac: cc                       int3 
100023ad: cc                       int3 
100023ae: cc                       int3 
100023af: cc                       int3 
100023b0: 55                       push ebp
100023b1: 8bec                     mov ebp, esp
100023b3: 8b450c                   mov eax, dword ptr [ebp + 0xc]
100023b6: 8b09                     mov ecx, dword ptr [ecx]
100023b8: 8b5508                   mov edx, dword ptr [ebp + 8]
100023bb: 50                       push eax
100023bc: 51                       push ecx
100023bd: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
100023c0: e8eb150000               call 0x100039b0
100023c5: 5d                       pop ebp
100023c6: c20c00                   ret 0xc
100023c9: cc                       int3 
100023ca: cc                       int3 
100023cb: cc                       int3 
100023cc: cc                       int3 
100023cd: cc                       int3 
100023ce: cc                       int3 
100023cf: cc                       int3 
100023d0: 55                       push ebp
100023d1: 8bec                     mov ebp, esp
100023d3: 8b09                     mov ecx, dword ptr [ecx]
100023d5: 8b01                     mov eax, dword ptr [ecx]
100023d7: 8b4008                   mov eax, dword ptr [eax + 8]
100023da: 5d                       pop ebp
100023db: ffe0                     jmp eax
100023dd: cc                       int3 
100023de: cc                       int3 
100023df: cc                       int3 
100023e0: e96b060000               jmp 0x10002a50
100023e5: cc                       int3 
100023e6: cc                       int3 
100023e7: cc                       int3 
100023e8: cc                       int3 
100023e9: cc                       int3 
100023ea: cc                       int3 
100023eb: cc                       int3 
100023ec: cc                       int3 
100023ed: cc                       int3 
100023ee: cc                       int3 
100023ef: cc                       int3 
100023f0: 55                       push ebp
100023f1: 8bec                     mov ebp, esp
100023f3: 56                       push esi
100023f4: 57                       push edi
100023f5: 8bf9                     mov edi, ecx
100023f7: 8b7704                   mov esi, dword ptr [edi + 4]
100023fa: e871f7ffff               call 0x10001b70
100023ff: 8b7704                   mov esi, dword ptr [edi + 4]
10002402: 8b7d08                   mov edi, dword ptr [ebp + 8]
10002405: 81c6d4000000             add esi, 0xd4
1000240b: b942000000               mov ecx, 0x42
10002410: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10002412: 5f                       pop edi
10002413: b001                     mov al, 1
10002415: 5e                       pop esi
10002416: 5d                       pop ebp
10002417: c20400                   ret 4
1000241a: cc                       int3 
1000241b: cc                       int3 
1000241c: cc                       int3 
1000241d: cc                       int3 
1000241e: cc                       int3 
1000241f: cc                       int3 
10002420: e91b0b0000               jmp 0x10002f40
10002425: cc                       int3 
10002426: cc                       int3 
10002427: cc                       int3 
10002428: cc                       int3 
10002429: cc                       int3 
1000242a: cc                       int3 
1000242b: cc                       int3 
1000242c: cc                       int3 
1000242d: cc                       int3 
1000242e: cc                       int3 
1000242f: cc                       int3 
10002430: e91b110000               jmp 0x10003550
10002435: cc                       int3 
10002436: cc                       int3 
10002437: cc                       int3 
10002438: cc                       int3 
10002439: cc                       int3 
1000243a: cc                       int3 
1000243b: cc                       int3 
1000243c: cc                       int3 
1000243d: cc                       int3 
1000243e: cc                       int3 
1000243f: cc                       int3 
10002440: 6a00                     push 0
10002442: 6a00                     push 0
10002444: 6a03                     push 3
10002446: 6a00                     push 0
10002448: 6a01                     push 1
1000244a: 68000000c0               push 0xc0000000
1000244f: 50                       push eax
10002450: c706e0d40010             mov dword ptr [esi], 0x1000d4e0
10002456: ff1518b00010             call dword ptr [0x1000b018]
1000245c: 894604                   mov dword ptr [esi + 4], eax
1000245f: c706c4d40010             mov dword ptr [esi], 0x1000d4c4
10002465: 8bc6                     mov eax, esi
10002467: c3                       ret 
10002468: cc                       int3 
10002469: cc                       int3 
1000246a: cc                       int3 
1000246b: cc                       int3 
1000246c: cc                       int3 
1000246d: cc                       int3 
1000246e: cc                       int3 
1000246f: cc                       int3 
10002470: 55                       push ebp
10002471: 8bec                     mov ebp, esp
10002473: 81ec8c000000             sub esp, 0x8c
10002479: a180f00010               mov eax, dword ptr [0x1000f080]
1000247e: 33c5                     xor eax, ebp
10002480: 8945fc                   mov dword ptr [ebp - 4], eax
10002483: 56                       push esi
10002484: 57                       push edi
10002485: 8b7d08                   mov edi, dword ptr [ebp + 8]
10002488: 6a3e                     push 0x3e
1000248a: 8d45bb                   lea eax, [ebp - 0x45]
1000248d: 6a00                     push 0
1000248f: 50                       push eax
10002490: 8bf1                     mov esi, ecx
10002492: 66c745b80000             mov word ptr [ebp - 0x48], 0
10002498: c645baf9                 mov byte ptr [ebp - 0x46], 0xf9
1000249c: e81f660000               call 0x10008ac0
100024a1: 8b16                     mov edx, dword ptr [esi]
100024a3: 8b12                     mov edx, dword ptr [edx]
100024a5: 83c40c                   add esp, 0xc
100024a8: 6a41                     push 0x41
100024aa: 8d45b8                   lea eax, [ebp - 0x48]
100024ad: 50                       push eax
100024ae: 8bce                     mov ecx, esi
100024b0: ffd2                     call edx
100024b2: 84c0                     test al, al
100024b4: 7514                     jne 0x100024ca
100024b6: 5f                       pop edi
100024b7: 32c0                     xor al, al
100024b9: 5e                       pop esi
100024ba: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
100024bd: 33cd                     xor ecx, ebp
100024bf: e8f6260000               call 0x10004bba
100024c4: 8be5                     mov esp, ebp
100024c6: 5d                       pop ebp
100024c7: c20400                   ret 4
100024ca: 8b06                     mov eax, dword ptr [esi]
100024cc: 8b4004                   mov eax, dword ptr [eax + 4]
100024cf: 68a0860100               push 0x186a0
100024d4: 8d8d74ffffff             lea ecx, [ebp - 0x8c]
100024da: 51                       push ecx
100024db: 8d9578ffffff             lea edx, [ebp - 0x88]
100024e1: 52                       push edx
100024e2: 8bce                     mov ecx, esi
100024e4: c78574ffffff40000000     mov dword ptr [ebp - 0x8c], 0x40
100024ee: ffd0                     call eax
100024f0: 84c0                     test al, al
100024f2: 74c2                     je 0x100024b6
100024f4: 8b8574ffffff             mov eax, dword ptr [ebp - 0x8c]
100024fa: 83c0fe                   add eax, -2
100024fd: 50                       push eax
100024fe: 57                       push edi
100024ff: 50                       push eax
10002500: 8d8d7affffff             lea ecx, [ebp - 0x86]
10002506: 51                       push ecx
10002507: 6a00                     push 0
10002509: 6a00                     push 0
1000250b: ff1514b00010             call dword ptr [0x1000b014]
10002511: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10002514: 5f                       pop edi
10002515: 33cd                     xor ecx, ebp
10002517: b001                     mov al, 1
10002519: 5e                       pop esi
1000251a: e89b260000               call 0x10004bba
1000251f: 8be5                     mov esp, ebp
10002521: 5d                       pop ebp
10002522: c20400                   ret 4
10002525: cc                       int3 
10002526: cc                       int3 
10002527: cc                       int3 
10002528: cc                       int3 
10002529: cc                       int3 
1000252a: cc                       int3 
1000252b: cc                       int3 
1000252c: cc                       int3 
1000252d: cc                       int3 
1000252e: cc                       int3 
1000252f: cc                       int3 
10002530: 55                       push ebp
10002531: 8bec                     mov ebp, esp
10002533: 83e4f8                   and esp, 0xfffffff8
10002536: 6aff                     push -1
10002538: 6822af0010               push 0x1000af22
1000253d: 64a100000000             mov eax, dword ptr fs:[0]
10002543: 50                       push eax
10002544: 81ec08010000             sub esp, 0x108
1000254a: a180f00010               mov eax, dword ptr [0x1000f080]
1000254f: 33c4                     xor eax, esp
10002551: 89842400010000           mov dword ptr [esp + 0x100], eax
10002558: 53                       push ebx
10002559: 56                       push esi
1000255a: 57                       push edi
1000255b: a180f00010               mov eax, dword ptr [0x1000f080]
10002560: 33c4                     xor eax, esp
10002562: 50                       push eax
10002563: 8d842418010000           lea eax, [esp + 0x118]
1000256a: 64a300000000             mov dword ptr fs:[0], eax
10002570: 8d8424c8000000           lea eax, [esp + 0xc8]
10002577: 33f6                     xor esi, esi
10002579: 50                       push eax
1000257a: 89742414                 mov dword ptr [esp + 0x14], esi
1000257e: ff1500b00010             call dword ptr [0x1000b000]
10002584: 6a12                     push 0x12
10002586: 56                       push esi
10002587: 56                       push esi
10002588: 8d8c24d4000000           lea ecx, [esp + 0xd4]
1000258f: 51                       push ecx
10002590: ff1504b10010             call dword ptr [0x1000b104]
10002596: 8bf8                     mov edi, eax
10002598: 897c241c                 mov dword ptr [esp + 0x1c], edi
1000259c: 83ffff                   cmp edi, -1
1000259f: 0f842f040000             je 0x100029d4
100025a5: 8d9424f4000000           lea edx, [esp + 0xf4]
100025ac: 52                       push edx
100025ad: 56                       push esi
100025ae: 57                       push edi
100025af: 89742420                 mov dword ptr [esp + 0x20], esi
100025b3: c78424000100001c000000   mov dword ptr [esp + 0x100], 0x1c
100025be: ff15f8b00010             call dword ptr [0x1000b0f8]
100025c4: 83f801                   cmp eax, 1
100025c7: 0f8507040000             jne 0x100029d4
100025cd: eb05                     jmp 0x100025d4
100025cf: 90                       nop 
100025d0: 8b7c241c                 mov edi, dword ptr [esp + 0x1c]
100025d4: 8b4c2414                 mov ecx, dword ptr [esp + 0x14]
100025d8: 8d8424d8000000           lea eax, [esp + 0xd8]
100025df: 50                       push eax
100025e0: 51                       push ecx
100025e1: 8d9424d0000000           lea edx, [esp + 0xd0]
100025e8: 52                       push edx
100025e9: 6a00                     push 0
100025eb: 57                       push edi
100025ec: c78424ec0000001c000000   mov dword ptr [esp + 0xec], 0x1c
100025f7: ff15fcb00010             call dword ptr [0x1000b0fc]
100025fd: 83f801                   cmp eax, 1
10002600: 0f85ce030000             jne 0x100029d4
10002606: 8b1d00b10010             mov ebx, dword ptr [0x1000b100]
1000260c: 6a00                     push 0
1000260e: 8d44241c                 lea eax, [esp + 0x1c]
10002612: 50                       push eax
10002613: 6a00                     push 0
10002615: 6a00                     push 0
10002617: 8d8c24e8000000           lea ecx, [esp + 0xe8]
1000261e: 51                       push ecx
1000261f: 57                       push edi
10002620: ffd3                     call ebx
10002622: 8b542418                 mov edx, dword ptr [esp + 0x18]
10002626: 52                       push edx
10002627: e8502b0000               call 0x1000517c
1000262c: 83c404                   add esp, 4
1000262f: 6a00                     push 0
10002631: 8bf0                     mov esi, eax
10002633: 8d44241c                 lea eax, [esp + 0x1c]
10002637: 50                       push eax
10002638: c70606000000             mov dword ptr [esi], 6
1000263e: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
10002642: 51                       push ecx
10002643: 56                       push esi
10002644: 8d9424e8000000           lea edx, [esp + 0xe8]
1000264b: 52                       push edx
1000264c: 57                       push edi
1000264d: ffd3                     call ebx
1000264f: 83f801                   cmp eax, 1
10002652: 0f8580030000             jne 0x100029d8
10002658: 33ff                     xor edi, edi
1000265a: 33c9                     xor ecx, ecx
1000265c: 8d4604                   lea eax, [esi + 4]
1000265f: 66894c2420               mov word ptr [esp + 0x20], cx
10002664: 8bc8                     mov ecx, eax
10002666: c744243407000000         mov dword ptr [esp + 0x34], 7
1000266e: 897c2430                 mov dword ptr [esp + 0x30], edi
10002672: 8d7102                   lea esi, [ecx + 2]
10002675: 668b11                   mov dx, word ptr [ecx]
10002678: 83c102                   add ecx, 2
1000267b: 663bd7                   cmp dx, di
1000267e: 75f5                     jne 0x10002675
10002680: 2bce                     sub ecx, esi
10002682: d1f9                     sar ecx, 1
10002684: 51                       push ecx
10002685: 8d4c2424                 lea ecx, [esp + 0x24]
10002689: e822180000               call 0x10003eb0
1000268e: 6a04                     push 4
10002690: 6810d40010               push 0x1000d410
10002695: 8d542428                 lea edx, [esp + 0x28]
10002699: 52                       push edx
1000269a: 89bc242c010000           mov dword ptr [esp + 0x12c], edi
100026a1: e8da160000               call 0x10003d80
100026a6: 6a04                     push 4
100026a8: 8bf0                     mov esi, eax
100026aa: 681cd40010               push 0x1000d41c
100026af: 8d442428                 lea eax, [esp + 0x28]
100026b3: 50                       push eax
100026b4: e8c7160000               call 0x10003d80
100026b9: 6a05                     push 5
100026bb: 6828d40010               push 0x1000d428
100026c0: 8d4c2428                 lea ecx, [esp + 0x28]
100026c4: 51                       push ecx
100026c5: 8d5804                   lea ebx, [eax + 4]
100026c8: e8b3160000               call 0x10003d80
100026cd: 3bc7                     cmp eax, edi
100026cf: 0f8e6d010000             jle 0x10002842
100026d5: 8d4e04                   lea ecx, [esi + 4]
100026d8: 8d842490000000           lea eax, [esp + 0x90]
100026df: 8d542420                 lea edx, [esp + 0x20]
100026e3: e888150000               call 0x10003c70
100026e8: c684242001000001         mov byte ptr [esp + 0x120], 1
100026f0: 8b7010                   mov esi, dword ptr [eax + 0x10]
100026f3: 834c241001               or dword ptr [esp + 0x10], 1
100026f8: 8bce                     mov ecx, esi
100026fa: 3bce                     cmp ecx, esi
100026fc: 7300                     jae 0x100026fe
100026fe: 8bd6                     mov edx, esi
10002700: 83fe04                   cmp esi, 4
10002703: 7205                     jb 0x1000270a
10002705: ba04000000               mov edx, 4
1000270a: bf08000000               mov edi, 8
1000270f: 397814                   cmp dword ptr [eax + 0x14], edi
10002712: 7204                     jb 0x10002718
10002714: 8b08                     mov ecx, dword ptr [eax]
10002716: eb02                     jmp 0x1000271a
10002718: 8bc8                     mov ecx, eax
1000271a: b8f8d30010               mov eax, 0x1000d3f8
1000271f: 85d2                     test edx, edx
10002721: 741a                     je 0x1000273d
10002723: 668b39                   mov di, word ptr [ecx]
10002726: 663b38                   cmp di, word ptr [eax]
10002729: 0f85fd000000             jne 0x1000282c
1000272f: 83c102                   add ecx, 2
10002732: 83c002                   add eax, 2
10002735: 4a                       dec edx
10002736: 75eb                     jne 0x10002723
10002738: bf08000000               mov edi, 8
1000273d: 83fe04                   cmp esi, 4
10002740: 0f8201010000             jb 0x10002847
10002746: 33c0                     xor eax, eax
10002748: 83fe04                   cmp esi, 4
1000274b: 0f95c0                   setne al
1000274e: 85c0                     test eax, eax
10002750: 0f85f1000000             jne 0x10002847
10002756: 8bcb                     mov ecx, ebx
10002758: 8d442458                 lea eax, [esp + 0x58]
1000275c: 8d542420                 lea edx, [esp + 0x20]
10002760: e80b150000               call 0x10003c70
10002765: 8bc8                     mov ecx, eax
10002767: b802000000               mov eax, 2
1000276c: 89842420010000           mov dword ptr [esp + 0x120], eax
10002773: 09442410                 or dword ptr [esp + 0x10], eax
10002777: 8d7802                   lea edi, [eax + 2]
1000277a: 8b4110                   mov eax, dword ptr [ecx + 0x10]
1000277d: 68ecd30010               push 0x1000d3ec
10002782: e8b9160000               call 0x10003e40
10002787: 85c0                     test eax, eax
10002789: 0f8494000000             je 0x10002823
1000278f: 8bcb                     mov ecx, ebx
10002791: 8d442474                 lea eax, [esp + 0x74]
10002795: 8d542420                 lea edx, [esp + 0x20]
10002799: e8d2140000               call 0x10003c70
1000279e: 8bc8                     mov ecx, eax
100027a0: c784242001000003000000   mov dword ptr [esp + 0x120], 3
100027ab: 8b4110                   mov eax, dword ptr [ecx + 0x10]
100027ae: 097c2410                 or dword ptr [esp + 0x10], edi
100027b2: 6834d40010               push 0x1000d434
100027b7: e884160000               call 0x10003e40
100027bc: 85c0                     test eax, eax
100027be: 7463                     je 0x10002823
100027c0: 8bcb                     mov ecx, ebx
100027c2: 8d8424ac000000           lea eax, [esp + 0xac]
100027c9: 8d542420                 lea edx, [esp + 0x20]
100027cd: e89e140000               call 0x10003c70
100027d2: 8bc8                     mov ecx, eax
100027d4: 89bc2420010000           mov dword ptr [esp + 0x120], edi
100027db: 8b4110                   mov eax, dword ptr [ecx + 0x10]
100027de: 834c241008               or dword ptr [esp + 0x10], 8
100027e3: 6840d40010               push 0x1000d440
100027e8: e853160000               call 0x10003e40
100027ed: 85c0                     test eax, eax
100027ef: 7432                     je 0x10002823
100027f1: 8bcb                     mov ecx, ebx
100027f3: 8d44243c                 lea eax, [esp + 0x3c]
100027f7: 8d542420                 lea edx, [esp + 0x20]
100027fb: e870140000               call 0x10003c70
10002800: 8bc8                     mov ecx, eax
10002802: c784242001000005000000   mov dword ptr [esp + 0x120], 5
1000280d: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10002810: 834c241010               or dword ptr [esp + 0x10], 0x10
10002815: 684cd40010               push 0x1000d44c
1000281a: e821160000               call 0x10003e40
1000281f: 85c0                     test eax, eax
10002821: 751f                     jne 0x10002842
10002823: b301                     mov bl, 1
10002825: bf08000000               mov edi, 8
1000282a: eb1d                     jmp 0x10002849
1000282c: 1bc0                     sbb eax, eax
1000282e: 83e0fe                   and eax, 0xfffffffe
10002831: 40                       inc eax
10002832: 0f8400ffffff             je 0x10002738
10002838: bf08000000               mov edi, 8
1000283d: e90cffffff               jmp 0x1000274e
10002842: bf08000000               mov edi, 8
10002847: 32db                     xor bl, bl
10002849: f644241010               test byte ptr [esp + 0x10], 0x10
1000284e: 7432                     je 0x10002882
10002850: 83642410ef               and dword ptr [esp + 0x10], 0xffffffef
10002855: 397c2450                 cmp dword ptr [esp + 0x50], edi
10002859: 720d                     jb 0x10002868
1000285b: 8b44243c                 mov eax, dword ptr [esp + 0x3c]
1000285f: 50                       push eax
10002860: e89f240000               call 0x10004d04
10002865: 83c404                   add esp, 4
10002868: be07000000               mov esi, 7
1000286d: 33c9                     xor ecx, ecx
1000286f: 89742450                 mov dword ptr [esp + 0x50], esi
10002873: c744244c00000000         mov dword ptr [esp + 0x4c], 0
1000287b: 66894c243c               mov word ptr [esp + 0x3c], cx
10002880: eb05                     jmp 0x10002887
10002882: be07000000               mov esi, 7
10002887: f644241008               test byte ptr [esp + 0x10], 8
1000288c: 743a                     je 0x100028c8
1000288e: 83642410f7               and dword ptr [esp + 0x10], 0xfffffff7
10002893: 39bc24c0000000           cmp dword ptr [esp + 0xc0], edi
1000289a: 7210                     jb 0x100028ac
1000289c: 8b9424ac000000           mov edx, dword ptr [esp + 0xac]
100028a3: 52                       push edx
100028a4: e85b240000               call 0x10004d04
100028a9: 83c404                   add esp, 4
100028ac: 33c0                     xor eax, eax
100028ae: 89b424c0000000           mov dword ptr [esp + 0xc0], esi
100028b5: c78424bc00000000000000   mov dword ptr [esp + 0xbc], 0
100028c0: 66898424ac000000         mov word ptr [esp + 0xac], ax
100028c8: f644241004               test byte ptr [esp + 0x10], 4
100028cd: 7434                     je 0x10002903
100028cf: 83642410fb               and dword ptr [esp + 0x10], 0xfffffffb
100028d4: 39bc2488000000           cmp dword ptr [esp + 0x88], edi
100028db: 720d                     jb 0x100028ea
100028dd: 8b4c2474                 mov ecx, dword ptr [esp + 0x74]
100028e1: 51                       push ecx
100028e2: e81d240000               call 0x10004d04
100028e7: 83c404                   add esp, 4
100028ea: 33d2                     xor edx, edx
100028ec: 89b42488000000           mov dword ptr [esp + 0x88], esi
100028f3: c784248400000000000000   mov dword ptr [esp + 0x84], 0
100028fe: 6689542474               mov word ptr [esp + 0x74], dx
10002903: f644241002               test byte ptr [esp + 0x10], 2
10002908: 742b                     je 0x10002935
1000290a: 83642410fd               and dword ptr [esp + 0x10], 0xfffffffd
1000290f: 397c246c                 cmp dword ptr [esp + 0x6c], edi
10002913: 720d                     jb 0x10002922
10002915: 8b442458                 mov eax, dword ptr [esp + 0x58]
10002919: 50                       push eax
1000291a: e8e5230000               call 0x10004d04
1000291f: 83c404                   add esp, 4
10002922: 33c9                     xor ecx, ecx
10002924: 8974246c                 mov dword ptr [esp + 0x6c], esi
10002928: c744246800000000         mov dword ptr [esp + 0x68], 0
10002930: 66894c2458               mov word ptr [esp + 0x58], cx
10002935: c784242001000000000000   mov dword ptr [esp + 0x120], 0
10002940: f644241001               test byte ptr [esp + 0x10], 1
10002945: 743a                     je 0x10002981
10002947: 83642410fe               and dword ptr [esp + 0x10], 0xfffffffe
1000294c: 39bc24a4000000           cmp dword ptr [esp + 0xa4], edi
10002953: 7210                     jb 0x10002965
10002955: 8b942490000000           mov edx, dword ptr [esp + 0x90]
1000295c: 52                       push edx
1000295d: e8a2230000               call 0x10004d04
10002962: 83c404                   add esp, 4
10002965: 33c0                     xor eax, eax
10002967: 89b424a4000000           mov dword ptr [esp + 0xa4], esi
1000296e: c78424a000000000000000   mov dword ptr [esp + 0xa0], 0
10002979: 6689842490000000         mov word ptr [esp + 0x90], ax
10002981: 84db                     test bl, bl
10002983: 7560                     jne 0x100029e5
10002985: c7842420010000ffffffff   mov dword ptr [esp + 0x120], 0xffffffff
10002990: 397c2434                 cmp dword ptr [esp + 0x34], edi
10002994: 720d                     jb 0x100029a3
10002996: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
1000299a: 51                       push ecx
1000299b: e864230000               call 0x10004d04
100029a0: 83c404                   add esp, 4
100029a3: 8b442414                 mov eax, dword ptr [esp + 0x14]
100029a7: 40                       inc eax
100029a8: 8d9424f4000000           lea edx, [esp + 0xf4]
100029af: 52                       push edx
100029b0: 50                       push eax
100029b1: 8944241c                 mov dword ptr [esp + 0x1c], eax
100029b5: 8b442424                 mov eax, dword ptr [esp + 0x24]
100029b9: 50                       push eax
100029ba: c78424000100001c000000   mov dword ptr [esp + 0x100], 0x1c
100029c5: ff15f8b00010             call dword ptr [0x1000b0f8]
100029cb: 83f801                   cmp eax, 1
100029ce: 0f84fcfbffff             je 0x100025d0
100029d4: 33c0                     xor eax, eax
100029d6: eb50                     jmp 0x10002a28
100029d8: 56                       push esi
100029d9: e864270000               call 0x10005142
100029de: 83c404                   add esp, 4
100029e1: 33c0                     xor eax, eax
100029e3: eb43                     jmp 0x10002a28
100029e5: 6a10                     push 0x10
100029e7: e885260000               call 0x10005071
100029ec: 8bf0                     mov esi, eax
100029ee: 83c404                   add esp, 4
100029f1: 85f6                     test esi, esi
100029f3: 741c                     je 0x10002a11
100029f5: 8b442420                 mov eax, dword ptr [esp + 0x20]
100029f9: 397c2434                 cmp dword ptr [esp + 0x34], edi
100029fd: 7304                     jae 0x10002a03
100029ff: 8d442420                 lea eax, [esp + 0x20]
10002a03: e838faffff               call 0x10002440
10002a08: 8bf0                     mov esi, eax
10002a0a: bf08000000               mov edi, 8
10002a0f: eb02                     jmp 0x10002a13
10002a11: 33f6                     xor esi, esi
10002a13: 397c2434                 cmp dword ptr [esp + 0x34], edi
10002a17: 720d                     jb 0x10002a26
10002a19: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
10002a1d: 51                       push ecx
10002a1e: e8e1220000               call 0x10004d04
10002a23: 83c404                   add esp, 4
10002a26: 8bc6                     mov eax, esi
10002a28: 8b8c2418010000           mov ecx, dword ptr [esp + 0x118]
10002a2f: 64890d00000000           mov dword ptr fs:[0], ecx
10002a36: 59                       pop ecx
10002a37: 5f                       pop edi
10002a38: 5e                       pop esi
10002a39: 5b                       pop ebx
10002a3a: 8b8c2400010000           mov ecx, dword ptr [esp + 0x100]
10002a41: 33cc                     xor ecx, esp
10002a43: e872210000               call 0x10004bba
10002a48: 8be5                     mov esp, ebp
10002a4a: 5d                       pop ebp
10002a4b: c3                       ret 
10002a4c: cc                       int3 
10002a4d: cc                       int3 
10002a4e: cc                       int3 
10002a4f: cc                       int3 
10002a50: 55                       push ebp
10002a51: 8bec                     mov ebp, esp
10002a53: 83e4f8                   and esp, 0xfffffff8
10002a56: 6aff                     push -1
10002a58: 6822af0010               push 0x1000af22
10002a5d: 64a100000000             mov eax, dword ptr fs:[0]
10002a63: 50                       push eax
10002a64: 81ec08010000             sub esp, 0x108
10002a6a: a180f00010               mov eax, dword ptr [0x1000f080]
10002a6f: 33c4                     xor eax, esp
10002a71: 89842400010000           mov dword ptr [esp + 0x100], eax
10002a78: 53                       push ebx
10002a79: 56                       push esi
10002a7a: 57                       push edi
10002a7b: a180f00010               mov eax, dword ptr [0x1000f080]
10002a80: 33c4                     xor eax, esp
10002a82: 50                       push eax
10002a83: 8d842418010000           lea eax, [esp + 0x118]
10002a8a: 64a300000000             mov dword ptr fs:[0], eax
10002a90: 8d8424c8000000           lea eax, [esp + 0xc8]
10002a97: 33f6                     xor esi, esi
10002a99: 50                       push eax
10002a9a: 89742414                 mov dword ptr [esp + 0x14], esi
10002a9e: ff1500b00010             call dword ptr [0x1000b000]
10002aa4: 6a12                     push 0x12
10002aa6: 56                       push esi
10002aa7: 56                       push esi
10002aa8: 8d8c24d4000000           lea ecx, [esp + 0xd4]
10002aaf: 51                       push ecx
10002ab0: ff1504b10010             call dword ptr [0x1000b104]
10002ab6: 8bf8                     mov edi, eax
10002ab8: 897c241c                 mov dword ptr [esp + 0x1c], edi
10002abc: 83ffff                   cmp edi, -1
10002abf: 0f842f040000             je 0x10002ef4
10002ac5: 8d9424f4000000           lea edx, [esp + 0xf4]
10002acc: 52                       push edx
10002acd: 56                       push esi
10002ace: 57                       push edi
10002acf: 89742420                 mov dword ptr [esp + 0x20], esi
10002ad3: c78424000100001c000000   mov dword ptr [esp + 0x100], 0x1c
10002ade: ff15f8b00010             call dword ptr [0x1000b0f8]
10002ae4: 83f801                   cmp eax, 1
10002ae7: 0f8507040000             jne 0x10002ef4
10002aed: eb05                     jmp 0x10002af4
10002aef: 90                       nop 
10002af0: 8b7c241c                 mov edi, dword ptr [esp + 0x1c]
10002af4: 8b4c2414                 mov ecx, dword ptr [esp + 0x14]
10002af8: 8d8424d8000000           lea eax, [esp + 0xd8]
10002aff: 50                       push eax
10002b00: 51                       push ecx
10002b01: 8d9424d0000000           lea edx, [esp + 0xd0]
10002b08: 52                       push edx
10002b09: 6a00                     push 0
10002b0b: 57                       push edi
10002b0c: c78424ec0000001c000000   mov dword ptr [esp + 0xec], 0x1c
10002b17: ff15fcb00010             call dword ptr [0x1000b0fc]
10002b1d: 83f801                   cmp eax, 1
10002b20: 0f85ce030000             jne 0x10002ef4
10002b26: 8b1d00b10010             mov ebx, dword ptr [0x1000b100]
10002b2c: 6a00                     push 0
10002b2e: 8d44241c                 lea eax, [esp + 0x1c]
10002b32: 50                       push eax
10002b33: 6a00                     push 0
10002b35: 6a00                     push 0
10002b37: 8d8c24e8000000           lea ecx, [esp + 0xe8]
10002b3e: 51                       push ecx
10002b3f: 57                       push edi
10002b40: ffd3                     call ebx
10002b42: 8b542418                 mov edx, dword ptr [esp + 0x18]
10002b46: 52                       push edx
10002b47: e830260000               call 0x1000517c
10002b4c: 83c404                   add esp, 4
10002b4f: 6a00                     push 0
10002b51: 8bf0                     mov esi, eax
10002b53: 8d44241c                 lea eax, [esp + 0x1c]
10002b57: 50                       push eax
10002b58: c70606000000             mov dword ptr [esi], 6
10002b5e: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
10002b62: 51                       push ecx
10002b63: 56                       push esi
10002b64: 8d9424e8000000           lea edx, [esp + 0xe8]
10002b6b: 52                       push edx
10002b6c: 57                       push edi
10002b6d: ffd3                     call ebx
10002b6f: 83f801                   cmp eax, 1
10002b72: 0f8580030000             jne 0x10002ef8
10002b78: 33ff                     xor edi, edi
10002b7a: 33c9                     xor ecx, ecx
10002b7c: 8d4604                   lea eax, [esi + 4]
10002b7f: 66894c2420               mov word ptr [esp + 0x20], cx
10002b84: 8bc8                     mov ecx, eax
10002b86: c744243407000000         mov dword ptr [esp + 0x34], 7
10002b8e: 897c2430                 mov dword ptr [esp + 0x30], edi
10002b92: 8d7102                   lea esi, [ecx + 2]
10002b95: 668b11                   mov dx, word ptr [ecx]
10002b98: 83c102                   add ecx, 2
10002b9b: 663bd7                   cmp dx, di
10002b9e: 75f5                     jne 0x10002b95
10002ba0: 2bce                     sub ecx, esi
10002ba2: d1f9                     sar ecx, 1
10002ba4: 51                       push ecx
10002ba5: 8d4c2424                 lea ecx, [esp + 0x24]
10002ba9: e802130000               call 0x10003eb0
10002bae: 6a04                     push 4
10002bb0: 6810d40010               push 0x1000d410
10002bb5: 8d542428                 lea edx, [esp + 0x28]
10002bb9: 52                       push edx
10002bba: 89bc242c010000           mov dword ptr [esp + 0x12c], edi
10002bc1: e8ba110000               call 0x10003d80
10002bc6: 6a04                     push 4
10002bc8: 8bf0                     mov esi, eax
10002bca: 681cd40010               push 0x1000d41c
10002bcf: 8d442428                 lea eax, [esp + 0x28]
10002bd3: 50                       push eax
10002bd4: e8a7110000               call 0x10003d80
10002bd9: 6a05                     push 5
10002bdb: 6828d40010               push 0x1000d428
10002be0: 8d4c2428                 lea ecx, [esp + 0x28]
10002be4: 51                       push ecx
10002be5: 8d5804                   lea ebx, [eax + 4]
10002be8: e893110000               call 0x10003d80
10002bed: 3bc7                     cmp eax, edi
10002bef: 0f8e6d010000             jle 0x10002d62
10002bf5: 8d4e04                   lea ecx, [esi + 4]
10002bf8: 8d842490000000           lea eax, [esp + 0x90]
10002bff: 8d542420                 lea edx, [esp + 0x20]
10002c03: e868100000               call 0x10003c70
10002c08: c684242001000001         mov byte ptr [esp + 0x120], 1
10002c10: 8b7010                   mov esi, dword ptr [eax + 0x10]
10002c13: 834c241001               or dword ptr [esp + 0x10], 1
10002c18: 8bce                     mov ecx, esi
10002c1a: 3bce                     cmp ecx, esi
10002c1c: 7300                     jae 0x10002c1e
10002c1e: 8bd6                     mov edx, esi
10002c20: 83fe04                   cmp esi, 4
10002c23: 7205                     jb 0x10002c2a
10002c25: ba04000000               mov edx, 4
10002c2a: bf08000000               mov edi, 8
10002c2f: 397814                   cmp dword ptr [eax + 0x14], edi
10002c32: 7204                     jb 0x10002c38
10002c34: 8b08                     mov ecx, dword ptr [eax]
10002c36: eb02                     jmp 0x10002c3a
10002c38: 8bc8                     mov ecx, eax
10002c3a: b8f8d30010               mov eax, 0x1000d3f8
10002c3f: 85d2                     test edx, edx
10002c41: 741a                     je 0x10002c5d
10002c43: 668b39                   mov di, word ptr [ecx]
10002c46: 663b38                   cmp di, word ptr [eax]
10002c49: 0f85fd000000             jne 0x10002d4c
10002c4f: 83c102                   add ecx, 2
10002c52: 83c002                   add eax, 2
10002c55: 4a                       dec edx
10002c56: 75eb                     jne 0x10002c43
10002c58: bf08000000               mov edi, 8
10002c5d: 83fe04                   cmp esi, 4
10002c60: 0f8201010000             jb 0x10002d67
10002c66: 33c0                     xor eax, eax
10002c68: 83fe04                   cmp esi, 4
10002c6b: 0f95c0                   setne al
10002c6e: 85c0                     test eax, eax
10002c70: 0f85f1000000             jne 0x10002d67
10002c76: 8bcb                     mov ecx, ebx
10002c78: 8d442458                 lea eax, [esp + 0x58]
10002c7c: 8d542420                 lea edx, [esp + 0x20]
10002c80: e8eb0f0000               call 0x10003c70
10002c85: 8bc8                     mov ecx, eax
10002c87: b802000000               mov eax, 2
10002c8c: 89842420010000           mov dword ptr [esp + 0x120], eax
10002c93: 09442410                 or dword ptr [esp + 0x10], eax
10002c97: 8d7802                   lea edi, [eax + 2]
10002c9a: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10002c9d: 68ecd30010               push 0x1000d3ec
10002ca2: e899110000               call 0x10003e40
10002ca7: 85c0                     test eax, eax
10002ca9: 0f8494000000             je 0x10002d43
10002caf: 8bcb                     mov ecx, ebx
10002cb1: 8d442474                 lea eax, [esp + 0x74]
10002cb5: 8d542420                 lea edx, [esp + 0x20]
10002cb9: e8b20f0000               call 0x10003c70
10002cbe: 8bc8                     mov ecx, eax
10002cc0: c784242001000003000000   mov dword ptr [esp + 0x120], 3
10002ccb: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10002cce: 097c2410                 or dword ptr [esp + 0x10], edi
10002cd2: 6834d40010               push 0x1000d434
10002cd7: e864110000               call 0x10003e40
10002cdc: 85c0                     test eax, eax
10002cde: 7463                     je 0x10002d43
10002ce0: 8bcb                     mov ecx, ebx
10002ce2: 8d8424ac000000           lea eax, [esp + 0xac]
10002ce9: 8d542420                 lea edx, [esp + 0x20]
10002ced: e87e0f0000               call 0x10003c70
10002cf2: 8bc8                     mov ecx, eax
10002cf4: 89bc2420010000           mov dword ptr [esp + 0x120], edi
10002cfb: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10002cfe: 834c241008               or dword ptr [esp + 0x10], 8
10002d03: 6840d40010               push 0x1000d440
10002d08: e833110000               call 0x10003e40
10002d0d: 85c0                     test eax, eax
10002d0f: 7432                     je 0x10002d43
10002d11: 8bcb                     mov ecx, ebx
10002d13: 8d44243c                 lea eax, [esp + 0x3c]
10002d17: 8d542420                 lea edx, [esp + 0x20]
10002d1b: e8500f0000               call 0x10003c70
10002d20: 8bc8                     mov ecx, eax
10002d22: c784242001000005000000   mov dword ptr [esp + 0x120], 5
10002d2d: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10002d30: 834c241010               or dword ptr [esp + 0x10], 0x10
10002d35: 684cd40010               push 0x1000d44c
10002d3a: e801110000               call 0x10003e40
10002d3f: 85c0                     test eax, eax
10002d41: 751f                     jne 0x10002d62
10002d43: b301                     mov bl, 1
10002d45: bf08000000               mov edi, 8
10002d4a: eb1d                     jmp 0x10002d69
10002d4c: 1bc0                     sbb eax, eax
10002d4e: 83e0fe                   and eax, 0xfffffffe
10002d51: 40                       inc eax
10002d52: 0f8400ffffff             je 0x10002c58
10002d58: bf08000000               mov edi, 8
10002d5d: e90cffffff               jmp 0x10002c6e
10002d62: bf08000000               mov edi, 8
10002d67: 32db                     xor bl, bl
10002d69: f644241010               test byte ptr [esp + 0x10], 0x10
10002d6e: 7432                     je 0x10002da2
10002d70: 83642410ef               and dword ptr [esp + 0x10], 0xffffffef
10002d75: 397c2450                 cmp dword ptr [esp + 0x50], edi
10002d79: 720d                     jb 0x10002d88
10002d7b: 8b44243c                 mov eax, dword ptr [esp + 0x3c]
10002d7f: 50                       push eax
10002d80: e87f1f0000               call 0x10004d04
10002d85: 83c404                   add esp, 4
10002d88: be07000000               mov esi, 7
10002d8d: 33c9                     xor ecx, ecx
10002d8f: 89742450                 mov dword ptr [esp + 0x50], esi
10002d93: c744244c00000000         mov dword ptr [esp + 0x4c], 0
10002d9b: 66894c243c               mov word ptr [esp + 0x3c], cx
10002da0: eb05                     jmp 0x10002da7
10002da2: be07000000               mov esi, 7
10002da7: f644241008               test byte ptr [esp + 0x10], 8
10002dac: 743a                     je 0x10002de8
10002dae: 83642410f7               and dword ptr [esp + 0x10], 0xfffffff7
10002db3: 39bc24c0000000           cmp dword ptr [esp + 0xc0], edi
10002dba: 7210                     jb 0x10002dcc
10002dbc: 8b9424ac000000           mov edx, dword ptr [esp + 0xac]
10002dc3: 52                       push edx
10002dc4: e83b1f0000               call 0x10004d04
10002dc9: 83c404                   add esp, 4
10002dcc: 33c0                     xor eax, eax
10002dce: 89b424c0000000           mov dword ptr [esp + 0xc0], esi
10002dd5: c78424bc00000000000000   mov dword ptr [esp + 0xbc], 0
10002de0: 66898424ac000000         mov word ptr [esp + 0xac], ax
10002de8: f644241004               test byte ptr [esp + 0x10], 4
10002ded: 7434                     je 0x10002e23
10002def: 83642410fb               and dword ptr [esp + 0x10], 0xfffffffb
10002df4: 39bc2488000000           cmp dword ptr [esp + 0x88], edi
10002dfb: 720d                     jb 0x10002e0a
10002dfd: 8b4c2474                 mov ecx, dword ptr [esp + 0x74]
10002e01: 51                       push ecx
10002e02: e8fd1e0000               call 0x10004d04
10002e07: 83c404                   add esp, 4
10002e0a: 33d2                     xor edx, edx
10002e0c: 89b42488000000           mov dword ptr [esp + 0x88], esi
10002e13: c784248400000000000000   mov dword ptr [esp + 0x84], 0
10002e1e: 6689542474               mov word ptr [esp + 0x74], dx
10002e23: f644241002               test byte ptr [esp + 0x10], 2
10002e28: 742b                     je 0x10002e55
10002e2a: 83642410fd               and dword ptr [esp + 0x10], 0xfffffffd
10002e2f: 397c246c                 cmp dword ptr [esp + 0x6c], edi
10002e33: 720d                     jb 0x10002e42
10002e35: 8b442458                 mov eax, dword ptr [esp + 0x58]
10002e39: 50                       push eax
10002e3a: e8c51e0000               call 0x10004d04
10002e3f: 83c404                   add esp, 4
10002e42: 33c9                     xor ecx, ecx
10002e44: 8974246c                 mov dword ptr [esp + 0x6c], esi
10002e48: c744246800000000         mov dword ptr [esp + 0x68], 0
10002e50: 66894c2458               mov word ptr [esp + 0x58], cx
10002e55: c784242001000000000000   mov dword ptr [esp + 0x120], 0
10002e60: f644241001               test byte ptr [esp + 0x10], 1
10002e65: 743a                     je 0x10002ea1
10002e67: 83642410fe               and dword ptr [esp + 0x10], 0xfffffffe
10002e6c: 39bc24a4000000           cmp dword ptr [esp + 0xa4], edi
10002e73: 7210                     jb 0x10002e85
10002e75: 8b942490000000           mov edx, dword ptr [esp + 0x90]
10002e7c: 52                       push edx
10002e7d: e8821e0000               call 0x10004d04
10002e82: 83c404                   add esp, 4
10002e85: 33c0                     xor eax, eax
10002e87: 89b424a4000000           mov dword ptr [esp + 0xa4], esi
10002e8e: c78424a000000000000000   mov dword ptr [esp + 0xa0], 0
10002e99: 6689842490000000         mov word ptr [esp + 0x90], ax
10002ea1: 84db                     test bl, bl
10002ea3: 7560                     jne 0x10002f05
10002ea5: c7842420010000ffffffff   mov dword ptr [esp + 0x120], 0xffffffff
10002eb0: 397c2434                 cmp dword ptr [esp + 0x34], edi
10002eb4: 720d                     jb 0x10002ec3
10002eb6: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
10002eba: 51                       push ecx
10002ebb: e8441e0000               call 0x10004d04
10002ec0: 83c404                   add esp, 4
10002ec3: 8b442414                 mov eax, dword ptr [esp + 0x14]
10002ec7: 40                       inc eax
10002ec8: 8d9424f4000000           lea edx, [esp + 0xf4]
10002ecf: 52                       push edx
10002ed0: 50                       push eax
10002ed1: 8944241c                 mov dword ptr [esp + 0x1c], eax
10002ed5: 8b442424                 mov eax, dword ptr [esp + 0x24]
10002ed9: 50                       push eax
10002eda: c78424000100001c000000   mov dword ptr [esp + 0x100], 0x1c
10002ee5: ff15f8b00010             call dword ptr [0x1000b0f8]
10002eeb: 83f801                   cmp eax, 1
10002eee: 0f84fcfbffff             je 0x10002af0
10002ef4: 32c0                     xor al, al
10002ef6: eb22                     jmp 0x10002f1a
10002ef8: 56                       push esi
10002ef9: e844220000               call 0x10005142
10002efe: 83c404                   add esp, 4
10002f01: 32c0                     xor al, al
10002f03: eb15                     jmp 0x10002f1a
10002f05: 397c2434                 cmp dword ptr [esp + 0x34], edi
10002f09: 720d                     jb 0x10002f18
10002f0b: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
10002f0f: 51                       push ecx
10002f10: e8ef1d0000               call 0x10004d04
10002f15: 83c404                   add esp, 4
10002f18: b001                     mov al, 1
10002f1a: 8b8c2418010000           mov ecx, dword ptr [esp + 0x118]
10002f21: 64890d00000000           mov dword ptr fs:[0], ecx
10002f28: 59                       pop ecx
10002f29: 5f                       pop edi
10002f2a: 5e                       pop esi
10002f2b: 5b                       pop ebx
10002f2c: 8b8c2400010000           mov ecx, dword ptr [esp + 0x100]
10002f33: 33cc                     xor ecx, esp
10002f35: e8801c0000               call 0x10004bba
10002f3a: 8be5                     mov esp, ebp
10002f3c: 5d                       pop ebp
10002f3d: c3                       ret 
10002f3e: cc                       int3 
10002f3f: cc                       int3 
10002f40: 55                       push ebp
10002f41: 8bec                     mov ebp, esp
10002f43: 83e4f8                   and esp, 0xfffffff8
10002f46: 6aff                     push -1
10002f48: 683eae0010               push 0x1000ae3e
10002f4d: 64a100000000             mov eax, dword ptr fs:[0]
10002f53: 50                       push eax
10002f54: 81ec10010000             sub esp, 0x110
10002f5a: a180f00010               mov eax, dword ptr [0x1000f080]
10002f5f: 33c4                     xor eax, esp
10002f61: 89842408010000           mov dword ptr [esp + 0x108], eax
10002f68: 53                       push ebx
10002f69: 56                       push esi
10002f6a: 57                       push edi
10002f6b: a180f00010               mov eax, dword ptr [0x1000f080]
10002f70: 33c4                     xor eax, esp
10002f72: 50                       push eax
10002f73: 8d842420010000           lea eax, [esp + 0x120]
10002f7a: 64a300000000             mov dword ptr fs:[0], eax
10002f80: 8d8424d0000000           lea eax, [esp + 0xd0]
10002f87: 33ff                     xor edi, edi
10002f89: 50                       push eax
10002f8a: 897c241c                 mov dword ptr [esp + 0x1c], edi
10002f8e: ff1500b00010             call dword ptr [0x1000b000]
10002f94: 6a12                     push 0x12
10002f96: 57                       push edi
10002f97: 57                       push edi
10002f98: 8d8c24dc000000           lea ecx, [esp + 0xdc]
10002f9f: 51                       push ecx
10002fa0: ff1504b10010             call dword ptr [0x1000b104]
10002fa6: 8bf0                     mov esi, eax
10002fa8: 89742424                 mov dword ptr [esp + 0x24], esi
10002fac: 83feff                   cmp esi, -1
10002faf: 7424                     je 0x10002fd5
10002fb1: 8d9424fc000000           lea edx, [esp + 0xfc]
10002fb8: 52                       push edx
10002fb9: 57                       push edi
10002fba: 56                       push esi
10002fbb: 897c242c                 mov dword ptr [esp + 0x2c], edi
10002fbf: c78424080100001c000000   mov dword ptr [esp + 0x108], 0x1c
10002fca: ff15f8b00010             call dword ptr [0x1000b0f8]
10002fd0: 83f801                   cmp eax, 1
10002fd3: 742f                     je 0x10003004
10002fd5: 33c0                     xor eax, eax
10002fd7: 8b8c2420010000           mov ecx, dword ptr [esp + 0x120]
10002fde: 64890d00000000           mov dword ptr fs:[0], ecx
10002fe5: 59                       pop ecx
10002fe6: 5f                       pop edi
10002fe7: 5e                       pop esi
10002fe8: 5b                       pop ebx
10002fe9: 8b8c2408010000           mov ecx, dword ptr [esp + 0x108]
10002ff0: 33cc                     xor ecx, esp
10002ff2: e8c31b0000               call 0x10004bba
10002ff7: 8be5                     mov esp, ebp
10002ff9: 5d                       pop ebp
10002ffa: c3                       ret 
10002ffb: eb03                     jmp 0x10003000
10002ffd: 8d4900                   lea ecx, [ecx]
10003000: 8b742424                 mov esi, dword ptr [esp + 0x24]
10003004: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
10003008: 8d8424e0000000           lea eax, [esp + 0xe0]
1000300f: 50                       push eax
10003010: 51                       push ecx
10003011: 8d9424d8000000           lea edx, [esp + 0xd8]
10003018: 52                       push edx
10003019: 57                       push edi
1000301a: 56                       push esi
1000301b: c78424f40000001c000000   mov dword ptr [esp + 0xf4], 0x1c
10003026: ff15fcb00010             call dword ptr [0x1000b0fc]
1000302c: 83f801                   cmp eax, 1
1000302f: 75a4                     jne 0x10002fd5
10003031: 8b1d00b10010             mov ebx, dword ptr [0x1000b100]
10003037: 57                       push edi
10003038: 8d442420                 lea eax, [esp + 0x20]
1000303c: 50                       push eax
1000303d: 57                       push edi
1000303e: 57                       push edi
1000303f: 8d8c24f0000000           lea ecx, [esp + 0xf0]
10003046: 51                       push ecx
10003047: 56                       push esi
10003048: ffd3                     call ebx
1000304a: 8b54241c                 mov edx, dword ptr [esp + 0x1c]
1000304e: 52                       push edx
1000304f: e828210000               call 0x1000517c
10003054: 83c404                   add esp, 4
10003057: 8bf0                     mov esi, eax
10003059: 57                       push edi
1000305a: 8d442420                 lea eax, [esp + 0x20]
1000305e: 50                       push eax
1000305f: 8b44242c                 mov eax, dword ptr [esp + 0x2c]
10003063: c70606000000             mov dword ptr [esi], 6
10003069: 8b4c2424                 mov ecx, dword ptr [esp + 0x24]
1000306d: 51                       push ecx
1000306e: 56                       push esi
1000306f: 8d9424f0000000           lea edx, [esp + 0xf0]
10003076: 52                       push edx
10003077: 50                       push eax
10003078: ffd3                     call ebx
1000307a: 83f801                   cmp eax, 1
1000307d: 0f8554030000             jne 0x100033d7
10003083: 33c9                     xor ecx, ecx
10003085: 8d4604                   lea eax, [esi + 4]
10003088: 66894c2428               mov word ptr [esp + 0x28], cx
1000308d: 8bc8                     mov ecx, eax
1000308f: c744243c07000000         mov dword ptr [esp + 0x3c], 7
10003097: 897c2438                 mov dword ptr [esp + 0x38], edi
1000309b: 8d7102                   lea esi, [ecx + 2]
1000309e: 8bff                     mov edi, edi
100030a0: 668b11                   mov dx, word ptr [ecx]
100030a3: 83c102                   add ecx, 2
100030a6: 663bd7                   cmp dx, di
100030a9: 75f5                     jne 0x100030a0
100030ab: 2bce                     sub ecx, esi
100030ad: d1f9                     sar ecx, 1
100030af: 51                       push ecx
100030b0: 8d4c242c                 lea ecx, [esp + 0x2c]
100030b4: e8f70d0000               call 0x10003eb0
100030b9: 6a04                     push 4
100030bb: 6810d40010               push 0x1000d410
100030c0: 8d542430                 lea edx, [esp + 0x30]
100030c4: 52                       push edx
100030c5: 89bc2434010000           mov dword ptr [esp + 0x134], edi
100030cc: e8af0c0000               call 0x10003d80
100030d1: 6a04                     push 4
100030d3: 8bf0                     mov esi, eax
100030d5: 681cd40010               push 0x1000d41c
100030da: 8d442430                 lea eax, [esp + 0x30]
100030de: 50                       push eax
100030df: e89c0c0000               call 0x10003d80
100030e4: 6a05                     push 5
100030e6: 6828d40010               push 0x1000d428
100030eb: 8d4c2430                 lea ecx, [esp + 0x30]
100030ef: 51                       push ecx
100030f0: 8d5804                   lea ebx, [eax + 4]
100030f3: e8880c0000               call 0x10003d80
100030f8: 3bc7                     cmp eax, edi
100030fa: 0f8e60010000             jle 0x10003260
10003100: 8d4e04                   lea ecx, [esi + 4]
10003103: 8d442444                 lea eax, [esp + 0x44]
10003107: 8d542428                 lea edx, [esp + 0x28]
1000310b: e8600b0000               call 0x10003c70
10003110: c684242801000001         mov byte ptr [esp + 0x128], 1
10003118: 8b7010                   mov esi, dword ptr [eax + 0x10]
1000311b: 834c241801               or dword ptr [esp + 0x18], 1
10003120: 8bce                     mov ecx, esi
10003122: 3bce                     cmp ecx, esi
10003124: 7300                     jae 0x10003126
10003126: 8bd6                     mov edx, esi
10003128: 83fe04                   cmp esi, 4
1000312b: 7205                     jb 0x10003132
1000312d: ba04000000               mov edx, 4
10003132: 83781408                 cmp dword ptr [eax + 0x14], 8
10003136: 7204                     jb 0x1000313c
10003138: 8b08                     mov ecx, dword ptr [eax]
1000313a: eb02                     jmp 0x1000313e
1000313c: 8bc8                     mov ecx, eax
1000313e: b8f8d30010               mov eax, 0x1000d3f8
10003143: 3bd7                     cmp edx, edi
10003145: 7625                     jbe 0x1000316c
10003147: 668b39                   mov di, word ptr [ecx]
1000314a: 663b38                   cmp di, word ptr [eax]
1000314d: 750d                     jne 0x1000315c
1000314f: 83c102                   add ecx, 2
10003152: 83c002                   add eax, 2
10003155: 4a                       dec edx
10003156: 75ef                     jne 0x10003147
10003158: 33ff                     xor edi, edi
1000315a: eb10                     jmp 0x1000316c
1000315c: 1bc0                     sbb eax, eax
1000315e: 83e0fe                   and eax, 0xfffffffe
10003161: 40                       inc eax
10003162: 33ff                     xor edi, edi
10003164: 3bc7                     cmp eax, edi
10003166: 0f85f4000000             jne 0x10003260
1000316c: 83fe04                   cmp esi, 4
1000316f: 0f82eb000000             jb 0x10003260
10003175: 33c0                     xor eax, eax
10003177: 83fe04                   cmp esi, 4
1000317a: 0f95c0                   setne al
1000317d: 3bc7                     cmp eax, edi
1000317f: 0f85db000000             jne 0x10003260
10003185: 8bcb                     mov ecx, ebx
10003187: 8d44247c                 lea eax, [esp + 0x7c]
1000318b: 8d542428                 lea edx, [esp + 0x28]
1000318f: e8dc0a0000               call 0x10003c70
10003194: 8bc8                     mov ecx, eax
10003196: b802000000               mov eax, 2
1000319b: 89842428010000           mov dword ptr [esp + 0x128], eax
100031a2: 09442418                 or dword ptr [esp + 0x18], eax
100031a6: 8d7802                   lea edi, [eax + 2]
100031a9: 8b4110                   mov eax, dword ptr [ecx + 0x10]
100031ac: 68ecd30010               push 0x1000d3ec
100031b1: e88a0c0000               call 0x10003e40
100031b6: 85c0                     test eax, eax
100031b8: 0f8497000000             je 0x10003255
100031be: 8bcb                     mov ecx, ebx
100031c0: 8d442460                 lea eax, [esp + 0x60]
100031c4: 8d542428                 lea edx, [esp + 0x28]
100031c8: e8a30a0000               call 0x10003c70
100031cd: 8bc8                     mov ecx, eax
100031cf: c784242801000003000000   mov dword ptr [esp + 0x128], 3
100031da: 8b4110                   mov eax, dword ptr [ecx + 0x10]
100031dd: 097c2418                 or dword ptr [esp + 0x18], edi
100031e1: 6834d40010               push 0x1000d434
100031e6: e8550c0000               call 0x10003e40
100031eb: 85c0                     test eax, eax
100031ed: 7466                     je 0x10003255
100031ef: 8bcb                     mov ecx, ebx
100031f1: 8d842498000000           lea eax, [esp + 0x98]
100031f8: 8d542428                 lea edx, [esp + 0x28]
100031fc: e86f0a0000               call 0x10003c70
10003201: 8bc8                     mov ecx, eax
10003203: 89bc2428010000           mov dword ptr [esp + 0x128], edi
1000320a: 8b4110                   mov eax, dword ptr [ecx + 0x10]
1000320d: 834c241808               or dword ptr [esp + 0x18], 8
10003212: 6840d40010               push 0x1000d440
10003217: e8240c0000               call 0x10003e40
1000321c: 85c0                     test eax, eax
1000321e: 7435                     je 0x10003255
10003220: 8bcb                     mov ecx, ebx
10003222: 8d8424b4000000           lea eax, [esp + 0xb4]
10003229: 8d542428                 lea edx, [esp + 0x28]
1000322d: e83e0a0000               call 0x10003c70
10003232: 8bc8                     mov ecx, eax
10003234: c784242801000005000000   mov dword ptr [esp + 0x128], 5
1000323f: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10003242: 834c241810               or dword ptr [esp + 0x18], 0x10
10003247: 684cd40010               push 0x1000d44c
1000324c: e8ef0b0000               call 0x10003e40
10003251: 85c0                     test eax, eax
10003253: 7509                     jne 0x1000325e
10003255: c644241701               mov byte ptr [esp + 0x17], 1
1000325a: 33ff                     xor edi, edi
1000325c: eb07                     jmp 0x10003265
1000325e: 33ff                     xor edi, edi
10003260: c644241700               mov byte ptr [esp + 0x17], 0
10003265: f644241810               test byte ptr [esp + 0x18], 0x10
1000326a: 743e                     je 0x100032aa
1000326c: 83642418ef               and dword ptr [esp + 0x18], 0xffffffef
10003271: 83bc24c800000008         cmp dword ptr [esp + 0xc8], 8
10003279: 7210                     jb 0x1000328b
1000327b: 8b8424b4000000           mov eax, dword ptr [esp + 0xb4]
10003282: 50                       push eax
10003283: e87c1a0000               call 0x10004d04
10003288: 83c404                   add esp, 4
1000328b: be07000000               mov esi, 7
10003290: 33c9                     xor ecx, ecx
10003292: 89b424c8000000           mov dword ptr [esp + 0xc8], esi
10003299: 89bc24c4000000           mov dword ptr [esp + 0xc4], edi
100032a0: 66898c24b4000000         mov word ptr [esp + 0xb4], cx
100032a8: eb05                     jmp 0x100032af
100032aa: be07000000               mov esi, 7
100032af: f644241808               test byte ptr [esp + 0x18], 8
100032b4: 7437                     je 0x100032ed
100032b6: 83642418f7               and dword ptr [esp + 0x18], 0xfffffff7
100032bb: 83bc24ac00000008         cmp dword ptr [esp + 0xac], 8
100032c3: 7210                     jb 0x100032d5
100032c5: 8b942498000000           mov edx, dword ptr [esp + 0x98]
100032cc: 52                       push edx
100032cd: e8321a0000               call 0x10004d04
100032d2: 83c404                   add esp, 4
100032d5: 33c0                     xor eax, eax
100032d7: 89b424ac000000           mov dword ptr [esp + 0xac], esi
100032de: 89bc24a8000000           mov dword ptr [esp + 0xa8], edi
100032e5: 6689842498000000         mov word ptr [esp + 0x98], ax
100032ed: f644241804               test byte ptr [esp + 0x18], 4
100032f2: 7428                     je 0x1000331c
100032f4: 83642418fb               and dword ptr [esp + 0x18], 0xfffffffb
100032f9: 837c247408               cmp dword ptr [esp + 0x74], 8
100032fe: 720d                     jb 0x1000330d
10003300: 8b4c2460                 mov ecx, dword ptr [esp + 0x60]
10003304: 51                       push ecx
10003305: e8fa190000               call 0x10004d04
1000330a: 83c404                   add esp, 4
1000330d: 33d2                     xor edx, edx
1000330f: 89742474                 mov dword ptr [esp + 0x74], esi
10003313: 897c2470                 mov dword ptr [esp + 0x70], edi
10003317: 6689542460               mov word ptr [esp + 0x60], dx
1000331c: f644241802               test byte ptr [esp + 0x18], 2
10003321: 7431                     je 0x10003354
10003323: 83642418fd               and dword ptr [esp + 0x18], 0xfffffffd
10003328: 83bc249000000008         cmp dword ptr [esp + 0x90], 8
10003330: 720d                     jb 0x1000333f
10003332: 8b44247c                 mov eax, dword ptr [esp + 0x7c]
10003336: 50                       push eax
10003337: e8c8190000               call 0x10004d04
1000333c: 83c404                   add esp, 4
1000333f: 33c9                     xor ecx, ecx
10003341: 89b42490000000           mov dword ptr [esp + 0x90], esi
10003348: 89bc248c000000           mov dword ptr [esp + 0x8c], edi
1000334f: 66894c247c               mov word ptr [esp + 0x7c], cx
10003354: 89bc2428010000           mov dword ptr [esp + 0x128], edi
1000335b: f644241801               test byte ptr [esp + 0x18], 1
10003360: 7419                     je 0x1000337b
10003362: 83642418fe               and dword ptr [esp + 0x18], 0xfffffffe
10003367: 837c245808               cmp dword ptr [esp + 0x58], 8
1000336c: 720d                     jb 0x1000337b
1000336e: 8b542444                 mov edx, dword ptr [esp + 0x44]
10003372: 52                       push edx
10003373: e88c190000               call 0x10004d04
10003378: 83c404                   add esp, 4
1000337b: 807c241700               cmp byte ptr [esp + 0x17], 0
10003380: 7563                     jne 0x100033e5
10003382: c7842428010000ffffffff   mov dword ptr [esp + 0x128], 0xffffffff
1000338d: 837c243c08               cmp dword ptr [esp + 0x3c], 8
10003392: 720d                     jb 0x100033a1
10003394: 8b442428                 mov eax, dword ptr [esp + 0x28]
10003398: 50                       push eax
10003399: e866190000               call 0x10004d04
1000339e: 83c404                   add esp, 4
100033a1: 8b442420                 mov eax, dword ptr [esp + 0x20]
100033a5: 8b542424                 mov edx, dword ptr [esp + 0x24]
100033a9: 8d8c24fc000000           lea ecx, [esp + 0xfc]
100033b0: 40                       inc eax
100033b1: 51                       push ecx
100033b2: 50                       push eax
100033b3: 52                       push edx
100033b4: 8944242c                 mov dword ptr [esp + 0x2c], eax
100033b8: c78424080100001c000000   mov dword ptr [esp + 0x108], 0x1c
100033c3: ff15f8b00010             call dword ptr [0x1000b0f8]
100033c9: 83f801                   cmp eax, 1
100033cc: 0f842efcffff             je 0x10003000
100033d2: e9fefbffff               jmp 0x10002fd5
100033d7: 56                       push esi
100033d8: e8651d0000               call 0x10005142
100033dd: 83c404                   add esp, 4
100033e0: e9f0fbffff               jmp 0x10002fd5
100033e5: 8bcb                     mov ecx, ebx
100033e7: 8d442444                 lea eax, [esp + 0x44]
100033eb: 8d542428                 lea edx, [esp + 0x28]
100033ef: e87c080000               call 0x10003c70
100033f4: 8bc8                     mov ecx, eax
100033f6: c684242801000006         mov byte ptr [esp + 0x128], 6
100033fe: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10003401: 68ecd30010               push 0x1000d3ec
10003406: bf04000000               mov edi, 4
1000340b: e8300a0000               call 0x10003e40
10003410: 85c0                     test eax, eax
10003412: 0f94442417               sete byte ptr [esp + 0x17]
10003417: c684242801000000         mov byte ptr [esp + 0x128], 0
1000341f: 837c245808               cmp dword ptr [esp + 0x58], 8
10003424: 720d                     jb 0x10003433
10003426: 8b442444                 mov eax, dword ptr [esp + 0x44]
1000342a: 50                       push eax
1000342b: e8d4180000               call 0x10004d04
10003430: 83c404                   add esp, 4
10003433: 807c241700               cmp byte ptr [esp + 0x17], 0
10003438: 7413                     je 0x1000344d
1000343a: 8d742428                 lea esi, [esp + 0x28]
1000343e: e8fd070000               call 0x10003c40
10003443: b801000000               mov eax, 1
10003448: e98afbffff               jmp 0x10002fd7
1000344d: 8bcb                     mov ecx, ebx
1000344f: 8d442444                 lea eax, [esp + 0x44]
10003453: 8d542428                 lea edx, [esp + 0x28]
10003457: e814080000               call 0x10003c70
1000345c: 8bc8                     mov ecx, eax
1000345e: c684242801000007         mov byte ptr [esp + 0x128], 7
10003466: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10003469: 6834d40010               push 0x1000d434
1000346e: bf04000000               mov edi, 4
10003473: e8c8090000               call 0x10003e40
10003478: 85c0                     test eax, eax
1000347a: 8d742444                 lea esi, [esp + 0x44]
1000347e: 0f94442417               sete byte ptr [esp + 0x17]
10003483: c684242801000000         mov byte ptr [esp + 0x128], 0
1000348b: e8b0070000               call 0x10003c40
10003490: 807c241700               cmp byte ptr [esp + 0x17], 0
10003495: 7411                     je 0x100034a8
10003497: 8d742428                 lea esi, [esp + 0x28]
1000349b: e8a0070000               call 0x10003c40
100034a0: 8d47fe                   lea eax, [edi - 2]
100034a3: e92ffbffff               jmp 0x10002fd7
100034a8: 8bcb                     mov ecx, ebx
100034aa: 8d442444                 lea eax, [esp + 0x44]
100034ae: 8d542428                 lea edx, [esp + 0x28]
100034b2: e8b9070000               call 0x10003c70
100034b7: be40d40010               mov esi, 0x1000d440
100034bc: 8bc8                     mov ecx, eax
100034be: c684242801000008         mov byte ptr [esp + 0x128], 8
100034c6: e8d5070000               call 0x10003ca0
100034cb: 85c0                     test eax, eax
100034cd: 8d742444                 lea esi, [esp + 0x44]
100034d1: 0f94442417               sete byte ptr [esp + 0x17]
100034d6: c684242801000000         mov byte ptr [esp + 0x128], 0
100034de: e85d070000               call 0x10003c40
100034e3: 807c241700               cmp byte ptr [esp + 0x17], 0
100034e8: 7413                     je 0x100034fd
100034ea: 8d742428                 lea esi, [esp + 0x28]
100034ee: e84d070000               call 0x10003c40
100034f3: b803000000               mov eax, 3
100034f8: e9dafaffff               jmp 0x10002fd7
100034fd: 8bcb                     mov ecx, ebx
100034ff: 8d442444                 lea eax, [esp + 0x44]
10003503: 8d542428                 lea edx, [esp + 0x28]
10003507: e864070000               call 0x10003c70
1000350c: be4cd40010               mov esi, 0x1000d44c
10003511: 8bc8                     mov ecx, eax
10003513: c684242801000009         mov byte ptr [esp + 0x128], 9
1000351b: e880070000               call 0x10003ca0
10003520: 85c0                     test eax, eax
10003522: 8d742444                 lea esi, [esp + 0x44]
10003526: 0f94c3                   sete bl
10003529: e812070000               call 0x10003c40
1000352e: 8d742428                 lea esi, [esp + 0x28]
10003532: e809070000               call 0x10003c40
10003537: 84db                     test bl, bl
10003539: 0f8496faffff             je 0x10002fd5
1000353f: b804000000               mov eax, 4
10003544: e98efaffff               jmp 0x10002fd7
10003549: cc                       int3 
1000354a: cc                       int3 
1000354b: cc                       int3 
1000354c: cc                       int3 
1000354d: cc                       int3 
1000354e: cc                       int3 
1000354f: cc                       int3 
10003550: 55                       push ebp
10003551: 8bec                     mov ebp, esp
10003553: 83e4f8                   and esp, 0xfffffff8
10003556: 6aff                     push -1
10003558: 6830ad0010               push 0x1000ad30
1000355d: 64a100000000             mov eax, dword ptr fs:[0]
10003563: 50                       push eax
10003564: 81ecf0000000             sub esp, 0xf0
1000356a: a180f00010               mov eax, dword ptr [0x1000f080]
1000356f: 33c4                     xor eax, esp
10003571: 898424e8000000           mov dword ptr [esp + 0xe8], eax
10003578: 53                       push ebx
10003579: 56                       push esi
1000357a: 57                       push edi
1000357b: a180f00010               mov eax, dword ptr [0x1000f080]
10003580: 33c4                     xor eax, esp
10003582: 50                       push eax
10003583: 8d842400010000           lea eax, [esp + 0x100]
1000358a: 64a300000000             mov dword ptr fs:[0], eax
10003590: 8d8424b0000000           lea eax, [esp + 0xb0]
10003597: 33ff                     xor edi, edi
10003599: 50                       push eax
1000359a: 897c2418                 mov dword ptr [esp + 0x18], edi
1000359e: ff1500b00010             call dword ptr [0x1000b000]
100035a4: 6a12                     push 0x12
100035a6: 57                       push edi
100035a7: 57                       push edi
100035a8: 8d8c24bc000000           lea ecx, [esp + 0xbc]
100035af: 51                       push ecx
100035b0: ff1504b10010             call dword ptr [0x1000b104]
100035b6: 8bf0                     mov esi, eax
100035b8: 89742420                 mov dword ptr [esp + 0x20], esi
100035bc: 83feff                   cmp esi, -1
100035bf: 0f8495030000             je 0x1000395a
100035c5: 8d9424dc000000           lea edx, [esp + 0xdc]
100035cc: 52                       push edx
100035cd: 57                       push edi
100035ce: 56                       push esi
100035cf: 897c2428                 mov dword ptr [esp + 0x28], edi
100035d3: c78424e80000001c000000   mov dword ptr [esp + 0xe8], 0x1c
100035de: ff15f8b00010             call dword ptr [0x1000b0f8]
100035e4: 83f801                   cmp eax, 1
100035e7: 0f856d030000             jne 0x1000395a
100035ed: eb05                     jmp 0x100035f4
100035ef: 90                       nop 
100035f0: 8b742420                 mov esi, dword ptr [esp + 0x20]
100035f4: 8b4c241c                 mov ecx, dword ptr [esp + 0x1c]
100035f8: 8d8424c0000000           lea eax, [esp + 0xc0]
100035ff: 50                       push eax
10003600: 51                       push ecx
10003601: 8d9424b8000000           lea edx, [esp + 0xb8]
10003608: 52                       push edx
10003609: 57                       push edi
1000360a: 56                       push esi
1000360b: c78424d40000001c000000   mov dword ptr [esp + 0xd4], 0x1c
10003616: ff15fcb00010             call dword ptr [0x1000b0fc]
1000361c: 83f801                   cmp eax, 1
1000361f: 0f8535030000             jne 0x1000395a
10003625: 8b1d00b10010             mov ebx, dword ptr [0x1000b100]
1000362b: 57                       push edi
1000362c: 8d44241c                 lea eax, [esp + 0x1c]
10003630: 50                       push eax
10003631: 57                       push edi
10003632: 57                       push edi
10003633: 8d8c24d0000000           lea ecx, [esp + 0xd0]
1000363a: 51                       push ecx
1000363b: 56                       push esi
1000363c: ffd3                     call ebx
1000363e: 8b542418                 mov edx, dword ptr [esp + 0x18]
10003642: 52                       push edx
10003643: e8341b0000               call 0x1000517c
10003648: 83c404                   add esp, 4
1000364b: 8bf0                     mov esi, eax
1000364d: 57                       push edi
1000364e: 8d44241c                 lea eax, [esp + 0x1c]
10003652: 50                       push eax
10003653: 8b442428                 mov eax, dword ptr [esp + 0x28]
10003657: c70606000000             mov dword ptr [esi], 6
1000365d: 8b4c2420                 mov ecx, dword ptr [esp + 0x20]
10003661: 51                       push ecx
10003662: 56                       push esi
10003663: 8d9424d0000000           lea edx, [esp + 0xd0]
1000366a: 52                       push edx
1000366b: 50                       push eax
1000366c: ffd3                     call ebx
1000366e: 83f801                   cmp eax, 1
10003671: 0f85e7020000             jne 0x1000395e
10003677: 33c9                     xor ecx, ecx
10003679: 8d4604                   lea eax, [esi + 4]
1000367c: 66894c2424               mov word ptr [esp + 0x24], cx
10003681: 8bc8                     mov ecx, eax
10003683: c744243807000000         mov dword ptr [esp + 0x38], 7
1000368b: 897c2434                 mov dword ptr [esp + 0x34], edi
1000368f: 8d7102                   lea esi, [ecx + 2]
10003692: 668b11                   mov dx, word ptr [ecx]
10003695: 83c102                   add ecx, 2
10003698: 663bd7                   cmp dx, di
1000369b: 75f5                     jne 0x10003692
1000369d: 2bce                     sub ecx, esi
1000369f: d1f9                     sar ecx, 1
100036a1: 51                       push ecx
100036a2: 8d4c2428                 lea ecx, [esp + 0x28]
100036a6: e805080000               call 0x10003eb0
100036ab: 6a04                     push 4
100036ad: 6810d40010               push 0x1000d410
100036b2: 8d54242c                 lea edx, [esp + 0x2c]
100036b6: 52                       push edx
100036b7: 89bc2414010000           mov dword ptr [esp + 0x114], edi
100036be: e8bd060000               call 0x10003d80
100036c3: 6a04                     push 4
100036c5: 8bf0                     mov esi, eax
100036c7: 681cd40010               push 0x1000d41c
100036cc: 8d44242c                 lea eax, [esp + 0x2c]
100036d0: 50                       push eax
100036d1: e8aa060000               call 0x10003d80
100036d6: 6a05                     push 5
100036d8: 6858d40010               push 0x1000d458
100036dd: 8d4c242c                 lea ecx, [esp + 0x2c]
100036e1: 51                       push ecx
100036e2: 8d5804                   lea ebx, [eax + 4]
100036e5: e896060000               call 0x10003d80
100036ea: 3bc7                     cmp eax, edi
100036ec: 0f8e2b010000             jle 0x1000381d
100036f2: 8d4e04                   lea ecx, [esi + 4]
100036f5: 8d442478                 lea eax, [esp + 0x78]
100036f9: 8d542424                 lea edx, [esp + 0x24]
100036fd: e86e050000               call 0x10003c70
10003702: c684240801000001         mov byte ptr [esp + 0x108], 1
1000370a: 8b7010                   mov esi, dword ptr [eax + 0x10]
1000370d: 834c241401               or dword ptr [esp + 0x14], 1
10003712: 8bce                     mov ecx, esi
10003714: 3bce                     cmp ecx, esi
10003716: 7300                     jae 0x10003718
10003718: 8bd6                     mov edx, esi
1000371a: 83fe04                   cmp esi, 4
1000371d: 7205                     jb 0x10003724
1000371f: ba04000000               mov edx, 4
10003724: 83781408                 cmp dword ptr [eax + 0x14], 8
10003728: 7204                     jb 0x1000372e
1000372a: 8b08                     mov ecx, dword ptr [eax]
1000372c: eb02                     jmp 0x10003730
1000372e: 8bc8                     mov ecx, eax
10003730: b864d40010               mov eax, 0x1000d464
10003735: 3bd7                     cmp edx, edi
10003737: 762c                     jbe 0x10003765
10003739: 8da42400000000           lea esp, [esp]
10003740: 668b39                   mov di, word ptr [ecx]
10003743: 663b38                   cmp di, word ptr [eax]
10003746: 750d                     jne 0x10003755
10003748: 83c102                   add ecx, 2
1000374b: 83c002                   add eax, 2
1000374e: 4a                       dec edx
1000374f: 75ef                     jne 0x10003740
10003751: 33ff                     xor edi, edi
10003753: eb10                     jmp 0x10003765
10003755: 1bc0                     sbb eax, eax
10003757: 83e0fe                   and eax, 0xfffffffe
1000375a: 40                       inc eax
1000375b: 33ff                     xor edi, edi
1000375d: 3bc7                     cmp eax, edi
1000375f: 0f85b8000000             jne 0x1000381d
10003765: 83fe04                   cmp esi, 4
10003768: 0f82af000000             jb 0x1000381d
1000376e: 33c0                     xor eax, eax
10003770: 83fe04                   cmp esi, 4
10003773: 0f95c0                   setne al
10003776: 3bc7                     cmp eax, edi
10003778: 0f859f000000             jne 0x1000381d
1000377e: 8bcb                     mov ecx, ebx
10003780: 8d442440                 lea eax, [esp + 0x40]
10003784: 8d542424                 lea edx, [esp + 0x24]
10003788: e8e3040000               call 0x10003c70
1000378d: 8bc8                     mov ecx, eax
1000378f: b802000000               mov eax, 2
10003794: 89842408010000           mov dword ptr [esp + 0x108], eax
1000379b: 09442414                 or dword ptr [esp + 0x14], eax
1000379f: 8d7802                   lea edi, [eax + 2]
100037a2: 8b4110                   mov eax, dword ptr [ecx + 0x10]
100037a5: 6870d40010               push 0x1000d470
100037aa: e891060000               call 0x10003e40
100037af: 85c0                     test eax, eax
100037b1: 7462                     je 0x10003815
100037b3: 8bcb                     mov ecx, ebx
100037b5: 8d44245c                 lea eax, [esp + 0x5c]
100037b9: 8d542424                 lea edx, [esp + 0x24]
100037bd: e8ae040000               call 0x10003c70
100037c2: 8bc8                     mov ecx, eax
100037c4: c784240801000003000000   mov dword ptr [esp + 0x108], 3
100037cf: 8b4110                   mov eax, dword ptr [ecx + 0x10]
100037d2: 097c2414                 or dword ptr [esp + 0x14], edi
100037d6: 687cd40010               push 0x1000d47c
100037db: e860060000               call 0x10003e40
100037e0: 85c0                     test eax, eax
100037e2: 7431                     je 0x10003815
100037e4: 8bcb                     mov ecx, ebx
100037e6: 8d842494000000           lea eax, [esp + 0x94]
100037ed: 8d542424                 lea edx, [esp + 0x24]
100037f1: e87a040000               call 0x10003c70
100037f6: 8bc8                     mov ecx, eax
100037f8: 89bc2408010000           mov dword ptr [esp + 0x108], edi
100037ff: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10003802: 834c241408               or dword ptr [esp + 0x14], 8
10003807: 6888d40010               push 0x1000d488
1000380c: e82f060000               call 0x10003e40
10003811: 85c0                     test eax, eax
10003813: 7506                     jne 0x1000381b
10003815: b301                     mov bl, 1
10003817: 33ff                     xor edi, edi
10003819: eb04                     jmp 0x1000381f
1000381b: 33ff                     xor edi, edi
1000381d: 32db                     xor bl, bl
1000381f: f644241408               test byte ptr [esp + 0x14], 8
10003824: 743e                     je 0x10003864
10003826: 83642414f7               and dword ptr [esp + 0x14], 0xfffffff7
1000382b: 83bc24a800000008         cmp dword ptr [esp + 0xa8], 8
10003833: 7210                     jb 0x10003845
10003835: 8b842494000000           mov eax, dword ptr [esp + 0x94]
1000383c: 50                       push eax
1000383d: e8c2140000               call 0x10004d04
10003842: 83c404                   add esp, 4
10003845: be07000000               mov esi, 7
1000384a: 33c9                     xor ecx, ecx
1000384c: 89b424a8000000           mov dword ptr [esp + 0xa8], esi
10003853: 89bc24a4000000           mov dword ptr [esp + 0xa4], edi
1000385a: 66898c2494000000         mov word ptr [esp + 0x94], cx
10003862: eb05                     jmp 0x10003869
10003864: be07000000               mov esi, 7
10003869: f644241404               test byte ptr [esp + 0x14], 4
1000386e: 7428                     je 0x10003898
10003870: 83642414fb               and dword ptr [esp + 0x14], 0xfffffffb
10003875: 837c247008               cmp dword ptr [esp + 0x70], 8
1000387a: 720d                     jb 0x10003889
1000387c: 8b54245c                 mov edx, dword ptr [esp + 0x5c]
10003880: 52                       push edx
10003881: e87e140000               call 0x10004d04
10003886: 83c404                   add esp, 4
10003889: 33c0                     xor eax, eax
1000388b: 89742470                 mov dword ptr [esp + 0x70], esi
1000388f: 897c246c                 mov dword ptr [esp + 0x6c], edi
10003893: 668944245c               mov word ptr [esp + 0x5c], ax
10003898: f644241402               test byte ptr [esp + 0x14], 2
1000389d: 7428                     je 0x100038c7
1000389f: 83642414fd               and dword ptr [esp + 0x14], 0xfffffffd
100038a4: 837c245408               cmp dword ptr [esp + 0x54], 8
100038a9: 720d                     jb 0x100038b8
100038ab: 8b4c2440                 mov ecx, dword ptr [esp + 0x40]
100038af: 51                       push ecx
100038b0: e84f140000               call 0x10004d04
100038b5: 83c404                   add esp, 4
100038b8: 33d2                     xor edx, edx
100038ba: 89742454                 mov dword ptr [esp + 0x54], esi
100038be: 897c2450                 mov dword ptr [esp + 0x50], edi
100038c2: 6689542440               mov word ptr [esp + 0x40], dx
100038c7: 89bc2408010000           mov dword ptr [esp + 0x108], edi
100038ce: f644241401               test byte ptr [esp + 0x14], 1
100038d3: 7431                     je 0x10003906
100038d5: 83642414fe               and dword ptr [esp + 0x14], 0xfffffffe
100038da: 83bc248c00000008         cmp dword ptr [esp + 0x8c], 8
100038e2: 720d                     jb 0x100038f1
100038e4: 8b442478                 mov eax, dword ptr [esp + 0x78]
100038e8: 50                       push eax
100038e9: e816140000               call 0x10004d04
100038ee: 83c404                   add esp, 4
100038f1: 33c9                     xor ecx, ecx
100038f3: 89b4248c000000           mov dword ptr [esp + 0x8c], esi
100038fa: 89bc2488000000           mov dword ptr [esp + 0x88], edi
10003901: 66894c2478               mov word ptr [esp + 0x78], cx
10003906: 84db                     test bl, bl
10003908: 7561                     jne 0x1000396b
1000390a: c7842408010000ffffffff   mov dword ptr [esp + 0x108], 0xffffffff
10003915: 837c243808               cmp dword ptr [esp + 0x38], 8
1000391a: 720d                     jb 0x10003929
1000391c: 8b542424                 mov edx, dword ptr [esp + 0x24]
10003920: 52                       push edx
10003921: e8de130000               call 0x10004d04
10003926: 83c404                   add esp, 4
10003929: 8b44241c                 mov eax, dword ptr [esp + 0x1c]
1000392d: 8b542420                 mov edx, dword ptr [esp + 0x20]
10003931: 8d8c24dc000000           lea ecx, [esp + 0xdc]
10003938: 40                       inc eax
10003939: 51                       push ecx
1000393a: 50                       push eax
1000393b: 52                       push edx
1000393c: 89442428                 mov dword ptr [esp + 0x28], eax
10003940: c78424e80000001c000000   mov dword ptr [esp + 0xe8], 0x1c
1000394b: ff15f8b00010             call dword ptr [0x1000b0f8]
10003951: 83f801                   cmp eax, 1
10003954: 0f8496fcffff             je 0x100035f0
1000395a: 33c0                     xor eax, eax
1000395c: eb26                     jmp 0x10003984
1000395e: 56                       push esi
1000395f: e8de170000               call 0x10005142
10003964: 83c404                   add esp, 4
10003967: 33c0                     xor eax, eax
10003969: eb19                     jmp 0x10003984
1000396b: 837c243808               cmp dword ptr [esp + 0x38], 8
10003970: 720d                     jb 0x1000397f
10003972: 8b442424                 mov eax, dword ptr [esp + 0x24]
10003976: 50                       push eax
10003977: e888130000               call 0x10004d04
1000397c: 83c404                   add esp, 4
1000397f: b801000000               mov eax, 1
10003984: 8b8c2400010000           mov ecx, dword ptr [esp + 0x100]
1000398b: 64890d00000000           mov dword ptr fs:[0], ecx
10003992: 59                       pop ecx
10003993: 5f                       pop edi
10003994: 5e                       pop esi
10003995: 5b                       pop ebx
10003996: 8b8c24e8000000           mov ecx, dword ptr [esp + 0xe8]
1000399d: 33cc                     xor ecx, esp
1000399f: e816120000               call 0x10004bba
100039a4: 8be5                     mov esp, ebp
100039a6: 5d                       pop ebp
100039a7: c3                       ret 
100039a8: cc                       int3 
100039a9: cc                       int3 
100039aa: cc                       int3 
100039ab: cc                       int3 
100039ac: cc                       int3 
100039ad: cc                       int3 
100039ae: cc                       int3 
100039af: cc                       int3 
100039b0: 55                       push ebp
100039b1: 8bec                     mov ebp, esp
100039b3: 81ec48040000             sub esp, 0x448
100039b9: a180f00010               mov eax, dword ptr [0x1000f080]
100039be: 33c5                     xor eax, ebp
100039c0: 8945fc                   mov dword ptr [ebp - 4], eax
100039c3: 8b4508                   mov eax, dword ptr [ebp + 8]
100039c6: 53                       push ebx
100039c7: 56                       push esi
100039c8: 8bda                     mov ebx, edx
100039ca: 33f6                     xor esi, esi
100039cc: 8985c0fbffff             mov dword ptr [ebp - 0x440], eax
100039d2: 898dbcfbffff             mov dword ptr [ebp - 0x444], ecx
100039d8: 3bde                     cmp ebx, esi
100039da: 0f8470010000             je 0x10003b50
100039e0: 39750c                   cmp dword ptr [ebp + 0xc], esi
100039e3: 0f8467010000             je 0x10003b50
100039e9: 803b3a                   cmp byte ptr [ebx], 0x3a
100039ec: 0f855e010000             jne 0x10003b50
100039f2: 8bcb                     mov ecx, ebx
100039f4: 33d2                     xor edx, edx
100039f6: b03a                     mov al, 0x3a
100039f8: 3c0d                     cmp al, 0xd
100039fa: 7501                     jne 0x100039fd
100039fc: 42                       inc edx
100039fd: 8a4101                   mov al, byte ptr [ecx + 1]
10003a00: 41                       inc ecx
10003a01: 84c0                     test al, al
10003a03: 75f3                     jne 0x100039f8
10003a05: 8995c4fbffff             mov dword ptr [ebp - 0x43c], edx
10003a0b: 89b5c8fbffff             mov dword ptr [ebp - 0x438], esi
10003a11: 57                       push edi
10003a12: 89b5ccfbffff             mov dword ptr [ebp - 0x434], esi
10003a18: eb06                     jmp 0x10003a20
10003a1a: 8d9b00000000             lea ebx, [ebx]
10003a20: 6894d40010               push 0x1000d494
10003a25: 53                       push ebx
10003a26: e8e5170000               call 0x10005210
10003a2b: 8bf8                     mov edi, eax
10003a2d: 83c408                   add esp, 8
10003a30: 8d95d0fbffff             lea edx, [ebp - 0x430]
10003a36: 85ff                     test edi, edi
10003a38: 7512                     jne 0x10003a4c
10003a3a: 8bc3                     mov eax, ebx
10003a3c: 2bd3                     sub edx, ebx
10003a3e: 8bff                     mov edi, edi
10003a40: 8a08                     mov cl, byte ptr [eax]
10003a42: 880c02                   mov byte ptr [edx + eax], cl
10003a45: 40                       inc eax
10003a46: 84c9                     test cl, cl
10003a48: 75f6                     jne 0x10003a40
10003a4a: eb17                     jmp 0x10003a63
10003a4c: 8bf7                     mov esi, edi
10003a4e: 2bf3                     sub esi, ebx
10003a50: 56                       push esi
10003a51: 53                       push ebx
10003a52: 52                       push edx
10003a53: e8c8520000               call 0x10008d20
10003a58: 83c40c                   add esp, 0xc
10003a5b: c68435d0fbffff00         mov byte ptr [ebp + esi - 0x430], 0
10003a63: 8d85d0fbffff             lea eax, [ebp - 0x430]
10003a69: 8d5001                   lea edx, [eax + 1]
10003a6c: 8d642400                 lea esp, [esp]
10003a70: 8a08                     mov cl, byte ptr [eax]
10003a72: 40                       inc eax
10003a73: 84c9                     test cl, cl
10003a75: 75f9                     jne 0x10003a70
10003a77: 2bc2                     sub eax, edx
10003a79: 0f84a7000000             je 0x10003b26
10003a7f: 807f010a                 cmp byte ptr [edi + 1], 0xa
10003a83: 8d5f01                   lea ebx, [edi + 1]
10003a86: 7501                     jne 0x10003a89
10003a88: 43                       inc ebx
10003a89: 80bdd0fbffff3a           cmp byte ptr [ebp - 0x430], 0x3a
10003a90: 0f85a5000000             jne 0x10003b3b
10003a96: 8d85b8fbffff             lea eax, [ebp - 0x448]
10003a9c: 50                       push eax
10003a9d: 8d85d1fbffff             lea eax, [ebp - 0x42f]
10003aa3: e8c8000000               call 0x10003b70
10003aa8: 6a40                     push 0x40
10003aaa: 8d4db9                   lea ecx, [ebp - 0x47]
10003aad: 6a00                     push 0
10003aaf: 51                       push ecx
10003ab0: 8bf0                     mov esi, eax
10003ab2: c645b800                 mov byte ptr [ebp - 0x48], 0
10003ab6: e805500000               call 0x10008ac0
10003abb: b910000000               mov ecx, 0x10
10003ac0: 8d7db9                   lea edi, [ebp - 0x47]
10003ac3: 83c410                   add esp, 0x10
10003ac6: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10003ac8: 8b8dc0fbffff             mov ecx, dword ptr [ebp - 0x440]
10003ace: 8b11                     mov edx, dword ptr [ecx]
10003ad0: 8b12                     mov edx, dword ptr [edx]
10003ad2: 6a41                     push 0x41
10003ad4: 8d45b8                   lea eax, [ebp - 0x48]
10003ad7: 50                       push eax
10003ad8: ffd2                     call edx
10003ada: 84c0                     test al, al
10003adc: 745d                     je 0x10003b3b
10003ade: 8b85c8fbffff             mov eax, dword ptr [ebp - 0x438]
10003ae4: 0596000000               add eax, 0x96
10003ae9: 8985c8fbffff             mov dword ptr [ebp - 0x438], eax
10003aef: 99                       cdq 
10003af0: f7bdc4fbffff             idiv dword ptr [ebp - 0x43c]
10003af6: 8bf0                     mov esi, eax
10003af8: 3bb5ccfbffff             cmp esi, dword ptr [ebp - 0x434]
10003afe: 0f8e1cffffff             jle 0x10003a20
10003b04: 8b85bcfbffff             mov eax, dword ptr [ebp - 0x444]
10003b0a: 85c0                     test eax, eax
10003b0c: 0f8400ffffff             je 0x10003a12
10003b12: 6a00                     push 0
10003b14: 56                       push esi
10003b15: 6867040000               push 0x467
10003b1a: 50                       push eax
10003b1b: ff1514b10010             call dword ptr [0x1000b114]
10003b21: e9ecfeffff               jmp 0x10003a12
10003b26: 5f                       pop edi
10003b27: 5e                       pop esi
10003b28: b001                     mov al, 1
10003b2a: 5b                       pop ebx
10003b2b: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10003b2e: 33cd                     xor ecx, ebp
10003b30: e885100000               call 0x10004bba
10003b35: 8be5                     mov esp, ebp
10003b37: 5d                       pop ebp
10003b38: c20800                   ret 8
10003b3b: 5f                       pop edi
10003b3c: 5e                       pop esi
10003b3d: 32c0                     xor al, al
10003b3f: 5b                       pop ebx
10003b40: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10003b43: 33cd                     xor ecx, ebp
10003b45: e870100000               call 0x10004bba
10003b4a: 8be5                     mov esp, ebp
10003b4c: 5d                       pop ebp
10003b4d: c20800                   ret 8
10003b50: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10003b53: 5e                       pop esi
10003b54: 33cd                     xor ecx, ebp
10003b56: 32c0                     xor al, al
10003b58: 5b                       pop ebx
10003b59: e85c100000               call 0x10004bba
10003b5e: 8be5                     mov esp, ebp
10003b60: 5d                       pop ebp
10003b61: c20800                   ret 8
10003b64: cc                       int3 
10003b65: cc                       int3 
10003b66: cc                       int3 
10003b67: cc                       int3 
10003b68: cc                       int3 
10003b69: cc                       int3 
10003b6a: cc                       int3 
10003b6b: cc                       int3 
10003b6c: cc                       int3 
10003b6d: cc                       int3 
10003b6e: cc                       int3 
10003b6f: cc                       int3 
10003b70: 55                       push ebp
10003b71: 8bec                     mov ebp, esp
10003b73: 53                       push ebx
10003b74: 56                       push esi
10003b75: 57                       push edi
10003b76: 68e8030000               push 0x3e8
10003b7b: 33db                     xor ebx, ebx
10003b7d: 53                       push ebx
10003b7e: 68d8090110               push 0x100109d8
10003b83: 8bf0                     mov esi, eax
10003b85: bfda090110               mov edi, 0x100109da
10003b8a: e8314f0000               call 0x10008ac0
10003b8f: 66c705d8090110003a       mov word ptr [0x100109d8], 0x3a00
10003b98: 8a0e                     mov cl, byte ptr [esi]
10003b9a: 83c40c                   add esp, 0xc
10003b9d: 84c9                     test cl, cl
10003b9f: 0f8480000000             je 0x10003c25
10003ba5: 8d5601                   lea edx, [esi + 1]
10003ba8: 80f90a                   cmp cl, 0xa
10003bab: 7478                     je 0x10003c25
10003bad: 43                       inc ebx
10003bae: 33c0                     xor eax, eax
10003bb0: 80f961                   cmp cl, 0x61
10003bb3: 7c0b                     jl 0x10003bc0
10003bb5: 80f966                   cmp cl, 0x66
10003bb8: 7f06                     jg 0x10003bc0
10003bba: 0fbec1                   movsx eax, cl
10003bbd: 83e857                   sub eax, 0x57
10003bc0: 80f941                   cmp cl, 0x41
10003bc3: 7c0b                     jl 0x10003bd0
10003bc5: 80f946                   cmp cl, 0x46
10003bc8: 7f06                     jg 0x10003bd0
10003bca: 0fbec1                   movsx eax, cl
10003bcd: 83e837                   sub eax, 0x37
10003bd0: 80f930                   cmp cl, 0x30
10003bd3: 7c0b                     jl 0x10003be0
10003bd5: 80f939                   cmp cl, 0x39
10003bd8: 7f06                     jg 0x10003be0
10003bda: 0fbec1                   movsx eax, cl
10003bdd: 83e830                   sub eax, 0x30
10003be0: 8a0a                     mov cl, byte ptr [edx]
10003be2: c1e004                   shl eax, 4
10003be5: 80f961                   cmp cl, 0x61
10003be8: 7c0c                     jl 0x10003bf6
10003bea: 80f966                   cmp cl, 0x66
10003bed: 7f07                     jg 0x10003bf6
10003bef: 0fbef1                   movsx esi, cl
10003bf2: 8d4430a9                 lea eax, [eax + esi - 0x57]
10003bf6: 80f941                   cmp cl, 0x41
10003bf9: 7c0c                     jl 0x10003c07
10003bfb: 80f946                   cmp cl, 0x46
10003bfe: 7f07                     jg 0x10003c07
10003c00: 0fbef1                   movsx esi, cl
10003c03: 8d4430c9                 lea eax, [eax + esi - 0x37]
10003c07: 80f930                   cmp cl, 0x30
10003c0a: 7c0c                     jl 0x10003c18
10003c0c: 80f939                   cmp cl, 0x39
10003c0f: 7f07                     jg 0x10003c18
10003c11: 0fbec9                   movsx ecx, cl
10003c14: 8d4408d0                 lea eax, [eax + ecx - 0x30]
10003c18: 83c202                   add edx, 2
10003c1b: 8807                     mov byte ptr [edi], al
10003c1d: 8a4aff                   mov cl, byte ptr [edx - 1]
10003c20: 47                       inc edi
10003c21: 84c9                     test cl, cl
10003c23: 7583                     jne 0x10003ba8
10003c25: 8b5508                   mov edx, dword ptr [ebp + 8]
10003c28: 5f                       pop edi
10003c29: 83c303                   add ebx, 3
10003c2c: 5e                       pop esi
10003c2d: 891a                     mov dword ptr [edx], ebx
10003c2f: b8d8090110               mov eax, 0x100109d8
10003c34: 5b                       pop ebx
10003c35: 5d                       pop ebp
10003c36: c3                       ret 
10003c37: cc                       int3 
10003c38: cc                       int3 
10003c39: cc                       int3 
10003c3a: cc                       int3 
10003c3b: cc                       int3 
10003c3c: cc                       int3 
10003c3d: cc                       int3 
10003c3e: cc                       int3 
10003c3f: cc                       int3 
10003c40: 837e1408                 cmp dword ptr [esi + 0x14], 8
10003c44: 720b                     jb 0x10003c51
10003c46: 8b06                     mov eax, dword ptr [esi]
10003c48: 50                       push eax
10003c49: e8b6100000               call 0x10004d04
10003c4e: 83c404                   add esp, 4
10003c51: 33c9                     xor ecx, ecx
10003c53: c7461407000000           mov dword ptr [esi + 0x14], 7
10003c5a: c7461000000000           mov dword ptr [esi + 0x10], 0
10003c61: 66890e                   mov word ptr [esi], cx
10003c64: c3                       ret 
10003c65: cc                       int3 
10003c66: cc                       int3 
10003c67: cc                       int3 
10003c68: cc                       int3 
10003c69: cc                       int3 
10003c6a: cc                       int3 
10003c6b: cc                       int3 
10003c6c: cc                       int3 
10003c6d: cc                       int3 
10003c6e: cc                       int3 
10003c6f: cc                       int3 
10003c70: 55                       push ebp
10003c71: 8bec                     mov ebp, esp
10003c73: 51                       push ecx
10003c74: 57                       push edi
10003c75: 8bf8                     mov edi, eax
10003c77: 33c0                     xor eax, eax
10003c79: 894710                   mov dword ptr [edi + 0x10], eax
10003c7c: c7471407000000           mov dword ptr [edi + 0x14], 7
10003c83: 51                       push ecx
10003c84: 8945fc                   mov dword ptr [ebp - 4], eax
10003c87: 668907                   mov word ptr [edi], ax
10003c8a: 52                       push edx
10003c8b: b804000000               mov eax, 4
10003c90: e83b000000               call 0x10003cd0
10003c95: 8bc7                     mov eax, edi
10003c97: 5f                       pop edi
10003c98: 8be5                     mov esp, ebp
10003c9a: 5d                       pop ebp
10003c9b: c3                       ret 
10003c9c: cc                       int3 
10003c9d: cc                       int3 
10003c9e: cc                       int3 
10003c9f: cc                       int3 
10003ca0: 8bc6                     mov eax, esi
10003ca2: 57                       push edi
10003ca3: 8d7802                   lea edi, [eax + 2]
10003ca6: 668b10                   mov dx, word ptr [eax]
10003ca9: 83c002                   add eax, 2
10003cac: 6685d2                   test dx, dx
10003caf: 75f5                     jne 0x10003ca6
10003cb1: 2bc7                     sub eax, edi
10003cb3: d1f8                     sar eax, 1
10003cb5: 8bf8                     mov edi, eax
10003cb7: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10003cba: 56                       push esi
10003cbb: e880010000               call 0x10003e40
10003cc0: 5f                       pop edi
10003cc1: c3                       ret 
10003cc2: cc                       int3 
10003cc3: cc                       int3 
10003cc4: cc                       int3 
10003cc5: cc                       int3 
10003cc6: cc                       int3 
10003cc7: cc                       int3 
10003cc8: cc                       int3 
10003cc9: cc                       int3 
10003cca: cc                       int3 
10003ccb: cc                       int3 
10003ccc: cc                       int3 
10003ccd: cc                       int3 
10003cce: cc                       int3 
10003ccf: cc                       int3 
10003cd0: 55                       push ebp
10003cd1: 8bec                     mov ebp, esp
10003cd3: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10003cd6: 53                       push ebx
10003cd7: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
10003cda: 56                       push esi
10003cdb: 8b7110                   mov esi, dword ptr [ecx + 0x10]
10003cde: 3bf3                     cmp esi, ebx
10003ce0: 730a                     jae 0x10003cec
10003ce2: 6898d40010               push 0x1000d498
10003ce7: e8600e0000               call 0x10004b4c
10003cec: 2bf3                     sub esi, ebx
10003cee: 3bc6                     cmp eax, esi
10003cf0: 7302                     jae 0x10003cf4
10003cf2: 8bf0                     mov esi, eax
10003cf4: 3bf9                     cmp edi, ecx
10003cf6: 751e                     jne 0x10003d16
10003cf8: 8d0c1e                   lea ecx, [esi + ebx]
10003cfb: 83c8ff                   or eax, 0xffffffff
10003cfe: 8bf7                     mov esi, edi
10003d00: e8bb020000               call 0x10003fc0
10003d05: 8bc3                     mov eax, ebx
10003d07: 33c9                     xor ecx, ecx
10003d09: e8b2020000               call 0x10003fc0
10003d0e: 5e                       pop esi
10003d0f: 8bc7                     mov eax, edi
10003d11: 5b                       pop ebx
10003d12: 5d                       pop ebp
10003d13: c20800                   ret 8
10003d16: 8bc7                     mov eax, edi
10003d18: e823030000               call 0x10004040
10003d1d: 84c0                     test al, al
10003d1f: 744f                     je 0x10003d70
10003d21: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10003d24: b808000000               mov eax, 8
10003d29: 394114                   cmp dword ptr [ecx + 0x14], eax
10003d2c: 7202                     jb 0x10003d30
10003d2e: 8b09                     mov ecx, dword ptr [ecx]
10003d30: 394714                   cmp dword ptr [edi + 0x14], eax
10003d33: 7204                     jb 0x10003d39
10003d35: 8b07                     mov eax, dword ptr [edi]
10003d37: eb02                     jmp 0x10003d3b
10003d39: 8bc7                     mov eax, edi
10003d3b: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10003d3e: 8d1c36                   lea ebx, [esi + esi]
10003d41: 53                       push ebx
10003d42: 8d0c51                   lea ecx, [ecx + edx*2]
10003d45: 51                       push ecx
10003d46: 50                       push eax
10003d47: e8d44f0000               call 0x10008d20
10003d4c: 83c40c                   add esp, 0xc
10003d4f: 837f1408                 cmp dword ptr [edi + 0x14], 8
10003d53: 897710                   mov dword ptr [edi + 0x10], esi
10003d56: 7210                     jb 0x10003d68
10003d58: 8b07                     mov eax, dword ptr [edi]
10003d5a: 33d2                     xor edx, edx
10003d5c: 66891403                 mov word ptr [ebx + eax], dx
10003d60: 5e                       pop esi
10003d61: 8bc7                     mov eax, edi
10003d63: 5b                       pop ebx
10003d64: 5d                       pop ebp
10003d65: c20800                   ret 8
10003d68: 8bc7                     mov eax, edi
10003d6a: 33d2                     xor edx, edx
10003d6c: 66891403                 mov word ptr [ebx + eax], dx
10003d70: 5e                       pop esi
10003d71: 8bc7                     mov eax, edi
10003d73: 5b                       pop ebx
10003d74: 5d                       pop ebp
10003d75: c20800                   ret 8
10003d78: cc                       int3 
10003d79: cc                       int3 
10003d7a: cc                       int3 
10003d7b: cc                       int3 
10003d7c: cc                       int3 
10003d7d: cc                       int3 
10003d7e: cc                       int3 
10003d7f: cc                       int3 
10003d80: 55                       push ebp
10003d81: 8bec                     mov ebp, esp
10003d83: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10003d86: 83ec08                   sub esp, 8
10003d89: 53                       push ebx
10003d8a: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
10003d8d: 56                       push esi
10003d8e: 8b7510                   mov esi, dword ptr [ebp + 0x10]
10003d91: 85f6                     test esi, esi
10003d93: 750a                     jne 0x10003d9f
10003d95: 5e                       pop esi
10003d96: 33c0                     xor eax, eax
10003d98: 5b                       pop ebx
10003d99: 8be5                     mov esp, ebp
10003d9b: 5d                       pop ebp
10003d9c: c20c00                   ret 0xc
10003d9f: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10003da2: 57                       push edi
10003da3: 85c0                     test eax, eax
10003da5: 7434                     je 0x10003ddb
10003da7: 8bf8                     mov edi, eax
10003da9: 3bf7                     cmp esi, edi
10003dab: 772e                     ja 0x10003ddb
10003dad: b801000000               mov eax, 1
10003db2: 2bc6                     sub eax, esi
10003db4: 03f8                     add edi, eax
10003db6: 83791408                 cmp dword ptr [ecx + 0x14], 8
10003dba: 7204                     jb 0x10003dc0
10003dbc: 8b01                     mov eax, dword ptr [ecx]
10003dbe: eb02                     jmp 0x10003dc2
10003dc0: 8bc1                     mov eax, ecx
10003dc2: 8945fc                   mov dword ptr [ebp - 4], eax
10003dc5: 8bcf                     mov ecx, edi
10003dc7: 85ff                     test edi, edi
10003dc9: 7410                     je 0x10003ddb
10003dcb: 0fb713                   movzx edx, word ptr [ebx]
10003dce: 8bff                     mov edi, edi
10003dd0: 663910                   cmp word ptr [eax], dx
10003dd3: 7412                     je 0x10003de7
10003dd5: 83c002                   add eax, 2
10003dd8: 49                       dec ecx
10003dd9: 75f5                     jne 0x10003dd0
10003ddb: 5f                       pop edi
10003ddc: 5e                       pop esi
10003ddd: 83c8ff                   or eax, 0xffffffff
10003de0: 5b                       pop ebx
10003de1: 8be5                     mov esp, ebp
10003de3: 5d                       pop ebp
10003de4: c20c00                   ret 0xc
10003de7: 85c0                     test eax, eax
10003de9: 74f0                     je 0x10003ddb
10003deb: 8bd3                     mov edx, ebx
10003ded: 8bc8                     mov ecx, eax
10003def: 85f6                     test esi, esi
10003df1: 7411                     je 0x10003e04
10003df3: 668b19                   mov bx, word ptr [ecx]
10003df6: 663b1a                   cmp bx, word ptr [edx]
10003df9: 7521                     jne 0x10003e1c
10003dfb: 83c102                   add ecx, 2
10003dfe: 83c202                   add edx, 2
10003e01: 4e                       dec esi
10003e02: 75ef                     jne 0x10003df3
10003e04: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10003e07: 83791408                 cmp dword ptr [ecx + 0x14], 8
10003e0b: 7202                     jb 0x10003e0f
10003e0d: 8b09                     mov ecx, dword ptr [ecx]
10003e0f: 5f                       pop edi
10003e10: 2bc1                     sub eax, ecx
10003e12: 5e                       pop esi
10003e13: d1f8                     sar eax, 1
10003e15: 5b                       pop ebx
10003e16: 8be5                     mov esp, ebp
10003e18: 5d                       pop ebp
10003e19: c20c00                   ret 0xc
10003e1c: 1bd2                     sbb edx, edx
10003e1e: 83e2fe                   and edx, 0xfffffffe
10003e21: 42                       inc edx
10003e22: 74e0                     je 0x10003e04
10003e24: 8b7510                   mov esi, dword ptr [ebp + 0x10]
10003e27: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
10003e2a: 8bc8                     mov ecx, eax
10003e2c: 2b4dfc                   sub ecx, dword ptr [ebp - 4]
10003e2f: 83caff                   or edx, 0xffffffff
10003e32: d1f9                     sar ecx, 1
10003e34: 2bd1                     sub edx, ecx
10003e36: 03fa                     add edi, edx
10003e38: 83c002                   add eax, 2
10003e3b: eb85                     jmp 0x10003dc2
10003e3d: cc                       int3 
10003e3e: cc                       int3 
10003e3f: cc                       int3 
10003e40: 55                       push ebp
10003e41: 8bec                     mov ebp, esp
10003e43: 53                       push ebx
10003e44: 56                       push esi
10003e45: 8bf0                     mov esi, eax
10003e47: 8b4110                   mov eax, dword ptr [ecx + 0x10]
10003e4a: 3bc6                     cmp eax, esi
10003e4c: 7302                     jae 0x10003e50
10003e4e: 8bf0                     mov esi, eax
10003e50: 8bd6                     mov edx, esi
10003e52: 3bf7                     cmp esi, edi
10003e54: 7202                     jb 0x10003e58
10003e56: 8bd7                     mov edx, edi
10003e58: 83791408                 cmp dword ptr [ecx + 0x14], 8
10003e5c: 7204                     jb 0x10003e62
10003e5e: 8b01                     mov eax, dword ptr [ecx]
10003e60: eb02                     jmp 0x10003e64
10003e62: 8bc1                     mov eax, ecx
10003e64: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10003e67: 85d2                     test edx, edx
10003e69: 7426                     je 0x10003e91
10003e6b: eb03                     jmp 0x10003e70
10003e6d: 8d4900                   lea ecx, [ecx]
10003e70: 668b18                   mov bx, word ptr [eax]
10003e73: 663b19                   cmp bx, word ptr [ecx]
10003e76: 750b                     jne 0x10003e83
10003e78: 83c002                   add eax, 2
10003e7b: 83c102                   add ecx, 2
10003e7e: 4a                       dec edx
10003e7f: 75ef                     jne 0x10003e70
10003e81: eb0e                     jmp 0x10003e91
10003e83: 0fb700                   movzx eax, word ptr [eax]
10003e86: 663b01                   cmp ax, word ptr [ecx]
10003e89: 1bc0                     sbb eax, eax
10003e8b: 83e0fe                   and eax, 0xfffffffe
10003e8e: 40                       inc eax
10003e8f: 7514                     jne 0x10003ea5
10003e91: 3bf7                     cmp esi, edi
10003e93: 7309                     jae 0x10003e9e
10003e95: 5e                       pop esi
10003e96: 83c8ff                   or eax, 0xffffffff
10003e99: 5b                       pop ebx
10003e9a: 5d                       pop ebp
10003e9b: c20400                   ret 4
10003e9e: 33c0                     xor eax, eax
10003ea0: 3bf7                     cmp esi, edi
10003ea2: 0f95c0                   setne al
10003ea5: 5e                       pop esi
10003ea6: 5b                       pop ebx
10003ea7: 5d                       pop ebp
10003ea8: c20400                   ret 4
10003eab: cc                       int3 
10003eac: cc                       int3 
10003ead: cc                       int3 
10003eae: cc                       int3 
10003eaf: cc                       int3 
10003eb0: 55                       push ebp
10003eb1: 8bec                     mov ebp, esp
10003eb3: 56                       push esi
10003eb4: 8bf0                     mov esi, eax
10003eb6: 57                       push edi
10003eb7: 8bf9                     mov edi, ecx
10003eb9: 85f6                     test esi, esi
10003ebb: 7458                     je 0x10003f15
10003ebd: 8b4f14                   mov ecx, dword ptr [edi + 0x14]
10003ec0: 83f908                   cmp ecx, 8
10003ec3: 7204                     jb 0x10003ec9
10003ec5: 8b07                     mov eax, dword ptr [edi]
10003ec7: eb02                     jmp 0x10003ecb
10003ec9: 8bc7                     mov eax, edi
10003ecb: 3bf0                     cmp esi, eax
10003ecd: 7246                     jb 0x10003f15
10003ecf: 83f908                   cmp ecx, 8
10003ed2: 7204                     jb 0x10003ed8
10003ed4: 8b07                     mov eax, dword ptr [edi]
10003ed6: eb02                     jmp 0x10003eda
10003ed8: 8bc7                     mov eax, edi
10003eda: 8b5710                   mov edx, dword ptr [edi + 0x10]
10003edd: 8d0450                   lea eax, [eax + edx*2]
10003ee0: 3bc6                     cmp eax, esi
10003ee2: 7631                     jbe 0x10003f15
10003ee4: 83f908                   cmp ecx, 8
10003ee7: 7216                     jb 0x10003eff
10003ee9: 8b07                     mov eax, dword ptr [edi]
10003eeb: 2bf0                     sub esi, eax
10003eed: 8b4508                   mov eax, dword ptr [ebp + 8]
10003ef0: d1fe                     sar esi, 1
10003ef2: 56                       push esi
10003ef3: 57                       push edi
10003ef4: e8d7fdffff               call 0x10003cd0
10003ef9: 5f                       pop edi
10003efa: 5e                       pop esi
10003efb: 5d                       pop ebp
10003efc: c20400                   ret 4
10003eff: 8bc7                     mov eax, edi
10003f01: 2bf0                     sub esi, eax
10003f03: 8b4508                   mov eax, dword ptr [ebp + 8]
10003f06: d1fe                     sar esi, 1
10003f08: 56                       push esi
10003f09: 57                       push edi
10003f0a: e8c1fdffff               call 0x10003cd0
10003f0f: 5f                       pop edi
10003f10: 5e                       pop esi
10003f11: 5d                       pop ebp
10003f12: c20400                   ret 4
10003f15: 53                       push ebx
10003f16: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10003f19: 81fbfeffff7f             cmp ebx, 0x7ffffffe
10003f1f: 760a                     jbe 0x10003f2b
10003f21: 68b0d40010               push 0x1000d4b0
10003f26: e8d40b0000               call 0x10004aff
10003f2b: 8b4714                   mov eax, dword ptr [edi + 0x14]
10003f2e: 3bc3                     cmp eax, ebx
10003f30: 7319                     jae 0x10003f4b
10003f32: 8b4f10                   mov ecx, dword ptr [edi + 0x10]
10003f35: 51                       push ecx
10003f36: 53                       push ebx
10003f37: 57                       push edi
10003f38: e853010000               call 0x10004090
10003f3d: 85db                     test ebx, ebx
10003f3f: 7468                     je 0x10003fa9
10003f41: 837f1408                 cmp dword ptr [edi + 0x14], 8
10003f45: 722e                     jb 0x10003f75
10003f47: 8b07                     mov eax, dword ptr [edi]
10003f49: eb2c                     jmp 0x10003f77
10003f4b: 85db                     test ebx, ebx
10003f4d: 75f2                     jne 0x10003f41
10003f4f: 895f10                   mov dword ptr [edi + 0x10], ebx
10003f52: 83f808                   cmp eax, 8
10003f55: 7210                     jb 0x10003f67
10003f57: 8b07                     mov eax, dword ptr [edi]
10003f59: 33d2                     xor edx, edx
10003f5b: 5b                       pop ebx
10003f5c: 668910                   mov word ptr [eax], dx
10003f5f: 8bc7                     mov eax, edi
10003f61: 5f                       pop edi
10003f62: 5e                       pop esi
10003f63: 5d                       pop ebp
10003f64: c20400                   ret 4
10003f67: 5b                       pop ebx
10003f68: 8bc7                     mov eax, edi
10003f6a: 33d2                     xor edx, edx
10003f6c: 5f                       pop edi
10003f6d: 668910                   mov word ptr [eax], dx
10003f70: 5e                       pop esi
10003f71: 5d                       pop ebp
10003f72: c20400                   ret 4
10003f75: 8bc7                     mov eax, edi
10003f77: 03db                     add ebx, ebx
10003f79: 53                       push ebx
10003f7a: 56                       push esi
10003f7b: 50                       push eax
10003f7c: e89f4d0000               call 0x10008d20
10003f81: 8b4508                   mov eax, dword ptr [ebp + 8]
10003f84: 83c40c                   add esp, 0xc
10003f87: 837f1408                 cmp dword ptr [edi + 0x14], 8
10003f8b: 894710                   mov dword ptr [edi + 0x10], eax
10003f8e: 7211                     jb 0x10003fa1
10003f90: 8b07                     mov eax, dword ptr [edi]
10003f92: 33c9                     xor ecx, ecx
10003f94: 66890c03                 mov word ptr [ebx + eax], cx
10003f98: 5b                       pop ebx
10003f99: 8bc7                     mov eax, edi
10003f9b: 5f                       pop edi
10003f9c: 5e                       pop esi
10003f9d: 5d                       pop ebp
10003f9e: c20400                   ret 4
10003fa1: 8bc7                     mov eax, edi
10003fa3: 33c9                     xor ecx, ecx
10003fa5: 66890c03                 mov word ptr [ebx + eax], cx
10003fa9: 5b                       pop ebx
10003faa: 8bc7                     mov eax, edi
10003fac: 5f                       pop edi
10003fad: 5e                       pop esi
10003fae: 5d                       pop ebp
10003faf: c20400                   ret 4
10003fb2: cc                       int3 
10003fb3: cc                       int3 
10003fb4: cc                       int3 
10003fb5: cc                       int3 
10003fb6: cc                       int3 
10003fb7: cc                       int3 
10003fb8: cc                       int3 
10003fb9: cc                       int3 
10003fba: cc                       int3 
10003fbb: cc                       int3 
10003fbc: cc                       int3 
10003fbd: cc                       int3 
10003fbe: cc                       int3 
10003fbf: cc                       int3 
10003fc0: 57                       push edi
10003fc1: 8bf8                     mov edi, eax
10003fc3: 8b4610                   mov eax, dword ptr [esi + 0x10]
10003fc6: 3bc1                     cmp eax, ecx
10003fc8: 730a                     jae 0x10003fd4
10003fca: 6898d40010               push 0x1000d498
10003fcf: e8780b0000               call 0x10004b4c
10003fd4: 2bc1                     sub eax, ecx
10003fd6: 3bc7                     cmp eax, edi
10003fd8: 7302                     jae 0x10003fdc
10003fda: 8bf8                     mov edi, eax
10003fdc: 85ff                     test edi, edi
10003fde: 7455                     je 0x10004035
10003fe0: 8b5614                   mov edx, dword ptr [esi + 0x14]
10003fe3: 53                       push ebx
10003fe4: 83fa08                   cmp edx, 8
10003fe7: 7204                     jb 0x10003fed
10003fe9: 8b1e                     mov ebx, dword ptr [esi]
10003feb: eb02                     jmp 0x10003fef
10003fed: 8bde                     mov ebx, esi
10003fef: 83fa08                   cmp edx, 8
10003ff2: 7204                     jb 0x10003ff8
10003ff4: 8b16                     mov edx, dword ptr [esi]
10003ff6: eb02                     jmp 0x10003ffa
10003ff8: 8bd6                     mov edx, esi
10003ffa: 2bc7                     sub eax, edi
10003ffc: 03c0                     add eax, eax
10003ffe: 50                       push eax
10003fff: 8d0439                   lea eax, [ecx + edi]
10004002: 8d0443                   lea eax, [ebx + eax*2]
10004005: 50                       push eax
10004006: 8d0c4a                   lea ecx, [edx + ecx*2]
10004009: 51                       push ecx
1000400a: e8010d0000               call 0x10004d10
1000400f: 8b4610                   mov eax, dword ptr [esi + 0x10]
10004012: 83c40c                   add esp, 0xc
10004015: 2bc7                     sub eax, edi
10004017: 837e1408                 cmp dword ptr [esi + 0x14], 8
1000401b: 894610                   mov dword ptr [esi + 0x10], eax
1000401e: 5b                       pop ebx
1000401f: 720c                     jb 0x1000402d
10004021: 8b0e                     mov ecx, dword ptr [esi]
10004023: 33d2                     xor edx, edx
10004025: 66891441                 mov word ptr [ecx + eax*2], dx
10004029: 8bc6                     mov eax, esi
1000402b: 5f                       pop edi
1000402c: c3                       ret 
1000402d: 8bce                     mov ecx, esi
1000402f: 33d2                     xor edx, edx
10004031: 66891441                 mov word ptr [ecx + eax*2], dx
10004035: 8bc6                     mov eax, esi
10004037: 5f                       pop edi
10004038: c3                       ret 
10004039: cc                       int3 
1000403a: cc                       int3 
1000403b: cc                       int3 
1000403c: cc                       int3 
1000403d: cc                       int3 
1000403e: cc                       int3 
1000403f: cc                       int3 
10004040: 81fefeffff7f             cmp esi, 0x7ffffffe
10004046: 760a                     jbe 0x10004052
10004048: 68b0d40010               push 0x1000d4b0
1000404d: e8ad0a0000               call 0x10004aff
10004052: 8b4814                   mov ecx, dword ptr [eax + 0x14]
10004055: 3bce                     cmp ecx, esi
10004057: 7314                     jae 0x1000406d
10004059: 8b4810                   mov ecx, dword ptr [eax + 0x10]
1000405c: 51                       push ecx
1000405d: 56                       push esi
1000405e: 50                       push eax
1000405f: e82c000000               call 0x10004090
10004064: 33c0                     xor eax, eax
10004066: 3bc6                     cmp eax, esi
10004068: 1bc0                     sbb eax, eax
1000406a: f7d8                     neg eax
1000406c: c3                       ret 
1000406d: 85f6                     test esi, esi
1000406f: 750f                     jne 0x10004080
10004071: 897010                   mov dword ptr [eax + 0x10], esi
10004074: 83f908                   cmp ecx, 8
10004077: 7202                     jb 0x1000407b
10004079: 8b00                     mov eax, dword ptr [eax]
1000407b: 33d2                     xor edx, edx
1000407d: 668910                   mov word ptr [eax], dx
10004080: 33c0                     xor eax, eax
10004082: 3bc6                     cmp eax, esi
10004084: 1bc0                     sbb eax, eax
10004086: f7d8                     neg eax
10004088: c3                       ret 
10004089: cc                       int3 
1000408a: cc                       int3 
1000408b: cc                       int3 
1000408c: cc                       int3 
1000408d: cc                       int3 
1000408e: cc                       int3 
1000408f: cc                       int3 
10004090: 55                       push ebp
10004091: 8bec                     mov ebp, esp
10004093: 6aff                     push -1
10004095: 6880ac0010               push 0x1000ac80
1000409a: 64a100000000             mov eax, dword ptr fs:[0]
100040a0: 50                       push eax
100040a1: 83ec14                   sub esp, 0x14
100040a4: 53                       push ebx
100040a5: 56                       push esi
100040a6: 57                       push edi
100040a7: a180f00010               mov eax, dword ptr [0x1000f080]
100040ac: 33c5                     xor eax, ebp
100040ae: 50                       push eax
100040af: 8d45f4                   lea eax, [ebp - 0xc]
100040b2: 64a300000000             mov dword ptr fs:[0], eax
100040b8: 8965f0                   mov dword ptr [ebp - 0x10], esp
100040bb: 8b450c                   mov eax, dword ptr [ebp + 0xc]
100040be: 8b7d08                   mov edi, dword ptr [ebp + 8]
100040c1: 8bf0                     mov esi, eax
100040c3: 83ce07                   or esi, 7
100040c6: 81fefeffff7f             cmp esi, 0x7ffffffe
100040cc: 7604                     jbe 0x100040d2
100040ce: 8bf0                     mov esi, eax
100040d0: eb27                     jmp 0x100040f9
100040d2: 8b5f14                   mov ebx, dword ptr [edi + 0x14]
100040d5: b8abaaaaaa               mov eax, 0xaaaaaaab
100040da: f7e6                     mul esi
100040dc: 8bcb                     mov ecx, ebx
100040de: d1e9                     shr ecx, 1
100040e0: d1ea                     shr edx, 1
100040e2: 3bca                     cmp ecx, edx
100040e4: 7613                     jbe 0x100040f9
100040e6: b8feffff7f               mov eax, 0x7ffffffe
100040eb: 2bc1                     sub eax, ecx
100040ed: 8d3419                   lea esi, [ecx + ebx]
100040f0: 3bd8                     cmp ebx, eax
100040f2: 7605                     jbe 0x100040f9
100040f4: befeffff7f               mov esi, 0x7ffffffe
100040f9: 33c0                     xor eax, eax
100040fb: 8d4e01                   lea ecx, [esi + 1]
100040fe: 8945fc                   mov dword ptr [ebp - 4], eax
10004101: 3bc8                     cmp ecx, eax
10004103: 7617                     jbe 0x1000411c
10004105: 81f9ffffff7f             cmp ecx, 0x7fffffff
1000410b: 7713                     ja 0x10004120
1000410d: 03c9                     add ecx, ecx
1000410f: 51                       push ecx
10004110: e85c0f0000               call 0x10005071
10004115: 83c404                   add esp, 4
10004118: 85c0                     test eax, eax
1000411a: 7404                     je 0x10004120
1000411c: 8bd8                     mov ebx, eax
1000411e: eb4f                     jmp 0x1000416f
10004120: 8d55ec                   lea edx, [ebp - 0x14]
10004123: 52                       push edx
10004124: 8d4de0                   lea ecx, [ebp - 0x20]
10004127: c745ec00000000           mov dword ptr [ebp - 0x14], 0
1000412e: e81e0b0000               call 0x10004c51
10004133: 6850dd0010               push 0x1000dd50
10004138: 8d45e0                   lea eax, [ebp - 0x20]
1000413b: 50                       push eax
1000413c: c745e0b4b10010           mov dword ptr [ebp - 0x20], 0x1000b1b4
10004143: e8f5130000               call 0x1000553d
10004148: 8b450c                   mov eax, dword ptr [ebp + 0xc]
1000414b: 8d4801                   lea ecx, [eax + 1]
1000414e: 8965f0                   mov dword ptr [ebp - 0x10], esp
10004151: 89450c                   mov dword ptr [ebp + 0xc], eax
10004154: c645fc02                 mov byte ptr [ebp - 4], 2
10004158: e8a3000000               call 0x10004200
1000415d: 8945ec                   mov dword ptr [ebp - 0x14], eax
10004160: b866410010               mov eax, 0x10004166
10004165: c3                       ret 
10004166: 8b7d08                   mov edi, dword ptr [ebp + 8]
10004169: 8b750c                   mov esi, dword ptr [ebp + 0xc]
1000416c: 8b5dec                   mov ebx, dword ptr [ebp - 0x14]
1000416f: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10004172: 85c9                     test ecx, ecx
10004174: 741c                     je 0x10004192
10004176: 837f1408                 cmp dword ptr [edi + 0x14], 8
1000417a: 7204                     jb 0x10004180
1000417c: 8b07                     mov eax, dword ptr [edi]
1000417e: eb02                     jmp 0x10004182
10004180: 8bc7                     mov eax, edi
10004182: 03c9                     add ecx, ecx
10004184: 51                       push ecx
10004185: 50                       push eax
10004186: 53                       push ebx
10004187: e8944b0000               call 0x10008d20
1000418c: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
1000418f: 83c40c                   add esp, 0xc
10004192: 837f1408                 cmp dword ptr [edi + 0x14], 8
10004196: 720e                     jb 0x100041a6
10004198: 8b17                     mov edx, dword ptr [edi]
1000419a: 52                       push edx
1000419b: e8640b0000               call 0x10004d04
100041a0: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
100041a3: 83c404                   add esp, 4
100041a6: 891f                     mov dword ptr [edi], ebx
100041a8: 897714                   mov dword ptr [edi + 0x14], esi
100041ab: 894f10                   mov dword ptr [edi + 0x10], ecx
100041ae: 83fe08                   cmp esi, 8
100041b1: 7202                     jb 0x100041b5
100041b3: 8bfb                     mov edi, ebx
100041b5: 33d2                     xor edx, edx
100041b7: 6689144f                 mov word ptr [edi + ecx*2], dx
100041bb: 8b4df4                   mov ecx, dword ptr [ebp - 0xc]
100041be: 64890d00000000           mov dword ptr fs:[0], ecx
100041c5: 59                       pop ecx
100041c6: 5f                       pop edi
100041c7: 5e                       pop esi
100041c8: 5b                       pop ebx
100041c9: 8be5                     mov esp, ebp
100041cb: 5d                       pop ebp
100041cc: c20c00                   ret 0xc
100041cf: 8b7508                   mov esi, dword ptr [ebp + 8]
100041d2: 837e1408                 cmp dword ptr [esi + 0x14], 8
100041d6: 720b                     jb 0x100041e3
100041d8: 8b06                     mov eax, dword ptr [esi]
100041da: 50                       push eax
100041db: e8240b0000               call 0x10004d04
100041e0: 83c404                   add esp, 4
100041e3: 33c9                     xor ecx, ecx
100041e5: 51                       push ecx
100041e6: c7461407000000           mov dword ptr [esi + 0x14], 7
100041ed: c7461000000000           mov dword ptr [esi + 0x10], 0
100041f4: 51                       push ecx
100041f5: 66890e                   mov word ptr [esi], cx
100041f8: e840130000               call 0x1000553d
100041fd: cc                       int3 
100041fe: cc                       int3 
100041ff: cc                       int3 
10004200: 55                       push ebp
10004201: 8bec                     mov ebp, esp
10004203: 83ec10                   sub esp, 0x10
10004206: 33c0                     xor eax, eax
10004208: 85c9                     test ecx, ecx
1000420a: 7440                     je 0x1000424c
1000420c: 81f9ffffff7f             cmp ecx, 0x7fffffff
10004212: 7710                     ja 0x10004224
10004214: 8d0409                   lea eax, [ecx + ecx]
10004217: 50                       push eax
10004218: e8540e0000               call 0x10005071
1000421d: 83c404                   add esp, 4
10004220: 85c0                     test eax, eax
10004222: 7528                     jne 0x1000424c
10004224: 8d4dfc                   lea ecx, [ebp - 4]
10004227: 51                       push ecx
10004228: 8d4df0                   lea ecx, [ebp - 0x10]
1000422b: c745fc00000000           mov dword ptr [ebp - 4], 0
10004232: e81a0a0000               call 0x10004c51
10004237: 6850dd0010               push 0x1000dd50
1000423c: 8d55f0                   lea edx, [ebp - 0x10]
1000423f: 52                       push edx
10004240: c745f0b4b10010           mov dword ptr [ebp - 0x10], 0x1000b1b4
10004247: e8f1120000               call 0x1000553d
1000424c: 8be5                     mov esp, ebp
1000424e: 5d                       pop ebp
1000424f: c3                       ret 
10004250: 55                       push ebp
10004251: 8bec                     mov ebp, esp
10004253: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10004256: 8b4904                   mov ecx, dword ptr [ecx + 4]
10004259: 6a00                     push 0
1000425b: 8d450c                   lea eax, [ebp + 0xc]
1000425e: 50                       push eax
1000425f: 8b4508                   mov eax, dword ptr [ebp + 8]
10004262: 52                       push edx
10004263: 50                       push eax
10004264: 51                       push ecx
10004265: ff1520b00010             call dword ptr [0x1000b020]
1000426b: 85c0                     test eax, eax
1000426d: 0f95c0                   setne al
10004270: 5d                       pop ebp
10004271: c20800                   ret 8
10004274: cc                       int3 
10004275: cc                       int3 
10004276: cc                       int3 
10004277: cc                       int3 
10004278: cc                       int3 
10004279: cc                       int3 
1000427a: cc                       int3 
1000427b: cc                       int3 
1000427c: cc                       int3 
1000427d: cc                       int3 
1000427e: cc                       int3 
1000427f: cc                       int3 
10004280: 55                       push ebp
10004281: 8bec                     mov ebp, esp
10004283: 83ec4c                   sub esp, 0x4c
10004286: a180f00010               mov eax, dword ptr [0x1000f080]
1000428b: 33c5                     xor eax, ebp
1000428d: 8945fc                   mov dword ptr [ebp - 4], eax
10004290: 56                       push esi
10004291: 8b750c                   mov esi, dword ptr [ebp + 0xc]
10004294: 57                       push edi
10004295: 8b7d08                   mov edi, dword ptr [ebp + 8]
10004298: 6a00                     push 0
1000429a: 8d45b4                   lea eax, [ebp - 0x4c]
1000429d: 50                       push eax
1000429e: 8b4104                   mov eax, dword ptr [ecx + 4]
100042a1: 6a41                     push 0x41
100042a3: 8d55b8                   lea edx, [ebp - 0x48]
100042a6: 52                       push edx
100042a7: 50                       push eax
100042a8: ff1524b00010             call dword ptr [0x1000b024]
100042ae: 85c0                     test eax, eax
100042b0: 7432                     je 0x100042e4
100042b2: 8b0e                     mov ecx, dword ptr [esi]
100042b4: 51                       push ecx
100042b5: 8d55b9                   lea edx, [ebp - 0x47]
100042b8: 52                       push edx
100042b9: 57                       push edi
100042ba: e8614a0000               call 0x10008d20
100042bf: 8b45b4                   mov eax, dword ptr [ebp - 0x4c]
100042c2: 8b0e                     mov ecx, dword ptr [esi]
100042c4: 48                       dec eax
100042c5: 83c40c                   add esp, 0xc
100042c8: 3bc8                     cmp ecx, eax
100042ca: 7602                     jbe 0x100042ce
100042cc: 8bc1                     mov eax, ecx
100042ce: 8906                     mov dword ptr [esi], eax
100042d0: 5f                       pop edi
100042d1: b001                     mov al, 1
100042d3: 5e                       pop esi
100042d4: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
100042d7: 33cd                     xor ecx, ebp
100042d9: e8dc080000               call 0x10004bba
100042de: 8be5                     mov esp, ebp
100042e0: 5d                       pop ebp
100042e1: c20c00                   ret 0xc
100042e4: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
100042e7: 5f                       pop edi
100042e8: 33cd                     xor ecx, ebp
100042ea: 32c0                     xor al, al
100042ec: 5e                       pop esi
100042ed: e8c8080000               call 0x10004bba
100042f2: 8be5                     mov esp, ebp
100042f4: 5d                       pop ebp
100042f5: c20c00                   ret 0xc
100042f8: cc                       int3 
100042f9: cc                       int3 
100042fa: cc                       int3 
100042fb: cc                       int3 
100042fc: cc                       int3 
100042fd: cc                       int3 
100042fe: cc                       int3 
100042ff: cc                       int3 
10004300: 894804                   mov dword ptr [eax + 4], ecx
10004303: 33c9                     xor ecx, ecx
10004305: 895008                   mov dword ptr [eax + 8], edx
10004308: c700ecd40010             mov dword ptr [eax], 0x1000d4ec
1000430e: 894818                   mov dword ptr [eax + 0x18], ecx
10004311: 89481c                   mov dword ptr [eax + 0x1c], ecx
10004314: 894820                   mov dword ptr [eax + 0x20], ecx
10004317: 894828                   mov dword ptr [eax + 0x28], ecx
1000431a: 89482c                   mov dword ptr [eax + 0x2c], ecx
1000431d: 894830                   mov dword ptr [eax + 0x30], ecx
10004320: c3                       ret 
10004321: cc                       int3 
10004322: cc                       int3 
10004323: cc                       int3 
10004324: cc                       int3 
10004325: cc                       int3 
10004326: cc                       int3 
10004327: cc                       int3 
10004328: cc                       int3 
10004329: cc                       int3 
1000432a: cc                       int3 
1000432b: cc                       int3 
1000432c: cc                       int3 
1000432d: cc                       int3 
1000432e: cc                       int3 
1000432f: cc                       int3 
10004330: 55                       push ebp
10004331: 8bec                     mov ebp, esp
10004333: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10004336: 53                       push ebx
10004337: 8b5d08                   mov ebx, dword ptr [ebp + 8]
1000433a: 56                       push esi
1000433b: 8d7328                   lea esi, [ebx + 0x28]
1000433e: 894338                   mov dword ptr [ebx + 0x38], eax
10004341: 8b4e04                   mov ecx, dword ptr [esi + 4]
10004344: 57                       push edi
10004345: 8b3e                     mov edi, dword ptr [esi]
10004347: 3bf9                     cmp edi, ecx
10004349: 7421                     je 0x1000436c
1000434b: 8bc1                     mov eax, ecx
1000434d: 2bc1                     sub eax, ecx
1000434f: c1f802                   sar eax, 2
10004352: 8d1c8500000000           lea ebx, [eax*4]
10004359: 53                       push ebx
1000435a: 51                       push ecx
1000435b: 57                       push edi
1000435c: e8af090000               call 0x10004d10
10004361: 83c40c                   add esp, 0xc
10004364: 03df                     add ebx, edi
10004366: 895e04                   mov dword ptr [esi + 4], ebx
10004369: 8b5d08                   mov ebx, dword ptr [ebp + 8]
1000436c: 8b450c                   mov eax, dword ptr [ebp + 0xc]
1000436f: e8eccdffff               call 0x10001160
10004374: 8b431c                   mov eax, dword ptr [ebx + 0x1c]
10004377: 8b7b18                   mov edi, dword ptr [ebx + 0x18]
1000437a: 8d7318                   lea esi, [ebx + 0x18]
1000437d: 3bf8                     cmp edi, eax
1000437f: 741e                     je 0x1000439f
10004381: 8bc8                     mov ecx, eax
10004383: 2bc8                     sub ecx, eax
10004385: c1f902                   sar ecx, 2
10004388: 8d1c8d00000000           lea ebx, [ecx*4]
1000438f: 53                       push ebx
10004390: 50                       push eax
10004391: 57                       push edi
10004392: e879090000               call 0x10004d10
10004397: 83c40c                   add esp, 0xc
1000439a: 03df                     add ebx, edi
1000439c: 895e04                   mov dword ptr [esi + 4], ebx
1000439f: 8b450c                   mov eax, dword ptr [ebp + 0xc]
100043a2: e8b9cdffff               call 0x10001160
100043a7: 5f                       pop edi
100043a8: 5e                       pop esi
100043a9: 5b                       pop ebx
100043aa: 5d                       pop ebp
100043ab: c20800                   ret 8
100043ae: cc                       int3 
100043af: cc                       int3 
100043b0: 55                       push ebp
100043b1: 8bec                     mov ebp, esp
100043b3: 83ec14                   sub esp, 0x14
100043b6: 53                       push ebx
100043b7: 56                       push esi
100043b8: 8bf1                     mov esi, ecx
100043ba: 837e1000                 cmp dword ptr [esi + 0x10], 0
100043be: 8b5e38                   mov ebx, dword ptr [esi + 0x38]
100043c1: 8bcb                     mov ecx, ebx
100043c3: 57                       push edi
100043c4: 894dfc                   mov dword ptr [ebp - 4], ecx
100043c7: 740c                     je 0x100043d5
100043c9: 8d049d00000000           lea eax, [ebx*4]
100043d0: 8945fc                   mov dword ptr [ebp - 4], eax
100043d3: 8bc8                     mov ecx, eax
100043d5: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
100043d8: 8d47f5                   lea eax, [edi - 0xb]
100043db: 8945f8                   mov dword ptr [ebp - 8], eax
100043de: 8d4408ff                 lea eax, [eax + ecx - 1]
100043e2: 99                       cdq 
100043e3: f77df8                   idiv dword ptr [ebp - 8]
100043e6: 8b5510                   mov edx, dword ptr [ebp + 0x10]
100043e9: 0fafc7                   imul eax, edi
100043ec: 8b7d08                   mov edi, dword ptr [ebp + 8]
100043ef: 8902                     mov dword ptr [edx], eax
100043f1: 85ff                     test edi, edi
100043f3: 750b                     jne 0x10004400
100043f5: 5f                       pop edi
100043f6: 5e                       pop esi
100043f7: 32c0                     xor al, al
100043f9: 5b                       pop ebx
100043fa: 8be5                     mov esp, ebp
100043fc: 5d                       pop ebp
100043fd: c21000                   ret 0x10
10004400: 0fb64608                 movzx eax, byte ptr [esi + 8]
10004404: 0fb65604                 movzx edx, byte ptr [esi + 4]
10004408: 8845ee                   mov byte ptr [ebp - 0x12], al
1000440b: 0fb6460c                 movzx eax, byte ptr [esi + 0xc]
1000440f: 8845f0                   mov byte ptr [ebp - 0x10], al
10004412: 8b4610                   mov eax, dword ptr [esi + 0x10]
10004415: 8855ef                   mov byte ptr [ebp - 0x11], dl
10004418: 0fb65614                 movzx edx, byte ptr [esi + 0x14]
1000441c: 8845f2                   mov byte ptr [ebp - 0xe], al
1000441f: 8b463c                   mov eax, dword ptr [esi + 0x3c]
10004422: 8855f1                   mov byte ptr [ebp - 0xf], dl
10004425: 8bd0                     mov edx, eax
10004427: 8845f4                   mov byte ptr [ebp - 0xc], al
1000442a: 8bc1                     mov eax, ecx
1000442c: c1fa08                   sar edx, 8
1000442f: c1f808                   sar eax, 8
10004432: 51                       push ecx
10004433: 66c745ec00f0             mov word ptr [ebp - 0x14], 0xf000
10004439: 8855f3                   mov byte ptr [ebp - 0xd], dl
1000443c: 8845f5                   mov byte ptr [ebp - 0xb], al
1000443f: e8380d0000               call 0x1000517c
10004444: 8bd0                     mov edx, eax
10004446: 8b4610                   mov eax, dword ptr [esi + 0x10]
10004449: 83c404                   add esp, 4
1000444c: 895510                   mov dword ptr [ebp + 0x10], edx
1000444f: 85c0                     test eax, eax
10004451: 7514                     jne 0x10004467
10004453: 85db                     test ebx, ebx
10004455: 7e47                     jle 0x1000449e
10004457: 8b4e28                   mov ecx, dword ptr [esi + 0x28]
1000445a: 8a0c81                   mov cl, byte ptr [ecx + eax*4]
1000445d: 880c10                   mov byte ptr [eax + edx], cl
10004460: 40                       inc eax
10004461: 3bc3                     cmp eax, ebx
10004463: 7cf2                     jl 0x10004457
10004465: eb37                     jmp 0x1000449e
10004467: 33c9                     xor ecx, ecx
10004469: 85db                     test ebx, ebx
1000446b: 7e31                     jle 0x1000449e
1000446d: 8d4201                   lea eax, [edx + 1]
10004470: 8b5628                   mov edx, dword ptr [esi + 0x28]
10004473: 0fb6148a                 movzx edx, byte ptr [edx + ecx*4]
10004477: 8850ff                   mov byte ptr [eax - 1], dl
1000447a: c600c8                   mov byte ptr [eax], 0xc8
1000447d: 8b5618                   mov edx, dword ptr [esi + 0x18]
10004480: 8b148a                   mov edx, dword ptr [edx + ecx*4]
10004483: c1fa08                   sar edx, 8
10004486: 885001                   mov byte ptr [eax + 1], dl
10004489: 8b5618                   mov edx, dword ptr [esi + 0x18]
1000448c: 0fb6148a                 movzx edx, byte ptr [edx + ecx*4]
10004490: 885002                   mov byte ptr [eax + 2], dl
10004493: 41                       inc ecx
10004494: 83c004                   add eax, 4
10004497: 3bcb                     cmp ecx, ebx
10004499: 7cd5                     jl 0x10004470
1000449b: 8b5510                   mov edx, dword ptr [ebp + 0x10]
1000449e: 8b5dfc                   mov ebx, dword ptr [ebp - 4]
100044a1: 89550c                   mov dword ptr [ebp + 0xc], edx
100044a4: 8b45ec                   mov eax, dword ptr [ebp - 0x14]
100044a7: 8b4df0                   mov ecx, dword ptr [ebp - 0x10]
100044aa: 668b55f4                 mov dx, word ptr [ebp - 0xc]
100044ae: 8b75f8                   mov esi, dword ptr [ebp - 8]
100044b1: 8907                     mov dword ptr [edi], eax
100044b3: 8a45fc                   mov al, byte ptr [ebp - 4]
100044b6: 894f04                   mov dword ptr [edi + 4], ecx
100044b9: 66895708                 mov word ptr [edi + 8], dx
100044bd: 88470a                   mov byte ptr [edi + 0xa], al
100044c0: 83c70b                   add edi, 0xb
100044c3: 3bf3                     cmp esi, ebx
100044c5: 7e02                     jle 0x100044c9
100044c7: 8bf3                     mov esi, ebx
100044c9: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
100044cc: 56                       push esi
100044cd: 51                       push ecx
100044ce: 57                       push edi
100044cf: e84c480000               call 0x10008d20
100044d4: 83c40c                   add esp, 0xc
100044d7: 03fe                     add edi, esi
100044d9: 3bf3                     cmp esi, ebx
100044db: 7407                     je 0x100044e4
100044dd: 01750c                   add dword ptr [ebp + 0xc], esi
100044e0: 2bde                     sub ebx, esi
100044e2: ebc0                     jmp 0x100044a4
100044e4: 8b5510                   mov edx, dword ptr [ebp + 0x10]
100044e7: 52                       push edx
100044e8: e8550c0000               call 0x10005142
100044ed: 83c404                   add esp, 4
100044f0: 5f                       pop edi
100044f1: 5e                       pop esi
100044f2: b001                     mov al, 1
100044f4: 5b                       pop ebx
100044f5: 8be5                     mov esp, ebp
100044f7: 5d                       pop ebp
100044f8: c21000                   ret 0x10
100044fb: cc                       int3 
100044fc: cc                       int3 
100044fd: cc                       int3 
100044fe: cc                       int3 
100044ff: cc                       int3 
10004500: 55                       push ebp
10004501: 8bec                     mov ebp, esp
10004503: 83ec0c                   sub esp, 0xc
10004506: 53                       push ebx
10004507: 56                       push esi
10004508: 8b7508                   mov esi, dword ptr [ebp + 8]
1000450b: 0fb64606                 movzx eax, byte ptr [esi + 6]
1000450f: 0fb65e09                 movzx ebx, byte ptr [esi + 9]
10004513: 0fb65605                 movzx edx, byte ptr [esi + 5]
10004517: 8945f4                   mov dword ptr [ebp - 0xc], eax
1000451a: 0fb64607                 movzx eax, byte ptr [esi + 7]
1000451e: 57                       push edi
1000451f: 0fb67e08                 movzx edi, byte ptr [esi + 8]
10004523: c1e008                   shl eax, 8
10004526: 03c7                     add eax, edi
10004528: 0fb67e0a                 movzx edi, byte ptr [esi + 0xa]
1000452c: 89413c                   mov dword ptr [ecx + 0x3c], eax
1000452f: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10004532: c1e308                   shl ebx, 8
10004535: 03df                     add ebx, edi
10004537: 8b7df4                   mov edi, dword ptr [ebp - 0xc]
1000453a: 895114                   mov dword ptr [ecx + 0x14], edx
1000453d: 897910                   mov dword ptr [ecx + 0x10], edi
10004540: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10004543: 99                       cdq 
10004544: f7ff                     idiv edi
10004546: 894dfc                   mov dword ptr [ebp - 4], ecx
10004549: 83c7f5                   add edi, -0xb
1000454c: 8bcf                     mov ecx, edi
1000454e: 0fafc8                   imul ecx, eax
10004551: 51                       push ecx
10004552: 894510                   mov dword ptr [ebp + 0x10], eax
10004555: e8220c0000               call 0x1000517c
1000455a: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
1000455d: 83c404                   add esp, 4
10004560: 894508                   mov dword ptr [ebp + 8], eax
10004563: 85c9                     test ecx, ecx
10004565: 7e22                     jle 0x10004589
10004567: 894510                   mov dword ptr [ebp + 0x10], eax
1000456a: 83c60b                   add esi, 0xb
1000456d: 894df8                   mov dword ptr [ebp - 8], ecx
10004570: 8b5510                   mov edx, dword ptr [ebp + 0x10]
10004573: 57                       push edi
10004574: 56                       push esi
10004575: 52                       push edx
10004576: e8a5470000               call 0x10008d20
1000457b: 03750c                   add esi, dword ptr [ebp + 0xc]
1000457e: 017d10                   add dword ptr [ebp + 0x10], edi
10004581: 83c40c                   add esp, 0xc
10004584: ff4df8                   dec dword ptr [ebp - 8]
10004587: 75e7                     jne 0x10004570
10004589: 837df400                 cmp dword ptr [ebp - 0xc], 0
1000458d: 8b7dfc                   mov edi, dword ptr [ebp - 4]
10004590: 0f8500020000             jne 0x10004796
10004596: 895f38                   mov dword ptr [edi + 0x38], ebx
10004599: 8b7728                   mov esi, dword ptr [edi + 0x28]
1000459c: 8b4f2c                   mov ecx, dword ptr [edi + 0x2c]
1000459f: 83c728                   add edi, 0x28
100045a2: 897d0c                   mov dword ptr [ebp + 0xc], edi
100045a5: 3bf1                     cmp esi, ecx
100045a7: 7421                     je 0x100045ca
100045a9: 8bc1                     mov eax, ecx
100045ab: 2bc1                     sub eax, ecx
100045ad: c1f802                   sar eax, 2
100045b0: 03c0                     add eax, eax
100045b2: 03c0                     add eax, eax
100045b4: 50                       push eax
100045b5: 51                       push ecx
100045b6: 56                       push esi
100045b7: 894510                   mov dword ptr [ebp + 0x10], eax
100045ba: e851070000               call 0x10004d10
100045bf: 8b4510                   mov eax, dword ptr [ebp + 0x10]
100045c2: 83c40c                   add esp, 0xc
100045c5: 03c6                     add eax, esi
100045c7: 894704                   mov dword ptr [edi + 4], eax
100045ca: 8b4f04                   mov ecx, dword ptr [edi + 4]
100045cd: 8b17                     mov edx, dword ptr [edi]
100045cf: 8bc1                     mov eax, ecx
100045d1: 2bc2                     sub eax, edx
100045d3: c1f802                   sar eax, 2
100045d6: 3bc3                     cmp eax, ebx
100045d8: 762e                     jbe 0x10004608
100045da: 8d349a                   lea esi, [edx + ebx*4]
100045dd: 3bf1                     cmp esi, ecx
100045df: 0f849c000000             je 0x10004681
100045e5: 8bc1                     mov eax, ecx
100045e7: 2bc1                     sub eax, ecx
100045e9: c1f802                   sar eax, 2
100045ec: 03c0                     add eax, eax
100045ee: 03c0                     add eax, eax
100045f0: 50                       push eax
100045f1: 51                       push ecx
100045f2: 56                       push esi
100045f3: 894510                   mov dword ptr [ebp + 0x10], eax
100045f6: e815070000               call 0x10004d10
100045fb: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
100045fe: 83c40c                   add esp, 0xc
10004601: 03ce                     add ecx, esi
10004603: 894f04                   mov dword ptr [edi + 4], ecx
10004606: eb79                     jmp 0x10004681
10004608: 7377                     jae 0x10004681
1000460a: 8bcb                     mov ecx, ebx
1000460c: 2bc8                     sub ecx, eax
1000460e: beffffff3f               mov esi, 0x3fffffff
10004613: 2bf1                     sub esi, ecx
10004615: 3bf0                     cmp esi, eax
10004617: 730a                     jae 0x10004623
10004619: 6880d00010               push 0x1000d080
1000461e: e8dc040000               call 0x10004aff
10004623: 03c1                     add eax, ecx
10004625: 8b4f08                   mov ecx, dword ptr [edi + 8]
10004628: 2bca                     sub ecx, edx
1000462a: c1f902                   sar ecx, 2
1000462d: 3bc1                     cmp eax, ecx
1000462f: 7623                     jbe 0x10004654
10004631: 8bd1                     mov edx, ecx
10004633: d1ea                     shr edx, 1
10004635: beffffff3f               mov esi, 0x3fffffff
1000463a: 2bf2                     sub esi, edx
1000463c: 3bf1                     cmp esi, ecx
1000463e: 7304                     jae 0x10004644
10004640: 33c9                     xor ecx, ecx
10004642: eb02                     jmp 0x10004646
10004644: 03ca                     add ecx, edx
10004646: 3bc8                     cmp ecx, eax
10004648: 7302                     jae 0x1000464c
1000464a: 8bc8                     mov ecx, eax
1000464c: 51                       push ecx
1000464d: 8bf7                     mov esi, edi
1000464f: e8eccbffff               call 0x10001240
10004654: 8b5704                   mov edx, dword ptr [edi + 4]
10004657: 8bc2                     mov eax, edx
10004659: 2b07                     sub eax, dword ptr [edi]
1000465b: 8bcb                     mov ecx, ebx
1000465d: c1f802                   sar eax, 2
10004660: 2bc8                     sub ecx, eax
10004662: 7409                     je 0x1000466d
10004664: 33c0                     xor eax, eax
10004666: 8bfa                     mov edi, edx
10004668: f3ab                     rep stosd dword ptr es:[edi], eax
1000466a: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
1000466d: 8b4704                   mov eax, dword ptr [edi + 4]
10004670: 8bc8                     mov ecx, eax
10004672: 2b0f                     sub ecx, dword ptr [edi]
10004674: 8bd3                     mov edx, ebx
10004676: c1f902                   sar ecx, 2
10004679: 2bd1                     sub edx, ecx
1000467b: 8d0490                   lea eax, [eax + edx*4]
1000467e: 894704                   mov dword ptr [edi + 4], eax
10004681: 8b75fc                   mov esi, dword ptr [ebp - 4]
10004684: 8b5618                   mov edx, dword ptr [esi + 0x18]
10004687: 8b4e1c                   mov ecx, dword ptr [esi + 0x1c]
1000468a: 83c618                   add esi, 0x18
1000468d: 8955f4                   mov dword ptr [ebp - 0xc], edx
10004690: 3bd1                     cmp edx, ecx
10004692: 7422                     je 0x100046b6
10004694: 8bc1                     mov eax, ecx
10004696: 2bc1                     sub eax, ecx
10004698: c1f802                   sar eax, 2
1000469b: 03c0                     add eax, eax
1000469d: 03c0                     add eax, eax
1000469f: 50                       push eax
100046a0: 51                       push ecx
100046a1: 52                       push edx
100046a2: 894510                   mov dword ptr [ebp + 0x10], eax
100046a5: e866060000               call 0x10004d10
100046aa: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
100046ad: 83c40c                   add esp, 0xc
100046b0: 034df4                   add ecx, dword ptr [ebp - 0xc]
100046b3: 894e04                   mov dword ptr [esi + 4], ecx
100046b6: 8b4e04                   mov ecx, dword ptr [esi + 4]
100046b9: 8b16                     mov edx, dword ptr [esi]
100046bb: 8bc1                     mov eax, ecx
100046bd: 2bc2                     sub eax, edx
100046bf: c1f802                   sar eax, 2
100046c2: 3bc3                     cmp eax, ebx
100046c4: 762f                     jbe 0x100046f5
100046c6: 8d149a                   lea edx, [edx + ebx*4]
100046c9: 895510                   mov dword ptr [ebp + 0x10], edx
100046cc: 3bd1                     cmp edx, ecx
100046ce: 0f84a2000000             je 0x10004776
100046d4: 8bc1                     mov eax, ecx
100046d6: 2bc1                     sub eax, ecx
100046d8: c1f802                   sar eax, 2
100046db: 03c0                     add eax, eax
100046dd: 03c0                     add eax, eax
100046df: 50                       push eax
100046e0: 51                       push ecx
100046e1: 52                       push edx
100046e2: 89450c                   mov dword ptr [ebp + 0xc], eax
100046e5: e826060000               call 0x10004d10
100046ea: 8b450c                   mov eax, dword ptr [ebp + 0xc]
100046ed: 83c40c                   add esp, 0xc
100046f0: 034510                   add eax, dword ptr [ebp + 0x10]
100046f3: eb7e                     jmp 0x10004773
100046f5: 737f                     jae 0x10004776
100046f7: 8bcb                     mov ecx, ebx
100046f9: 2bc8                     sub ecx, eax
100046fb: 894510                   mov dword ptr [ebp + 0x10], eax
100046fe: b8ffffff3f               mov eax, 0x3fffffff
10004703: 2bc1                     sub eax, ecx
10004705: 3b4510                   cmp eax, dword ptr [ebp + 0x10]
10004708: 730a                     jae 0x10004714
1000470a: 6880d00010               push 0x1000d080
1000470f: e8eb030000               call 0x10004aff
10004714: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10004717: 03c1                     add eax, ecx
10004719: 8b4e08                   mov ecx, dword ptr [esi + 8]
1000471c: 2bca                     sub ecx, edx
1000471e: c1f902                   sar ecx, 2
10004721: 3bc1                     cmp eax, ecx
10004723: 7624                     jbe 0x10004749
10004725: 8bd1                     mov edx, ecx
10004727: d1ea                     shr edx, 1
10004729: bfffffff3f               mov edi, 0x3fffffff
1000472e: 2bfa                     sub edi, edx
10004730: 3bf9                     cmp edi, ecx
10004732: 7304                     jae 0x10004738
10004734: 33c9                     xor ecx, ecx
10004736: eb02                     jmp 0x1000473a
10004738: 03ca                     add ecx, edx
1000473a: 3bc8                     cmp ecx, eax
1000473c: 7302                     jae 0x10004740
1000473e: 8bc8                     mov ecx, eax
10004740: 51                       push ecx
10004741: e8facaffff               call 0x10001240
10004746: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10004749: 8b5604                   mov edx, dword ptr [esi + 4]
1000474c: 8bc2                     mov eax, edx
1000474e: 2b06                     sub eax, dword ptr [esi]
10004750: 8bcb                     mov ecx, ebx
10004752: c1f802                   sar eax, 2
10004755: 2bc8                     sub ecx, eax
10004757: 7409                     je 0x10004762
10004759: 33c0                     xor eax, eax
1000475b: 8bfa                     mov edi, edx
1000475d: f3ab                     rep stosd dword ptr es:[edi], eax
1000475f: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10004762: 8b4604                   mov eax, dword ptr [esi + 4]
10004765: 8bc8                     mov ecx, eax
10004767: 2b0e                     sub ecx, dword ptr [esi]
10004769: 8bd3                     mov edx, ebx
1000476b: c1f902                   sar ecx, 2
1000476e: 2bd1                     sub edx, ecx
10004770: 8d0490                   lea eax, [eax + edx*4]
10004773: 894604                   mov dword ptr [esi + 4], eax
10004776: 33c0                     xor eax, eax
10004778: 85db                     test ebx, ebx
1000477a: 0f8e4b020000             jle 0x100049cb
10004780: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10004783: 0fb61408                 movzx edx, byte ptr [eax + ecx]
10004787: 8b0f                     mov ecx, dword ptr [edi]
10004789: 891481                   mov dword ptr [ecx + eax*4], edx
1000478c: 40                       inc eax
1000478d: 3bc3                     cmp eax, ebx
1000478f: 7cef                     jl 0x10004780
10004791: e935020000               jmp 0x100049cb
10004796: 8d43ff                   lea eax, [ebx - 1]
10004799: 99                       cdq 
1000479a: 83e203                   and edx, 3
1000479d: 8d1c02                   lea ebx, [edx + eax]
100047a0: c1fb02                   sar ebx, 2
100047a3: 43                       inc ebx
100047a4: 895f38                   mov dword ptr [edi + 0x38], ebx
100047a7: 8b7728                   mov esi, dword ptr [edi + 0x28]
100047aa: 8b472c                   mov eax, dword ptr [edi + 0x2c]
100047ad: 83c728                   add edi, 0x28
100047b0: 897d0c                   mov dword ptr [ebp + 0xc], edi
100047b3: 3bf0                     cmp esi, eax
100047b5: 7421                     je 0x100047d8
100047b7: 8bc8                     mov ecx, eax
100047b9: 2bc8                     sub ecx, eax
100047bb: c1f902                   sar ecx, 2
100047be: 03c9                     add ecx, ecx
100047c0: 03c9                     add ecx, ecx
100047c2: 51                       push ecx
100047c3: 50                       push eax
100047c4: 56                       push esi
100047c5: 894d10                   mov dword ptr [ebp + 0x10], ecx
100047c8: e843050000               call 0x10004d10
100047cd: 8b5510                   mov edx, dword ptr [ebp + 0x10]
100047d0: 83c40c                   add esp, 0xc
100047d3: 03d6                     add edx, esi
100047d5: 895704                   mov dword ptr [edi + 4], edx
100047d8: 8b4f04                   mov ecx, dword ptr [edi + 4]
100047db: 8b17                     mov edx, dword ptr [edi]
100047dd: 8bc1                     mov eax, ecx
100047df: 2bc2                     sub eax, edx
100047e1: c1f802                   sar eax, 2
100047e4: 3bc3                     cmp eax, ebx
100047e6: 762c                     jbe 0x10004814
100047e8: 8d349a                   lea esi, [edx + ebx*4]
100047eb: 3bf1                     cmp esi, ecx
100047ed: 0f849a000000             je 0x1000488d
100047f3: 8bc1                     mov eax, ecx
100047f5: 2bc1                     sub eax, ecx
100047f7: c1f802                   sar eax, 2
100047fa: 03c0                     add eax, eax
100047fc: 03c0                     add eax, eax
100047fe: 50                       push eax
100047ff: 51                       push ecx
10004800: 56                       push esi
10004801: 894510                   mov dword ptr [ebp + 0x10], eax
10004804: e807050000               call 0x10004d10
10004809: 83c40c                   add esp, 0xc
1000480c: 037510                   add esi, dword ptr [ebp + 0x10]
1000480f: 897704                   mov dword ptr [edi + 4], esi
10004812: eb79                     jmp 0x1000488d
10004814: 7377                     jae 0x1000488d
10004816: 8bcb                     mov ecx, ebx
10004818: 2bc8                     sub ecx, eax
1000481a: beffffff3f               mov esi, 0x3fffffff
1000481f: 2bf1                     sub esi, ecx
10004821: 3bf0                     cmp esi, eax
10004823: 730a                     jae 0x1000482f
10004825: 6880d00010               push 0x1000d080
1000482a: e8d0020000               call 0x10004aff
1000482f: 03c1                     add eax, ecx
10004831: 8b4f08                   mov ecx, dword ptr [edi + 8]
10004834: 2bca                     sub ecx, edx
10004836: c1f902                   sar ecx, 2
10004839: 3bc1                     cmp eax, ecx
1000483b: 7623                     jbe 0x10004860
1000483d: 8bd1                     mov edx, ecx
1000483f: d1ea                     shr edx, 1
10004841: beffffff3f               mov esi, 0x3fffffff
10004846: 2bf2                     sub esi, edx
10004848: 3bf1                     cmp esi, ecx
1000484a: 7304                     jae 0x10004850
1000484c: 33c9                     xor ecx, ecx
1000484e: eb02                     jmp 0x10004852
10004850: 03ca                     add ecx, edx
10004852: 3bc8                     cmp ecx, eax
10004854: 7302                     jae 0x10004858
10004856: 8bc8                     mov ecx, eax
10004858: 51                       push ecx
10004859: 8bf7                     mov esi, edi
1000485b: e8e0c9ffff               call 0x10001240
10004860: 8b5704                   mov edx, dword ptr [edi + 4]
10004863: 8bc2                     mov eax, edx
10004865: 2b07                     sub eax, dword ptr [edi]
10004867: 8bcb                     mov ecx, ebx
10004869: c1f802                   sar eax, 2
1000486c: 2bc8                     sub ecx, eax
1000486e: 7409                     je 0x10004879
10004870: 33c0                     xor eax, eax
10004872: 8bfa                     mov edi, edx
10004874: f3ab                     rep stosd dword ptr es:[edi], eax
10004876: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10004879: 8b4704                   mov eax, dword ptr [edi + 4]
1000487c: 8bc8                     mov ecx, eax
1000487e: 2b0f                     sub ecx, dword ptr [edi]
10004880: 8bd3                     mov edx, ebx
10004882: c1f902                   sar ecx, 2
10004885: 2bd1                     sub edx, ecx
10004887: 8d0490                   lea eax, [eax + edx*4]
1000488a: 894704                   mov dword ptr [edi + 4], eax
1000488d: 8b75fc                   mov esi, dword ptr [ebp - 4]
10004890: 8b5618                   mov edx, dword ptr [esi + 0x18]
10004893: 8b4e1c                   mov ecx, dword ptr [esi + 0x1c]
10004896: 83c618                   add esi, 0x18
10004899: 895510                   mov dword ptr [ebp + 0x10], edx
1000489c: 3bd1                     cmp edx, ecx
1000489e: 7422                     je 0x100048c2
100048a0: 8bc1                     mov eax, ecx
100048a2: 2bc1                     sub eax, ecx
100048a4: c1f802                   sar eax, 2
100048a7: 03c0                     add eax, eax
100048a9: 03c0                     add eax, eax
100048ab: 50                       push eax
100048ac: 51                       push ecx
100048ad: 52                       push edx
100048ae: 8945f4                   mov dword ptr [ebp - 0xc], eax
100048b1: e85a040000               call 0x10004d10
100048b6: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
100048b9: 83c40c                   add esp, 0xc
100048bc: 034df4                   add ecx, dword ptr [ebp - 0xc]
100048bf: 894e04                   mov dword ptr [esi + 4], ecx
100048c2: 8b4e04                   mov ecx, dword ptr [esi + 4]
100048c5: 8b16                     mov edx, dword ptr [esi]
100048c7: 8bc1                     mov eax, ecx
100048c9: 2bc2                     sub eax, edx
100048cb: c1f802                   sar eax, 2
100048ce: 3bc3                     cmp eax, ebx
100048d0: 762f                     jbe 0x10004901
100048d2: 8d149a                   lea edx, [edx + ebx*4]
100048d5: 895510                   mov dword ptr [ebp + 0x10], edx
100048d8: 3bd1                     cmp edx, ecx
100048da: 0f84a2000000             je 0x10004982
100048e0: 8bc1                     mov eax, ecx
100048e2: 2bc1                     sub eax, ecx
100048e4: c1f802                   sar eax, 2
100048e7: 03c0                     add eax, eax
100048e9: 03c0                     add eax, eax
100048eb: 50                       push eax
100048ec: 51                       push ecx
100048ed: 52                       push edx
100048ee: 8945f4                   mov dword ptr [ebp - 0xc], eax
100048f1: e81a040000               call 0x10004d10
100048f6: 8b4510                   mov eax, dword ptr [ebp + 0x10]
100048f9: 83c40c                   add esp, 0xc
100048fc: 0345f4                   add eax, dword ptr [ebp - 0xc]
100048ff: eb7e                     jmp 0x1000497f
10004901: 737f                     jae 0x10004982
10004903: 8bcb                     mov ecx, ebx
10004905: 2bc8                     sub ecx, eax
10004907: 894510                   mov dword ptr [ebp + 0x10], eax
1000490a: b8ffffff3f               mov eax, 0x3fffffff
1000490f: 2bc1                     sub eax, ecx
10004911: 3b4510                   cmp eax, dword ptr [ebp + 0x10]
10004914: 730a                     jae 0x10004920
10004916: 6880d00010               push 0x1000d080
1000491b: e8df010000               call 0x10004aff
10004920: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10004923: 03c1                     add eax, ecx
10004925: 8b4e08                   mov ecx, dword ptr [esi + 8]
10004928: 2bca                     sub ecx, edx
1000492a: c1f902                   sar ecx, 2
1000492d: 3bc1                     cmp eax, ecx
1000492f: 7624                     jbe 0x10004955
10004931: 8bd1                     mov edx, ecx
10004933: d1ea                     shr edx, 1
10004935: bfffffff3f               mov edi, 0x3fffffff
1000493a: 2bfa                     sub edi, edx
1000493c: 3bf9                     cmp edi, ecx
1000493e: 7304                     jae 0x10004944
10004940: 33c9                     xor ecx, ecx
10004942: eb02                     jmp 0x10004946
10004944: 03ca                     add ecx, edx
10004946: 3bc8                     cmp ecx, eax
10004948: 7302                     jae 0x1000494c
1000494a: 8bc8                     mov ecx, eax
1000494c: 51                       push ecx
1000494d: e8eec8ffff               call 0x10001240
10004952: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10004955: 8b5604                   mov edx, dword ptr [esi + 4]
10004958: 8bc2                     mov eax, edx
1000495a: 2b06                     sub eax, dword ptr [esi]
1000495c: 8bcb                     mov ecx, ebx
1000495e: c1f802                   sar eax, 2
10004961: 2bc8                     sub ecx, eax
10004963: 7409                     je 0x1000496e
10004965: 33c0                     xor eax, eax
10004967: 8bfa                     mov edi, edx
10004969: f3ab                     rep stosd dword ptr es:[edi], eax
1000496b: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
1000496e: 8b4604                   mov eax, dword ptr [esi + 4]
10004971: 8bc8                     mov ecx, eax
10004973: 2b0e                     sub ecx, dword ptr [esi]
10004975: 8bd3                     mov edx, ebx
10004977: c1f902                   sar ecx, 2
1000497a: 2bd1                     sub edx, ecx
1000497c: 8d0490                   lea eax, [eax + edx*4]
1000497f: 894604                   mov dword ptr [esi + 4], eax
10004982: 33c9                     xor ecx, ecx
10004984: 33c0                     xor eax, eax
10004986: 894d10                   mov dword ptr [ebp + 0x10], ecx
10004989: 85db                     test ebx, ebx
1000498b: 7e3e                     jle 0x100049cb
1000498d: 8d4900                   lea ecx, [ecx]
10004990: 8b5508                   mov edx, dword ptr [ebp + 8]
10004993: 0fb60c11                 movzx ecx, byte ptr [ecx + edx]
10004997: 8b17                     mov edx, dword ptr [edi]
10004999: 890c82                   mov dword ptr [edx + eax*4], ecx
1000499c: 8d4bff                   lea ecx, [ebx - 1]
1000499f: 3bc1                     cmp eax, ecx
100049a1: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
100049a4: 7420                     je 0x100049c6
100049a6: 8b5508                   mov edx, dword ptr [ebp + 8]
100049a9: 0fb67c1102               movzx edi, byte ptr [ecx + edx + 2]
100049ae: 0fb6541103               movzx edx, byte ptr [ecx + edx + 3]
100049b3: c1e708                   shl edi, 8
100049b6: 03fa                     add edi, edx
100049b8: 8b16                     mov edx, dword ptr [esi]
100049ba: 83c104                   add ecx, 4
100049bd: 893c82                   mov dword ptr [edx + eax*4], edi
100049c0: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
100049c3: 894d10                   mov dword ptr [ebp + 0x10], ecx
100049c6: 40                       inc eax
100049c7: 3bc3                     cmp eax, ebx
100049c9: 7cc5                     jl 0x10004990
100049cb: 8b4508                   mov eax, dword ptr [ebp + 8]
100049ce: 50                       push eax
100049cf: e86e070000               call 0x10005142
100049d4: 83c404                   add esp, 4
100049d7: 5f                       pop edi
100049d8: 5e                       pop esi
100049d9: b001                     mov al, 1
100049db: 5b                       pop ebx
100049dc: 8be5                     mov esp, ebp
100049de: 5d                       pop ebp
100049df: c20c00                   ret 0xc
100049e2: cc                       int3 
100049e3: cc                       int3 
100049e4: cc                       int3 
100049e5: cc                       int3 
100049e6: cc                       int3 
100049e7: cc                       int3 
100049e8: cc                       int3 
100049e9: cc                       int3 
100049ea: cc                       int3 
100049eb: cc                       int3 
100049ec: cc                       int3 
100049ed: cc                       int3 
100049ee: cc                       int3 
100049ef: cc                       int3 
100049f0: 55                       push ebp
100049f1: 8bec                     mov ebp, esp
100049f3: 56                       push esi
100049f4: 8b7508                   mov esi, dword ptr [ebp + 8]
100049f7: 57                       push edi
100049f8: 8bf9                     mov edi, ecx
100049fa: 85f6                     test esi, esi
100049fc: 7521                     jne 0x10004a1f
100049fe: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10004a01: 85c0                     test eax, eax
10004a03: 7405                     je 0x10004a0a
10004a05: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10004a08: 8908                     mov dword ptr [eax], ecx
10004a0a: 8b4514                   mov eax, dword ptr [ebp + 0x14]
10004a0d: 85c0                     test eax, eax
10004a0f: 7406                     je 0x10004a17
10004a11: c70006000000             mov dword ptr [eax], 6
10004a17: 5f                       pop edi
10004a18: 32c0                     xor al, al
10004a1a: 5e                       pop esi
10004a1b: 5d                       pop ebp
10004a1c: c21000                   ret 0x10
10004a1f: 8b5510                   mov edx, dword ptr [ebp + 0x10]
10004a22: 8b02                     mov eax, dword ptr [edx]
10004a24: 50                       push eax
10004a25: 6a00                     push 0
10004a27: 56                       push esi
10004a28: e893400000               call 0x10008ac0
10004a2d: 66c70600f0               mov word ptr [esi], 0xf000
10004a32: 8a4f08                   mov cl, byte ptr [edi + 8]
10004a35: 884e02                   mov byte ptr [esi + 2], cl
10004a38: 8a5704                   mov dl, byte ptr [edi + 4]
10004a3b: 885603                   mov byte ptr [esi + 3], dl
10004a3e: c6460400                 mov byte ptr [esi + 4], 0
10004a42: 8b4f20                   mov ecx, dword ptr [edi + 0x20]
10004a45: 83c40c                   add esp, 0xc
10004a48: 33c0                     xor eax, eax
10004a4a: 884e05                   mov byte ptr [esi + 5], cl
10004a4d: 85c9                     test ecx, ecx
10004a4f: 7e0f                     jle 0x10004a60
10004a51: 8b5710                   mov edx, dword ptr [edi + 0x10]
10004a54: 8a1482                   mov dl, byte ptr [edx + eax*4]
10004a57: 88540606                 mov byte ptr [esi + eax + 6], dl
10004a5b: 40                       inc eax
10004a5c: 3bc1                     cmp eax, ecx
10004a5e: 7cf1                     jl 0x10004a51
10004a60: 5f                       pop edi
10004a61: b001                     mov al, 1
10004a63: 5e                       pop esi
10004a64: 5d                       pop ebp
10004a65: c21000                   ret 0x10
10004a68: cc                       int3 
10004a69: cc                       int3 
10004a6a: cc                       int3 
10004a6b: cc                       int3 
10004a6c: cc                       int3 
10004a6d: cc                       int3 
10004a6e: cc                       int3 
10004a6f: cc                       int3 
10004a70: 55                       push ebp
10004a71: 8bec                     mov ebp, esp
10004a73: 51                       push ecx
10004a74: 8b4508                   mov eax, dword ptr [ebp + 8]
10004a77: 53                       push ebx
10004a78: 56                       push esi
10004a79: 57                       push edi
10004a7a: 0fb67805                 movzx edi, byte ptr [eax + 5]
10004a7e: 8d7110                   lea esi, [ecx + 0x10]
10004a81: 897920                   mov dword ptr [ecx + 0x20], edi
10004a84: 8b1e                     mov ebx, dword ptr [esi]
10004a86: 8b4604                   mov eax, dword ptr [esi + 4]
10004a89: 3bd8                     cmp ebx, eax
10004a8b: 7421                     je 0x10004aae
10004a8d: 8bc8                     mov ecx, eax
10004a8f: 2bc8                     sub ecx, eax
10004a91: c1f902                   sar ecx, 2
10004a94: 03c9                     add ecx, ecx
10004a96: 03c9                     add ecx, ecx
10004a98: 51                       push ecx
10004a99: 50                       push eax
10004a9a: 53                       push ebx
10004a9b: 894dfc                   mov dword ptr [ebp - 4], ecx
10004a9e: e86d020000               call 0x10004d10
10004aa3: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10004aa6: 83c40c                   add esp, 0xc
10004aa9: 03cb                     add ecx, ebx
10004aab: 894e04                   mov dword ptr [esi + 4], ecx
10004aae: 8bc7                     mov eax, edi
10004ab0: e8abc6ffff               call 0x10001160
10004ab5: 33c0                     xor eax, eax
10004ab7: 85ff                     test edi, edi
10004ab9: 7e17                     jle 0x10004ad2
10004abb: eb03                     jmp 0x10004ac0
10004abd: 8d4900                   lea ecx, [ecx]
10004ac0: 8b5508                   mov edx, dword ptr [ebp + 8]
10004ac3: 0fb64c0206               movzx ecx, byte ptr [edx + eax + 6]
10004ac8: 8b16                     mov edx, dword ptr [esi]
10004aca: 890c82                   mov dword ptr [edx + eax*4], ecx
10004acd: 40                       inc eax
10004ace: 3bc7                     cmp eax, edi
10004ad0: 7cee                     jl 0x10004ac0
10004ad2: 5f                       pop edi
10004ad3: 5e                       pop esi
10004ad4: b001                     mov al, 1
10004ad6: 5b                       pop ebx
10004ad7: 8be5                     mov esp, ebp
10004ad9: 5d                       pop ebp
10004ada: c20c00                   ret 0xc
10004add: e9cb010000               jmp 0x10004cad
10004ae2: 8bff                     mov edi, edi
10004ae4: 55                       push ebp
10004ae5: 8bec                     mov ebp, esp
10004ae7: 56                       push esi
10004ae8: ff7508                   push dword ptr [ebp + 8]
10004aeb: 8bf1                     mov esi, ecx
10004aed: e8ed010000               call 0x10004cdf
10004af2: c70670b10010             mov dword ptr [esi], 0x1000b170
10004af8: 8bc6                     mov eax, esi
10004afa: 5e                       pop esi
10004afb: 5d                       pop ebp
10004afc: c20400                   ret 4
10004aff: 8bff                     mov edi, edi
10004b01: 55                       push ebp
10004b02: 8bec                     mov ebp, esp
10004b04: 83ec0c                   sub esp, 0xc
10004b07: 8b4508                   mov eax, dword ptr [ebp + 8]
10004b0a: 894508                   mov dword ptr [ebp + 8], eax
10004b0d: 8d4508                   lea eax, [ebp + 8]
10004b10: 50                       push eax
10004b11: 8d4df4                   lea ecx, [ebp - 0xc]
10004b14: e838010000               call 0x10004c51
10004b19: 68a4da0010               push 0x1000daa4
10004b1e: 8d45f4                   lea eax, [ebp - 0xc]
10004b21: 50                       push eax
10004b22: c745f47cb10010           mov dword ptr [ebp - 0xc], 0x1000b17c
10004b29: e80f0a0000               call 0x1000553d
10004b2e: cc                       int3 
10004b2f: 8bff                     mov edi, edi
10004b31: 55                       push ebp
10004b32: 8bec                     mov ebp, esp
10004b34: 56                       push esi
10004b35: ff7508                   push dword ptr [ebp + 8]
10004b38: 8bf1                     mov esi, ecx
10004b3a: e8a0010000               call 0x10004cdf
10004b3f: c7067cb10010             mov dword ptr [esi], 0x1000b17c
10004b45: 8bc6                     mov eax, esi
10004b47: 5e                       pop esi
10004b48: 5d                       pop ebp
10004b49: c20400                   ret 4
10004b4c: 8bff                     mov edi, edi
10004b4e: 55                       push ebp
10004b4f: 8bec                     mov ebp, esp
10004b51: 83ec0c                   sub esp, 0xc
10004b54: 8b4508                   mov eax, dword ptr [ebp + 8]
10004b57: 894508                   mov dword ptr [ebp + 8], eax
10004b5a: 8d4508                   lea eax, [ebp + 8]
10004b5d: 50                       push eax
10004b5e: 8d4df4                   lea ecx, [ebp - 0xc]
10004b61: e8eb000000               call 0x10004c51
10004b66: 68e0da0010               push 0x1000dae0
10004b6b: 8d45f4                   lea eax, [ebp - 0xc]
10004b6e: 50                       push eax
10004b6f: c745f488b10010           mov dword ptr [ebp - 0xc], 0x1000b188
10004b76: e8c2090000               call 0x1000553d
10004b7b: cc                       int3 
10004b7c: 8bff                     mov edi, edi
10004b7e: 55                       push ebp
10004b7f: 8bec                     mov ebp, esp
10004b81: 56                       push esi
10004b82: ff7508                   push dword ptr [ebp + 8]
10004b85: 8bf1                     mov esi, ecx
10004b87: e853010000               call 0x10004cdf
10004b8c: c70688b10010             mov dword ptr [esi], 0x1000b188
10004b92: 8bc6                     mov eax, esi
10004b94: 5e                       pop esi
10004b95: 5d                       pop ebp
10004b96: c20400                   ret 4
10004b99: 8bff                     mov edi, edi
10004b9b: 55                       push ebp
10004b9c: 8bec                     mov ebp, esp
10004b9e: 56                       push esi
10004b9f: 8bf1                     mov esi, ecx
10004ba1: e807010000               call 0x10004cad
10004ba6: f6450801                 test byte ptr [ebp + 8], 1
10004baa: 7407                     je 0x10004bb3
10004bac: 56                       push esi
10004bad: e852010000               call 0x10004d04
10004bb2: 59                       pop ecx
10004bb3: 8bc6                     mov eax, esi
10004bb5: 5e                       pop esi
10004bb6: 5d                       pop ebp
10004bb7: c20400                   ret 4
10004bba: 3b0d80f00010             cmp ecx, dword ptr [0x1000f080]
10004bc0: 7502                     jne 0x10004bc4
10004bc2: f3c3                     repz ret 
10004bc4: e9c0090000               jmp 0x10005589
10004bc9: 8bff                     mov edi, edi
10004bcb: 55                       push ebp
10004bcc: 8bec                     mov ebp, esp
10004bce: 8bc1                     mov eax, ecx
10004bd0: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10004bd3: c70094b10010             mov dword ptr [eax], 0x1000b194
10004bd9: 8b09                     mov ecx, dword ptr [ecx]
10004bdb: 894804                   mov dword ptr [eax + 4], ecx
10004bde: c6400800                 mov byte ptr [eax + 8], 0
10004be2: 5d                       pop ebp
10004be3: c20800                   ret 8
10004be6: 8b4104                   mov eax, dword ptr [ecx + 4]
10004be9: 85c0                     test eax, eax
10004beb: 7505                     jne 0x10004bf2
10004bed: b89cb10010               mov eax, 0x1000b19c
10004bf2: c3                       ret 
10004bf3: 8bff                     mov edi, edi
10004bf5: 55                       push ebp
10004bf6: 8bec                     mov ebp, esp
10004bf8: 837d0800                 cmp dword ptr [ebp + 8], 0
10004bfc: 57                       push edi
10004bfd: 8bf9                     mov edi, ecx
10004bff: 742d                     je 0x10004c2e
10004c01: 56                       push esi
10004c02: ff7508                   push dword ptr [ebp + 8]
10004c05: e8e60a0000               call 0x100056f0
10004c0a: 8d7001                   lea esi, [eax + 1]
10004c0d: 56                       push esi
10004c0e: e869050000               call 0x1000517c
10004c13: 59                       pop ecx
10004c14: 59                       pop ecx
10004c15: 894704                   mov dword ptr [edi + 4], eax
10004c18: 85c0                     test eax, eax
10004c1a: 7411                     je 0x10004c2d
10004c1c: ff7508                   push dword ptr [ebp + 8]
10004c1f: 56                       push esi
10004c20: 50                       push eax
10004c21: e8690a0000               call 0x1000568f
10004c26: 83c40c                   add esp, 0xc
10004c29: c6470801                 mov byte ptr [edi + 8], 1
10004c2d: 5e                       pop esi
10004c2e: 5f                       pop edi
10004c2f: 5d                       pop ebp
10004c30: c20400                   ret 4
10004c33: 8bff                     mov edi, edi
10004c35: 56                       push esi
10004c36: 8bf1                     mov esi, ecx
10004c38: 807e0800                 cmp byte ptr [esi + 8], 0
10004c3c: 7409                     je 0x10004c47
10004c3e: ff7604                   push dword ptr [esi + 4]
10004c41: e8fc040000               call 0x10005142
10004c46: 59                       pop ecx
10004c47: 83660400                 and dword ptr [esi + 4], 0
10004c4b: c6460800                 mov byte ptr [esi + 8], 0
10004c4f: 5e                       pop esi
10004c50: c3                       ret 
10004c51: 8bff                     mov edi, edi
10004c53: 55                       push ebp
10004c54: 8bec                     mov ebp, esp
10004c56: 8b4508                   mov eax, dword ptr [ebp + 8]
10004c59: 56                       push esi
10004c5a: 8bf1                     mov esi, ecx
10004c5c: 83660400                 and dword ptr [esi + 4], 0
10004c60: c70694b10010             mov dword ptr [esi], 0x1000b194
10004c66: c6460800                 mov byte ptr [esi + 8], 0
10004c6a: ff30                     push dword ptr [eax]
10004c6c: e882ffffff               call 0x10004bf3
10004c71: 8bc6                     mov eax, esi
10004c73: 5e                       pop esi
10004c74: 5d                       pop ebp
10004c75: c20400                   ret 4
10004c78: 8bff                     mov edi, edi
10004c7a: 55                       push ebp
10004c7b: 8bec                     mov ebp, esp
10004c7d: 56                       push esi
10004c7e: 8b7508                   mov esi, dword ptr [ebp + 8]
10004c81: 57                       push edi
10004c82: 8bf9                     mov edi, ecx
10004c84: 3bfe                     cmp edi, esi
10004c86: 741d                     je 0x10004ca5
10004c88: e8a6ffffff               call 0x10004c33
10004c8d: 807e0800                 cmp byte ptr [esi + 8], 0
10004c91: 740c                     je 0x10004c9f
10004c93: ff7604                   push dword ptr [esi + 4]
10004c96: 8bcf                     mov ecx, edi
10004c98: e856ffffff               call 0x10004bf3
10004c9d: eb06                     jmp 0x10004ca5
10004c9f: 8b4604                   mov eax, dword ptr [esi + 4]
10004ca2: 894704                   mov dword ptr [edi + 4], eax
10004ca5: 8bc7                     mov eax, edi
10004ca7: 5f                       pop edi
10004ca8: 5e                       pop esi
10004ca9: 5d                       pop ebp
10004caa: c20400                   ret 4
10004cad: c70194b10010             mov dword ptr [ecx], 0x1000b194
10004cb3: e97bffffff               jmp 0x10004c33
10004cb8: 8bff                     mov edi, edi
10004cba: 55                       push ebp
10004cbb: 8bec                     mov ebp, esp
10004cbd: 56                       push esi
10004cbe: 8bf1                     mov esi, ecx
10004cc0: c70694b10010             mov dword ptr [esi], 0x1000b194
10004cc6: e868ffffff               call 0x10004c33
10004ccb: f6450801                 test byte ptr [ebp + 8], 1
10004ccf: 7407                     je 0x10004cd8
10004cd1: 56                       push esi
10004cd2: e82d000000               call 0x10004d04
10004cd7: 59                       pop ecx
10004cd8: 8bc6                     mov eax, esi
10004cda: 5e                       pop esi
10004cdb: 5d                       pop ebp
10004cdc: c20400                   ret 4
10004cdf: 8bff                     mov edi, edi
10004ce1: 55                       push ebp
10004ce2: 8bec                     mov ebp, esp
10004ce4: 56                       push esi
10004ce5: ff7508                   push dword ptr [ebp + 8]
10004ce8: 8bf1                     mov esi, ecx
10004cea: 83660400                 and dword ptr [esi + 4], 0
10004cee: c70694b10010             mov dword ptr [esi], 0x1000b194
10004cf4: c6460800                 mov byte ptr [esi + 8], 0
10004cf8: e87bffffff               call 0x10004c78
10004cfd: 8bc6                     mov eax, esi
10004cff: 5e                       pop esi
10004d00: 5d                       pop ebp
10004d01: c20400                   ret 4
10004d04: 8bff                     mov edi, edi
10004d06: 55                       push ebp
10004d07: 8bec                     mov ebp, esp
10004d09: 5d                       pop ebp
10004d0a: e933040000               jmp 0x10005142
10004d0f: cc                       int3 
10004d10: 55                       push ebp
10004d11: 8bec                     mov ebp, esp
10004d13: 57                       push edi
10004d14: 56                       push esi
10004d15: 8b750c                   mov esi, dword ptr [ebp + 0xc]
10004d18: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10004d1b: 8b7d08                   mov edi, dword ptr [ebp + 8]
10004d1e: 8bc1                     mov eax, ecx
10004d20: 8bd1                     mov edx, ecx
10004d22: 03c6                     add eax, esi
10004d24: 3bfe                     cmp edi, esi
10004d26: 7608                     jbe 0x10004d30
10004d28: 3bf8                     cmp edi, eax
10004d2a: 0f82a0010000             jb 0x10004ed0
10004d30: 81f980000000             cmp ecx, 0x80
10004d36: 721c                     jb 0x10004d54
10004d38: 833df80e011000           cmp dword ptr [0x10010ef8], 0
10004d3f: 7413                     je 0x10004d54
10004d41: 57                       push edi
10004d42: 56                       push esi
10004d43: 83e70f                   and edi, 0xf
10004d46: 83e60f                   and esi, 0xf
10004d49: 3bfe                     cmp edi, esi
10004d4b: 5e                       pop esi
10004d4c: 5f                       pop edi
10004d4d: 7505                     jne 0x10004d54
10004d4f: e9270a0000               jmp 0x1000577b
10004d54: f7c703000000             test edi, 3
10004d5a: 7514                     jne 0x10004d70
10004d5c: c1e902                   shr ecx, 2
10004d5f: 83e203                   and edx, 3
10004d62: 83f908                   cmp ecx, 8
10004d65: 7229                     jb 0x10004d90
10004d67: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004d69: ff2495804e0010           jmp dword ptr [edx*4 + 0x10004e80]
10004d70: 8bc7                     mov eax, edi
10004d72: ba03000000               mov edx, 3
10004d77: 83e904                   sub ecx, 4
10004d7a: 720c                     jb 0x10004d88
10004d7c: 83e003                   and eax, 3
10004d7f: 03c8                     add ecx, eax
10004d81: ff2485944d0010           jmp dword ptr [eax*4 + 0x10004d94]
10004d88: ff248d904e0010           jmp dword ptr [ecx*4 + 0x10004e90]
10004d8f: 90                       nop 
10004d90: ff248d144e0010           jmp dword ptr [ecx*4 + 0x10004e14]
10004d97: 90                       nop 
10004d98: a4                       movsb byte ptr es:[edi], byte ptr [esi]
10004d99: 4d                       dec ebp
10004d9a: 0010                     add byte ptr [eax], dl
10004d9c: d04d00                   ror byte ptr [ebp], 1
10004d9f: 10f4                     adc ah, dh
10004da1: 4d                       dec ebp
10004da2: 0010                     add byte ptr [eax], dl
10004da4: 23d1                     and edx, ecx
10004da6: 8a06                     mov al, byte ptr [esi]
10004da8: 8807                     mov byte ptr [edi], al
10004daa: 8a4601                   mov al, byte ptr [esi + 1]
10004dad: 884701                   mov byte ptr [edi + 1], al
10004db0: 8a4602                   mov al, byte ptr [esi + 2]
10004db3: c1e902                   shr ecx, 2
10004db6: 884702                   mov byte ptr [edi + 2], al
10004db9: 83c603                   add esi, 3
10004dbc: 83c703                   add edi, 3
10004dbf: 83f908                   cmp ecx, 8
10004dc2: 72cc                     jb 0x10004d90
10004dc4: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004dc6: ff2495804e0010           jmp dword ptr [edx*4 + 0x10004e80]
10004dcd: 8d4900                   lea ecx, [ecx]
10004dd0: 23d1                     and edx, ecx
10004dd2: 8a06                     mov al, byte ptr [esi]
10004dd4: 8807                     mov byte ptr [edi], al
10004dd6: 8a4601                   mov al, byte ptr [esi + 1]
10004dd9: c1e902                   shr ecx, 2
10004ddc: 884701                   mov byte ptr [edi + 1], al
10004ddf: 83c602                   add esi, 2
10004de2: 83c702                   add edi, 2
10004de5: 83f908                   cmp ecx, 8
10004de8: 72a6                     jb 0x10004d90
10004dea: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004dec: ff2495804e0010           jmp dword ptr [edx*4 + 0x10004e80]
10004df3: 90                       nop 
10004df4: 23d1                     and edx, ecx
10004df6: 8a06                     mov al, byte ptr [esi]
10004df8: 8807                     mov byte ptr [edi], al
10004dfa: 83c601                   add esi, 1
10004dfd: c1e902                   shr ecx, 2
10004e00: 83c701                   add edi, 1
10004e03: 83f908                   cmp ecx, 8
10004e06: 7288                     jb 0x10004d90
10004e08: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004e0a: ff2495804e0010           jmp dword ptr [edx*4 + 0x10004e80]
10004e11: 8d4900                   lea ecx, [ecx]
10004e14: 774e                     ja 0x10004e64
10004e16: 0010                     add byte ptr [eax], dl
10004e18: 644e                     dec esi
10004e1a: 0010                     add byte ptr [eax], dl
10004e1c: 5c                       pop esp
10004e1d: 4e                       dec esi
10004e1e: 0010                     add byte ptr [eax], dl
10004e20: 54                       push esp
10004e21: 4e                       dec esi
10004e22: 0010                     add byte ptr [eax], dl
10004e24: 4c                       dec esp
10004e25: 4e                       dec esi
10004e26: 0010                     add byte ptr [eax], dl
10004e28: 44                       inc esp
10004e29: 4e                       dec esi
10004e2a: 0010                     add byte ptr [eax], dl
10004e2c: 3c4e                     cmp al, 0x4e
10004e2e: 0010                     add byte ptr [eax], dl
10004e30: 344e                     xor al, 0x4e
10004e32: 0010                     add byte ptr [eax], dl
10004e34: 8b448ee4                 mov eax, dword ptr [esi + ecx*4 - 0x1c]
10004e38: 89448fe4                 mov dword ptr [edi + ecx*4 - 0x1c], eax
10004e3c: 8b448ee8                 mov eax, dword ptr [esi + ecx*4 - 0x18]
10004e40: 89448fe8                 mov dword ptr [edi + ecx*4 - 0x18], eax
10004e44: 8b448eec                 mov eax, dword ptr [esi + ecx*4 - 0x14]
10004e48: 89448fec                 mov dword ptr [edi + ecx*4 - 0x14], eax
10004e4c: 8b448ef0                 mov eax, dword ptr [esi + ecx*4 - 0x10]
10004e50: 89448ff0                 mov dword ptr [edi + ecx*4 - 0x10], eax
10004e54: 8b448ef4                 mov eax, dword ptr [esi + ecx*4 - 0xc]
10004e58: 89448ff4                 mov dword ptr [edi + ecx*4 - 0xc], eax
10004e5c: 8b448ef8                 mov eax, dword ptr [esi + ecx*4 - 8]
10004e60: 89448ff8                 mov dword ptr [edi + ecx*4 - 8], eax
10004e64: 8b448efc                 mov eax, dword ptr [esi + ecx*4 - 4]
10004e68: 89448ffc                 mov dword ptr [edi + ecx*4 - 4], eax
10004e6c: 8d048d00000000           lea eax, [ecx*4]
10004e73: 03f0                     add esi, eax
10004e75: 03f8                     add edi, eax
10004e77: ff2495804e0010           jmp dword ptr [edx*4 + 0x10004e80]
10004e7e: 8bff                     mov edi, edi
10004e80: 90                       nop 
10004e81: 4e                       dec esi
10004e82: 0010                     add byte ptr [eax], dl
10004e84: 98                       cwde 
10004e85: 4e                       dec esi
10004e86: 0010                     add byte ptr [eax], dl
10004e88: a4                       movsb byte ptr es:[edi], byte ptr [esi]
10004e89: 4e                       dec esi
10004e8a: 0010                     add byte ptr [eax], dl
10004e8c: b84e00108b               mov eax, 0x8b10004e
10004e91: 45                       inc ebp
10004e92: 085e5f                   or byte ptr [esi + 0x5f], bl
10004e95: c9                       leave 
10004e96: c3                       ret 
10004e97: 90                       nop 
10004e98: 8a06                     mov al, byte ptr [esi]
10004e9a: 8807                     mov byte ptr [edi], al
10004e9c: 8b4508                   mov eax, dword ptr [ebp + 8]
10004e9f: 5e                       pop esi
10004ea0: 5f                       pop edi
10004ea1: c9                       leave 
10004ea2: c3                       ret 
10004ea3: 90                       nop 
10004ea4: 8a06                     mov al, byte ptr [esi]
10004ea6: 8807                     mov byte ptr [edi], al
10004ea8: 8a4601                   mov al, byte ptr [esi + 1]
10004eab: 884701                   mov byte ptr [edi + 1], al
10004eae: 8b4508                   mov eax, dword ptr [ebp + 8]
10004eb1: 5e                       pop esi
10004eb2: 5f                       pop edi
10004eb3: c9                       leave 
10004eb4: c3                       ret 
10004eb5: 8d4900                   lea ecx, [ecx]
10004eb8: 8a06                     mov al, byte ptr [esi]
10004eba: 8807                     mov byte ptr [edi], al
10004ebc: 8a4601                   mov al, byte ptr [esi + 1]
10004ebf: 884701                   mov byte ptr [edi + 1], al
10004ec2: 8a4602                   mov al, byte ptr [esi + 2]
10004ec5: 884702                   mov byte ptr [edi + 2], al
10004ec8: 8b4508                   mov eax, dword ptr [ebp + 8]
10004ecb: 5e                       pop esi
10004ecc: 5f                       pop edi
10004ecd: c9                       leave 
10004ece: c3                       ret 
10004ecf: 90                       nop 
10004ed0: 8d7431fc                 lea esi, [ecx + esi - 4]
10004ed4: 8d7c39fc                 lea edi, [ecx + edi - 4]
10004ed8: f7c703000000             test edi, 3
10004ede: 7524                     jne 0x10004f04
10004ee0: c1e902                   shr ecx, 2
10004ee3: 83e203                   and edx, 3
10004ee6: 83f908                   cmp ecx, 8
10004ee9: 720d                     jb 0x10004ef8
10004eeb: fd                       std 
10004eec: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004eee: fc                       cld 
10004eef: ff24951c500010           jmp dword ptr [edx*4 + 0x1000501c]
10004ef6: 8bff                     mov edi, edi
10004ef8: f7d9                     neg ecx
10004efa: ff248dcc4f0010           jmp dword ptr [ecx*4 + 0x10004fcc]
10004f01: 8d4900                   lea ecx, [ecx]
10004f04: 8bc7                     mov eax, edi
10004f06: ba03000000               mov edx, 3
10004f0b: 83f904                   cmp ecx, 4
10004f0e: 720c                     jb 0x10004f1c
10004f10: 83e003                   and eax, 3
10004f13: 2bc8                     sub ecx, eax
10004f15: ff2485204f0010           jmp dword ptr [eax*4 + 0x10004f20]
10004f1c: ff248d1c500010           jmp dword ptr [ecx*4 + 0x1000501c]
10004f23: 90                       nop 
10004f24: 304f00                   xor byte ptr [edi], cl
10004f27: 10544f00                 adc byte ptr [edi + ecx*2], dl
10004f2b: 107c4f00                 adc byte ptr [edi + ecx*2], bh
10004f2f: 108a460323d1             adc byte ptr [edx - 0x2edcfcba], cl
10004f35: 884703                   mov byte ptr [edi + 3], al
10004f38: 83ee01                   sub esi, 1
10004f3b: c1e902                   shr ecx, 2
10004f3e: 83ef01                   sub edi, 1
10004f41: 83f908                   cmp ecx, 8
10004f44: 72b2                     jb 0x10004ef8
10004f46: fd                       std 
10004f47: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004f49: fc                       cld 
10004f4a: ff24951c500010           jmp dword ptr [edx*4 + 0x1000501c]
10004f51: 8d4900                   lea ecx, [ecx]
10004f54: 8a4603                   mov al, byte ptr [esi + 3]
10004f57: 23d1                     and edx, ecx
10004f59: 884703                   mov byte ptr [edi + 3], al
10004f5c: 8a4602                   mov al, byte ptr [esi + 2]
10004f5f: c1e902                   shr ecx, 2
10004f62: 884702                   mov byte ptr [edi + 2], al
10004f65: 83ee02                   sub esi, 2
10004f68: 83ef02                   sub edi, 2
10004f6b: 83f908                   cmp ecx, 8
10004f6e: 7288                     jb 0x10004ef8
10004f70: fd                       std 
10004f71: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004f73: fc                       cld 
10004f74: ff24951c500010           jmp dword ptr [edx*4 + 0x1000501c]
10004f7b: 90                       nop 
10004f7c: 8a4603                   mov al, byte ptr [esi + 3]
10004f7f: 23d1                     and edx, ecx
10004f81: 884703                   mov byte ptr [edi + 3], al
10004f84: 8a4602                   mov al, byte ptr [esi + 2]
10004f87: 884702                   mov byte ptr [edi + 2], al
10004f8a: 8a4601                   mov al, byte ptr [esi + 1]
10004f8d: c1e902                   shr ecx, 2
10004f90: 884701                   mov byte ptr [edi + 1], al
10004f93: 83ee03                   sub esi, 3
10004f96: 83ef03                   sub edi, 3
10004f99: 83f908                   cmp ecx, 8
10004f9c: 0f8256ffffff             jb 0x10004ef8
10004fa2: fd                       std 
10004fa3: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10004fa5: fc                       cld 
10004fa6: ff24951c500010           jmp dword ptr [edx*4 + 0x1000501c]
10004fad: 8d4900                   lea ecx, [ecx]
10004fb0: d04f00                   ror byte ptr [edi], 1
10004fb3: 10d8                     adc al, bl
10004fb5: 4f                       dec edi
10004fb6: 0010                     add byte ptr [eax], dl
10004fb8: e04f                     loopne 0x10005009
10004fba: 0010                     add byte ptr [eax], dl
10004fbc: e84f0010f0               call 0x105010
10004fc1: 4f                       dec edi
10004fc2: 0010                     add byte ptr [eax], dl
10004fc4: f8                       clc 
10004fc5: 4f                       dec edi
10004fc6: 0010                     add byte ptr [eax], dl
10004fc8: 005000                   add byte ptr [eax], dl
10004fcb: 1013                     adc byte ptr [ebx], dl
10004fcd: 50                       push eax
10004fce: 0010                     add byte ptr [eax], dl
10004fd0: 8b448e1c                 mov eax, dword ptr [esi + ecx*4 + 0x1c]
10004fd4: 89448f1c                 mov dword ptr [edi + ecx*4 + 0x1c], eax
10004fd8: 8b448e18                 mov eax, dword ptr [esi + ecx*4 + 0x18]
10004fdc: 89448f18                 mov dword ptr [edi + ecx*4 + 0x18], eax
10004fe0: 8b448e14                 mov eax, dword ptr [esi + ecx*4 + 0x14]
10004fe4: 89448f14                 mov dword ptr [edi + ecx*4 + 0x14], eax
10004fe8: 8b448e10                 mov eax, dword ptr [esi + ecx*4 + 0x10]
10004fec: 89448f10                 mov dword ptr [edi + ecx*4 + 0x10], eax
10004ff0: 8b448e0c                 mov eax, dword ptr [esi + ecx*4 + 0xc]
10004ff4: 89448f0c                 mov dword ptr [edi + ecx*4 + 0xc], eax
10004ff8: 8b448e08                 mov eax, dword ptr [esi + ecx*4 + 8]
10004ffc: 89448f08                 mov dword ptr [edi + ecx*4 + 8], eax
10005000: 8b448e04                 mov eax, dword ptr [esi + ecx*4 + 4]
10005004: 89448f04                 mov dword ptr [edi + ecx*4 + 4], eax
10005008: 8d048d00000000           lea eax, [ecx*4]
1000500f: 03f0                     add esi, eax
10005011: 03f8                     add edi, eax
10005013: ff24951c500010           jmp dword ptr [edx*4 + 0x1000501c]
1000501a: 8bff                     mov edi, edi
1000501c: 2c50                     sub al, 0x50
1000501e: 0010                     add byte ptr [eax], dl
10005020: 3450                     xor al, 0x50
10005022: 0010                     add byte ptr [eax], dl
10005024: 44                       inc esp
10005025: 50                       push eax
10005026: 0010                     add byte ptr [eax], dl
10005028: 58                       pop eax
10005029: 50                       push eax
1000502a: 0010                     add byte ptr [eax], dl
1000502c: 8b4508                   mov eax, dword ptr [ebp + 8]
1000502f: 5e                       pop esi
10005030: 5f                       pop edi
10005031: c9                       leave 
10005032: c3                       ret 
10005033: 90                       nop 
10005034: 8a4603                   mov al, byte ptr [esi + 3]
10005037: 884703                   mov byte ptr [edi + 3], al
1000503a: 8b4508                   mov eax, dword ptr [ebp + 8]
1000503d: 5e                       pop esi
1000503e: 5f                       pop edi
1000503f: c9                       leave 
10005040: c3                       ret 
10005041: 8d4900                   lea ecx, [ecx]
10005044: 8a4603                   mov al, byte ptr [esi + 3]
10005047: 884703                   mov byte ptr [edi + 3], al
1000504a: 8a4602                   mov al, byte ptr [esi + 2]
1000504d: 884702                   mov byte ptr [edi + 2], al
10005050: 8b4508                   mov eax, dword ptr [ebp + 8]
10005053: 5e                       pop esi
10005054: 5f                       pop edi
10005055: c9                       leave 
10005056: c3                       ret 
10005057: 90                       nop 
10005058: 8a4603                   mov al, byte ptr [esi + 3]
1000505b: 884703                   mov byte ptr [edi + 3], al
1000505e: 8a4602                   mov al, byte ptr [esi + 2]
10005061: 884702                   mov byte ptr [edi + 2], al
10005064: 8a4601                   mov al, byte ptr [esi + 1]
10005067: 884701                   mov byte ptr [edi + 1], al
1000506a: 8b4508                   mov eax, dword ptr [ebp + 8]
1000506d: 5e                       pop esi
1000506e: 5f                       pop edi
1000506f: c9                       leave 
10005070: c3                       ret 
10005071: 8bff                     mov edi, edi
10005073: 55                       push ebp
10005074: 8bec                     mov ebp, esp
10005076: 83ec10                   sub esp, 0x10
10005079: eb0d                     jmp 0x10005088
1000507b: ff7508                   push dword ptr [ebp + 8]
1000507e: e854090000               call 0x100059d7
10005083: 59                       pop ecx
10005084: 85c0                     test eax, eax
10005086: 740f                     je 0x10005097
10005088: ff7508                   push dword ptr [ebp + 8]
1000508b: e8ec000000               call 0x1000517c
10005090: 59                       pop ecx
10005091: 85c0                     test eax, eax
10005093: 74e6                     je 0x1000507b
10005095: c9                       leave 
10005096: c3                       ret 
10005097: f6050cfd001001           test byte ptr [0x1000fd0c], 1
1000509e: bf00fd0010               mov edi, 0x1000fd00
100050a3: beb4b10010               mov esi, 0x1000b1b4
100050a8: 752c                     jne 0x100050d6
100050aa: 830d0cfd001001           or dword ptr [0x1000fd0c], 1
100050b1: 6a01                     push 1
100050b3: 8d45fc                   lea eax, [ebp - 4]
100050b6: 50                       push eax
100050b7: 8bcf                     mov ecx, edi
100050b9: c745fcbcb10010           mov dword ptr [ebp - 4], 0x1000b1bc
100050c0: e804fbffff               call 0x10004bc9
100050c5: 686baf0010               push 0x1000af6b
100050ca: 893500fd0010             mov dword ptr [0x1000fd00], esi
100050d0: e8dc080000               call 0x100059b1
100050d5: 59                       pop ecx
100050d6: 57                       push edi
100050d7: 8d4df0                   lea ecx, [ebp - 0x10]
100050da: e800fcffff               call 0x10004cdf
100050df: 6850dd0010               push 0x1000dd50
100050e4: 8d45f0                   lea eax, [ebp - 0x10]
100050e7: 50                       push eax
100050e8: 8975f0                   mov dword ptr [ebp - 0x10], esi
100050eb: e84d040000               call 0x1000553d
100050f0: cc                       int3 
100050f1: 8bff                     mov edi, edi
100050f3: 51                       push ecx
100050f4: c701d0b10010             mov dword ptr [ecx], 0x1000b1d0
100050fa: e800090000               call 0x100059ff
100050ff: 59                       pop ecx
10005100: c3                       ret 
10005101: 8bff                     mov edi, edi
10005103: 55                       push ebp
10005104: 8bec                     mov ebp, esp
10005106: 56                       push esi
10005107: 8bf1                     mov esi, ecx
10005109: e8e3ffffff               call 0x100050f1
1000510e: f6450801                 test byte ptr [ebp + 8], 1
10005112: 7407                     je 0x1000511b
10005114: 56                       push esi
10005115: e8eafbffff               call 0x10004d04
1000511a: 59                       pop ecx
1000511b: 8bc6                     mov eax, esi
1000511d: 5e                       pop esi
1000511e: 5d                       pop ebp
1000511f: c20400                   ret 4
10005122: 8bff                     mov edi, edi
10005124: 55                       push ebp
10005125: 8bec                     mov ebp, esp
10005127: 8b4508                   mov eax, dword ptr [ebp + 8]
1000512a: 83c109                   add ecx, 9
1000512d: 51                       push ecx
1000512e: 83c009                   add eax, 9
10005131: 50                       push eax
10005132: e839090000               call 0x10005a70
10005137: f7d8                     neg eax
10005139: 59                       pop ecx
1000513a: 1bc0                     sbb eax, eax
1000513c: 59                       pop ecx
1000513d: 40                       inc eax
1000513e: 5d                       pop ebp
1000513f: c20400                   ret 4
10005142: 8bff                     mov edi, edi
10005144: 55                       push ebp
10005145: 8bec                     mov ebp, esp
10005147: 837d0800                 cmp dword ptr [ebp + 8], 0
1000514b: 742d                     je 0x1000517a
1000514d: ff7508                   push dword ptr [ebp + 8]
10005150: 6a00                     push 0
10005152: ff3558000110             push dword ptr [0x10010058]
10005158: ff153cb00010             call dword ptr [0x1000b03c]
1000515e: 85c0                     test eax, eax
10005160: 7518                     jne 0x1000517a
10005162: 56                       push esi
10005163: e8d2090000               call 0x10005b3a
10005168: 8bf0                     mov esi, eax
1000516a: ff1510b00010             call dword ptr [0x1000b010]
10005170: 50                       push eax
10005171: e882090000               call 0x10005af8
10005176: 59                       pop ecx
10005177: 8906                     mov dword ptr [esi], eax
10005179: 5e                       pop esi
1000517a: 5d                       pop ebp
1000517b: c3                       ret 
1000517c: 8bff                     mov edi, edi
1000517e: 55                       push ebp
1000517f: 8bec                     mov ebp, esp
10005181: 53                       push ebx
10005182: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10005185: 83fbe0                   cmp ebx, -0x20
10005188: 776f                     ja 0x100051f9
1000518a: 56                       push esi
1000518b: 57                       push edi
1000518c: 833d5800011000           cmp dword ptr [0x10010058], 0
10005193: 7518                     jne 0x100051ad
10005195: e8800e0000               call 0x1000601a
1000519a: 6a1e                     push 0x1e
1000519c: e8ca0c0000               call 0x10005e6b
100051a1: 68ff000000               push 0xff
100051a6: e8ff090000               call 0x10005baa
100051ab: 59                       pop ecx
100051ac: 59                       pop ecx
100051ad: 85db                     test ebx, ebx
100051af: 7404                     je 0x100051b5
100051b1: 8bc3                     mov eax, ebx
100051b3: eb03                     jmp 0x100051b8
100051b5: 33c0                     xor eax, eax
100051b7: 40                       inc eax
100051b8: 50                       push eax
100051b9: 6a00                     push 0
100051bb: ff3558000110             push dword ptr [0x10010058]
100051c1: ff1540b00010             call dword ptr [0x1000b040]
100051c7: 8bf8                     mov edi, eax
100051c9: 85ff                     test edi, edi
100051cb: 7526                     jne 0x100051f3
100051cd: 6a0c                     push 0xc
100051cf: 5e                       pop esi
100051d0: 3905b8060110             cmp dword ptr [0x100106b8], eax
100051d6: 740d                     je 0x100051e5
100051d8: 53                       push ebx
100051d9: e8f9070000               call 0x100059d7
100051de: 59                       pop ecx
100051df: 85c0                     test eax, eax
100051e1: 75a9                     jne 0x1000518c
100051e3: eb07                     jmp 0x100051ec
100051e5: e850090000               call 0x10005b3a
100051ea: 8930                     mov dword ptr [eax], esi
100051ec: e849090000               call 0x10005b3a
100051f1: 8930                     mov dword ptr [eax], esi
100051f3: 8bc7                     mov eax, edi
100051f5: 5f                       pop edi
100051f6: 5e                       pop esi
100051f7: eb14                     jmp 0x1000520d
100051f9: 53                       push ebx
100051fa: e8d8070000               call 0x100059d7
100051ff: 59                       pop ecx
10005200: e835090000               call 0x10005b3a
10005205: c7000c000000             mov dword ptr [eax], 0xc
1000520b: 33c0                     xor eax, eax
1000520d: 5b                       pop ebx
1000520e: 5d                       pop ebp
1000520f: c3                       ret 
10005210: 8b4c2408                 mov ecx, dword ptr [esp + 8]
10005214: 57                       push edi
10005215: 53                       push ebx
10005216: 56                       push esi
10005217: 8a11                     mov dl, byte ptr [ecx]
10005219: 8b7c2410                 mov edi, dword ptr [esp + 0x10]
1000521d: 84d2                     test dl, dl
1000521f: 746f                     je 0x10005290
10005221: 8a7101                   mov dh, byte ptr [ecx + 1]
10005224: 84f6                     test dh, dh
10005226: 7455                     je 0x1000527d
10005228: 8bf7                     mov esi, edi
1000522a: 8b4c2414                 mov ecx, dword ptr [esp + 0x14]
1000522e: 8a07                     mov al, byte ptr [edi]
10005230: 83c601                   add esi, 1
10005233: 3ac2                     cmp al, dl
10005235: 7417                     je 0x1000524e
10005237: 84c0                     test al, al
10005239: 740d                     je 0x10005248
1000523b: 8a06                     mov al, byte ptr [esi]
1000523d: 83c601                   add esi, 1
10005240: 3ac2                     cmp al, dl
10005242: 740a                     je 0x1000524e
10005244: 84c0                     test al, al
10005246: 75f3                     jne 0x1000523b
10005248: 5e                       pop esi
10005249: 5b                       pop ebx
1000524a: 5f                       pop edi
1000524b: 33c0                     xor eax, eax
1000524d: c3                       ret 
1000524e: 8a06                     mov al, byte ptr [esi]
10005250: 83c601                   add esi, 1
10005253: 3ac6                     cmp al, dh
10005255: 75e9                     jne 0x10005240
10005257: 8d7eff                   lea edi, [esi - 1]
1000525a: 8a6102                   mov ah, byte ptr [ecx + 2]
1000525d: 84e4                     test ah, ah
1000525f: 7428                     je 0x10005289
10005261: 8a06                     mov al, byte ptr [esi]
10005263: 83c602                   add esi, 2
10005266: 3ac4                     cmp al, ah
10005268: 75be                     jne 0x10005228
1000526a: 8a4103                   mov al, byte ptr [ecx + 3]
1000526d: 84c0                     test al, al
1000526f: 7418                     je 0x10005289
10005271: 8a66ff                   mov ah, byte ptr [esi - 1]
10005274: 83c102                   add ecx, 2
10005277: 3ac4                     cmp al, ah
10005279: 74df                     je 0x1000525a
1000527b: ebab                     jmp 0x10005228
1000527d: 33c0                     xor eax, eax
1000527f: 5e                       pop esi
10005280: 5b                       pop ebx
10005281: 5f                       pop edi
10005282: 8ac2                     mov al, dl
10005284: e9ed0d0000               jmp 0x10006076
10005289: 8d47ff                   lea eax, [edi - 1]
1000528c: 5e                       pop esi
1000528d: 5b                       pop ebx
1000528e: 5f                       pop edi
1000528f: c3                       ret 
10005290: 8bc7                     mov eax, edi
10005292: 5e                       pop esi
10005293: 5b                       pop ebx
10005294: 5f                       pop edi
10005295: c3                       ret 
10005296: ff35bc060110             push dword ptr [0x100106bc]
1000529c: ff1544b00010             call dword ptr [0x1000b044]
100052a2: 85c0                     test eax, eax
100052a4: 7402                     je 0x100052a8
100052a6: ffd0                     call eax
100052a8: 6a19                     push 0x19
100052aa: e8bc0b0000               call 0x10005e6b
100052af: 6a01                     push 1
100052b1: 6a00                     push 0
100052b3: e8a90e0000               call 0x10006161
100052b8: 83c40c                   add esp, 0xc
100052bb: e96e0e0000               jmp 0x1000612e
100052c0: 6a08                     push 8
100052c2: 6820db0010               push 0x1000db20
100052c7: e8341b0000               call 0x10006e00
100052cc: 8b450c                   mov eax, dword ptr [ebp + 0xc]
100052cf: 83f801                   cmp eax, 1
100052d2: 757a                     jne 0x1000534e
100052d4: e874080000               call 0x10005b4d
100052d9: 85c0                     test eax, eax
100052db: 7507                     jne 0x100052e4
100052dd: 33c0                     xor eax, eax
100052df: e938010000               jmp 0x1000541c
100052e4: e80f120000               call 0x100064f8
100052e9: 85c0                     test eax, eax
100052eb: 7507                     jne 0x100052f4
100052ed: e879080000               call 0x10005b6b
100052f2: ebe9                     jmp 0x100052dd
100052f4: e8b91a0000               call 0x10006db2
100052f9: ff1550b00010             call dword ptr [0x1000b050]
100052ff: a3fc0e0110               mov dword ptr [0x10010efc], eax
10005304: e8121a0000               call 0x10006d1b
10005309: a314fd0010               mov dword ptr [0x1000fd14], eax
1000530e: e83f140000               call 0x10006752
10005313: 85c0                     test eax, eax
10005315: 7907                     jns 0x1000531e
10005317: e8bb0e0000               call 0x100061d7
1000531c: ebcf                     jmp 0x100052ed
1000531e: e83d190000               call 0x10006c60
10005323: 85c0                     test eax, eax
10005325: 7820                     js 0x10005347
10005327: e8be160000               call 0x100069ea
1000532c: 85c0                     test eax, eax
1000532e: 7817                     js 0x10005347
10005330: 6a00                     push 0
10005332: e8f4080000               call 0x10005c2b
10005337: 59                       pop ecx
10005338: 85c0                     test eax, eax
1000533a: 750b                     jne 0x10005347
1000533c: ff0510fd0010             inc dword ptr [0x1000fd10]
10005342: e9d2000000               jmp 0x10005419
10005347: e84b160000               call 0x10006997
1000534c: ebc9                     jmp 0x10005317
1000534e: 33ff                     xor edi, edi
10005350: 3bc7                     cmp eax, edi
10005352: 755b                     jne 0x100053af
10005354: 393d10fd0010             cmp dword ptr [0x1000fd10], edi
1000535a: 7e81                     jle 0x100052dd
1000535c: ff0d10fd0010             dec dword ptr [0x1000fd10]
10005362: 897dfc                   mov dword ptr [ebp - 4], edi
10005365: 393d88000110             cmp dword ptr [0x10010088], edi
1000536b: 7505                     jne 0x10005372
1000536d: e8a60a0000               call 0x10005e18
10005372: 397d10                   cmp dword ptr [ebp + 0x10], edi
10005375: 750f                     jne 0x10005386
10005377: e81b160000               call 0x10006997
1000537c: e8560e0000               call 0x100061d7
10005381: e8e5070000               call 0x10005b6b
10005386: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000538d: e807000000               call 0x10005399
10005392: e982000000               jmp 0x10005419
10005397: 33ff                     xor edi, edi
10005399: 397d10                   cmp dword ptr [ebp + 0x10], edi
1000539c: 750e                     jne 0x100053ac
1000539e: 833d04f20010ff           cmp dword ptr [0x1000f204], -1
100053a5: 7405                     je 0x100053ac
100053a7: e82b0e0000               call 0x100061d7
100053ac: c3                       ret 
100053ad: eb6a                     jmp 0x10005419
100053af: 83f802                   cmp eax, 2
100053b2: 7559                     jne 0x1000540d
100053b4: e8ea0d0000               call 0x100061a3
100053b9: 6814020000               push 0x214
100053be: 6a01                     push 1
100053c0: e8f3120000               call 0x100066b8
100053c5: 59                       pop ecx
100053c6: 59                       pop ecx
100053c7: 8bf0                     mov esi, eax
100053c9: 3bf7                     cmp esi, edi
100053cb: 0f840cffffff             je 0x100052dd
100053d1: 56                       push esi
100053d2: ff3504f20010             push dword ptr [0x1000f204]
100053d8: ff35c8060110             push dword ptr [0x100106c8]
100053de: ff1544b00010             call dword ptr [0x1000b044]
100053e4: ffd0                     call eax
100053e6: 85c0                     test eax, eax
100053e8: 7417                     je 0x10005401
100053ea: 57                       push edi
100053eb: 56                       push esi
100053ec: e8230e0000               call 0x10006214
100053f1: 59                       pop ecx
100053f2: 59                       pop ecx
100053f3: ff154cb00010             call dword ptr [0x1000b04c]
100053f9: 8906                     mov dword ptr [esi], eax
100053fb: 834e04ff                 or dword ptr [esi + 4], 0xffffffff
100053ff: eb18                     jmp 0x10005419
10005401: 56                       push esi
10005402: e83bfdffff               call 0x10005142
10005407: 59                       pop ecx
10005408: e9d0feffff               jmp 0x100052dd
1000540d: 83f803                   cmp eax, 3
10005410: 7507                     jne 0x10005419
10005412: 57                       push edi
10005413: e872100000               call 0x1000648a
10005418: 59                       pop ecx
10005419: 33c0                     xor eax, eax
1000541b: 40                       inc eax
1000541c: e8241a0000               call 0x10006e45
10005421: c20c00                   ret 0xc
10005424: 6a0c                     push 0xc
10005426: 6840db0010               push 0x1000db40
1000542b: e8d0190000               call 0x10006e00
10005430: 8bf9                     mov edi, ecx
10005432: 8bf2                     mov esi, edx
10005434: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10005437: 33c0                     xor eax, eax
10005439: 40                       inc eax
1000543a: 8945e4                   mov dword ptr [ebp - 0x1c], eax
1000543d: 85f6                     test esi, esi
1000543f: 750c                     jne 0x1000544d
10005441: 391510fd0010             cmp dword ptr [0x1000fd10], edx
10005447: 0f84c5000000             je 0x10005512
1000544d: 8365fc00                 and dword ptr [ebp - 4], 0
10005451: 3bf0                     cmp esi, eax
10005453: 7405                     je 0x1000545a
10005455: 83fe02                   cmp esi, 2
10005458: 752e                     jne 0x10005488
1000545a: a1d4b10010               mov eax, dword ptr [0x1000b1d4]
1000545f: 85c0                     test eax, eax
10005461: 7408                     je 0x1000546b
10005463: 57                       push edi
10005464: 56                       push esi
10005465: 53                       push ebx
10005466: ffd0                     call eax
10005468: 8945e4                   mov dword ptr [ebp - 0x1c], eax
1000546b: 837de400                 cmp dword ptr [ebp - 0x1c], 0
1000546f: 0f8496000000             je 0x1000550b
10005475: 57                       push edi
10005476: 56                       push esi
10005477: 53                       push ebx
10005478: e843feffff               call 0x100052c0
1000547d: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10005480: 85c0                     test eax, eax
10005482: 0f8483000000             je 0x1000550b
10005488: 57                       push edi
10005489: 56                       push esi
1000548a: 53                       push ebx
1000548b: e8d0beffff               call 0x10001360
10005490: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10005493: 83fe01                   cmp esi, 1
10005496: 7524                     jne 0x100054bc
10005498: 85c0                     test eax, eax
1000549a: 7520                     jne 0x100054bc
1000549c: 57                       push edi
1000549d: 50                       push eax
1000549e: 53                       push ebx
1000549f: e8bcbeffff               call 0x10001360
100054a4: 57                       push edi
100054a5: 6a00                     push 0
100054a7: 53                       push ebx
100054a8: e813feffff               call 0x100052c0
100054ad: a1d4b10010               mov eax, dword ptr [0x1000b1d4]
100054b2: 85c0                     test eax, eax
100054b4: 7406                     je 0x100054bc
100054b6: 57                       push edi
100054b7: 6a00                     push 0
100054b9: 53                       push ebx
100054ba: ffd0                     call eax
100054bc: 85f6                     test esi, esi
100054be: 7405                     je 0x100054c5
100054c0: 83fe03                   cmp esi, 3
100054c3: 7526                     jne 0x100054eb
100054c5: 57                       push edi
100054c6: 56                       push esi
100054c7: 53                       push ebx
100054c8: e8f3fdffff               call 0x100052c0
100054cd: 85c0                     test eax, eax
100054cf: 7503                     jne 0x100054d4
100054d1: 2145e4                   and dword ptr [ebp - 0x1c], eax
100054d4: 837de400                 cmp dword ptr [ebp - 0x1c], 0
100054d8: 7411                     je 0x100054eb
100054da: a1d4b10010               mov eax, dword ptr [0x1000b1d4]
100054df: 85c0                     test eax, eax
100054e1: 7408                     je 0x100054eb
100054e3: 57                       push edi
100054e4: 56                       push esi
100054e5: 53                       push ebx
100054e6: ffd0                     call eax
100054e8: 8945e4                   mov dword ptr [ebp - 0x1c], eax
100054eb: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
100054f2: 8b45e4                   mov eax, dword ptr [ebp - 0x1c]
100054f5: eb1d                     jmp 0x10005514
100054f7: 8b45ec                   mov eax, dword ptr [ebp - 0x14]
100054fa: 8b08                     mov ecx, dword ptr [eax]
100054fc: 8b09                     mov ecx, dword ptr [ecx]
100054fe: 50                       push eax
100054ff: 51                       push ecx
10005500: e8341c0000               call 0x10007139
10005505: 59                       pop ecx
10005506: 59                       pop ecx
10005507: c3                       ret 
10005508: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
1000550b: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10005512: 33c0                     xor eax, eax
10005514: e82c190000               call 0x10006e45
10005519: c3                       ret 
1000551a: 8bff                     mov edi, edi
1000551c: 55                       push ebp
1000551d: 8bec                     mov ebp, esp
1000551f: 837d0c01                 cmp dword ptr [ebp + 0xc], 1
10005523: 7505                     jne 0x1000552a
10005525: e82f1c0000               call 0x10007159
1000552a: ff7508                   push dword ptr [ebp + 8]
1000552d: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10005530: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10005533: e8ecfeffff               call 0x10005424
10005538: 59                       pop ecx
10005539: 5d                       pop ebp
1000553a: c20c00                   ret 0xc
1000553d: 8bff                     mov edi, edi
1000553f: 55                       push ebp
10005540: 8bec                     mov ebp, esp
10005542: 83ec20                   sub esp, 0x20
10005545: 8b4508                   mov eax, dword ptr [ebp + 8]
10005548: 56                       push esi
10005549: 57                       push edi
1000554a: 6a08                     push 8
1000554c: 59                       pop ecx
1000554d: bed8b10010               mov esi, 0x1000b1d8
10005552: 8d7de0                   lea edi, [ebp - 0x20]
10005555: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10005557: 8945f8                   mov dword ptr [ebp - 8], eax
1000555a: 8b450c                   mov eax, dword ptr [ebp + 0xc]
1000555d: 5f                       pop edi
1000555e: 8945fc                   mov dword ptr [ebp - 4], eax
10005561: 5e                       pop esi
10005562: 85c0                     test eax, eax
10005564: 740c                     je 0x10005572
10005566: f60008                   test byte ptr [eax], 8
10005569: 7407                     je 0x10005572
1000556b: c745f400409901           mov dword ptr [ebp - 0xc], 0x1994000
10005572: 8d45f4                   lea eax, [ebp - 0xc]
10005575: 50                       push eax
10005576: ff75f0                   push dword ptr [ebp - 0x10]
10005579: ff75e4                   push dword ptr [ebp - 0x1c]
1000557c: ff75e0                   push dword ptr [ebp - 0x20]
1000557f: ff1554b00010             call dword ptr [0x1000b054]
10005585: c9                       leave 
10005586: c20800                   ret 8
10005589: 8bff                     mov edi, edi
1000558b: 55                       push ebp
1000558c: 8bec                     mov ebp, esp
1000558e: 81ec28030000             sub esp, 0x328
10005594: a330fe0010               mov dword ptr [0x1000fe30], eax
10005599: 890d2cfe0010             mov dword ptr [0x1000fe2c], ecx
1000559f: 891528fe0010             mov dword ptr [0x1000fe28], edx
100055a5: 891d24fe0010             mov dword ptr [0x1000fe24], ebx
100055ab: 893520fe0010             mov dword ptr [0x1000fe20], esi
100055b1: 893d1cfe0010             mov dword ptr [0x1000fe1c], edi
100055b7: 668c1548fe0010           mov word ptr [0x1000fe48], ss
100055be: 668c0d3cfe0010           mov word ptr [0x1000fe3c], cs
100055c5: 668c1d18fe0010           mov word ptr [0x1000fe18], ds
100055cc: 668c0514fe0010           mov word ptr [0x1000fe14], es
100055d3: 668c2510fe0010           mov word ptr [0x1000fe10], fs
100055da: 668c2d0cfe0010           mov word ptr [0x1000fe0c], gs
100055e1: 9c                       pushfd 
100055e2: 8f0540fe0010             pop dword ptr [0x1000fe40]
100055e8: 8b4500                   mov eax, dword ptr [ebp]
100055eb: a334fe0010               mov dword ptr [0x1000fe34], eax
100055f0: 8b4504                   mov eax, dword ptr [ebp + 4]
100055f3: a338fe0010               mov dword ptr [0x1000fe38], eax
100055f8: 8d4508                   lea eax, [ebp + 8]
100055fb: a344fe0010               mov dword ptr [0x1000fe44], eax
10005600: 8b85e0fcffff             mov eax, dword ptr [ebp - 0x320]
10005606: c70580fd001001000100     mov dword ptr [0x1000fd80], 0x10001
10005610: a138fe0010               mov eax, dword ptr [0x1000fe38]
10005615: a334fd0010               mov dword ptr [0x1000fd34], eax
1000561a: c70528fd0010090400c0     mov dword ptr [0x1000fd28], 0xc0000409
10005624: c7052cfd001001000000     mov dword ptr [0x1000fd2c], 1
1000562e: a180f00010               mov eax, dword ptr [0x1000f080]
10005633: 8985d8fcffff             mov dword ptr [ebp - 0x328], eax
10005639: a184f00010               mov eax, dword ptr [0x1000f084]
1000563e: 8985dcfcffff             mov dword ptr [ebp - 0x324], eax
10005644: ff1568b00010             call dword ptr [0x1000b068]
1000564a: a378fd0010               mov dword ptr [0x1000fd78], eax
1000564f: 6a01                     push 1
10005651: e89e1b0000               call 0x100071f4
10005656: 59                       pop ecx
10005657: 6a00                     push 0
10005659: ff1564b00010             call dword ptr [0x1000b064]
1000565f: 68f8b10010               push 0x1000b1f8
10005664: ff1560b00010             call dword ptr [0x1000b060]
1000566a: 833d78fd001000           cmp dword ptr [0x1000fd78], 0
10005671: 7508                     jne 0x1000567b
10005673: 6a01                     push 1
10005675: e87a1b0000               call 0x100071f4
1000567a: 59                       pop ecx
1000567b: 68090400c0               push 0xc0000409
10005680: ff155cb00010             call dword ptr [0x1000b05c]
10005686: 50                       push eax
10005687: ff1558b00010             call dword ptr [0x1000b058]
1000568d: c9                       leave 
1000568e: c3                       ret 
1000568f: 8bff                     mov edi, edi
10005691: 55                       push ebp
10005692: 8bec                     mov ebp, esp
10005694: 8b5508                   mov edx, dword ptr [ebp + 8]
10005697: 56                       push esi
10005698: 57                       push edi
10005699: 85d2                     test edx, edx
1000569b: 7407                     je 0x100056a4
1000569d: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
100056a0: 85ff                     test edi, edi
100056a2: 7513                     jne 0x100056b7
100056a4: e891040000               call 0x10005b3a
100056a9: 6a16                     push 0x16
100056ab: 5e                       pop esi
100056ac: 8930                     mov dword ptr [eax], esi
100056ae: e8d31c0000               call 0x10007386
100056b3: 8bc6                     mov eax, esi
100056b5: eb33                     jmp 0x100056ea
100056b7: 8b4510                   mov eax, dword ptr [ebp + 0x10]
100056ba: 85c0                     test eax, eax
100056bc: 7504                     jne 0x100056c2
100056be: 8802                     mov byte ptr [edx], al
100056c0: ebe2                     jmp 0x100056a4
100056c2: 8bf2                     mov esi, edx
100056c4: 2bf0                     sub esi, eax
100056c6: 8a08                     mov cl, byte ptr [eax]
100056c8: 880c06                   mov byte ptr [esi + eax], cl
100056cb: 40                       inc eax
100056cc: 84c9                     test cl, cl
100056ce: 7403                     je 0x100056d3
100056d0: 4f                       dec edi
100056d1: 75f3                     jne 0x100056c6
100056d3: 85ff                     test edi, edi
100056d5: 7511                     jne 0x100056e8
100056d7: c60200                   mov byte ptr [edx], 0
100056da: e85b040000               call 0x10005b3a
100056df: 6a22                     push 0x22
100056e1: 59                       pop ecx
100056e2: 8908                     mov dword ptr [eax], ecx
100056e4: 8bf1                     mov esi, ecx
100056e6: ebc6                     jmp 0x100056ae
100056e8: 33c0                     xor eax, eax
100056ea: 5f                       pop edi
100056eb: 5e                       pop esi
100056ec: 5d                       pop ebp
100056ed: c3                       ret 
100056ee: cc                       int3 
100056ef: cc                       int3 
100056f0: 8b4c2404                 mov ecx, dword ptr [esp + 4]
100056f4: f7c103000000             test ecx, 3
100056fa: 7424                     je 0x10005720
100056fc: 8a01                     mov al, byte ptr [ecx]
100056fe: 83c101                   add ecx, 1
10005701: 84c0                     test al, al
10005703: 744e                     je 0x10005753
10005705: f7c103000000             test ecx, 3
1000570b: 75ef                     jne 0x100056fc
1000570d: 0500000000               add eax, 0
10005712: 8da42400000000           lea esp, [esp]
10005719: 8da42400000000           lea esp, [esp]
10005720: 8b01                     mov eax, dword ptr [ecx]
10005722: bafffefe7e               mov edx, 0x7efefeff
10005727: 03d0                     add edx, eax
10005729: 83f0ff                   xor eax, 0xffffffff
1000572c: 33c2                     xor eax, edx
1000572e: 83c104                   add ecx, 4
10005731: a900010181               test eax, 0x81010100
10005736: 74e8                     je 0x10005720
10005738: 8b41fc                   mov eax, dword ptr [ecx - 4]
1000573b: 84c0                     test al, al
1000573d: 7432                     je 0x10005771
1000573f: 84e4                     test ah, ah
10005741: 7424                     je 0x10005767
10005743: a90000ff00               test eax, 0xff0000
10005748: 7413                     je 0x1000575d
1000574a: a9000000ff               test eax, 0xff000000
1000574f: 7402                     je 0x10005753
10005751: ebcd                     jmp 0x10005720
10005753: 8d41ff                   lea eax, [ecx - 1]
10005756: 8b4c2404                 mov ecx, dword ptr [esp + 4]
1000575a: 2bc1                     sub eax, ecx
1000575c: c3                       ret 
1000575d: 8d41fe                   lea eax, [ecx - 2]
10005760: 8b4c2404                 mov ecx, dword ptr [esp + 4]
10005764: 2bc1                     sub eax, ecx
10005766: c3                       ret 
10005767: 8d41fd                   lea eax, [ecx - 3]
1000576a: 8b4c2404                 mov ecx, dword ptr [esp + 4]
1000576e: 2bc1                     sub eax, ecx
10005770: c3                       ret 
10005771: 8d41fc                   lea eax, [ecx - 4]
10005774: 8b4c2404                 mov ecx, dword ptr [esp + 4]
10005778: 2bc1                     sub eax, ecx
1000577a: c3                       ret 
1000577b: 57                       push edi
1000577c: 8bc6                     mov eax, esi
1000577e: 83e00f                   and eax, 0xf
10005781: 85c0                     test eax, eax
10005783: 0f85c1000000             jne 0x1000584a
10005789: 8bd1                     mov edx, ecx
1000578b: 83e17f                   and ecx, 0x7f
1000578e: c1ea07                   shr edx, 7
10005791: 7465                     je 0x100057f8
10005793: eb06                     jmp 0x1000579b
10005795: 8d9b00000000             lea ebx, [ebx]
1000579b: 660f6f06                 movdqa xmm0, xmmword ptr [esi]
1000579f: 660f6f4e10               movdqa xmm1, xmmword ptr [esi + 0x10]
100057a4: 660f6f5620               movdqa xmm2, xmmword ptr [esi + 0x20]
100057a9: 660f6f5e30               movdqa xmm3, xmmword ptr [esi + 0x30]
100057ae: 660f7f07                 movdqa xmmword ptr [edi], xmm0
100057b2: 660f7f4f10               movdqa xmmword ptr [edi + 0x10], xmm1
100057b7: 660f7f5720               movdqa xmmword ptr [edi + 0x20], xmm2
100057bc: 660f7f5f30               movdqa xmmword ptr [edi + 0x30], xmm3
100057c1: 660f6f6640               movdqa xmm4, xmmword ptr [esi + 0x40]
100057c6: 660f6f6e50               movdqa xmm5, xmmword ptr [esi + 0x50]
100057cb: 660f6f7660               movdqa xmm6, xmmword ptr [esi + 0x60]
100057d0: 660f6f7e70               movdqa xmm7, xmmword ptr [esi + 0x70]
100057d5: 660f7f6740               movdqa xmmword ptr [edi + 0x40], xmm4
100057da: 660f7f6f50               movdqa xmmword ptr [edi + 0x50], xmm5
100057df: 660f7f7760               movdqa xmmword ptr [edi + 0x60], xmm6
100057e4: 660f7f7f70               movdqa xmmword ptr [edi + 0x70], xmm7
100057e9: 8db680000000             lea esi, [esi + 0x80]
100057ef: 8dbf80000000             lea edi, [edi + 0x80]
100057f5: 4a                       dec edx
100057f6: 75a3                     jne 0x1000579b
100057f8: 85c9                     test ecx, ecx
100057fa: 7449                     je 0x10005845
100057fc: 8bd1                     mov edx, ecx
100057fe: c1ea04                   shr edx, 4
10005801: 85d2                     test edx, edx
10005803: 7417                     je 0x1000581c
10005805: 8d9b00000000             lea ebx, [ebx]
1000580b: 660f6f06                 movdqa xmm0, xmmword ptr [esi]
1000580f: 660f7f07                 movdqa xmmword ptr [edi], xmm0
10005813: 8d7610                   lea esi, [esi + 0x10]
10005816: 8d7f10                   lea edi, [edi + 0x10]
10005819: 4a                       dec edx
1000581a: 75ef                     jne 0x1000580b
1000581c: 83e10f                   and ecx, 0xf
1000581f: 7424                     je 0x10005845
10005821: 8bc1                     mov eax, ecx
10005823: c1e902                   shr ecx, 2
10005826: 740d                     je 0x10005835
10005828: 8b16                     mov edx, dword ptr [esi]
1000582a: 8917                     mov dword ptr [edi], edx
1000582c: 8d7604                   lea esi, [esi + 4]
1000582f: 8d7f04                   lea edi, [edi + 4]
10005832: 49                       dec ecx
10005833: 75f3                     jne 0x10005828
10005835: 8bc8                     mov ecx, eax
10005837: 83e103                   and ecx, 3
1000583a: 7409                     je 0x10005845
1000583c: 8a06                     mov al, byte ptr [esi]
1000583e: 8807                     mov byte ptr [edi], al
10005840: 46                       inc esi
10005841: 47                       inc edi
10005842: 49                       dec ecx
10005843: 75f7                     jne 0x1000583c
10005845: 58                       pop eax
10005846: 5e                       pop esi
10005847: 5f                       pop edi
10005848: 5d                       pop ebp
10005849: c3                       ret 
1000584a: ba10000000               mov edx, 0x10
1000584f: 2bd0                     sub edx, eax
10005851: 2bca                     sub ecx, edx
10005853: 51                       push ecx
10005854: 8bc2                     mov eax, edx
10005856: 8bc8                     mov ecx, eax
10005858: 83e103                   and ecx, 3
1000585b: 7409                     je 0x10005866
1000585d: 8a16                     mov dl, byte ptr [esi]
1000585f: 8817                     mov byte ptr [edi], dl
10005861: 46                       inc esi
10005862: 47                       inc edi
10005863: 49                       dec ecx
10005864: 75f7                     jne 0x1000585d
10005866: c1e802                   shr eax, 2
10005869: 740d                     je 0x10005878
1000586b: 8b16                     mov edx, dword ptr [esi]
1000586d: 8917                     mov dword ptr [edi], edx
1000586f: 8d7604                   lea esi, [esi + 4]
10005872: 8d7f04                   lea edi, [edi + 4]
10005875: 48                       dec eax
10005876: 75f3                     jne 0x1000586b
10005878: 59                       pop ecx
10005879: e90bffffff               jmp 0x10005789
1000587e: 6a0a                     push 0xa
10005880: ff156cb00010             call dword ptr [0x1000b06c]
10005886: a3f80e0110               mov dword ptr [0x10010ef8], eax
1000588b: 33c0                     xor eax, eax
1000588d: c3                       ret 
1000588e: 8bff                     mov edi, edi
10005890: 55                       push ebp
10005891: 8bec                     mov ebp, esp
10005893: 51                       push ecx
10005894: 53                       push ebx
10005895: 56                       push esi
10005896: 8b3544b00010             mov esi, dword ptr [0x1000b044]
1000589c: 57                       push edi
1000589d: ff35e80e0110             push dword ptr [0x10010ee8]
100058a3: ffd6                     call esi
100058a5: ff35e40e0110             push dword ptr [0x10010ee4]
100058ab: 8bd8                     mov ebx, eax
100058ad: 895dfc                   mov dword ptr [ebp - 4], ebx
100058b0: ffd6                     call esi
100058b2: 8bf0                     mov esi, eax
100058b4: 3bf3                     cmp esi, ebx
100058b6: 0f8281000000             jb 0x1000593d
100058bc: 8bfe                     mov edi, esi
100058be: 2bfb                     sub edi, ebx
100058c0: 8d4704                   lea eax, [edi + 4]
100058c3: 83f804                   cmp eax, 4
100058c6: 7275                     jb 0x1000593d
100058c8: 53                       push ebx
100058c9: e8c81a0000               call 0x10007396
100058ce: 8bd8                     mov ebx, eax
100058d0: 8d4704                   lea eax, [edi + 4]
100058d3: 59                       pop ecx
100058d4: 3bd8                     cmp ebx, eax
100058d6: 7348                     jae 0x10005920
100058d8: b800080000               mov eax, 0x800
100058dd: 3bd8                     cmp ebx, eax
100058df: 7302                     jae 0x100058e3
100058e1: 8bc3                     mov eax, ebx
100058e3: 03c3                     add eax, ebx
100058e5: 3bc3                     cmp eax, ebx
100058e7: 720f                     jb 0x100058f8
100058e9: 50                       push eax
100058ea: ff75fc                   push dword ptr [ebp - 4]
100058ed: e8120e0000               call 0x10006704
100058f2: 59                       pop ecx
100058f3: 59                       pop ecx
100058f4: 85c0                     test eax, eax
100058f6: 7516                     jne 0x1000590e
100058f8: 8d4310                   lea eax, [ebx + 0x10]
100058fb: 3bc3                     cmp eax, ebx
100058fd: 723e                     jb 0x1000593d
100058ff: 50                       push eax
10005900: ff75fc                   push dword ptr [ebp - 4]
10005903: e8fc0d0000               call 0x10006704
10005908: 59                       pop ecx
10005909: 59                       pop ecx
1000590a: 85c0                     test eax, eax
1000590c: 742f                     je 0x1000593d
1000590e: c1ff02                   sar edi, 2
10005911: 50                       push eax
10005912: 8d34b8                   lea esi, [eax + edi*4]
10005915: ff1548b00010             call dword ptr [0x1000b048]
1000591b: a3e80e0110               mov dword ptr [0x10010ee8], eax
10005920: ff7508                   push dword ptr [ebp + 8]
10005923: 8b3d48b00010             mov edi, dword ptr [0x1000b048]
10005929: ffd7                     call edi
1000592b: 8906                     mov dword ptr [esi], eax
1000592d: 83c604                   add esi, 4
10005930: 56                       push esi
10005931: ffd7                     call edi
10005933: a3e40e0110               mov dword ptr [0x10010ee4], eax
10005938: 8b4508                   mov eax, dword ptr [ebp + 8]
1000593b: eb02                     jmp 0x1000593f
1000593d: 33c0                     xor eax, eax
1000593f: 5f                       pop edi
10005940: 5e                       pop esi
10005941: 5b                       pop ebx
10005942: c9                       leave 
10005943: c3                       ret 
10005944: 8bff                     mov edi, edi
10005946: 56                       push esi
10005947: 6a04                     push 4
10005949: 6a20                     push 0x20
1000594b: e8680d0000               call 0x100066b8
10005950: 59                       pop ecx
10005951: 59                       pop ecx
10005952: 8bf0                     mov esi, eax
10005954: 56                       push esi
10005955: ff1548b00010             call dword ptr [0x1000b048]
1000595b: a3e80e0110               mov dword ptr [0x10010ee8], eax
10005960: a3e40e0110               mov dword ptr [0x10010ee4], eax
10005965: 85f6                     test esi, esi
10005967: 7505                     jne 0x1000596e
10005969: 6a18                     push 0x18
1000596b: 58                       pop eax
1000596c: 5e                       pop esi
1000596d: c3                       ret 
1000596e: 832600                   and dword ptr [esi], 0
10005971: 33c0                     xor eax, eax
10005973: 5e                       pop esi
10005974: c3                       ret 
10005975: 6a0c                     push 0xc
10005977: 6860db0010               push 0x1000db60
1000597c: e87f140000               call 0x10006e00
10005981: e83c020000               call 0x10005bc2
10005986: 8365fc00                 and dword ptr [ebp - 4], 0
1000598a: ff7508                   push dword ptr [ebp + 8]
1000598d: e8fcfeffff               call 0x1000588e
10005992: 59                       pop ecx
10005993: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10005996: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000599d: e809000000               call 0x100059ab
100059a2: 8b45e4                   mov eax, dword ptr [ebp - 0x1c]
100059a5: e89b140000               call 0x10006e45
100059aa: c3                       ret 
100059ab: e81b020000               call 0x10005bcb
100059b0: c3                       ret 
100059b1: 8bff                     mov edi, edi
100059b3: 55                       push ebp
100059b4: 8bec                     mov ebp, esp
100059b6: ff7508                   push dword ptr [ebp + 8]
100059b9: e8b7ffffff               call 0x10005975
100059be: f7d8                     neg eax
100059c0: 1bc0                     sbb eax, eax
100059c2: f7d8                     neg eax
100059c4: 59                       pop ecx
100059c5: 48                       dec eax
100059c6: 5d                       pop ebp
100059c7: c3                       ret 
100059c8: 8bff                     mov edi, edi
100059ca: 55                       push ebp
100059cb: 8bec                     mov ebp, esp
100059cd: 8b4508                   mov eax, dword ptr [ebp + 8]
100059d0: a34c000110               mov dword ptr [0x1001004c], eax
100059d5: 5d                       pop ebp
100059d6: c3                       ret 
100059d7: 8bff                     mov edi, edi
100059d9: 55                       push ebp
100059da: 8bec                     mov ebp, esp
100059dc: ff354c000110             push dword ptr [0x1001004c]
100059e2: ff1544b00010             call dword ptr [0x1000b044]
100059e8: 85c0                     test eax, eax
100059ea: 740f                     je 0x100059fb
100059ec: ff7508                   push dword ptr [ebp + 8]
100059ef: ffd0                     call eax
100059f1: 59                       pop ecx
100059f2: 85c0                     test eax, eax
100059f4: 7405                     je 0x100059fb
100059f6: 33c0                     xor eax, eax
100059f8: 40                       inc eax
100059f9: 5d                       pop ebp
100059fa: c3                       ret 
100059fb: 33c0                     xor eax, eax
100059fd: 5d                       pop ebp
100059fe: c3                       ret 
100059ff: 6a0c                     push 0xc
10005a01: 6880db0010               push 0x1000db80
10005a06: e8f5130000               call 0x10006e00
10005a0b: 6a0e                     push 0xe
10005a0d: e8311b0000               call 0x10007543
10005a12: 59                       pop ecx
10005a13: 8365fc00                 and dword ptr [ebp - 4], 0
10005a17: 8b7508                   mov esi, dword ptr [ebp + 8]
10005a1a: 8b4e04                   mov ecx, dword ptr [esi + 4]
10005a1d: 85c9                     test ecx, ecx
10005a1f: 742f                     je 0x10005a50
10005a21: a154000110               mov eax, dword ptr [0x10010054]
10005a26: ba50000110               mov edx, 0x10010050
10005a2b: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10005a2e: 85c0                     test eax, eax
10005a30: 7411                     je 0x10005a43
10005a32: 3908                     cmp dword ptr [eax], ecx
10005a34: 752c                     jne 0x10005a62
10005a36: 8b4804                   mov ecx, dword ptr [eax + 4]
10005a39: 894a04                   mov dword ptr [edx + 4], ecx
10005a3c: 50                       push eax
10005a3d: e800f7ffff               call 0x10005142
10005a42: 59                       pop ecx
10005a43: ff7604                   push dword ptr [esi + 4]
10005a46: e8f7f6ffff               call 0x10005142
10005a4b: 59                       pop ecx
10005a4c: 83660400                 and dword ptr [esi + 4], 0
10005a50: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10005a57: e80a000000               call 0x10005a66
10005a5c: e8e4130000               call 0x10006e45
10005a61: c3                       ret 
10005a62: 8bd0                     mov edx, eax
10005a64: ebc5                     jmp 0x10005a2b
10005a66: 6a0e                     push 0xe
10005a68: e8fd190000               call 0x1000746a
10005a6d: 59                       pop ecx
10005a6e: c3                       ret 
10005a6f: cc                       int3 
10005a70: 8b542404                 mov edx, dword ptr [esp + 4]
10005a74: 8b4c2408                 mov ecx, dword ptr [esp + 8]
10005a78: f7c203000000             test edx, 3
10005a7e: 753c                     jne 0x10005abc
10005a80: 8b02                     mov eax, dword ptr [edx]
10005a82: 3a01                     cmp al, byte ptr [ecx]
10005a84: 752e                     jne 0x10005ab4
10005a86: 0ac0                     or al, al
10005a88: 7426                     je 0x10005ab0
10005a8a: 3a6101                   cmp ah, byte ptr [ecx + 1]
10005a8d: 7525                     jne 0x10005ab4
10005a8f: 0ae4                     or ah, ah
10005a91: 741d                     je 0x10005ab0
10005a93: c1e810                   shr eax, 0x10
10005a96: 3a4102                   cmp al, byte ptr [ecx + 2]
10005a99: 7519                     jne 0x10005ab4
10005a9b: 0ac0                     or al, al
10005a9d: 7411                     je 0x10005ab0
10005a9f: 3a6103                   cmp ah, byte ptr [ecx + 3]
10005aa2: 7510                     jne 0x10005ab4
10005aa4: 83c104                   add ecx, 4
10005aa7: 83c204                   add edx, 4
10005aaa: 0ae4                     or ah, ah
10005aac: 75d2                     jne 0x10005a80
10005aae: 8bff                     mov edi, edi
10005ab0: 33c0                     xor eax, eax
10005ab2: c3                       ret 
10005ab3: 90                       nop 
10005ab4: 1bc0                     sbb eax, eax
10005ab6: d1e0                     shl eax, 1
10005ab8: 83c001                   add eax, 1
10005abb: c3                       ret 
10005abc: f7c201000000             test edx, 1
10005ac2: 7418                     je 0x10005adc
10005ac4: 8a02                     mov al, byte ptr [edx]
10005ac6: 83c201                   add edx, 1
10005ac9: 3a01                     cmp al, byte ptr [ecx]
10005acb: 75e7                     jne 0x10005ab4
10005acd: 83c101                   add ecx, 1
10005ad0: 0ac0                     or al, al
10005ad2: 74dc                     je 0x10005ab0
10005ad4: f7c202000000             test edx, 2
10005ada: 74a4                     je 0x10005a80
10005adc: 668b02                   mov ax, word ptr [edx]
10005adf: 83c202                   add edx, 2
10005ae2: 3a01                     cmp al, byte ptr [ecx]
10005ae4: 75ce                     jne 0x10005ab4
10005ae6: 0ac0                     or al, al
10005ae8: 74c6                     je 0x10005ab0
10005aea: 3a6101                   cmp ah, byte ptr [ecx + 1]
10005aed: 75c5                     jne 0x10005ab4
10005aef: 0ae4                     or ah, ah
10005af1: 74bd                     je 0x10005ab0
10005af3: 83c102                   add ecx, 2
10005af6: eb88                     jmp 0x10005a80
10005af8: 8bff                     mov edi, edi
10005afa: 55                       push ebp
10005afb: 8bec                     mov ebp, esp
10005afd: 8b4508                   mov eax, dword ptr [ebp + 8]
10005b00: 33c9                     xor ecx, ecx
10005b02: 3b04cd90f00010           cmp eax, dword ptr [ecx*8 + 0x1000f090]
10005b09: 7413                     je 0x10005b1e
10005b0b: 41                       inc ecx
10005b0c: 83f92d                   cmp ecx, 0x2d
10005b0f: 72f1                     jb 0x10005b02
10005b11: 8d48ed                   lea ecx, [eax - 0x13]
10005b14: 83f911                   cmp ecx, 0x11
10005b17: 770e                     ja 0x10005b27
10005b19: 6a0d                     push 0xd
10005b1b: 58                       pop eax
10005b1c: 5d                       pop ebp
10005b1d: c3                       ret 
10005b1e: 8b04cd94f00010           mov eax, dword ptr [ecx*8 + 0x1000f094]
10005b25: 5d                       pop ebp
10005b26: c3                       ret 
10005b27: 0544ffffff               add eax, 0xffffff44
10005b2c: 6a0e                     push 0xe
10005b2e: 59                       pop ecx
10005b2f: 3bc8                     cmp ecx, eax
10005b31: 1bc0                     sbb eax, eax
10005b33: 23c1                     and eax, ecx
10005b35: 83c008                   add eax, 8
10005b38: 5d                       pop ebp
10005b39: c3                       ret 
10005b3a: e889070000               call 0x100062c8
10005b3f: 85c0                     test eax, eax
10005b41: 7506                     jne 0x10005b49
10005b43: b8f8f10010               mov eax, 0x1000f1f8
10005b48: c3                       ret 
10005b49: 83c008                   add eax, 8
10005b4c: c3                       ret 
10005b4d: 6a00                     push 0
10005b4f: 6800100000               push 0x1000
10005b54: 6a00                     push 0
10005b56: ff1570b00010             call dword ptr [0x1000b070]
10005b5c: 33c9                     xor ecx, ecx
10005b5e: 85c0                     test eax, eax
10005b60: 0f95c1                   setne cl
10005b63: a358000110               mov dword ptr [0x10010058], eax
10005b68: 8bc1                     mov eax, ecx
10005b6a: c3                       ret 
10005b6b: ff3558000110             push dword ptr [0x10010058]
10005b71: ff1574b00010             call dword ptr [0x1000b074]
10005b77: 83255800011000           and dword ptr [0x10010058], 0
10005b7e: c3                       ret 
10005b7f: 8bff                     mov edi, edi
10005b81: 55                       push ebp
10005b82: 8bec                     mov ebp, esp
10005b84: 6810b20010               push 0x1000b210
10005b89: ff157cb00010             call dword ptr [0x1000b07c]
10005b8f: 85c0                     test eax, eax
10005b91: 7415                     je 0x10005ba8
10005b93: 6800b20010               push 0x1000b200
10005b98: 50                       push eax
10005b99: ff1578b00010             call dword ptr [0x1000b078]
10005b9f: 85c0                     test eax, eax
10005ba1: 7405                     je 0x10005ba8
10005ba3: ff7508                   push dword ptr [ebp + 8]
10005ba6: ffd0                     call eax
10005ba8: 5d                       pop ebp
10005ba9: c3                       ret 
10005baa: 8bff                     mov edi, edi
10005bac: 55                       push ebp
10005bad: 8bec                     mov ebp, esp
10005baf: ff7508                   push dword ptr [ebp + 8]
10005bb2: e8c8ffffff               call 0x10005b7f
10005bb7: 59                       pop ecx
10005bb8: ff7508                   push dword ptr [ebp + 8]
10005bbb: ff1580b00010             call dword ptr [0x1000b080]
10005bc1: cc                       int3 
10005bc2: 6a08                     push 8
10005bc4: e87a190000               call 0x10007543
10005bc9: 59                       pop ecx
10005bca: c3                       ret 
10005bcb: 6a08                     push 8
10005bcd: e898180000               call 0x1000746a
10005bd2: 59                       pop ecx
10005bd3: c3                       ret 
10005bd4: 8bff                     mov edi, edi
10005bd6: 56                       push esi
10005bd7: e8b5050000               call 0x10006191
10005bdc: 8bf0                     mov esi, eax
10005bde: 56                       push esi
10005bdf: e8e4fdffff               call 0x100059c8
10005be4: 56                       push esi
10005be5: e812160000               call 0x100071fc
10005bea: 56                       push esi
10005beb: e892050000               call 0x10006182
10005bf0: 56                       push esi
10005bf1: e8761d0000               call 0x1000796c
10005bf6: 56                       push esi
10005bf7: e86b1b0000               call 0x10007767
10005bfc: 56                       push esi
10005bfd: e8541b0000               call 0x10007756
10005c02: 83c418                   add esp, 0x18
10005c05: 5e                       pop esi
10005c06: c3                       ret 
10005c07: 8bff                     mov edi, edi
10005c09: 55                       push ebp
10005c0a: 8bec                     mov ebp, esp
10005c0c: 56                       push esi
10005c0d: 8b7508                   mov esi, dword ptr [ebp + 8]
10005c10: 33c0                     xor eax, eax
10005c12: eb0f                     jmp 0x10005c23
10005c14: 85c0                     test eax, eax
10005c16: 7510                     jne 0x10005c28
10005c18: 8b0e                     mov ecx, dword ptr [esi]
10005c1a: 85c9                     test ecx, ecx
10005c1c: 7402                     je 0x10005c20
10005c1e: ffd1                     call ecx
10005c20: 83c604                   add esi, 4
10005c23: 3b750c                   cmp esi, dword ptr [ebp + 0xc]
10005c26: 72ec                     jb 0x10005c14
10005c28: 5e                       pop esi
10005c29: 5d                       pop ebp
10005c2a: c3                       ret 
10005c2b: 8bff                     mov edi, edi
10005c2d: 55                       push ebp
10005c2e: 8bec                     mov ebp, esp
10005c30: 833df00e011000           cmp dword ptr [0x10010ef0], 0
10005c37: 7419                     je 0x10005c52
10005c39: 68f00e0110               push 0x10010ef0
10005c3e: e8ed1d0000               call 0x10007a30
10005c43: 59                       pop ecx
10005c44: 85c0                     test eax, eax
10005c46: 740a                     je 0x10005c52
10005c48: ff7508                   push dword ptr [ebp + 8]
10005c4b: ff15f00e0110             call dword ptr [0x10010ef0]
10005c51: 59                       pop ecx
10005c52: e8241d0000               call 0x1000797b
10005c57: 6834b10010               push 0x1000b134
10005c5c: 6824b10010               push 0x1000b124
10005c61: e8a1ffffff               call 0x10005c07
10005c66: 59                       pop ecx
10005c67: 59                       pop ecx
10005c68: 85c0                     test eax, eax
10005c6a: 7554                     jne 0x10005cc0
10005c6c: 56                       push esi
10005c6d: 57                       push edi
10005c6e: 68d86d0010               push 0x10006dd8
10005c73: e839fdffff               call 0x100059b1
10005c78: b81cb10010               mov eax, 0x1000b11c
10005c7d: be20b10010               mov esi, 0x1000b120
10005c82: 59                       pop ecx
10005c83: 8bf8                     mov edi, eax
10005c85: 3bc6                     cmp eax, esi
10005c87: 730f                     jae 0x10005c98
10005c89: 8b07                     mov eax, dword ptr [edi]
10005c8b: 85c0                     test eax, eax
10005c8d: 7402                     je 0x10005c91
10005c8f: ffd0                     call eax
10005c91: 83c704                   add edi, 4
10005c94: 3bfe                     cmp edi, esi
10005c96: 72f1                     jb 0x10005c89
10005c98: 833df40e011000           cmp dword ptr [0x10010ef4], 0
10005c9f: 5f                       pop edi
10005ca0: 5e                       pop esi
10005ca1: 741b                     je 0x10005cbe
10005ca3: 68f40e0110               push 0x10010ef4
10005ca8: e8831d0000               call 0x10007a30
10005cad: 59                       pop ecx
10005cae: 85c0                     test eax, eax
10005cb0: 740c                     je 0x10005cbe
10005cb2: 6a00                     push 0
10005cb4: 6a02                     push 2
10005cb6: 6a00                     push 0
10005cb8: ff15f40e0110             call dword ptr [0x10010ef4]
10005cbe: 33c0                     xor eax, eax
10005cc0: 5d                       pop ebp
10005cc1: c3                       ret 
10005cc2: 6a20                     push 0x20
10005cc4: 68a0db0010               push 0x1000dba0
10005cc9: e832110000               call 0x10006e00
10005cce: 6a08                     push 8
10005cd0: e86e180000               call 0x10007543
10005cd5: 59                       pop ecx
10005cd6: 8365fc00                 and dword ptr [ebp - 4], 0
10005cda: 33c0                     xor eax, eax
10005cdc: 40                       inc eax
10005cdd: 39058c000110             cmp dword ptr [0x1001008c], eax
10005ce3: 0f84d8000000             je 0x10005dc1
10005ce9: a388000110               mov dword ptr [0x10010088], eax
10005cee: 8a4510                   mov al, byte ptr [ebp + 0x10]
10005cf1: a284000110               mov byte ptr [0x10010084], al
10005cf6: 837d0c00                 cmp dword ptr [ebp + 0xc], 0
10005cfa: 0f85a0000000             jne 0x10005da0
10005d00: ff35e80e0110             push dword ptr [0x10010ee8]
10005d06: 8b3544b00010             mov esi, dword ptr [0x1000b044]
10005d0c: ffd6                     call esi
10005d0e: 8bd8                     mov ebx, eax
10005d10: 895dd0                   mov dword ptr [ebp - 0x30], ebx
10005d13: 85db                     test ebx, ebx
10005d15: 7468                     je 0x10005d7f
10005d17: ff35e40e0110             push dword ptr [0x10010ee4]
10005d1d: ffd6                     call esi
10005d1f: 8bf8                     mov edi, eax
10005d21: 897dd4                   mov dword ptr [ebp - 0x2c], edi
10005d24: 895ddc                   mov dword ptr [ebp - 0x24], ebx
10005d27: 897dd8                   mov dword ptr [ebp - 0x28], edi
10005d2a: 83ef04                   sub edi, 4
10005d2d: 897dd4                   mov dword ptr [ebp - 0x2c], edi
10005d30: 3bfb                     cmp edi, ebx
10005d32: 724b                     jb 0x10005d7f
10005d34: e858040000               call 0x10006191
10005d39: 3907                     cmp dword ptr [edi], eax
10005d3b: 74ed                     je 0x10005d2a
10005d3d: 3bfb                     cmp edi, ebx
10005d3f: 723e                     jb 0x10005d7f
10005d41: ff37                     push dword ptr [edi]
10005d43: ffd6                     call esi
10005d45: 8bd8                     mov ebx, eax
10005d47: e845040000               call 0x10006191
10005d4c: 8907                     mov dword ptr [edi], eax
10005d4e: ffd3                     call ebx
10005d50: ff35e80e0110             push dword ptr [0x10010ee8]
10005d56: ffd6                     call esi
10005d58: 8bd8                     mov ebx, eax
10005d5a: ff35e40e0110             push dword ptr [0x10010ee4]
10005d60: ffd6                     call esi
10005d62: 395ddc                   cmp dword ptr [ebp - 0x24], ebx
10005d65: 7505                     jne 0x10005d6c
10005d67: 3945d8                   cmp dword ptr [ebp - 0x28], eax
10005d6a: 740e                     je 0x10005d7a
10005d6c: 895ddc                   mov dword ptr [ebp - 0x24], ebx
10005d6f: 895dd0                   mov dword ptr [ebp - 0x30], ebx
10005d72: 8945d8                   mov dword ptr [ebp - 0x28], eax
10005d75: 8bf8                     mov edi, eax
10005d77: 897dd4                   mov dword ptr [ebp - 0x2c], edi
10005d7a: 8b5dd0                   mov ebx, dword ptr [ebp - 0x30]
10005d7d: ebab                     jmp 0x10005d2a
10005d7f: c745e438b10010           mov dword ptr [ebp - 0x1c], 0x1000b138
10005d86: 817de43cb10010           cmp dword ptr [ebp - 0x1c], 0x1000b13c
10005d8d: 7311                     jae 0x10005da0
10005d8f: 8b45e4                   mov eax, dword ptr [ebp - 0x1c]
10005d92: 8b00                     mov eax, dword ptr [eax]
10005d94: 85c0                     test eax, eax
10005d96: 7402                     je 0x10005d9a
10005d98: ffd0                     call eax
10005d9a: 8345e404                 add dword ptr [ebp - 0x1c], 4
10005d9e: ebe6                     jmp 0x10005d86
10005da0: c745e040b10010           mov dword ptr [ebp - 0x20], 0x1000b140
10005da7: 817de044b10010           cmp dword ptr [ebp - 0x20], 0x1000b144
10005dae: 7311                     jae 0x10005dc1
10005db0: 8b45e0                   mov eax, dword ptr [ebp - 0x20]
10005db3: 8b00                     mov eax, dword ptr [eax]
10005db5: 85c0                     test eax, eax
10005db7: 7402                     je 0x10005dbb
10005db9: ffd0                     call eax
10005dbb: 8345e004                 add dword ptr [ebp - 0x20], 4
10005dbf: ebe6                     jmp 0x10005da7
10005dc1: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10005dc8: e820000000               call 0x10005ded
10005dcd: 837d1000                 cmp dword ptr [ebp + 0x10], 0
10005dd1: 7529                     jne 0x10005dfc
10005dd3: c7058c00011001000000     mov dword ptr [0x1001008c], 1
10005ddd: 6a08                     push 8
10005ddf: e886160000               call 0x1000746a
10005de4: 59                       pop ecx
10005de5: ff7508                   push dword ptr [ebp + 8]
10005de8: e8bdfdffff               call 0x10005baa
10005ded: 837d1000                 cmp dword ptr [ebp + 0x10], 0
10005df1: 7408                     je 0x10005dfb
10005df3: 6a08                     push 8
10005df5: e870160000               call 0x1000746a
10005dfa: 59                       pop ecx
10005dfb: c3                       ret 
10005dfc: e844100000               call 0x10006e45
10005e01: c3                       ret 
10005e02: 8bff                     mov edi, edi
10005e04: 55                       push ebp
10005e05: 8bec                     mov ebp, esp
10005e07: 6a00                     push 0
10005e09: 6a01                     push 1
10005e0b: ff7508                   push dword ptr [ebp + 8]
10005e0e: e8affeffff               call 0x10005cc2
10005e13: 83c40c                   add esp, 0xc
10005e16: 5d                       pop ebp
10005e17: c3                       ret 
10005e18: 6a01                     push 1
10005e1a: 6a00                     push 0
10005e1c: 6a00                     push 0
10005e1e: e89ffeffff               call 0x10005cc2
10005e23: 83c40c                   add esp, 0xc
10005e26: c3                       ret 
10005e27: 8bff                     mov edi, edi
10005e29: 55                       push ebp
10005e2a: 8bec                     mov ebp, esp
10005e2c: e8e9010000               call 0x1000601a
10005e31: ff7508                   push dword ptr [ebp + 8]
10005e34: e832000000               call 0x10005e6b
10005e39: 59                       pop ecx
10005e3a: 68ff000000               push 0xff
10005e3f: e8beffffff               call 0x10005e02
10005e44: cc                       int3 
10005e45: 8bff                     mov edi, edi
10005e47: 55                       push ebp
10005e48: 8bec                     mov ebp, esp
10005e4a: 33c0                     xor eax, eax
10005e4c: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10005e4f: 3b0cc5a8ba0010           cmp ecx, dword ptr [eax*8 + 0x1000baa8]
10005e56: 740a                     je 0x10005e62
10005e58: 40                       inc eax
10005e59: 83f816                   cmp eax, 0x16
10005e5c: 72ee                     jb 0x10005e4c
10005e5e: 33c0                     xor eax, eax
10005e60: 5d                       pop ebp
10005e61: c3                       ret 
10005e62: 8b04c5acba0010           mov eax, dword ptr [eax*8 + 0x1000baac]
10005e69: 5d                       pop ebp
10005e6a: c3                       ret 
10005e6b: 8bff                     mov edi, edi
10005e6d: 55                       push ebp
10005e6e: 8bec                     mov ebp, esp
10005e70: 81ecfc010000             sub esp, 0x1fc
10005e76: a180f00010               mov eax, dword ptr [0x1000f080]
10005e7b: 33c5                     xor eax, ebp
10005e7d: 8945fc                   mov dword ptr [ebp - 4], eax
10005e80: 53                       push ebx
10005e81: 56                       push esi
10005e82: 8b7508                   mov esi, dword ptr [ebp + 8]
10005e85: 57                       push edi
10005e86: 56                       push esi
10005e87: e8b9ffffff               call 0x10005e45
10005e8c: 8bf8                     mov edi, eax
10005e8e: 33db                     xor ebx, ebx
10005e90: 59                       pop ecx
10005e91: 89bd04feffff             mov dword ptr [ebp - 0x1fc], edi
10005e97: 3bfb                     cmp edi, ebx
10005e99: 0f846c010000             je 0x1000600b
10005e9f: 6a03                     push 3
10005ea1: e8721f0000               call 0x10007e18
10005ea6: 59                       pop ecx
10005ea7: 83f801                   cmp eax, 1
10005eaa: 0f8407010000             je 0x10005fb7
10005eb0: 6a03                     push 3
10005eb2: e8611f0000               call 0x10007e18
10005eb7: 59                       pop ecx
10005eb8: 85c0                     test eax, eax
10005eba: 750d                     jne 0x10005ec9
10005ebc: 833d20fd001001           cmp dword ptr [0x1000fd20], 1
10005ec3: 0f84ee000000             je 0x10005fb7
10005ec9: 81fefc000000             cmp esi, 0xfc
10005ecf: 0f8436010000             je 0x1000600b
10005ed5: 68e4bb0010               push 0x1000bbe4
10005eda: 6814030000               push 0x314
10005edf: bf90000110               mov edi, 0x10010090
10005ee4: 57                       push edi
10005ee5: e8cb1e0000               call 0x10007db5
10005eea: 83c40c                   add esp, 0xc
10005eed: 85c0                     test eax, eax
10005eef: 0f85b8000000             jne 0x10005fad
10005ef5: 6804010000               push 0x104
10005efa: bec2000110               mov esi, 0x100100c2
10005eff: 56                       push esi
10005f00: 53                       push ebx
10005f01: 66a3ca020110             mov word ptr [0x100102ca], ax
10005f07: ff1588b00010             call dword ptr [0x1000b088]
10005f0d: bbfb020000               mov ebx, 0x2fb
10005f12: 85c0                     test eax, eax
10005f14: 751f                     jne 0x10005f35
10005f16: 68b4bb0010               push 0x1000bbb4
10005f1b: 53                       push ebx
10005f1c: 56                       push esi
10005f1d: e8931e0000               call 0x10007db5
10005f22: 83c40c                   add esp, 0xc
10005f25: 85c0                     test eax, eax
10005f27: 740c                     je 0x10005f35
10005f29: 33c0                     xor eax, eax
10005f2b: 50                       push eax
10005f2c: 50                       push eax
10005f2d: 50                       push eax
10005f2e: 50                       push eax
10005f2f: 50                       push eax
10005f30: e8ff130000               call 0x10007334
10005f35: 56                       push esi
10005f36: e85f1e0000               call 0x10007d9a
10005f3b: 40                       inc eax
10005f3c: 59                       pop ecx
10005f3d: 83f83c                   cmp eax, 0x3c
10005f40: 762a                     jbe 0x10005f6c
10005f42: 56                       push esi
10005f43: e8521e0000               call 0x10007d9a
10005f48: 8d04454c000110           lea eax, [eax*2 + 0x1001004c]
10005f4f: 8bc8                     mov ecx, eax
10005f51: 2bce                     sub ecx, esi
10005f53: 6a03                     push 3
10005f55: d1f9                     sar ecx, 1
10005f57: 68acbb0010               push 0x1000bbac
10005f5c: 2bd9                     sub ebx, ecx
10005f5e: 53                       push ebx
10005f5f: 50                       push eax
10005f60: e8681d0000               call 0x10007ccd
10005f65: 83c414                   add esp, 0x14
10005f68: 85c0                     test eax, eax
10005f6a: 75bd                     jne 0x10005f29
10005f6c: 68a4bb0010               push 0x1000bba4
10005f71: be14030000               mov esi, 0x314
10005f76: 56                       push esi
10005f77: 57                       push edi
10005f78: e8db1c0000               call 0x10007c58
10005f7d: 83c40c                   add esp, 0xc
10005f80: 85c0                     test eax, eax
10005f82: 75a5                     jne 0x10005f29
10005f84: ffb504feffff             push dword ptr [ebp - 0x1fc]
10005f8a: 56                       push esi
10005f8b: 57                       push edi
10005f8c: e8c71c0000               call 0x10007c58
10005f91: 83c40c                   add esp, 0xc
10005f94: 85c0                     test eax, eax
10005f96: 7591                     jne 0x10005f29
10005f98: 6810200100               push 0x12010
10005f9d: 6858bb0010               push 0x1000bb58
10005fa2: 57                       push edi
10005fa3: e8441b0000               call 0x10007aec
10005fa8: 83c40c                   add esp, 0xc
10005fab: eb5e                     jmp 0x1000600b
10005fad: 53                       push ebx
10005fae: 53                       push ebx
10005faf: 53                       push ebx
10005fb0: 53                       push ebx
10005fb1: 53                       push ebx
10005fb2: e979ffffff               jmp 0x10005f30
10005fb7: 6af4                     push -0xc
10005fb9: ff1584b00010             call dword ptr [0x1000b084]
10005fbf: 8bf0                     mov esi, eax
10005fc1: 3bf3                     cmp esi, ebx
10005fc3: 7446                     je 0x1000600b
10005fc5: 83feff                   cmp esi, -1
10005fc8: 7441                     je 0x1000600b
10005fca: 33c0                     xor eax, eax
10005fcc: 8a0c47                   mov cl, byte ptr [edi + eax*2]
10005fcf: 888c0508feffff           mov byte ptr [ebp + eax - 0x1f8], cl
10005fd6: 66391c47                 cmp word ptr [edi + eax*2], bx
10005fda: 7408                     je 0x10005fe4
10005fdc: 40                       inc eax
10005fdd: 3df4010000               cmp eax, 0x1f4
10005fe2: 72e8                     jb 0x10005fcc
10005fe4: 53                       push ebx
10005fe5: 8d8504feffff             lea eax, [ebp - 0x1fc]
10005feb: 50                       push eax
10005fec: 8d8508feffff             lea eax, [ebp - 0x1f8]
10005ff2: 50                       push eax
10005ff3: 885dfb                   mov byte ptr [ebp - 5], bl
10005ff6: e8f5f6ffff               call 0x100056f0
10005ffb: 59                       pop ecx
10005ffc: 50                       push eax
10005ffd: 8d8508feffff             lea eax, [ebp - 0x1f8]
10006003: 50                       push eax
10006004: 56                       push esi
10006005: ff1520b00010             call dword ptr [0x1000b020]
1000600b: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
1000600e: 5f                       pop edi
1000600f: 5e                       pop esi
10006010: 33cd                     xor ecx, ebp
10006012: 5b                       pop ebx
10006013: e8a2ebffff               call 0x10004bba
10006018: c9                       leave 
10006019: c3                       ret 
1000601a: 6a03                     push 3
1000601c: e8f71d0000               call 0x10007e18
10006021: 59                       pop ecx
10006022: 83f801                   cmp eax, 1
10006025: 7415                     je 0x1000603c
10006027: 6a03                     push 3
10006029: e8ea1d0000               call 0x10007e18
1000602e: 59                       pop ecx
1000602f: 85c0                     test eax, eax
10006031: 751f                     jne 0x10006052
10006033: 833d20fd001001           cmp dword ptr [0x1000fd20], 1
1000603a: 7516                     jne 0x10006052
1000603c: 68fc000000               push 0xfc
10006041: e825feffff               call 0x10005e6b
10006046: 68ff000000               push 0xff
1000604b: e81bfeffff               call 0x10005e6b
10006050: 59                       pop ecx
10006051: 59                       pop ecx
10006052: c3                       ret 
10006053: cc                       int3 
10006054: cc                       int3 
10006055: cc                       int3 
10006056: cc                       int3 
10006057: cc                       int3 
10006058: cc                       int3 
10006059: cc                       int3 
1000605a: cc                       int3 
1000605b: cc                       int3 
1000605c: cc                       int3 
1000605d: cc                       int3 
1000605e: cc                       int3 
1000605f: cc                       int3 
10006060: 8d42ff                   lea eax, [edx - 1]
10006063: 5b                       pop ebx
10006064: c3                       ret 
10006065: 8da42400000000           lea esp, [esp]
1000606c: 8d642400                 lea esp, [esp]
10006070: 33c0                     xor eax, eax
10006072: 8a442408                 mov al, byte ptr [esp + 8]
10006076: 53                       push ebx
10006077: 8bd8                     mov ebx, eax
10006079: c1e008                   shl eax, 8
1000607c: 8b542408                 mov edx, dword ptr [esp + 8]
10006080: f7c203000000             test edx, 3
10006086: 7415                     je 0x1000609d
10006088: 8a0a                     mov cl, byte ptr [edx]
1000608a: 83c201                   add edx, 1
1000608d: 3acb                     cmp cl, bl
1000608f: 74cf                     je 0x10006060
10006091: 84c9                     test cl, cl
10006093: 7451                     je 0x100060e6
10006095: f7c203000000             test edx, 3
1000609b: 75eb                     jne 0x10006088
1000609d: 0bd8                     or ebx, eax
1000609f: 57                       push edi
100060a0: 8bc3                     mov eax, ebx
100060a2: c1e310                   shl ebx, 0x10
100060a5: 56                       push esi
100060a6: 0bd8                     or ebx, eax
100060a8: 8b0a                     mov ecx, dword ptr [edx]
100060aa: bffffefe7e               mov edi, 0x7efefeff
100060af: 8bc1                     mov eax, ecx
100060b1: 8bf7                     mov esi, edi
100060b3: 33cb                     xor ecx, ebx
100060b5: 03f0                     add esi, eax
100060b7: 03f9                     add edi, ecx
100060b9: 83f1ff                   xor ecx, 0xffffffff
100060bc: 83f0ff                   xor eax, 0xffffffff
100060bf: 33cf                     xor ecx, edi
100060c1: 33c6                     xor eax, esi
100060c3: 83c204                   add edx, 4
100060c6: 81e100010181             and ecx, 0x81010100
100060cc: 751c                     jne 0x100060ea
100060ce: 2500010181               and eax, 0x81010100
100060d3: 74d3                     je 0x100060a8
100060d5: 2500010101               and eax, 0x1010100
100060da: 7508                     jne 0x100060e4
100060dc: 81e600000080             and esi, 0x80000000
100060e2: 75c4                     jne 0x100060a8
100060e4: 5e                       pop esi
100060e5: 5f                       pop edi
100060e6: 5b                       pop ebx
100060e7: 33c0                     xor eax, eax
100060e9: c3                       ret 
100060ea: 8b42fc                   mov eax, dword ptr [edx - 4]
100060ed: 3ac3                     cmp al, bl
100060ef: 7436                     je 0x10006127
100060f1: 84c0                     test al, al
100060f3: 74ef                     je 0x100060e4
100060f5: 3ae3                     cmp ah, bl
100060f7: 7427                     je 0x10006120
100060f9: 84e4                     test ah, ah
100060fb: 74e7                     je 0x100060e4
100060fd: c1e810                   shr eax, 0x10
10006100: 3ac3                     cmp al, bl
10006102: 7415                     je 0x10006119
10006104: 84c0                     test al, al
10006106: 74dc                     je 0x100060e4
10006108: 3ae3                     cmp ah, bl
1000610a: 7406                     je 0x10006112
1000610c: 84e4                     test ah, ah
1000610e: 74d4                     je 0x100060e4
10006110: eb96                     jmp 0x100060a8
10006112: 5e                       pop esi
10006113: 5f                       pop edi
10006114: 8d42ff                   lea eax, [edx - 1]
10006117: 5b                       pop ebx
10006118: c3                       ret 
10006119: 8d42fe                   lea eax, [edx - 2]
1000611c: 5e                       pop esi
1000611d: 5f                       pop edi
1000611e: 5b                       pop ebx
1000611f: c3                       ret 
10006120: 8d42fd                   lea eax, [edx - 3]
10006123: 5e                       pop esi
10006124: 5f                       pop edi
10006125: 5b                       pop ebx
10006126: c3                       ret 
10006127: 8d42fc                   lea eax, [edx - 4]
1000612a: 5e                       pop esi
1000612b: 5f                       pop edi
1000612c: 5b                       pop ebx
1000612d: c3                       ret 
1000612e: e889160000               call 0x100077bc
10006133: 85c0                     test eax, eax
10006135: 7408                     je 0x1000613f
10006137: 6a16                     push 0x16
10006139: e88b160000               call 0x100077c9
1000613e: 59                       pop ecx
1000613f: f60500f2001002           test byte ptr [0x1000f200], 2
10006146: 7411                     je 0x10006159
10006148: 6a01                     push 1
1000614a: 6815000040               push 0x40000015
1000614f: 6a03                     push 3
10006151: e8b5100000               call 0x1000720b
10006156: 83c40c                   add esp, 0xc
10006159: 6a03                     push 3
1000615b: e8a2fcffff               call 0x10005e02
10006160: cc                       int3 
10006161: 8bff                     mov edi, edi
10006163: 55                       push ebp
10006164: 8bec                     mov ebp, esp
10006166: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10006169: a100f20010               mov eax, dword ptr [0x1000f200]
1000616e: 8b5508                   mov edx, dword ptr [ebp + 8]
10006171: 23550c                   and edx, dword ptr [ebp + 0xc]
10006174: f7d1                     not ecx
10006176: 23c8                     and ecx, eax
10006178: 0bca                     or ecx, edx
1000617a: 890d00f20010             mov dword ptr [0x1000f200], ecx
10006180: 5d                       pop ebp
10006181: c3                       ret 
10006182: 8bff                     mov edi, edi
10006184: 55                       push ebp
10006185: 8bec                     mov ebp, esp
10006187: 8b4508                   mov eax, dword ptr [ebp + 8]
1000618a: a3bc060110               mov dword ptr [0x100106bc], eax
1000618f: 5d                       pop ebp
10006190: c3                       ret 
10006191: 6a00                     push 0
10006193: ff1548b00010             call dword ptr [0x1000b048]
10006199: c3                       ret 
1000619a: ff150cb00010             call dword ptr [0x1000b00c]
100061a0: c20400                   ret 4
100061a3: 8bff                     mov edi, edi
100061a5: 56                       push esi
100061a6: ff3508f20010             push dword ptr [0x1000f208]
100061ac: ff158cb00010             call dword ptr [0x1000b08c]
100061b2: 8bf0                     mov esi, eax
100061b4: 85f6                     test esi, esi
100061b6: 751b                     jne 0x100061d3
100061b8: ff35c4060110             push dword ptr [0x100106c4]
100061be: ff1544b00010             call dword ptr [0x1000b044]
100061c4: 8bf0                     mov esi, eax
100061c6: 56                       push esi
100061c7: ff3508f20010             push dword ptr [0x1000f208]
100061cd: ff1590b00010             call dword ptr [0x1000b090]
100061d3: 8bc6                     mov eax, esi
100061d5: 5e                       pop esi
100061d6: c3                       ret 
100061d7: a104f20010               mov eax, dword ptr [0x1000f204]
100061dc: 83f8ff                   cmp eax, -1
100061df: 7416                     je 0x100061f7
100061e1: 50                       push eax
100061e2: ff35cc060110             push dword ptr [0x100106cc]
100061e8: ff1544b00010             call dword ptr [0x1000b044]
100061ee: ffd0                     call eax
100061f0: 830d04f20010ff           or dword ptr [0x1000f204], 0xffffffff
100061f7: a108f20010               mov eax, dword ptr [0x1000f208]
100061fc: 83f8ff                   cmp eax, -1
100061ff: 740e                     je 0x1000620f
10006201: 50                       push eax
10006202: ff1594b00010             call dword ptr [0x1000b094]
10006208: 830d08f20010ff           or dword ptr [0x1000f208], 0xffffffff
1000620f: e9ff110000               jmp 0x10007413
10006214: 6a08                     push 8
10006216: 68c0db0010               push 0x1000dbc0
1000621b: e8e00b0000               call 0x10006e00
10006220: 6818bc0010               push 0x1000bc18
10006225: ff157cb00010             call dword ptr [0x1000b07c]
1000622b: 8b7508                   mov esi, dword ptr [ebp + 8]
1000622e: c7465c60bc0010           mov dword ptr [esi + 0x5c], 0x1000bc60
10006235: 83660800                 and dword ptr [esi + 8], 0
10006239: 33ff                     xor edi, edi
1000623b: 47                       inc edi
1000623c: 897e14                   mov dword ptr [esi + 0x14], edi
1000623f: 897e70                   mov dword ptr [esi + 0x70], edi
10006242: c686c800000043           mov byte ptr [esi + 0xc8], 0x43
10006249: c6864b01000043           mov byte ptr [esi + 0x14b], 0x43
10006250: c74668e8f50010           mov dword ptr [esi + 0x68], 0x1000f5e8
10006257: 6a0d                     push 0xd
10006259: e8e5120000               call 0x10007543
1000625e: 59                       pop ecx
1000625f: 8365fc00                 and dword ptr [ebp - 4], 0
10006263: ff7668                   push dword ptr [esi + 0x68]
10006266: ff1598b00010             call dword ptr [0x1000b098]
1000626c: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10006273: e83e000000               call 0x100062b6
10006278: 6a0c                     push 0xc
1000627a: e8c4120000               call 0x10007543
1000627f: 59                       pop ecx
10006280: 897dfc                   mov dword ptr [ebp - 4], edi
10006283: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10006286: 89466c                   mov dword ptr [esi + 0x6c], eax
10006289: 85c0                     test eax, eax
1000628b: 7508                     jne 0x10006295
1000628d: a1e0f50010               mov eax, dword ptr [0x1000f5e0]
10006292: 89466c                   mov dword ptr [esi + 0x6c], eax
10006295: ff766c                   push dword ptr [esi + 0x6c]
10006298: e8611c0000               call 0x10007efe
1000629d: 59                       pop ecx
1000629e: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
100062a5: e815000000               call 0x100062bf
100062aa: e8960b0000               call 0x10006e45
100062af: c3                       ret 
100062b0: 33ff                     xor edi, edi
100062b2: 47                       inc edi
100062b3: 8b7508                   mov esi, dword ptr [ebp + 8]
100062b6: 6a0d                     push 0xd
100062b8: e8ad110000               call 0x1000746a
100062bd: 59                       pop ecx
100062be: c3                       ret 
100062bf: 6a0c                     push 0xc
100062c1: e8a4110000               call 0x1000746a
100062c6: 59                       pop ecx
100062c7: c3                       ret 
100062c8: 8bff                     mov edi, edi
100062ca: 56                       push esi
100062cb: 57                       push edi
100062cc: ff1510b00010             call dword ptr [0x1000b010]
100062d2: ff3504f20010             push dword ptr [0x1000f204]
100062d8: 8bf8                     mov edi, eax
100062da: e8c4feffff               call 0x100061a3
100062df: ffd0                     call eax
100062e1: 8bf0                     mov esi, eax
100062e3: 85f6                     test esi, esi
100062e5: 754e                     jne 0x10006335
100062e7: 6814020000               push 0x214
100062ec: 6a01                     push 1
100062ee: e8c5030000               call 0x100066b8
100062f3: 8bf0                     mov esi, eax
100062f5: 59                       pop ecx
100062f6: 59                       pop ecx
100062f7: 85f6                     test esi, esi
100062f9: 743a                     je 0x10006335
100062fb: 56                       push esi
100062fc: ff3504f20010             push dword ptr [0x1000f204]
10006302: ff35c8060110             push dword ptr [0x100106c8]
10006308: ff1544b00010             call dword ptr [0x1000b044]
1000630e: ffd0                     call eax
10006310: 85c0                     test eax, eax
10006312: 7418                     je 0x1000632c
10006314: 6a00                     push 0
10006316: 56                       push esi
10006317: e8f8feffff               call 0x10006214
1000631c: 59                       pop ecx
1000631d: 59                       pop ecx
1000631e: ff154cb00010             call dword ptr [0x1000b04c]
10006324: 834e04ff                 or dword ptr [esi + 4], 0xffffffff
10006328: 8906                     mov dword ptr [esi], eax
1000632a: eb09                     jmp 0x10006335
1000632c: 56                       push esi
1000632d: e810eeffff               call 0x10005142
10006332: 59                       pop ecx
10006333: 33f6                     xor esi, esi
10006335: 57                       push edi
10006336: ff159cb00010             call dword ptr [0x1000b09c]
1000633c: 5f                       pop edi
1000633d: 8bc6                     mov eax, esi
1000633f: 5e                       pop esi
10006340: c3                       ret 
10006341: 8bff                     mov edi, edi
10006343: 56                       push esi
10006344: e87fffffff               call 0x100062c8
10006349: 8bf0                     mov esi, eax
1000634b: 85f6                     test esi, esi
1000634d: 7508                     jne 0x10006357
1000634f: 6a10                     push 0x10
10006351: e8d1faffff               call 0x10005e27
10006356: 59                       pop ecx
10006357: 8bc6                     mov eax, esi
10006359: 5e                       pop esi
1000635a: c3                       ret 
1000635b: 6a08                     push 8
1000635d: 68e8db0010               push 0x1000dbe8
10006362: e8990a0000               call 0x10006e00
10006367: 8b7508                   mov esi, dword ptr [ebp + 8]
1000636a: 85f6                     test esi, esi
1000636c: 0f84f8000000             je 0x1000646a
10006372: 8b4624                   mov eax, dword ptr [esi + 0x24]
10006375: 85c0                     test eax, eax
10006377: 7407                     je 0x10006380
10006379: 50                       push eax
1000637a: e8c3edffff               call 0x10005142
1000637f: 59                       pop ecx
10006380: 8b462c                   mov eax, dword ptr [esi + 0x2c]
10006383: 85c0                     test eax, eax
10006385: 7407                     je 0x1000638e
10006387: 50                       push eax
10006388: e8b5edffff               call 0x10005142
1000638d: 59                       pop ecx
1000638e: 8b4634                   mov eax, dword ptr [esi + 0x34]
10006391: 85c0                     test eax, eax
10006393: 7407                     je 0x1000639c
10006395: 50                       push eax
10006396: e8a7edffff               call 0x10005142
1000639b: 59                       pop ecx
1000639c: 8b463c                   mov eax, dword ptr [esi + 0x3c]
1000639f: 85c0                     test eax, eax
100063a1: 7407                     je 0x100063aa
100063a3: 50                       push eax
100063a4: e899edffff               call 0x10005142
100063a9: 59                       pop ecx
100063aa: 8b4640                   mov eax, dword ptr [esi + 0x40]
100063ad: 85c0                     test eax, eax
100063af: 7407                     je 0x100063b8
100063b1: 50                       push eax
100063b2: e88bedffff               call 0x10005142
100063b7: 59                       pop ecx
100063b8: 8b4644                   mov eax, dword ptr [esi + 0x44]
100063bb: 85c0                     test eax, eax
100063bd: 7407                     je 0x100063c6
100063bf: 50                       push eax
100063c0: e87dedffff               call 0x10005142
100063c5: 59                       pop ecx
100063c6: 8b4648                   mov eax, dword ptr [esi + 0x48]
100063c9: 85c0                     test eax, eax
100063cb: 7407                     je 0x100063d4
100063cd: 50                       push eax
100063ce: e86fedffff               call 0x10005142
100063d3: 59                       pop ecx
100063d4: 8b465c                   mov eax, dword ptr [esi + 0x5c]
100063d7: 3d60bc0010               cmp eax, 0x1000bc60
100063dc: 7407                     je 0x100063e5
100063de: 50                       push eax
100063df: e85eedffff               call 0x10005142
100063e4: 59                       pop ecx
100063e5: 6a0d                     push 0xd
100063e7: e857110000               call 0x10007543
100063ec: 59                       pop ecx
100063ed: 8365fc00                 and dword ptr [ebp - 4], 0
100063f1: 8b7e68                   mov edi, dword ptr [esi + 0x68]
100063f4: 85ff                     test edi, edi
100063f6: 741a                     je 0x10006412
100063f8: 57                       push edi
100063f9: ff15a0b00010             call dword ptr [0x1000b0a0]
100063ff: 85c0                     test eax, eax
10006401: 750f                     jne 0x10006412
10006403: 81ffe8f50010             cmp edi, 0x1000f5e8
10006409: 7407                     je 0x10006412
1000640b: 57                       push edi
1000640c: e831edffff               call 0x10005142
10006411: 59                       pop ecx
10006412: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10006419: e857000000               call 0x10006475
1000641e: 6a0c                     push 0xc
10006420: e81e110000               call 0x10007543
10006425: 59                       pop ecx
10006426: c745fc01000000           mov dword ptr [ebp - 4], 1
1000642d: 8b7e6c                   mov edi, dword ptr [esi + 0x6c]
10006430: 85ff                     test edi, edi
10006432: 7423                     je 0x10006457
10006434: 57                       push edi
10006435: e8531b0000               call 0x10007f8d
1000643a: 59                       pop ecx
1000643b: 3b3de0f50010             cmp edi, dword ptr [0x1000f5e0]
10006441: 7414                     je 0x10006457
10006443: 81ff08f50010             cmp edi, 0x1000f508
10006449: 740c                     je 0x10006457
1000644b: 833f00                   cmp dword ptr [edi], 0
1000644e: 7507                     jne 0x10006457
10006450: 57                       push edi
10006451: e8d01b0000               call 0x10008026
10006456: 59                       pop ecx
10006457: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000645e: e81e000000               call 0x10006481
10006463: 56                       push esi
10006464: e8d9ecffff               call 0x10005142
10006469: 59                       pop ecx
1000646a: e8d6090000               call 0x10006e45
1000646f: c20400                   ret 4
10006472: 8b7508                   mov esi, dword ptr [ebp + 8]
10006475: 6a0d                     push 0xd
10006477: e8ee0f0000               call 0x1000746a
1000647c: 59                       pop ecx
1000647d: c3                       ret 
1000647e: 8b7508                   mov esi, dword ptr [ebp + 8]
10006481: 6a0c                     push 0xc
10006483: e8e20f0000               call 0x1000746a
10006488: 59                       pop ecx
10006489: c3                       ret 
1000648a: 8bff                     mov edi, edi
1000648c: 55                       push ebp
1000648d: 8bec                     mov ebp, esp
1000648f: 833d04f20010ff           cmp dword ptr [0x1000f204], -1
10006496: 744b                     je 0x100064e3
10006498: 837d0800                 cmp dword ptr [ebp + 8], 0
1000649c: 7527                     jne 0x100064c5
1000649e: 56                       push esi
1000649f: ff3508f20010             push dword ptr [0x1000f208]
100064a5: 8b358cb00010             mov esi, dword ptr [0x1000b08c]
100064ab: ffd6                     call esi
100064ad: 85c0                     test eax, eax
100064af: 7413                     je 0x100064c4
100064b1: ff3504f20010             push dword ptr [0x1000f204]
100064b7: ff3508f20010             push dword ptr [0x1000f208]
100064bd: ffd6                     call esi
100064bf: ffd0                     call eax
100064c1: 894508                   mov dword ptr [ebp + 8], eax
100064c4: 5e                       pop esi
100064c5: 6a00                     push 0
100064c7: ff3504f20010             push dword ptr [0x1000f204]
100064cd: ff35c8060110             push dword ptr [0x100106c8]
100064d3: ff1544b00010             call dword ptr [0x1000b044]
100064d9: ffd0                     call eax
100064db: ff7508                   push dword ptr [ebp + 8]
100064de: e878feffff               call 0x1000635b
100064e3: a108f20010               mov eax, dword ptr [0x1000f208]
100064e8: 83f8ff                   cmp eax, -1
100064eb: 7409                     je 0x100064f6
100064ed: 6a00                     push 0
100064ef: 50                       push eax
100064f0: ff1590b00010             call dword ptr [0x1000b090]
100064f6: 5d                       pop ebp
100064f7: c3                       ret 
100064f8: 8bff                     mov edi, edi
100064fa: 57                       push edi
100064fb: 6818bc0010               push 0x1000bc18
10006500: ff157cb00010             call dword ptr [0x1000b07c]
10006506: 8bf8                     mov edi, eax
10006508: 85ff                     test edi, edi
1000650a: 7509                     jne 0x10006515
1000650c: e8c6fcffff               call 0x100061d7
10006511: 33c0                     xor eax, eax
10006513: 5f                       pop edi
10006514: c3                       ret 
10006515: 56                       push esi
10006516: 8b3578b00010             mov esi, dword ptr [0x1000b078]
1000651c: 6854bc0010               push 0x1000bc54
10006521: 57                       push edi
10006522: ffd6                     call esi
10006524: 6848bc0010               push 0x1000bc48
10006529: 57                       push edi
1000652a: a3c0060110               mov dword ptr [0x100106c0], eax
1000652f: ffd6                     call esi
10006531: 683cbc0010               push 0x1000bc3c
10006536: 57                       push edi
10006537: a3c4060110               mov dword ptr [0x100106c4], eax
1000653c: ffd6                     call esi
1000653e: 6834bc0010               push 0x1000bc34
10006543: 57                       push edi
10006544: a3c8060110               mov dword ptr [0x100106c8], eax
10006549: ffd6                     call esi
1000654b: 833dc006011000           cmp dword ptr [0x100106c0], 0
10006552: 8b3590b00010             mov esi, dword ptr [0x1000b090]
10006558: a3cc060110               mov dword ptr [0x100106cc], eax
1000655d: 7416                     je 0x10006575
1000655f: 833dc406011000           cmp dword ptr [0x100106c4], 0
10006566: 740d                     je 0x10006575
10006568: 833dc806011000           cmp dword ptr [0x100106c8], 0
1000656f: 7404                     je 0x10006575
10006571: 85c0                     test eax, eax
10006573: 7524                     jne 0x10006599
10006575: a18cb00010               mov eax, dword ptr [0x1000b08c]
1000657a: a3c4060110               mov dword ptr [0x100106c4], eax
1000657f: a194b00010               mov eax, dword ptr [0x1000b094]
10006584: c705c00601109a610010     mov dword ptr [0x100106c0], 0x1000619a
1000658e: 8935c8060110             mov dword ptr [0x100106c8], esi
10006594: a3cc060110               mov dword ptr [0x100106cc], eax
10006599: ff150cb00010             call dword ptr [0x1000b00c]
1000659f: a308f20010               mov dword ptr [0x1000f208], eax
100065a4: 83f8ff                   cmp eax, -1
100065a7: 0f84c1000000             je 0x1000666e
100065ad: ff35c4060110             push dword ptr [0x100106c4]
100065b3: 50                       push eax
100065b4: ffd6                     call esi
100065b6: 85c0                     test eax, eax
100065b8: 0f84b0000000             je 0x1000666e
100065be: e811f6ffff               call 0x10005bd4
100065c3: ff35c0060110             push dword ptr [0x100106c0]
100065c9: 8b3548b00010             mov esi, dword ptr [0x1000b048]
100065cf: ffd6                     call esi
100065d1: ff35c4060110             push dword ptr [0x100106c4]
100065d7: a3c0060110               mov dword ptr [0x100106c0], eax
100065dc: ffd6                     call esi
100065de: ff35c8060110             push dword ptr [0x100106c8]
100065e4: a3c4060110               mov dword ptr [0x100106c4], eax
100065e9: ffd6                     call esi
100065eb: ff35cc060110             push dword ptr [0x100106cc]
100065f1: a3c8060110               mov dword ptr [0x100106c8], eax
100065f6: ffd6                     call esi
100065f8: a3cc060110               mov dword ptr [0x100106cc], eax
100065fd: e8c70d0000               call 0x100073c9
10006602: 85c0                     test eax, eax
10006604: 7463                     je 0x10006669
10006606: 8b3d44b00010             mov edi, dword ptr [0x1000b044]
1000660c: 685b630010               push 0x1000635b
10006611: ff35c0060110             push dword ptr [0x100106c0]
10006617: ffd7                     call edi
10006619: ffd0                     call eax
1000661b: a304f20010               mov dword ptr [0x1000f204], eax
10006620: 83f8ff                   cmp eax, -1
10006623: 7444                     je 0x10006669
10006625: 6814020000               push 0x214
1000662a: 6a01                     push 1
1000662c: e887000000               call 0x100066b8
10006631: 8bf0                     mov esi, eax
10006633: 59                       pop ecx
10006634: 59                       pop ecx
10006635: 85f6                     test esi, esi
10006637: 7430                     je 0x10006669
10006639: 56                       push esi
1000663a: ff3504f20010             push dword ptr [0x1000f204]
10006640: ff35c8060110             push dword ptr [0x100106c8]
10006646: ffd7                     call edi
10006648: ffd0                     call eax
1000664a: 85c0                     test eax, eax
1000664c: 741b                     je 0x10006669
1000664e: 6a00                     push 0
10006650: 56                       push esi
10006651: e8befbffff               call 0x10006214
10006656: 59                       pop ecx
10006657: 59                       pop ecx
10006658: ff154cb00010             call dword ptr [0x1000b04c]
1000665e: 834e04ff                 or dword ptr [esi + 4], 0xffffffff
10006662: 8906                     mov dword ptr [esi], eax
10006664: 33c0                     xor eax, eax
10006666: 40                       inc eax
10006667: eb07                     jmp 0x10006670
10006669: e869fbffff               call 0x100061d7
1000666e: 33c0                     xor eax, eax
10006670: 5e                       pop esi
10006671: 5f                       pop edi
10006672: c3                       ret 
10006673: 8bff                     mov edi, edi
10006675: 55                       push ebp
10006676: 8bec                     mov ebp, esp
10006678: 56                       push esi
10006679: 57                       push edi
1000667a: 33f6                     xor esi, esi
1000667c: ff7508                   push dword ptr [ebp + 8]
1000667f: e8f8eaffff               call 0x1000517c
10006684: 8bf8                     mov edi, eax
10006686: 59                       pop ecx
10006687: 85ff                     test edi, edi
10006689: 7527                     jne 0x100066b2
1000668b: 3905d0060110             cmp dword ptr [0x100106d0], eax
10006691: 761f                     jbe 0x100066b2
10006693: 56                       push esi
10006694: ff1528b00010             call dword ptr [0x1000b028]
1000669a: 8d86e8030000             lea eax, [esi + 0x3e8]
100066a0: 3b05d0060110             cmp eax, dword ptr [0x100106d0]
100066a6: 7603                     jbe 0x100066ab
100066a8: 83c8ff                   or eax, 0xffffffff
100066ab: 8bf0                     mov esi, eax
100066ad: 83f8ff                   cmp eax, -1
100066b0: 75ca                     jne 0x1000667c
100066b2: 8bc7                     mov eax, edi
100066b4: 5f                       pop edi
100066b5: 5e                       pop esi
100066b6: 5d                       pop ebp
100066b7: c3                       ret 
100066b8: 8bff                     mov edi, edi
100066ba: 55                       push ebp
100066bb: 8bec                     mov ebp, esp
100066bd: 56                       push esi
100066be: 57                       push edi
100066bf: 33f6                     xor esi, esi
100066c1: 6a00                     push 0
100066c3: ff750c                   push dword ptr [ebp + 0xc]
100066c6: ff7508                   push dword ptr [ebp + 8]
100066c9: e84d220000               call 0x1000891b
100066ce: 8bf8                     mov edi, eax
100066d0: 83c40c                   add esp, 0xc
100066d3: 85ff                     test edi, edi
100066d5: 7527                     jne 0x100066fe
100066d7: 3905d0060110             cmp dword ptr [0x100106d0], eax
100066dd: 761f                     jbe 0x100066fe
100066df: 56                       push esi
100066e0: ff1528b00010             call dword ptr [0x1000b028]
100066e6: 8d86e8030000             lea eax, [esi + 0x3e8]
100066ec: 3b05d0060110             cmp eax, dword ptr [0x100106d0]
100066f2: 7603                     jbe 0x100066f7
100066f4: 83c8ff                   or eax, 0xffffffff
100066f7: 8bf0                     mov esi, eax
100066f9: 83f8ff                   cmp eax, -1
100066fc: 75c3                     jne 0x100066c1
100066fe: 8bc7                     mov eax, edi
10006700: 5f                       pop edi
10006701: 5e                       pop esi
10006702: 5d                       pop ebp
10006703: c3                       ret 
10006704: 8bff                     mov edi, edi
10006706: 55                       push ebp
10006707: 8bec                     mov ebp, esp
10006709: 56                       push esi
1000670a: 57                       push edi
1000670b: 33f6                     xor esi, esi
1000670d: ff750c                   push dword ptr [ebp + 0xc]
10006710: ff7508                   push dword ptr [ebp + 8]
10006713: e885220000               call 0x1000899d
10006718: 8bf8                     mov edi, eax
1000671a: 59                       pop ecx
1000671b: 59                       pop ecx
1000671c: 85ff                     test edi, edi
1000671e: 752c                     jne 0x1000674c
10006720: 39450c                   cmp dword ptr [ebp + 0xc], eax
10006723: 7427                     je 0x1000674c
10006725: 3905d0060110             cmp dword ptr [0x100106d0], eax
1000672b: 761f                     jbe 0x1000674c
1000672d: 56                       push esi
1000672e: ff1528b00010             call dword ptr [0x1000b028]
10006734: 8d86e8030000             lea eax, [esi + 0x3e8]
1000673a: 3b05d0060110             cmp eax, dword ptr [0x100106d0]
10006740: 7603                     jbe 0x10006745
10006742: 83c8ff                   or eax, 0xffffffff
10006745: 8bf0                     mov esi, eax
10006747: 83f8ff                   cmp eax, -1
1000674a: 75c1                     jne 0x1000670d
1000674c: 8bc7                     mov eax, edi
1000674e: 5f                       pop edi
1000674f: 5e                       pop esi
10006750: 5d                       pop ebp
10006751: c3                       ret 
10006752: 8bff                     mov edi, edi
10006754: 55                       push ebp
10006755: 8bec                     mov ebp, esp
10006757: 83ec4c                   sub esp, 0x4c
1000675a: 56                       push esi
1000675b: 8d45b4                   lea eax, [ebp - 0x4c]
1000675e: 50                       push eax
1000675f: ff15b0b00010             call dword ptr [0x1000b0b0]
10006765: 6a40                     push 0x40
10006767: 6a20                     push 0x20
10006769: 5e                       pop esi
1000676a: 56                       push esi
1000676b: e848ffffff               call 0x100066b8
10006770: 59                       pop ecx
10006771: 59                       pop ecx
10006772: 33c9                     xor ecx, ecx
10006774: 3bc1                     cmp eax, ecx
10006776: 7508                     jne 0x10006780
10006778: 83c8ff                   or eax, 0xffffffff
1000677b: e90f020000               jmp 0x1000698f
10006780: 8d9000080000             lea edx, [eax + 0x800]
10006786: a3e00d0110               mov dword ptr [0x10010de0], eax
1000678b: 8935c40d0110             mov dword ptr [0x10010dc4], esi
10006791: 3bc2                     cmp eax, edx
10006793: 7336                     jae 0x100067cb
10006795: 83c005                   add eax, 5
10006798: 8348fbff                 or dword ptr [eax - 5], 0xffffffff
1000679c: 66c740ff000a             mov word ptr [eax - 1], 0xa00
100067a2: 894803                   mov dword ptr [eax + 3], ecx
100067a5: 66c7401f000a             mov word ptr [eax + 0x1f], 0xa00
100067ab: c640210a                 mov byte ptr [eax + 0x21], 0xa
100067af: 894833                   mov dword ptr [eax + 0x33], ecx
100067b2: 88482f                   mov byte ptr [eax + 0x2f], cl
100067b5: 8b35e00d0110             mov esi, dword ptr [0x10010de0]
100067bb: 83c040                   add eax, 0x40
100067be: 8d50fb                   lea edx, [eax - 5]
100067c1: 81c600080000             add esi, 0x800
100067c7: 3bd6                     cmp edx, esi
100067c9: 72cd                     jb 0x10006798
100067cb: 53                       push ebx
100067cc: 57                       push edi
100067cd: 66394de6                 cmp word ptr [ebp - 0x1a], cx
100067d1: 0f840e010000             je 0x100068e5
100067d7: 8b45e8                   mov eax, dword ptr [ebp - 0x18]
100067da: 3bc1                     cmp eax, ecx
100067dc: 0f8403010000             je 0x100068e5
100067e2: 8b18                     mov ebx, dword ptr [eax]
100067e4: 83c004                   add eax, 4
100067e7: 8945fc                   mov dword ptr [ebp - 4], eax
100067ea: 03c3                     add eax, ebx
100067ec: be00080000               mov esi, 0x800
100067f1: 8945f8                   mov dword ptr [ebp - 8], eax
100067f4: 3bde                     cmp ebx, esi
100067f6: 7c02                     jl 0x100067fa
100067f8: 8bde                     mov ebx, esi
100067fa: 391dc40d0110             cmp dword ptr [0x10010dc4], ebx
10006800: 7d6b                     jge 0x1000686d
10006802: bfe40d0110               mov edi, 0x10010de4
10006807: 6a40                     push 0x40
10006809: 6a20                     push 0x20
1000680b: e8a8feffff               call 0x100066b8
10006810: 59                       pop ecx
10006811: 59                       pop ecx
10006812: 85c0                     test eax, eax
10006814: 7451                     je 0x10006867
10006816: 8305c40d011020           add dword ptr [0x10010dc4], 0x20
1000681d: 8d8800080000             lea ecx, [eax + 0x800]
10006823: 8907                     mov dword ptr [edi], eax
10006825: 3bc1                     cmp eax, ecx
10006827: 7331                     jae 0x1000685a
10006829: 83c005                   add eax, 5
1000682c: 8348fbff                 or dword ptr [eax - 5], 0xffffffff
10006830: 83600300                 and dword ptr [eax + 3], 0
10006834: 80601f80                 and byte ptr [eax + 0x1f], 0x80
10006838: 83603300                 and dword ptr [eax + 0x33], 0
1000683c: 66c740ff000a             mov word ptr [eax - 1], 0xa00
10006842: 66c740200a0a             mov word ptr [eax + 0x20], 0xa0a
10006848: c6402f00                 mov byte ptr [eax + 0x2f], 0
1000684c: 8b0f                     mov ecx, dword ptr [edi]
1000684e: 83c040                   add eax, 0x40
10006851: 03ce                     add ecx, esi
10006853: 8d50fb                   lea edx, [eax - 5]
10006856: 3bd1                     cmp edx, ecx
10006858: 72d2                     jb 0x1000682c
1000685a: 83c704                   add edi, 4
1000685d: 391dc40d0110             cmp dword ptr [0x10010dc4], ebx
10006863: 7ca2                     jl 0x10006807
10006865: eb06                     jmp 0x1000686d
10006867: 8b1dc40d0110             mov ebx, dword ptr [0x10010dc4]
1000686d: 33ff                     xor edi, edi
1000686f: 85db                     test ebx, ebx
10006871: 7e72                     jle 0x100068e5
10006873: 8b45f8                   mov eax, dword ptr [ebp - 8]
10006876: 8b00                     mov eax, dword ptr [eax]
10006878: 83f8ff                   cmp eax, -1
1000687b: 745c                     je 0x100068d9
1000687d: 83f8fe                   cmp eax, -2
10006880: 7457                     je 0x100068d9
10006882: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10006885: 8a09                     mov cl, byte ptr [ecx]
10006887: f6c101                   test cl, 1
1000688a: 744d                     je 0x100068d9
1000688c: f6c108                   test cl, 8
1000688f: 750b                     jne 0x1000689c
10006891: 50                       push eax
10006892: ff15acb00010             call dword ptr [0x1000b0ac]
10006898: 85c0                     test eax, eax
1000689a: 743d                     je 0x100068d9
1000689c: 8bf7                     mov esi, edi
1000689e: 83e61f                   and esi, 0x1f
100068a1: 8bc7                     mov eax, edi
100068a3: c1f805                   sar eax, 5
100068a6: c1e606                   shl esi, 6
100068a9: 033485e00d0110           add esi, dword ptr [eax*4 + 0x10010de0]
100068b0: 8b45f8                   mov eax, dword ptr [ebp - 8]
100068b3: 8b00                     mov eax, dword ptr [eax]
100068b5: 8906                     mov dword ptr [esi], eax
100068b7: 8b45fc                   mov eax, dword ptr [ebp - 4]
100068ba: 8a00                     mov al, byte ptr [eax]
100068bc: 884604                   mov byte ptr [esi + 4], al
100068bf: 68a00f0000               push 0xfa0
100068c4: 8d460c                   lea eax, [esi + 0xc]
100068c7: 50                       push eax
100068c8: ff15a8b00010             call dword ptr [0x1000b0a8]
100068ce: 85c0                     test eax, eax
100068d0: 0f84bc000000             je 0x10006992
100068d6: ff4608                   inc dword ptr [esi + 8]
100068d9: 8345f804                 add dword ptr [ebp - 8], 4
100068dd: 47                       inc edi
100068de: ff45fc                   inc dword ptr [ebp - 4]
100068e1: 3bfb                     cmp edi, ebx
100068e3: 7c8e                     jl 0x10006873
100068e5: 33db                     xor ebx, ebx
100068e7: 8bf3                     mov esi, ebx
100068e9: c1e606                   shl esi, 6
100068ec: 0335e00d0110             add esi, dword ptr [0x10010de0]
100068f2: 8b06                     mov eax, dword ptr [esi]
100068f4: 83f8ff                   cmp eax, -1
100068f7: 740b                     je 0x10006904
100068f9: 83f8fe                   cmp eax, -2
100068fc: 7406                     je 0x10006904
100068fe: 804e0480                 or byte ptr [esi + 4], 0x80
10006902: eb71                     jmp 0x10006975
10006904: c6460481                 mov byte ptr [esi + 4], 0x81
10006908: 85db                     test ebx, ebx
1000690a: 7505                     jne 0x10006911
1000690c: 6af6                     push -0xa
1000690e: 58                       pop eax
1000690f: eb0a                     jmp 0x1000691b
10006911: 8d43ff                   lea eax, [ebx - 1]
10006914: f7d8                     neg eax
10006916: 1bc0                     sbb eax, eax
10006918: 83c0f5                   add eax, -0xb
1000691b: 50                       push eax
1000691c: ff1584b00010             call dword ptr [0x1000b084]
10006922: 8bf8                     mov edi, eax
10006924: 83ffff                   cmp edi, -1
10006927: 7442                     je 0x1000696b
10006929: 85ff                     test edi, edi
1000692b: 743e                     je 0x1000696b
1000692d: 57                       push edi
1000692e: ff15acb00010             call dword ptr [0x1000b0ac]
10006934: 85c0                     test eax, eax
10006936: 7433                     je 0x1000696b
10006938: 25ff000000               and eax, 0xff
1000693d: 893e                     mov dword ptr [esi], edi
1000693f: 83f802                   cmp eax, 2
10006942: 7506                     jne 0x1000694a
10006944: 804e0440                 or byte ptr [esi + 4], 0x40
10006948: eb09                     jmp 0x10006953
1000694a: 83f803                   cmp eax, 3
1000694d: 7504                     jne 0x10006953
1000694f: 804e0408                 or byte ptr [esi + 4], 8
10006953: 68a00f0000               push 0xfa0
10006958: 8d460c                   lea eax, [esi + 0xc]
1000695b: 50                       push eax
1000695c: ff15a8b00010             call dword ptr [0x1000b0a8]
10006962: 85c0                     test eax, eax
10006964: 742c                     je 0x10006992
10006966: ff4608                   inc dword ptr [esi + 8]
10006969: eb0a                     jmp 0x10006975
1000696b: 804e0440                 or byte ptr [esi + 4], 0x40
1000696f: c706feffffff             mov dword ptr [esi], 0xfffffffe
10006975: 43                       inc ebx
10006976: 83fb03                   cmp ebx, 3
10006979: 0f8c68ffffff             jl 0x100068e7
1000697f: ff35c40d0110             push dword ptr [0x10010dc4]
10006985: ff15a4b00010             call dword ptr [0x1000b0a4]
1000698b: 33c0                     xor eax, eax
1000698d: 5f                       pop edi
1000698e: 5b                       pop ebx
1000698f: 5e                       pop esi
10006990: c9                       leave 
10006991: c3                       ret 
10006992: 83c8ff                   or eax, 0xffffffff
10006995: ebf6                     jmp 0x1000698d
10006997: 8bff                     mov edi, edi
10006999: 56                       push esi
1000699a: 57                       push edi
1000699b: bfe00d0110               mov edi, 0x10010de0
100069a0: 8b07                     mov eax, dword ptr [edi]
100069a2: 85c0                     test eax, eax
100069a4: 7436                     je 0x100069dc
100069a6: 8d8800080000             lea ecx, [eax + 0x800]
100069ac: 3bc1                     cmp eax, ecx
100069ae: 7321                     jae 0x100069d1
100069b0: 8d700c                   lea esi, [eax + 0xc]
100069b3: 837efc00                 cmp dword ptr [esi - 4], 0
100069b7: 7407                     je 0x100069c0
100069b9: 56                       push esi
100069ba: ff15b4b00010             call dword ptr [0x1000b0b4]
100069c0: 8b07                     mov eax, dword ptr [edi]
100069c2: 83c640                   add esi, 0x40
100069c5: 0500080000               add eax, 0x800
100069ca: 8d4ef4                   lea ecx, [esi - 0xc]
100069cd: 3bc8                     cmp ecx, eax
100069cf: 72e2                     jb 0x100069b3
100069d1: ff37                     push dword ptr [edi]
100069d3: e86ae7ffff               call 0x10005142
100069d8: 832700                   and dword ptr [edi], 0
100069db: 59                       pop ecx
100069dc: 83c704                   add edi, 4
100069df: 81ffe00e0110             cmp edi, 0x10010ee0
100069e5: 7cb9                     jl 0x100069a0
100069e7: 5f                       pop edi
100069e8: 5e                       pop esi
100069e9: c3                       ret 
100069ea: 833dec0e011000           cmp dword ptr [0x10010eec], 0
100069f1: 7505                     jne 0x100069f8
100069f3: e8051f0000               call 0x100088fd
100069f8: 56                       push esi
100069f9: 8b3514fd0010             mov esi, dword ptr [0x1000fd14]
100069ff: 57                       push edi
10006a00: 33ff                     xor edi, edi
10006a02: 85f6                     test esi, esi
10006a04: 7518                     jne 0x10006a1e
10006a06: 83c8ff                   or eax, 0xffffffff
10006a09: e991000000               jmp 0x10006a9f
10006a0e: 3c3d                     cmp al, 0x3d
10006a10: 7401                     je 0x10006a13
10006a12: 47                       inc edi
10006a13: 56                       push esi
10006a14: e8d7ecffff               call 0x100056f0
10006a19: 59                       pop ecx
10006a1a: 8d740601                 lea esi, [esi + eax + 1]
10006a1e: 8a06                     mov al, byte ptr [esi]
10006a20: 84c0                     test al, al
10006a22: 75ea                     jne 0x10006a0e
10006a24: 6a04                     push 4
10006a26: 47                       inc edi
10006a27: 57                       push edi
10006a28: e88bfcffff               call 0x100066b8
10006a2d: 8bf8                     mov edi, eax
10006a2f: 59                       pop ecx
10006a30: 59                       pop ecx
10006a31: 893d6c000110             mov dword ptr [0x1001006c], edi
10006a37: 85ff                     test edi, edi
10006a39: 74cb                     je 0x10006a06
10006a3b: 8b3514fd0010             mov esi, dword ptr [0x1000fd14]
10006a41: 53                       push ebx
10006a42: eb33                     jmp 0x10006a77
10006a44: 56                       push esi
10006a45: e8a6ecffff               call 0x100056f0
10006a4a: 803e3d                   cmp byte ptr [esi], 0x3d
10006a4d: 59                       pop ecx
10006a4e: 8d5801                   lea ebx, [eax + 1]
10006a51: 7422                     je 0x10006a75
10006a53: 6a01                     push 1
10006a55: 53                       push ebx
10006a56: e85dfcffff               call 0x100066b8
10006a5b: 59                       pop ecx
10006a5c: 59                       pop ecx
10006a5d: 8907                     mov dword ptr [edi], eax
10006a5f: 85c0                     test eax, eax
10006a61: 743f                     je 0x10006aa2
10006a63: 56                       push esi
10006a64: 53                       push ebx
10006a65: 50                       push eax
10006a66: e824ecffff               call 0x1000568f
10006a6b: 83c40c                   add esp, 0xc
10006a6e: 85c0                     test eax, eax
10006a70: 7547                     jne 0x10006ab9
10006a72: 83c704                   add edi, 4
10006a75: 03f3                     add esi, ebx
10006a77: 803e00                   cmp byte ptr [esi], 0
10006a7a: 75c8                     jne 0x10006a44
10006a7c: ff3514fd0010             push dword ptr [0x1000fd14]
10006a82: e8bbe6ffff               call 0x10005142
10006a87: 832514fd001000           and dword ptr [0x1000fd14], 0
10006a8e: 832700                   and dword ptr [edi], 0
10006a91: c705e00e011001000000     mov dword ptr [0x10010ee0], 1
10006a9b: 33c0                     xor eax, eax
10006a9d: 59                       pop ecx
10006a9e: 5b                       pop ebx
10006a9f: 5f                       pop edi
10006aa0: 5e                       pop esi
10006aa1: c3                       ret 
10006aa2: ff356c000110             push dword ptr [0x1001006c]
10006aa8: e895e6ffff               call 0x10005142
10006aad: 83256c00011000           and dword ptr [0x1001006c], 0
10006ab4: 83c8ff                   or eax, 0xffffffff
10006ab7: ebe4                     jmp 0x10006a9d
10006ab9: 33c0                     xor eax, eax
10006abb: 50                       push eax
10006abc: 50                       push eax
10006abd: 50                       push eax
10006abe: 50                       push eax
10006abf: 50                       push eax
10006ac0: e86f080000               call 0x10007334
10006ac5: cc                       int3 
10006ac6: 8bff                     mov edi, edi
10006ac8: 55                       push ebp
10006ac9: 8bec                     mov ebp, esp
10006acb: 51                       push ecx
10006acc: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10006acf: 53                       push ebx
10006ad0: 33c0                     xor eax, eax
10006ad2: 56                       push esi
10006ad3: 8907                     mov dword ptr [edi], eax
10006ad5: 8bf2                     mov esi, edx
10006ad7: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10006ada: c70101000000             mov dword ptr [ecx], 1
10006ae0: 394508                   cmp dword ptr [ebp + 8], eax
10006ae3: 7409                     je 0x10006aee
10006ae5: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10006ae8: 83450804                 add dword ptr [ebp + 8], 4
10006aec: 8913                     mov dword ptr [ebx], edx
10006aee: 8945fc                   mov dword ptr [ebp - 4], eax
10006af1: 803e22                   cmp byte ptr [esi], 0x22
10006af4: 7510                     jne 0x10006b06
10006af6: 33c0                     xor eax, eax
10006af8: 3945fc                   cmp dword ptr [ebp - 4], eax
10006afb: b322                     mov bl, 0x22
10006afd: 0f94c0                   sete al
10006b00: 46                       inc esi
10006b01: 8945fc                   mov dword ptr [ebp - 4], eax
10006b04: eb3c                     jmp 0x10006b42
10006b06: ff07                     inc dword ptr [edi]
10006b08: 85d2                     test edx, edx
10006b0a: 7408                     je 0x10006b14
10006b0c: 8a06                     mov al, byte ptr [esi]
10006b0e: 8802                     mov byte ptr [edx], al
10006b10: 42                       inc edx
10006b11: 89550c                   mov dword ptr [ebp + 0xc], edx
10006b14: 8a1e                     mov bl, byte ptr [esi]
10006b16: 0fb6c3                   movzx eax, bl
10006b19: 50                       push eax
10006b1a: 46                       inc esi
10006b1b: e87d1f0000               call 0x10008a9d
10006b20: 59                       pop ecx
10006b21: 85c0                     test eax, eax
10006b23: 7413                     je 0x10006b38
10006b25: ff07                     inc dword ptr [edi]
10006b27: 837d0c00                 cmp dword ptr [ebp + 0xc], 0
10006b2b: 740a                     je 0x10006b37
10006b2d: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10006b30: 8a06                     mov al, byte ptr [esi]
10006b32: ff450c                   inc dword ptr [ebp + 0xc]
10006b35: 8801                     mov byte ptr [ecx], al
10006b37: 46                       inc esi
10006b38: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10006b3b: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10006b3e: 84db                     test bl, bl
10006b40: 7432                     je 0x10006b74
10006b42: 837dfc00                 cmp dword ptr [ebp - 4], 0
10006b46: 75a9                     jne 0x10006af1
10006b48: 80fb20                   cmp bl, 0x20
10006b4b: 7405                     je 0x10006b52
10006b4d: 80fb09                   cmp bl, 9
10006b50: 759f                     jne 0x10006af1
10006b52: 85d2                     test edx, edx
10006b54: 7404                     je 0x10006b5a
10006b56: c642ff00                 mov byte ptr [edx - 1], 0
10006b5a: 8365fc00                 and dword ptr [ebp - 4], 0
10006b5e: 803e00                   cmp byte ptr [esi], 0
10006b61: 0f84e9000000             je 0x10006c50
10006b67: 8a06                     mov al, byte ptr [esi]
10006b69: 3c20                     cmp al, 0x20
10006b6b: 7404                     je 0x10006b71
10006b6d: 3c09                     cmp al, 9
10006b6f: 7506                     jne 0x10006b77
10006b71: 46                       inc esi
10006b72: ebf3                     jmp 0x10006b67
10006b74: 4e                       dec esi
10006b75: ebe3                     jmp 0x10006b5a
10006b77: 803e00                   cmp byte ptr [esi], 0
10006b7a: 0f84d0000000             je 0x10006c50
10006b80: 837d0800                 cmp dword ptr [ebp + 8], 0
10006b84: 7409                     je 0x10006b8f
10006b86: 8b4508                   mov eax, dword ptr [ebp + 8]
10006b89: 83450804                 add dword ptr [ebp + 8], 4
10006b8d: 8910                     mov dword ptr [eax], edx
10006b8f: ff01                     inc dword ptr [ecx]
10006b91: 33db                     xor ebx, ebx
10006b93: 43                       inc ebx
10006b94: 33c9                     xor ecx, ecx
10006b96: eb02                     jmp 0x10006b9a
10006b98: 46                       inc esi
10006b99: 41                       inc ecx
10006b9a: 803e5c                   cmp byte ptr [esi], 0x5c
10006b9d: 74f9                     je 0x10006b98
10006b9f: 803e22                   cmp byte ptr [esi], 0x22
10006ba2: 7526                     jne 0x10006bca
10006ba4: f6c101                   test cl, 1
10006ba7: 751f                     jne 0x10006bc8
10006ba9: 837dfc00                 cmp dword ptr [ebp - 4], 0
10006bad: 740c                     je 0x10006bbb
10006baf: 8d4601                   lea eax, [esi + 1]
10006bb2: 803822                   cmp byte ptr [eax], 0x22
10006bb5: 7504                     jne 0x10006bbb
10006bb7: 8bf0                     mov esi, eax
10006bb9: eb0d                     jmp 0x10006bc8
10006bbb: 33c0                     xor eax, eax
10006bbd: 33db                     xor ebx, ebx
10006bbf: 3945fc                   cmp dword ptr [ebp - 4], eax
10006bc2: 0f94c0                   sete al
10006bc5: 8945fc                   mov dword ptr [ebp - 4], eax
10006bc8: d1e9                     shr ecx, 1
10006bca: 85c9                     test ecx, ecx
10006bcc: 7412                     je 0x10006be0
10006bce: 49                       dec ecx
10006bcf: 85d2                     test edx, edx
10006bd1: 7404                     je 0x10006bd7
10006bd3: c6025c                   mov byte ptr [edx], 0x5c
10006bd6: 42                       inc edx
10006bd7: ff07                     inc dword ptr [edi]
10006bd9: 85c9                     test ecx, ecx
10006bdb: 75f1                     jne 0x10006bce
10006bdd: 89550c                   mov dword ptr [ebp + 0xc], edx
10006be0: 8a06                     mov al, byte ptr [esi]
10006be2: 84c0                     test al, al
10006be4: 7455                     je 0x10006c3b
10006be6: 837dfc00                 cmp dword ptr [ebp - 4], 0
10006bea: 7508                     jne 0x10006bf4
10006bec: 3c20                     cmp al, 0x20
10006bee: 744b                     je 0x10006c3b
10006bf0: 3c09                     cmp al, 9
10006bf2: 7447                     je 0x10006c3b
10006bf4: 85db                     test ebx, ebx
10006bf6: 743d                     je 0x10006c35
10006bf8: 0fbec0                   movsx eax, al
10006bfb: 50                       push eax
10006bfc: 85d2                     test edx, edx
10006bfe: 7423                     je 0x10006c23
10006c00: e8981e0000               call 0x10008a9d
10006c05: 59                       pop ecx
10006c06: 85c0                     test eax, eax
10006c08: 740d                     je 0x10006c17
10006c0a: 8a06                     mov al, byte ptr [esi]
10006c0c: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10006c0f: ff450c                   inc dword ptr [ebp + 0xc]
10006c12: 8801                     mov byte ptr [ecx], al
10006c14: 46                       inc esi
10006c15: ff07                     inc dword ptr [edi]
10006c17: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10006c1a: 8a06                     mov al, byte ptr [esi]
10006c1c: ff450c                   inc dword ptr [ebp + 0xc]
10006c1f: 8801                     mov byte ptr [ecx], al
10006c21: eb0d                     jmp 0x10006c30
10006c23: e8751e0000               call 0x10008a9d
10006c28: 59                       pop ecx
10006c29: 85c0                     test eax, eax
10006c2b: 7403                     je 0x10006c30
10006c2d: 46                       inc esi
10006c2e: ff07                     inc dword ptr [edi]
10006c30: ff07                     inc dword ptr [edi]
10006c32: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10006c35: 46                       inc esi
10006c36: e956ffffff               jmp 0x10006b91
10006c3b: 85d2                     test edx, edx
10006c3d: 7407                     je 0x10006c46
10006c3f: c60200                   mov byte ptr [edx], 0
10006c42: 42                       inc edx
10006c43: 89550c                   mov dword ptr [ebp + 0xc], edx
10006c46: ff07                     inc dword ptr [edi]
10006c48: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10006c4b: e90effffff               jmp 0x10006b5e
10006c50: 8b4508                   mov eax, dword ptr [ebp + 8]
10006c53: 5e                       pop esi
10006c54: 5b                       pop ebx
10006c55: 85c0                     test eax, eax
10006c57: 7403                     je 0x10006c5c
10006c59: 832000                   and dword ptr [eax], 0
10006c5c: ff01                     inc dword ptr [ecx]
10006c5e: c9                       leave 
10006c5f: c3                       ret 
10006c60: 8bff                     mov edi, edi
10006c62: 55                       push ebp
10006c63: 8bec                     mov ebp, esp
10006c65: 83ec0c                   sub esp, 0xc
10006c68: 53                       push ebx
10006c69: 33db                     xor ebx, ebx
10006c6b: 56                       push esi
10006c6c: 57                       push edi
10006c6d: 391dec0e0110             cmp dword ptr [0x10010eec], ebx
10006c73: 7505                     jne 0x10006c7a
10006c75: e8831c0000               call 0x100088fd
10006c7a: 6804010000               push 0x104
10006c7f: bed8060110               mov esi, 0x100106d8
10006c84: 56                       push esi
10006c85: 53                       push ebx
10006c86: 881ddc070110             mov byte ptr [0x100107dc], bl
10006c8c: ff15b8b00010             call dword ptr [0x1000b0b8]
10006c92: a1fc0e0110               mov eax, dword ptr [0x10010efc]
10006c97: 89357c000110             mov dword ptr [0x1001007c], esi
10006c9d: 3bc3                     cmp eax, ebx
10006c9f: 7407                     je 0x10006ca8
10006ca1: 8945fc                   mov dword ptr [ebp - 4], eax
10006ca4: 3818                     cmp byte ptr [eax], bl
10006ca6: 7503                     jne 0x10006cab
10006ca8: 8975fc                   mov dword ptr [ebp - 4], esi
10006cab: 8b55fc                   mov edx, dword ptr [ebp - 4]
10006cae: 8d45f8                   lea eax, [ebp - 8]
10006cb1: 50                       push eax
10006cb2: 53                       push ebx
10006cb3: 53                       push ebx
10006cb4: 8d7df4                   lea edi, [ebp - 0xc]
10006cb7: e80afeffff               call 0x10006ac6
10006cbc: 8b45f8                   mov eax, dword ptr [ebp - 8]
10006cbf: 83c40c                   add esp, 0xc
10006cc2: 3dffffff3f               cmp eax, 0x3fffffff
10006cc7: 734a                     jae 0x10006d13
10006cc9: 8b4df4                   mov ecx, dword ptr [ebp - 0xc]
10006ccc: 83f9ff                   cmp ecx, -1
10006ccf: 7342                     jae 0x10006d13
10006cd1: 8bf8                     mov edi, eax
10006cd3: c1e702                   shl edi, 2
10006cd6: 8d040f                   lea eax, [edi + ecx]
10006cd9: 3bc1                     cmp eax, ecx
10006cdb: 7236                     jb 0x10006d13
10006cdd: 50                       push eax
10006cde: e890f9ffff               call 0x10006673
10006ce3: 8bf0                     mov esi, eax
10006ce5: 59                       pop ecx
10006ce6: 3bf3                     cmp esi, ebx
10006ce8: 7429                     je 0x10006d13
10006cea: 8b55fc                   mov edx, dword ptr [ebp - 4]
10006ced: 8d45f8                   lea eax, [ebp - 8]
10006cf0: 50                       push eax
10006cf1: 03fe                     add edi, esi
10006cf3: 57                       push edi
10006cf4: 56                       push esi
10006cf5: 8d7df4                   lea edi, [ebp - 0xc]
10006cf8: e8c9fdffff               call 0x10006ac6
10006cfd: 8b45f8                   mov eax, dword ptr [ebp - 8]
10006d00: 83c40c                   add esp, 0xc
10006d03: 48                       dec eax
10006d04: a360000110               mov dword ptr [0x10010060], eax
10006d09: 893564000110             mov dword ptr [0x10010064], esi
10006d0f: 33c0                     xor eax, eax
10006d11: eb03                     jmp 0x10006d16
10006d13: 83c8ff                   or eax, 0xffffffff
10006d16: 5f                       pop edi
10006d17: 5e                       pop esi
10006d18: 5b                       pop ebx
10006d19: c9                       leave 
10006d1a: c3                       ret 
10006d1b: 8bff                     mov edi, edi
10006d1d: 55                       push ebp
10006d1e: 8bec                     mov ebp, esp
10006d20: 83ec0c                   sub esp, 0xc
10006d23: 53                       push ebx
10006d24: 56                       push esi
10006d25: ff15c4b00010             call dword ptr [0x1000b0c4]
10006d2b: 8bd8                     mov ebx, eax
10006d2d: 33f6                     xor esi, esi
10006d2f: 3bde                     cmp ebx, esi
10006d31: 7504                     jne 0x10006d37
10006d33: 33c0                     xor eax, eax
10006d35: eb77                     jmp 0x10006dae
10006d37: 663933                   cmp word ptr [ebx], si
10006d3a: 7410                     je 0x10006d4c
10006d3c: 83c002                   add eax, 2
10006d3f: 663930                   cmp word ptr [eax], si
10006d42: 75f8                     jne 0x10006d3c
10006d44: 83c002                   add eax, 2
10006d47: 663930                   cmp word ptr [eax], si
10006d4a: 75f0                     jne 0x10006d3c
10006d4c: 57                       push edi
10006d4d: 8b3dc0b00010             mov edi, dword ptr [0x1000b0c0]
10006d53: 56                       push esi
10006d54: 56                       push esi
10006d55: 56                       push esi
10006d56: 2bc3                     sub eax, ebx
10006d58: 56                       push esi
10006d59: d1f8                     sar eax, 1
10006d5b: 40                       inc eax
10006d5c: 50                       push eax
10006d5d: 53                       push ebx
10006d5e: 56                       push esi
10006d5f: 56                       push esi
10006d60: 8945f4                   mov dword ptr [ebp - 0xc], eax
10006d63: ffd7                     call edi
10006d65: 8945f8                   mov dword ptr [ebp - 8], eax
10006d68: 3bc6                     cmp eax, esi
10006d6a: 7438                     je 0x10006da4
10006d6c: 50                       push eax
10006d6d: e801f9ffff               call 0x10006673
10006d72: 59                       pop ecx
10006d73: 8945fc                   mov dword ptr [ebp - 4], eax
10006d76: 3bc6                     cmp eax, esi
10006d78: 742a                     je 0x10006da4
10006d7a: 56                       push esi
10006d7b: 56                       push esi
10006d7c: ff75f8                   push dword ptr [ebp - 8]
10006d7f: 50                       push eax
10006d80: ff75f4                   push dword ptr [ebp - 0xc]
10006d83: 53                       push ebx
10006d84: 56                       push esi
10006d85: 56                       push esi
10006d86: ffd7                     call edi
10006d88: 85c0                     test eax, eax
10006d8a: 750c                     jne 0x10006d98
10006d8c: ff75fc                   push dword ptr [ebp - 4]
10006d8f: e8aee3ffff               call 0x10005142
10006d94: 59                       pop ecx
10006d95: 8975fc                   mov dword ptr [ebp - 4], esi
10006d98: 53                       push ebx
10006d99: ff15bcb00010             call dword ptr [0x1000b0bc]
10006d9f: 8b45fc                   mov eax, dword ptr [ebp - 4]
10006da2: eb09                     jmp 0x10006dad
10006da4: 53                       push ebx
10006da5: ff15bcb00010             call dword ptr [0x1000b0bc]
10006dab: 33c0                     xor eax, eax
10006dad: 5f                       pop edi
10006dae: 5e                       pop esi
10006daf: 5b                       pop ebx
10006db0: c9                       leave 
10006db1: c3                       ret 
10006db2: 8bff                     mov edi, edi
10006db4: 56                       push esi
10006db5: b87cda0010               mov eax, 0x1000da7c
10006dba: be7cda0010               mov esi, 0x1000da7c
10006dbf: 57                       push edi
10006dc0: 8bf8                     mov edi, eax
10006dc2: 3bc6                     cmp eax, esi
10006dc4: 730f                     jae 0x10006dd5
10006dc6: 8b07                     mov eax, dword ptr [edi]
10006dc8: 85c0                     test eax, eax
10006dca: 7402                     je 0x10006dce
10006dcc: ffd0                     call eax
10006dce: 83c704                   add edi, 4
10006dd1: 3bfe                     cmp edi, esi
10006dd3: 72f1                     jb 0x10006dc6
10006dd5: 5f                       pop edi
10006dd6: 5e                       pop esi
10006dd7: c3                       ret 
10006dd8: 8bff                     mov edi, edi
10006dda: 56                       push esi
10006ddb: b884da0010               mov eax, 0x1000da84
10006de0: be84da0010               mov esi, 0x1000da84
10006de5: 57                       push edi
10006de6: 8bf8                     mov edi, eax
10006de8: 3bc6                     cmp eax, esi
10006dea: 730f                     jae 0x10006dfb
10006dec: 8b07                     mov eax, dword ptr [edi]
10006dee: 85c0                     test eax, eax
10006df0: 7402                     je 0x10006df4
10006df2: ffd0                     call eax
10006df4: 83c704                   add edi, 4
10006df7: 3bfe                     cmp edi, esi
10006df9: 72f1                     jb 0x10006dec
10006dfb: 5f                       pop edi
10006dfc: 5e                       pop esi
10006dfd: c3                       ret 
10006dfe: cc                       int3 
10006dff: cc                       int3 
10006e00: 68606e0010               push 0x10006e60
10006e05: 64ff3500000000           push dword ptr fs:[0]
10006e0c: 8b442410                 mov eax, dword ptr [esp + 0x10]
10006e10: 896c2410                 mov dword ptr [esp + 0x10], ebp
10006e14: 8d6c2410                 lea ebp, [esp + 0x10]
10006e18: 2be0                     sub esp, eax
10006e1a: 53                       push ebx
10006e1b: 56                       push esi
10006e1c: 57                       push edi
10006e1d: a180f00010               mov eax, dword ptr [0x1000f080]
10006e22: 3145fc                   xor dword ptr [ebp - 4], eax
10006e25: 33c5                     xor eax, ebp
10006e27: 50                       push eax
10006e28: 8965e8                   mov dword ptr [ebp - 0x18], esp
10006e2b: ff75f8                   push dword ptr [ebp - 8]
10006e2e: 8b45fc                   mov eax, dword ptr [ebp - 4]
10006e31: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10006e38: 8945f8                   mov dword ptr [ebp - 8], eax
10006e3b: 8d45f0                   lea eax, [ebp - 0x10]
10006e3e: 64a300000000             mov dword ptr fs:[0], eax
10006e44: c3                       ret 
10006e45: 8b4df0                   mov ecx, dword ptr [ebp - 0x10]
10006e48: 64890d00000000           mov dword ptr fs:[0], ecx
10006e4f: 59                       pop ecx
10006e50: 5f                       pop edi
10006e51: 5f                       pop edi
10006e52: 5e                       pop esi
10006e53: 5b                       pop ebx
10006e54: 8be5                     mov esp, ebp
10006e56: 5d                       pop ebp
10006e57: 51                       push ecx
10006e58: c3                       ret 
10006e59: cc                       int3 
10006e5a: cc                       int3 
10006e5b: cc                       int3 
10006e5c: cc                       int3 
10006e5d: cc                       int3 
10006e5e: cc                       int3 
10006e5f: cc                       int3 
10006e60: 8bff                     mov edi, edi
10006e62: 55                       push ebp
10006e63: 8bec                     mov ebp, esp
10006e65: 83ec18                   sub esp, 0x18
10006e68: 53                       push ebx
10006e69: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
10006e6c: 56                       push esi
10006e6d: 8b7308                   mov esi, dword ptr [ebx + 8]
10006e70: 333580f00010             xor esi, dword ptr [0x1000f080]
10006e76: 57                       push edi
10006e77: 8b06                     mov eax, dword ptr [esi]
10006e79: c645ff00                 mov byte ptr [ebp - 1], 0
10006e7d: c745f401000000           mov dword ptr [ebp - 0xc], 1
10006e84: 8d7b10                   lea edi, [ebx + 0x10]
10006e87: 83f8fe                   cmp eax, -2
10006e8a: 740d                     je 0x10006e99
10006e8c: 8b4e04                   mov ecx, dword ptr [esi + 4]
10006e8f: 03cf                     add ecx, edi
10006e91: 330c38                   xor ecx, dword ptr [eax + edi]
10006e94: e821ddffff               call 0x10004bba
10006e99: 8b4e0c                   mov ecx, dword ptr [esi + 0xc]
10006e9c: 8b4608                   mov eax, dword ptr [esi + 8]
10006e9f: 03cf                     add ecx, edi
10006ea1: 330c38                   xor ecx, dword ptr [eax + edi]
10006ea4: e811ddffff               call 0x10004bba
10006ea9: 8b4508                   mov eax, dword ptr [ebp + 8]
10006eac: f6400466                 test byte ptr [eax + 4], 0x66
10006eb0: 0f8519010000             jne 0x10006fcf
10006eb6: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10006eb9: 8d55e8                   lea edx, [ebp - 0x18]
10006ebc: 8953fc                   mov dword ptr [ebx - 4], edx
10006ebf: 8b5b0c                   mov ebx, dword ptr [ebx + 0xc]
10006ec2: 8945e8                   mov dword ptr [ebp - 0x18], eax
10006ec5: 894dec                   mov dword ptr [ebp - 0x14], ecx
10006ec8: 83fbfe                   cmp ebx, -2
10006ecb: 745f                     je 0x10006f2c
10006ecd: 8d4900                   lea ecx, [ecx]
10006ed0: 8d045b                   lea eax, [ebx + ebx*2]
10006ed3: 8b4c8614                 mov ecx, dword ptr [esi + eax*4 + 0x14]
10006ed7: 8d448610                 lea eax, [esi + eax*4 + 0x10]
10006edb: 8945f0                   mov dword ptr [ebp - 0x10], eax
10006ede: 8b00                     mov eax, dword ptr [eax]
10006ee0: 8945f8                   mov dword ptr [ebp - 8], eax
10006ee3: 85c9                     test ecx, ecx
10006ee5: 7414                     je 0x10006efb
10006ee7: 8bd7                     mov edx, edi
10006ee9: e884070000               call 0x10007672
10006eee: c645ff01                 mov byte ptr [ebp - 1], 1
10006ef2: 85c0                     test eax, eax
10006ef4: 7840                     js 0x10006f36
10006ef6: 7f47                     jg 0x10006f3f
10006ef8: 8b45f8                   mov eax, dword ptr [ebp - 8]
10006efb: 8bd8                     mov ebx, eax
10006efd: 83f8fe                   cmp eax, -2
10006f00: 75ce                     jne 0x10006ed0
10006f02: 807dff00                 cmp byte ptr [ebp - 1], 0
10006f06: 7424                     je 0x10006f2c
10006f08: 8b06                     mov eax, dword ptr [esi]
10006f0a: 83f8fe                   cmp eax, -2
10006f0d: 740d                     je 0x10006f1c
10006f0f: 8b4e04                   mov ecx, dword ptr [esi + 4]
10006f12: 03cf                     add ecx, edi
10006f14: 330c38                   xor ecx, dword ptr [eax + edi]
10006f17: e89edcffff               call 0x10004bba
10006f1c: 8b4e0c                   mov ecx, dword ptr [esi + 0xc]
10006f1f: 8b5608                   mov edx, dword ptr [esi + 8]
10006f22: 03cf                     add ecx, edi
10006f24: 330c3a                   xor ecx, dword ptr [edx + edi]
10006f27: e88edcffff               call 0x10004bba
10006f2c: 8b45f4                   mov eax, dword ptr [ebp - 0xc]
10006f2f: 5f                       pop edi
10006f30: 5e                       pop esi
10006f31: 5b                       pop ebx
10006f32: 8be5                     mov esp, ebp
10006f34: 5d                       pop ebp
10006f35: c3                       ret 
10006f36: c745f400000000           mov dword ptr [ebp - 0xc], 0
10006f3d: ebc9                     jmp 0x10006f08
10006f3f: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10006f42: 813963736de0             cmp dword ptr [ecx], 0xe06d7363
10006f48: 7529                     jne 0x10006f73
10006f4a: 833d00d5001000           cmp dword ptr [0x1000d500], 0
10006f51: 7420                     je 0x10006f73
10006f53: 6800d50010               push 0x1000d500
10006f58: e8d30a0000               call 0x10007a30
10006f5d: 83c404                   add esp, 4
10006f60: 85c0                     test eax, eax
10006f62: 740f                     je 0x10006f73
10006f64: 8b5508                   mov edx, dword ptr [ebp + 8]
10006f67: 6a01                     push 1
10006f69: 52                       push edx
10006f6a: ff1500d50010             call dword ptr [0x1000d500]
10006f70: 83c408                   add esp, 8
10006f73: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10006f76: 8b5508                   mov edx, dword ptr [ebp + 8]
10006f79: e824070000               call 0x100076a2
10006f7e: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10006f81: 39580c                   cmp dword ptr [eax + 0xc], ebx
10006f84: 7412                     je 0x10006f98
10006f86: 6880f00010               push 0x1000f080
10006f8b: 57                       push edi
10006f8c: 8bd3                     mov edx, ebx
10006f8e: 8bc8                     mov ecx, eax
10006f90: e826070000               call 0x100076bb
10006f95: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10006f98: 8b4df8                   mov ecx, dword ptr [ebp - 8]
10006f9b: 89480c                   mov dword ptr [eax + 0xc], ecx
10006f9e: 8b06                     mov eax, dword ptr [esi]
10006fa0: 83f8fe                   cmp eax, -2
10006fa3: 740d                     je 0x10006fb2
10006fa5: 8b4e04                   mov ecx, dword ptr [esi + 4]
10006fa8: 03cf                     add ecx, edi
10006faa: 330c38                   xor ecx, dword ptr [eax + edi]
10006fad: e808dcffff               call 0x10004bba
10006fb2: 8b4e0c                   mov ecx, dword ptr [esi + 0xc]
10006fb5: 8b5608                   mov edx, dword ptr [esi + 8]
10006fb8: 03cf                     add ecx, edi
10006fba: 330c3a                   xor ecx, dword ptr [edx + edi]
10006fbd: e8f8dbffff               call 0x10004bba
10006fc2: 8b45f0                   mov eax, dword ptr [ebp - 0x10]
10006fc5: 8b4808                   mov ecx, dword ptr [eax + 8]
10006fc8: 8bd7                     mov edx, edi
10006fca: e8ba060000               call 0x10007689
10006fcf: bafeffffff               mov edx, 0xfffffffe
10006fd4: 39530c                   cmp dword ptr [ebx + 0xc], edx
10006fd7: 0f844fffffff             je 0x10006f2c
10006fdd: 6880f00010               push 0x1000f080
10006fe2: 57                       push edi
10006fe3: 8bcb                     mov ecx, ebx
10006fe5: e8d1060000               call 0x100076bb
10006fea: e919ffffff               jmp 0x10006f08
10006fef: 8bff                     mov edi, edi
10006ff1: 55                       push ebp
10006ff2: 8bec                     mov ebp, esp
10006ff4: 56                       push esi
10006ff5: e8cef2ffff               call 0x100062c8
10006ffa: 8bf0                     mov esi, eax
10006ffc: 85f6                     test esi, esi
10006ffe: 0f8432010000             je 0x10007136
10007004: 8b4e5c                   mov ecx, dword ptr [esi + 0x5c]
10007007: 8b5508                   mov edx, dword ptr [ebp + 8]
1000700a: 8bc1                     mov eax, ecx
1000700c: 57                       push edi
1000700d: 3910                     cmp dword ptr [eax], edx
1000700f: 740d                     je 0x1000701e
10007011: 83c00c                   add eax, 0xc
10007014: 8db990000000             lea edi, [ecx + 0x90]
1000701a: 3bc7                     cmp eax, edi
1000701c: 72ef                     jb 0x1000700d
1000701e: 81c190000000             add ecx, 0x90
10007024: 3bc1                     cmp eax, ecx
10007026: 7304                     jae 0x1000702c
10007028: 3910                     cmp dword ptr [eax], edx
1000702a: 7402                     je 0x1000702e
1000702c: 33c0                     xor eax, eax
1000702e: 85c0                     test eax, eax
10007030: 7407                     je 0x10007039
10007032: 8b5008                   mov edx, dword ptr [eax + 8]
10007035: 85d2                     test edx, edx
10007037: 7507                     jne 0x10007040
10007039: 33c0                     xor eax, eax
1000703b: e9f5000000               jmp 0x10007135
10007040: 83fa05                   cmp edx, 5
10007043: 750c                     jne 0x10007051
10007045: 83600800                 and dword ptr [eax + 8], 0
10007049: 33c0                     xor eax, eax
1000704b: 40                       inc eax
1000704c: e9e4000000               jmp 0x10007135
10007051: 83fa01                   cmp edx, 1
10007054: 0f84d8000000             je 0x10007132
1000705a: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
1000705d: 53                       push ebx
1000705e: 8b5e60                   mov ebx, dword ptr [esi + 0x60]
10007061: 894e60                   mov dword ptr [esi + 0x60], ecx
10007064: 8b4804                   mov ecx, dword ptr [eax + 4]
10007067: 83f908                   cmp ecx, 8
1000706a: 0f85b6000000             jne 0x10007126
10007070: 6a24                     push 0x24
10007072: 59                       pop ecx
10007073: 8b7e5c                   mov edi, dword ptr [esi + 0x5c]
10007076: 8364390800               and dword ptr [ecx + edi + 8], 0
1000707b: 83c10c                   add ecx, 0xc
1000707e: 81f990000000             cmp ecx, 0x90
10007084: 7ced                     jl 0x10007073
10007086: 8b00                     mov eax, dword ptr [eax]
10007088: 8b7e64                   mov edi, dword ptr [esi + 0x64]
1000708b: 3d8e0000c0               cmp eax, 0xc000008e
10007090: 7509                     jne 0x1000709b
10007092: c7466483000000           mov dword ptr [esi + 0x64], 0x83
10007099: eb7e                     jmp 0x10007119
1000709b: 3d900000c0               cmp eax, 0xc0000090
100070a0: 7509                     jne 0x100070ab
100070a2: c7466481000000           mov dword ptr [esi + 0x64], 0x81
100070a9: eb6e                     jmp 0x10007119
100070ab: 3d910000c0               cmp eax, 0xc0000091
100070b0: 7509                     jne 0x100070bb
100070b2: c7466484000000           mov dword ptr [esi + 0x64], 0x84
100070b9: eb5e                     jmp 0x10007119
100070bb: 3d930000c0               cmp eax, 0xc0000093
100070c0: 7509                     jne 0x100070cb
100070c2: c7466485000000           mov dword ptr [esi + 0x64], 0x85
100070c9: eb4e                     jmp 0x10007119
100070cb: 3d8d0000c0               cmp eax, 0xc000008d
100070d0: 7509                     jne 0x100070db
100070d2: c7466482000000           mov dword ptr [esi + 0x64], 0x82
100070d9: eb3e                     jmp 0x10007119
100070db: 3d8f0000c0               cmp eax, 0xc000008f
100070e0: 7509                     jne 0x100070eb
100070e2: c7466486000000           mov dword ptr [esi + 0x64], 0x86
100070e9: eb2e                     jmp 0x10007119
100070eb: 3d920000c0               cmp eax, 0xc0000092
100070f0: 7509                     jne 0x100070fb
100070f2: c746648a000000           mov dword ptr [esi + 0x64], 0x8a
100070f9: eb1e                     jmp 0x10007119
100070fb: 3db50200c0               cmp eax, 0xc00002b5
10007100: 7509                     jne 0x1000710b
10007102: c746648d000000           mov dword ptr [esi + 0x64], 0x8d
10007109: eb0e                     jmp 0x10007119
1000710b: 3db40200c0               cmp eax, 0xc00002b4
10007110: 7507                     jne 0x10007119
10007112: c746648e000000           mov dword ptr [esi + 0x64], 0x8e
10007119: ff7664                   push dword ptr [esi + 0x64]
1000711c: 6a08                     push 8
1000711e: ffd2                     call edx
10007120: 59                       pop ecx
10007121: 897e64                   mov dword ptr [esi + 0x64], edi
10007124: eb07                     jmp 0x1000712d
10007126: 83600800                 and dword ptr [eax + 8], 0
1000712a: 51                       push ecx
1000712b: ffd2                     call edx
1000712d: 59                       pop ecx
1000712e: 895e60                   mov dword ptr [esi + 0x60], ebx
10007131: 5b                       pop ebx
10007132: 83c8ff                   or eax, 0xffffffff
10007135: 5f                       pop edi
10007136: 5e                       pop esi
10007137: 5d                       pop ebp
10007138: c3                       ret 
10007139: 8bff                     mov edi, edi
1000713b: 55                       push ebp
1000713c: 8bec                     mov ebp, esp
1000713e: b863736de0               mov eax, 0xe06d7363
10007143: 394508                   cmp dword ptr [ebp + 8], eax
10007146: 750d                     jne 0x10007155
10007148: ff750c                   push dword ptr [ebp + 0xc]
1000714b: 50                       push eax
1000714c: e89efeffff               call 0x10006fef
10007151: 59                       pop ecx
10007152: 59                       pop ecx
10007153: 5d                       pop ebp
10007154: c3                       ret 
10007155: 33c0                     xor eax, eax
10007157: 5d                       pop ebp
10007158: c3                       ret 
10007159: 8bff                     mov edi, edi
1000715b: 55                       push ebp
1000715c: 8bec                     mov ebp, esp
1000715e: 83ec10                   sub esp, 0x10
10007161: a180f00010               mov eax, dword ptr [0x1000f080]
10007166: 8365f800                 and dword ptr [ebp - 8], 0
1000716a: 8365fc00                 and dword ptr [ebp - 4], 0
1000716e: 53                       push ebx
1000716f: 57                       push edi
10007170: bf4ee640bb               mov edi, 0xbb40e64e
10007175: bb0000ffff               mov ebx, 0xffff0000
1000717a: 3bc7                     cmp eax, edi
1000717c: 740d                     je 0x1000718b
1000717e: 85c3                     test ebx, eax
10007180: 7409                     je 0x1000718b
10007182: f7d0                     not eax
10007184: a384f00010               mov dword ptr [0x1000f084], eax
10007189: eb65                     jmp 0x100071f0
1000718b: 56                       push esi
1000718c: 8d45f8                   lea eax, [ebp - 8]
1000718f: 50                       push eax
10007190: ff15d4b00010             call dword ptr [0x1000b0d4]
10007196: 8b75fc                   mov esi, dword ptr [ebp - 4]
10007199: 3375f8                   xor esi, dword ptr [ebp - 8]
1000719c: ff15d0b00010             call dword ptr [0x1000b0d0]
100071a2: 33f0                     xor esi, eax
100071a4: ff154cb00010             call dword ptr [0x1000b04c]
100071aa: 33f0                     xor esi, eax
100071ac: ff15ccb00010             call dword ptr [0x1000b0cc]
100071b2: 33f0                     xor esi, eax
100071b4: 8d45f0                   lea eax, [ebp - 0x10]
100071b7: 50                       push eax
100071b8: ff15c8b00010             call dword ptr [0x1000b0c8]
100071be: 8b45f4                   mov eax, dword ptr [ebp - 0xc]
100071c1: 3345f0                   xor eax, dword ptr [ebp - 0x10]
100071c4: 33f0                     xor esi, eax
100071c6: 3bf7                     cmp esi, edi
100071c8: 7507                     jne 0x100071d1
100071ca: be4fe640bb               mov esi, 0xbb40e64f
100071cf: eb10                     jmp 0x100071e1
100071d1: 85f3                     test ebx, esi
100071d3: 750c                     jne 0x100071e1
100071d5: 8bc6                     mov eax, esi
100071d7: 0d11470000               or eax, 0x4711
100071dc: c1e010                   shl eax, 0x10
100071df: 0bf0                     or esi, eax
100071e1: 893580f00010             mov dword ptr [0x1000f080], esi
100071e7: f7d6                     not esi
100071e9: 893584f00010             mov dword ptr [0x1000f084], esi
100071ef: 5e                       pop esi
100071f0: 5f                       pop edi
100071f1: 5b                       pop ebx
100071f2: c9                       leave 
100071f3: c3                       ret 
100071f4: 8325c00d011000           and dword ptr [0x10010dc0], 0
100071fb: c3                       ret 
100071fc: 8bff                     mov edi, edi
100071fe: 55                       push ebp
100071ff: 8bec                     mov ebp, esp
10007201: 8b4508                   mov eax, dword ptr [ebp + 8]
10007204: a3e0070110               mov dword ptr [0x100107e0], eax
10007209: 5d                       pop ebp
1000720a: c3                       ret 
1000720b: 8bff                     mov edi, edi
1000720d: 55                       push ebp
1000720e: 8bec                     mov ebp, esp
10007210: 81ec28030000             sub esp, 0x328
10007216: a180f00010               mov eax, dword ptr [0x1000f080]
1000721b: 33c5                     xor eax, ebp
1000721d: 8945fc                   mov dword ptr [ebp - 4], eax
10007220: 53                       push ebx
10007221: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10007224: 57                       push edi
10007225: 83fbff                   cmp ebx, -1
10007228: 7407                     je 0x10007231
1000722a: 53                       push ebx
1000722b: e8c4ffffff               call 0x100071f4
10007230: 59                       pop ecx
10007231: 83a5e0fcffff00           and dword ptr [ebp - 0x320], 0
10007238: 6a4c                     push 0x4c
1000723a: 8d85e4fcffff             lea eax, [ebp - 0x31c]
10007240: 6a00                     push 0
10007242: 50                       push eax
10007243: e878180000               call 0x10008ac0
10007248: 8d85e0fcffff             lea eax, [ebp - 0x320]
1000724e: 8985d8fcffff             mov dword ptr [ebp - 0x328], eax
10007254: 8d8530fdffff             lea eax, [ebp - 0x2d0]
1000725a: 83c40c                   add esp, 0xc
1000725d: 8985dcfcffff             mov dword ptr [ebp - 0x324], eax
10007263: 8985e0fdffff             mov dword ptr [ebp - 0x220], eax
10007269: 898ddcfdffff             mov dword ptr [ebp - 0x224], ecx
1000726f: 8995d8fdffff             mov dword ptr [ebp - 0x228], edx
10007275: 899dd4fdffff             mov dword ptr [ebp - 0x22c], ebx
1000727b: 89b5d0fdffff             mov dword ptr [ebp - 0x230], esi
10007281: 89bdccfdffff             mov dword ptr [ebp - 0x234], edi
10007287: 668c95f8fdffff           mov word ptr [ebp - 0x208], ss
1000728e: 668c8decfdffff           mov word ptr [ebp - 0x214], cs
10007295: 668c9dc8fdffff           mov word ptr [ebp - 0x238], ds
1000729c: 668c85c4fdffff           mov word ptr [ebp - 0x23c], es
100072a3: 668ca5c0fdffff           mov word ptr [ebp - 0x240], fs
100072aa: 668cadbcfdffff           mov word ptr [ebp - 0x244], gs
100072b1: 9c                       pushfd 
100072b2: 8f85f0fdffff             pop dword ptr [ebp - 0x210]
100072b8: 8b4504                   mov eax, dword ptr [ebp + 4]
100072bb: 8d4d04                   lea ecx, [ebp + 4]
100072be: 898df4fdffff             mov dword ptr [ebp - 0x20c], ecx
100072c4: c78530fdffff01000100     mov dword ptr [ebp - 0x2d0], 0x10001
100072ce: 8985e8fdffff             mov dword ptr [ebp - 0x218], eax
100072d4: 8b49fc                   mov ecx, dword ptr [ecx - 4]
100072d7: 898de4fdffff             mov dword ptr [ebp - 0x21c], ecx
100072dd: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
100072e0: 898de0fcffff             mov dword ptr [ebp - 0x320], ecx
100072e6: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
100072e9: 898de4fcffff             mov dword ptr [ebp - 0x31c], ecx
100072ef: 8985ecfcffff             mov dword ptr [ebp - 0x314], eax
100072f5: ff1568b00010             call dword ptr [0x1000b068]
100072fb: 6a00                     push 0
100072fd: 8bf8                     mov edi, eax
100072ff: ff1564b00010             call dword ptr [0x1000b064]
10007305: 8d85d8fcffff             lea eax, [ebp - 0x328]
1000730b: 50                       push eax
1000730c: ff1560b00010             call dword ptr [0x1000b060]
10007312: 85c0                     test eax, eax
10007314: 7510                     jne 0x10007326
10007316: 85ff                     test edi, edi
10007318: 750c                     jne 0x10007326
1000731a: 83fbff                   cmp ebx, -1
1000731d: 7407                     je 0x10007326
1000731f: 53                       push ebx
10007320: e8cffeffff               call 0x100071f4
10007325: 59                       pop ecx
10007326: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10007329: 5f                       pop edi
1000732a: 33cd                     xor ecx, ebp
1000732c: 5b                       pop ebx
1000732d: e888d8ffff               call 0x10004bba
10007332: c9                       leave 
10007333: c3                       ret 
10007334: 8bff                     mov edi, edi
10007336: 56                       push esi
10007337: 6a01                     push 1
10007339: be170400c0               mov esi, 0xc0000417
1000733e: 56                       push esi
1000733f: 6a02                     push 2
10007341: e8c5feffff               call 0x1000720b
10007346: 83c40c                   add esp, 0xc
10007349: 56                       push esi
1000734a: ff155cb00010             call dword ptr [0x1000b05c]
10007350: 50                       push eax
10007351: ff1558b00010             call dword ptr [0x1000b058]
10007357: 5e                       pop esi
10007358: c3                       ret 
10007359: 8bff                     mov edi, edi
1000735b: 55                       push ebp
1000735c: 8bec                     mov ebp, esp
1000735e: ff35e0070110             push dword ptr [0x100107e0]
10007364: ff1544b00010             call dword ptr [0x1000b044]
1000736a: 85c0                     test eax, eax
1000736c: 7403                     je 0x10007371
1000736e: 5d                       pop ebp
1000736f: ffe0                     jmp eax
10007371: ff7518                   push dword ptr [ebp + 0x18]
10007374: ff7514                   push dword ptr [ebp + 0x14]
10007377: ff7510                   push dword ptr [ebp + 0x10]
1000737a: ff750c                   push dword ptr [ebp + 0xc]
1000737d: ff7508                   push dword ptr [ebp + 8]
10007380: e8afffffff               call 0x10007334
10007385: cc                       int3 
10007386: 33c0                     xor eax, eax
10007388: 50                       push eax
10007389: 50                       push eax
1000738a: 50                       push eax
1000738b: 50                       push eax
1000738c: 50                       push eax
1000738d: e8c7ffffff               call 0x10007359
10007392: 83c414                   add esp, 0x14
10007395: c3                       ret 
10007396: 8bff                     mov edi, edi
10007398: 55                       push ebp
10007399: 8bec                     mov ebp, esp
1000739b: 837d0800                 cmp dword ptr [ebp + 8], 0
1000739f: 7515                     jne 0x100073b6
100073a1: e894e7ffff               call 0x10005b3a
100073a6: c70016000000             mov dword ptr [eax], 0x16
100073ac: e8d5ffffff               call 0x10007386
100073b1: 83c8ff                   or eax, 0xffffffff
100073b4: 5d                       pop ebp
100073b5: c3                       ret 
100073b6: ff7508                   push dword ptr [ebp + 8]
100073b9: 6a00                     push 0
100073bb: ff3558000110             push dword ptr [0x10010058]
100073c1: ff15d8b00010             call dword ptr [0x1000b0d8]
100073c7: 5d                       pop ebp
100073c8: c3                       ret 
100073c9: 8bff                     mov edi, edi
100073cb: 56                       push esi
100073cc: 57                       push edi
100073cd: 33f6                     xor esi, esi
100073cf: bfe8070110               mov edi, 0x100107e8
100073d4: 833cf554f2001001         cmp dword ptr [esi*8 + 0x1000f254], 1
100073dc: 751d                     jne 0x100073fb
100073de: 8d04f550f20010           lea eax, [esi*8 + 0x1000f250]
100073e5: 8938                     mov dword ptr [eax], edi
100073e7: 68a00f0000               push 0xfa0
100073ec: ff30                     push dword ptr [eax]
100073ee: 83c718                   add edi, 0x18
100073f1: ff15a8b00010             call dword ptr [0x1000b0a8]
100073f7: 85c0                     test eax, eax
100073f9: 740c                     je 0x10007407
100073fb: 46                       inc esi
100073fc: 83fe24                   cmp esi, 0x24
100073ff: 7cd3                     jl 0x100073d4
10007401: 33c0                     xor eax, eax
10007403: 40                       inc eax
10007404: 5f                       pop edi
10007405: 5e                       pop esi
10007406: c3                       ret 
10007407: 8324f550f2001000         and dword ptr [esi*8 + 0x1000f250], 0
1000740f: 33c0                     xor eax, eax
10007411: ebf1                     jmp 0x10007404
10007413: 8bff                     mov edi, edi
10007415: 53                       push ebx
10007416: 8b1db4b00010             mov ebx, dword ptr [0x1000b0b4]
1000741c: 56                       push esi
1000741d: be50f20010               mov esi, 0x1000f250
10007422: 57                       push edi
10007423: 8b3e                     mov edi, dword ptr [esi]
10007425: 85ff                     test edi, edi
10007427: 7413                     je 0x1000743c
10007429: 837e0401                 cmp dword ptr [esi + 4], 1
1000742d: 740d                     je 0x1000743c
1000742f: 57                       push edi
10007430: ffd3                     call ebx
10007432: 57                       push edi
10007433: e80addffff               call 0x10005142
10007438: 832600                   and dword ptr [esi], 0
1000743b: 59                       pop ecx
1000743c: 83c608                   add esi, 8
1000743f: 81fe70f30010             cmp esi, 0x1000f370
10007445: 7cdc                     jl 0x10007423
10007447: be50f20010               mov esi, 0x1000f250
1000744c: 5f                       pop edi
1000744d: 8b06                     mov eax, dword ptr [esi]
1000744f: 85c0                     test eax, eax
10007451: 7409                     je 0x1000745c
10007453: 837e0401                 cmp dword ptr [esi + 4], 1
10007457: 7503                     jne 0x1000745c
10007459: 50                       push eax
1000745a: ffd3                     call ebx
1000745c: 83c608                   add esi, 8
1000745f: 81fe70f30010             cmp esi, 0x1000f370
10007465: 7ce6                     jl 0x1000744d
10007467: 5e                       pop esi
10007468: 5b                       pop ebx
10007469: c3                       ret 
1000746a: 8bff                     mov edi, edi
1000746c: 55                       push ebp
1000746d: 8bec                     mov ebp, esp
1000746f: 8b4508                   mov eax, dword ptr [ebp + 8]
10007472: ff34c550f20010           push dword ptr [eax*8 + 0x1000f250]
10007479: ff15dcb00010             call dword ptr [0x1000b0dc]
1000747f: 5d                       pop ebp
10007480: c3                       ret 
10007481: 6a0c                     push 0xc
10007483: 6810dc0010               push 0x1000dc10
10007488: e873f9ffff               call 0x10006e00
1000748d: 33ff                     xor edi, edi
1000748f: 47                       inc edi
10007490: 897de4                   mov dword ptr [ebp - 0x1c], edi
10007493: 33db                     xor ebx, ebx
10007495: 391d58000110             cmp dword ptr [0x10010058], ebx
1000749b: 7518                     jne 0x100074b5
1000749d: e878ebffff               call 0x1000601a
100074a2: 6a1e                     push 0x1e
100074a4: e8c2e9ffff               call 0x10005e6b
100074a9: 68ff000000               push 0xff
100074ae: e8f7e6ffff               call 0x10005baa
100074b3: 59                       pop ecx
100074b4: 59                       pop ecx
100074b5: 8b7508                   mov esi, dword ptr [ebp + 8]
100074b8: 8d34f550f20010           lea esi, [esi*8 + 0x1000f250]
100074bf: 391e                     cmp dword ptr [esi], ebx
100074c1: 7404                     je 0x100074c7
100074c3: 8bc7                     mov eax, edi
100074c5: eb6d                     jmp 0x10007534
100074c7: 6a18                     push 0x18
100074c9: e8a5f1ffff               call 0x10006673
100074ce: 59                       pop ecx
100074cf: 8bf8                     mov edi, eax
100074d1: 3bfb                     cmp edi, ebx
100074d3: 750f                     jne 0x100074e4
100074d5: e860e6ffff               call 0x10005b3a
100074da: c7000c000000             mov dword ptr [eax], 0xc
100074e0: 33c0                     xor eax, eax
100074e2: eb50                     jmp 0x10007534
100074e4: 6a0a                     push 0xa
100074e6: e858000000               call 0x10007543
100074eb: 59                       pop ecx
100074ec: 895dfc                   mov dword ptr [ebp - 4], ebx
100074ef: 391e                     cmp dword ptr [esi], ebx
100074f1: 752b                     jne 0x1000751e
100074f3: 68a00f0000               push 0xfa0
100074f8: 57                       push edi
100074f9: ff15a8b00010             call dword ptr [0x1000b0a8]
100074ff: 85c0                     test eax, eax
10007501: 7517                     jne 0x1000751a
10007503: 57                       push edi
10007504: e839dcffff               call 0x10005142
10007509: 59                       pop ecx
1000750a: e82be6ffff               call 0x10005b3a
1000750f: c7000c000000             mov dword ptr [eax], 0xc
10007515: 895de4                   mov dword ptr [ebp - 0x1c], ebx
10007518: eb0b                     jmp 0x10007525
1000751a: 893e                     mov dword ptr [esi], edi
1000751c: eb07                     jmp 0x10007525
1000751e: 57                       push edi
1000751f: e81edcffff               call 0x10005142
10007524: 59                       pop ecx
10007525: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000752c: e809000000               call 0x1000753a
10007531: 8b45e4                   mov eax, dword ptr [ebp - 0x1c]
10007534: e80cf9ffff               call 0x10006e45
10007539: c3                       ret 
1000753a: 6a0a                     push 0xa
1000753c: e829ffffff               call 0x1000746a
10007541: 59                       pop ecx
10007542: c3                       ret 
10007543: 8bff                     mov edi, edi
10007545: 55                       push ebp
10007546: 8bec                     mov ebp, esp
10007548: 8b4508                   mov eax, dword ptr [ebp + 8]
1000754b: 56                       push esi
1000754c: 8d34c550f20010           lea esi, [eax*8 + 0x1000f250]
10007553: 833e00                   cmp dword ptr [esi], 0
10007556: 7513                     jne 0x1000756b
10007558: 50                       push eax
10007559: e823ffffff               call 0x10007481
1000755e: 59                       pop ecx
1000755f: 85c0                     test eax, eax
10007561: 7508                     jne 0x1000756b
10007563: 6a11                     push 0x11
10007565: e8bde8ffff               call 0x10005e27
1000756a: 59                       pop ecx
1000756b: ff36                     push dword ptr [esi]
1000756d: ff15e0b00010             call dword ptr [0x1000b0e0]
10007573: 5e                       pop esi
10007574: 5d                       pop ebp
10007575: c3                       ret 
10007576: cc                       int3 
10007577: cc                       int3 
10007578: cc                       int3 
10007579: cc                       int3 
1000757a: cc                       int3 
1000757b: cc                       int3 
1000757c: cc                       int3 
1000757d: cc                       int3 
1000757e: cc                       int3 
1000757f: cc                       int3 
10007580: 53                       push ebx
10007581: 56                       push esi
10007582: 57                       push edi
10007583: 8b542410                 mov edx, dword ptr [esp + 0x10]
10007587: 8b442414                 mov eax, dword ptr [esp + 0x14]
1000758b: 8b4c2418                 mov ecx, dword ptr [esp + 0x18]
1000758f: 55                       push ebp
10007590: 52                       push edx
10007591: 50                       push eax
10007592: 51                       push ecx
10007593: 51                       push ecx
10007594: 6810760010               push 0x10007610
10007599: 64ff3500000000           push dword ptr fs:[0]
100075a0: a180f00010               mov eax, dword ptr [0x1000f080]
100075a5: 33c4                     xor eax, esp
100075a7: 89442408                 mov dword ptr [esp + 8], eax
100075ab: 64892500000000           mov dword ptr fs:[0], esp
100075b2: 8b442430                 mov eax, dword ptr [esp + 0x30]
100075b6: 8b5808                   mov ebx, dword ptr [eax + 8]
100075b9: 8b4c242c                 mov ecx, dword ptr [esp + 0x2c]
100075bd: 3319                     xor ebx, dword ptr [ecx]
100075bf: 8b700c                   mov esi, dword ptr [eax + 0xc]
100075c2: 83fefe                   cmp esi, -2
100075c5: 743b                     je 0x10007602
100075c7: 8b542434                 mov edx, dword ptr [esp + 0x34]
100075cb: 83fafe                   cmp edx, -2
100075ce: 7404                     je 0x100075d4
100075d0: 3bf2                     cmp esi, edx
100075d2: 762e                     jbe 0x10007602
100075d4: 8d3476                   lea esi, [esi + esi*2]
100075d7: 8d5cb310                 lea ebx, [ebx + esi*4 + 0x10]
100075db: 8b0b                     mov ecx, dword ptr [ebx]
100075dd: 89480c                   mov dword ptr [eax + 0xc], ecx
100075e0: 837b0400                 cmp dword ptr [ebx + 4], 0
100075e4: 75cc                     jne 0x100075b2
100075e6: 6801010000               push 0x101
100075eb: 8b4308                   mov eax, dword ptr [ebx + 8]
100075ee: e802170000               call 0x10008cf5
100075f3: b901000000               mov ecx, 1
100075f8: 8b4308                   mov eax, dword ptr [ebx + 8]
100075fb: e814170000               call 0x10008d14
10007600: ebb0                     jmp 0x100075b2
10007602: 648f0500000000           pop dword ptr fs:[0]
10007609: 83c418                   add esp, 0x18
1000760c: 5f                       pop edi
1000760d: 5e                       pop esi
1000760e: 5b                       pop ebx
1000760f: c3                       ret 
10007610: 8b4c2404                 mov ecx, dword ptr [esp + 4]
10007614: f7410406000000           test dword ptr [ecx + 4], 6
1000761b: b801000000               mov eax, 1
10007620: 7433                     je 0x10007655
10007622: 8b442408                 mov eax, dword ptr [esp + 8]
10007626: 8b4808                   mov ecx, dword ptr [eax + 8]
10007629: 33c8                     xor ecx, eax
1000762b: e88ad5ffff               call 0x10004bba
10007630: 55                       push ebp
10007631: 8b6818                   mov ebp, dword ptr [eax + 0x18]
10007634: ff700c                   push dword ptr [eax + 0xc]
10007637: ff7010                   push dword ptr [eax + 0x10]
1000763a: ff7014                   push dword ptr [eax + 0x14]
1000763d: e83effffff               call 0x10007580
10007642: 83c40c                   add esp, 0xc
10007645: 5d                       pop ebp
10007646: 8b442408                 mov eax, dword ptr [esp + 8]
1000764a: 8b542410                 mov edx, dword ptr [esp + 0x10]
1000764e: 8902                     mov dword ptr [edx], eax
10007650: b803000000               mov eax, 3
10007655: c3                       ret 
10007656: 55                       push ebp
10007657: 8b4c2408                 mov ecx, dword ptr [esp + 8]
1000765b: 8b29                     mov ebp, dword ptr [ecx]
1000765d: ff711c                   push dword ptr [ecx + 0x1c]
10007660: ff7118                   push dword ptr [ecx + 0x18]
10007663: ff7128                   push dword ptr [ecx + 0x28]
10007666: e815ffffff               call 0x10007580
1000766b: 83c40c                   add esp, 0xc
1000766e: 5d                       pop ebp
1000766f: c20400                   ret 4
10007672: 55                       push ebp
10007673: 56                       push esi
10007674: 57                       push edi
10007675: 53                       push ebx
10007676: 8bea                     mov ebp, edx
10007678: 33c0                     xor eax, eax
1000767a: 33db                     xor ebx, ebx
1000767c: 33d2                     xor edx, edx
1000767e: 33f6                     xor esi, esi
10007680: 33ff                     xor edi, edi
10007682: ffd1                     call ecx
10007684: 5b                       pop ebx
10007685: 5f                       pop edi
10007686: 5e                       pop esi
10007687: 5d                       pop ebp
10007688: c3                       ret 
10007689: 8bea                     mov ebp, edx
1000768b: 8bf1                     mov esi, ecx
1000768d: 8bc1                     mov eax, ecx
1000768f: 6a01                     push 1
10007691: e85f160000               call 0x10008cf5
10007696: 33c0                     xor eax, eax
10007698: 33db                     xor ebx, ebx
1000769a: 33c9                     xor ecx, ecx
1000769c: 33d2                     xor edx, edx
1000769e: 33ff                     xor edi, edi
100076a0: ffe6                     jmp esi
100076a2: 55                       push ebp
100076a3: 8bec                     mov ebp, esp
100076a5: 53                       push ebx
100076a6: 56                       push esi
100076a7: 57                       push edi
100076a8: 6a00                     push 0
100076aa: 52                       push edx
100076ab: 68b6760010               push 0x100076b6
100076b0: 51                       push ecx
100076b1: e85c240000               call 0x10009b12
100076b6: 5f                       pop edi
100076b7: 5e                       pop esi
100076b8: 5b                       pop ebx
100076b9: 5d                       pop ebp
100076ba: c3                       ret 
100076bb: 55                       push ebp
100076bc: 8b6c2408                 mov ebp, dword ptr [esp + 8]
100076c0: 52                       push edx
100076c1: 51                       push ecx
100076c2: ff742414                 push dword ptr [esp + 0x14]
100076c6: e8b5feffff               call 0x10007580
100076cb: 83c40c                   add esp, 0xc
100076ce: 5d                       pop ebp
100076cf: c20800                   ret 8
100076d2: 6a08                     push 8
100076d4: 6830dc0010               push 0x1000dc30
100076d9: e822f7ffff               call 0x10006e00
100076de: e85eecffff               call 0x10006341
100076e3: 8b4078                   mov eax, dword ptr [eax + 0x78]
100076e6: 85c0                     test eax, eax
100076e8: 7416                     je 0x10007700
100076ea: 8365fc00                 and dword ptr [ebp - 4], 0
100076ee: ffd0                     call eax
100076f0: eb07                     jmp 0x100076f9
100076f2: 33c0                     xor eax, eax
100076f4: 40                       inc eax
100076f5: c3                       ret 
100076f6: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
100076f9: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10007700: e829eaffff               call 0x1000612e
10007705: e83bf7ffff               call 0x10006e45
1000770a: c3                       ret 
1000770b: e831ecffff               call 0x10006341
10007710: 8b407c                   mov eax, dword ptr [eax + 0x7c]
10007713: 85c0                     test eax, eax
10007715: 7402                     je 0x10007719
10007717: ffd0                     call eax
10007719: e9b4ffffff               jmp 0x100076d2
1000771e: 6a08                     push 8
10007720: 6850dc0010               push 0x1000dc50
10007725: e8d6f6ffff               call 0x10006e00
1000772a: ff3574090110             push dword ptr [0x10010974]
10007730: ff1544b00010             call dword ptr [0x1000b044]
10007736: 85c0                     test eax, eax
10007738: 7416                     je 0x10007750
1000773a: 8365fc00                 and dword ptr [ebp - 4], 0
1000773e: ffd0                     call eax
10007740: eb07                     jmp 0x10007749
10007742: 33c0                     xor eax, eax
10007744: 40                       inc eax
10007745: c3                       ret 
10007746: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
10007749: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10007750: e87dffffff               call 0x100076d2
10007755: cc                       int3 
10007756: 68d2760010               push 0x100076d2
1000775b: ff1548b00010             call dword ptr [0x1000b048]
10007761: a374090110               mov dword ptr [0x10010974], eax
10007766: c3                       ret 
10007767: 8bff                     mov edi, edi
10007769: 55                       push ebp
1000776a: 8bec                     mov ebp, esp
1000776c: 8b4508                   mov eax, dword ptr [ebp + 8]
1000776f: a378090110               mov dword ptr [0x10010978], eax
10007774: a37c090110               mov dword ptr [0x1001097c], eax
10007779: a380090110               mov dword ptr [0x10010980], eax
1000777e: a384090110               mov dword ptr [0x10010984], eax
10007783: 5d                       pop ebp
10007784: c3                       ret 
10007785: 8bff                     mov edi, edi
10007787: 55                       push ebp
10007788: 8bec                     mov ebp, esp
1000778a: 8b4508                   mov eax, dword ptr [ebp + 8]
1000778d: 8b0dfcbc0010             mov ecx, dword ptr [0x1000bcfc]
10007793: 56                       push esi
10007794: 395004                   cmp dword ptr [eax + 4], edx
10007797: 740f                     je 0x100077a8
10007799: 8bf1                     mov esi, ecx
1000779b: 6bf60c                   imul esi, esi, 0xc
1000779e: 037508                   add esi, dword ptr [ebp + 8]
100077a1: 83c00c                   add eax, 0xc
100077a4: 3bc6                     cmp eax, esi
100077a6: 72ec                     jb 0x10007794
100077a8: 6bc90c                   imul ecx, ecx, 0xc
100077ab: 034d08                   add ecx, dword ptr [ebp + 8]
100077ae: 5e                       pop esi
100077af: 3bc1                     cmp eax, ecx
100077b1: 7305                     jae 0x100077b8
100077b3: 395004                   cmp dword ptr [eax + 4], edx
100077b6: 7402                     je 0x100077ba
100077b8: 33c0                     xor eax, eax
100077ba: 5d                       pop ebp
100077bb: c3                       ret 
100077bc: ff3580090110             push dword ptr [0x10010980]
100077c2: ff1544b00010             call dword ptr [0x1000b044]
100077c8: c3                       ret 
100077c9: 6a20                     push 0x20
100077cb: 6870dc0010               push 0x1000dc70
100077d0: e82bf6ffff               call 0x10006e00
100077d5: 33ff                     xor edi, edi
100077d7: 897de4                   mov dword ptr [ebp - 0x1c], edi
100077da: 897dd8                   mov dword ptr [ebp - 0x28], edi
100077dd: 8b5d08                   mov ebx, dword ptr [ebp + 8]
100077e0: 83fb0b                   cmp ebx, 0xb
100077e3: 7f4b                     jg 0x10007830
100077e5: 7415                     je 0x100077fc
100077e7: 8bc3                     mov eax, ebx
100077e9: 6a02                     push 2
100077eb: 59                       pop ecx
100077ec: 2bc1                     sub eax, ecx
100077ee: 7422                     je 0x10007812
100077f0: 2bc1                     sub eax, ecx
100077f2: 7408                     je 0x100077fc
100077f4: 2bc1                     sub eax, ecx
100077f6: 7459                     je 0x10007851
100077f8: 2bc1                     sub eax, ecx
100077fa: 7543                     jne 0x1000783f
100077fc: e8c7eaffff               call 0x100062c8
10007801: 8bf8                     mov edi, eax
10007803: 897dd8                   mov dword ptr [ebp - 0x28], edi
10007806: 85ff                     test edi, edi
10007808: 7514                     jne 0x1000781e
1000780a: 83c8ff                   or eax, 0xffffffff
1000780d: e954010000               jmp 0x10007966
10007812: be78090110               mov esi, 0x10010978
10007817: a178090110               mov eax, dword ptr [0x10010978]
1000781c: eb55                     jmp 0x10007873
1000781e: ff775c                   push dword ptr [edi + 0x5c]
10007821: 8bd3                     mov edx, ebx
10007823: e85dffffff               call 0x10007785
10007828: 59                       pop ecx
10007829: 8d7008                   lea esi, [eax + 8]
1000782c: 8b06                     mov eax, dword ptr [esi]
1000782e: eb51                     jmp 0x10007881
10007830: 8bc3                     mov eax, ebx
10007832: 83e80f                   sub eax, 0xf
10007835: 7432                     je 0x10007869
10007837: 83e806                   sub eax, 6
1000783a: 7421                     je 0x1000785d
1000783c: 48                       dec eax
1000783d: 7412                     je 0x10007851
1000783f: e8f6e2ffff               call 0x10005b3a
10007844: c70016000000             mov dword ptr [eax], 0x16
1000784a: e837fbffff               call 0x10007386
1000784f: ebb9                     jmp 0x1000780a
10007851: be80090110               mov esi, 0x10010980
10007856: a180090110               mov eax, dword ptr [0x10010980]
1000785b: eb16                     jmp 0x10007873
1000785d: be7c090110               mov esi, 0x1001097c
10007862: a17c090110               mov eax, dword ptr [0x1001097c]
10007867: eb0a                     jmp 0x10007873
10007869: be84090110               mov esi, 0x10010984
1000786e: a184090110               mov eax, dword ptr [0x10010984]
10007873: c745e401000000           mov dword ptr [ebp - 0x1c], 1
1000787a: 50                       push eax
1000787b: ff1544b00010             call dword ptr [0x1000b044]
10007881: 8945e0                   mov dword ptr [ebp - 0x20], eax
10007884: 33c0                     xor eax, eax
10007886: 837de001                 cmp dword ptr [ebp - 0x20], 1
1000788a: 0f84d6000000             je 0x10007966
10007890: 3945e0                   cmp dword ptr [ebp - 0x20], eax
10007893: 7507                     jne 0x1000789c
10007895: 6a03                     push 3
10007897: e866e5ffff               call 0x10005e02
1000789c: 3945e4                   cmp dword ptr [ebp - 0x1c], eax
1000789f: 7407                     je 0x100078a8
100078a1: 50                       push eax
100078a2: e89cfcffff               call 0x10007543
100078a7: 59                       pop ecx
100078a8: 33c0                     xor eax, eax
100078aa: 8945fc                   mov dword ptr [ebp - 4], eax
100078ad: 83fb08                   cmp ebx, 8
100078b0: 740a                     je 0x100078bc
100078b2: 83fb0b                   cmp ebx, 0xb
100078b5: 7405                     je 0x100078bc
100078b7: 83fb04                   cmp ebx, 4
100078ba: 751b                     jne 0x100078d7
100078bc: 8b4f60                   mov ecx, dword ptr [edi + 0x60]
100078bf: 894dd4                   mov dword ptr [ebp - 0x2c], ecx
100078c2: 894760                   mov dword ptr [edi + 0x60], eax
100078c5: 83fb08                   cmp ebx, 8
100078c8: 753e                     jne 0x10007908
100078ca: 8b4f64                   mov ecx, dword ptr [edi + 0x64]
100078cd: 894dd0                   mov dword ptr [ebp - 0x30], ecx
100078d0: c747648c000000           mov dword ptr [edi + 0x64], 0x8c
100078d7: 83fb08                   cmp ebx, 8
100078da: 752c                     jne 0x10007908
100078dc: 8b0df0bc0010             mov ecx, dword ptr [0x1000bcf0]
100078e2: 894ddc                   mov dword ptr [ebp - 0x24], ecx
100078e5: 8b0df4bc0010             mov ecx, dword ptr [0x1000bcf4]
100078eb: 030df0bc0010             add ecx, dword ptr [0x1000bcf0]
100078f1: 394ddc                   cmp dword ptr [ebp - 0x24], ecx
100078f4: 7d19                     jge 0x1000790f
100078f6: 8b4ddc                   mov ecx, dword ptr [ebp - 0x24]
100078f9: 6bc90c                   imul ecx, ecx, 0xc
100078fc: 8b575c                   mov edx, dword ptr [edi + 0x5c]
100078ff: 89441108                 mov dword ptr [ecx + edx + 8], eax
10007903: ff45dc                   inc dword ptr [ebp - 0x24]
10007906: ebdd                     jmp 0x100078e5
10007908: e884e8ffff               call 0x10006191
1000790d: 8906                     mov dword ptr [esi], eax
1000790f: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10007916: e815000000               call 0x10007930
1000791b: 83fb08                   cmp ebx, 8
1000791e: 751f                     jne 0x1000793f
10007920: ff7764                   push dword ptr [edi + 0x64]
10007923: 53                       push ebx
10007924: ff55e0                   call dword ptr [ebp - 0x20]
10007927: 59                       pop ecx
10007928: eb19                     jmp 0x10007943
1000792a: 8b5d08                   mov ebx, dword ptr [ebp + 8]
1000792d: 8b7dd8                   mov edi, dword ptr [ebp - 0x28]
10007930: 837de400                 cmp dword ptr [ebp - 0x1c], 0
10007934: 7408                     je 0x1000793e
10007936: 6a00                     push 0
10007938: e82dfbffff               call 0x1000746a
1000793d: 59                       pop ecx
1000793e: c3                       ret 
1000793f: 53                       push ebx
10007940: ff55e0                   call dword ptr [ebp - 0x20]
10007943: 59                       pop ecx
10007944: 83fb08                   cmp ebx, 8
10007947: 740a                     je 0x10007953
10007949: 83fb0b                   cmp ebx, 0xb
1000794c: 7405                     je 0x10007953
1000794e: 83fb04                   cmp ebx, 4
10007951: 7511                     jne 0x10007964
10007953: 8b45d4                   mov eax, dword ptr [ebp - 0x2c]
10007956: 894760                   mov dword ptr [edi + 0x60], eax
10007959: 83fb08                   cmp ebx, 8
1000795c: 7506                     jne 0x10007964
1000795e: 8b45d0                   mov eax, dword ptr [ebp - 0x30]
10007961: 894764                   mov dword ptr [edi + 0x64], eax
10007964: 33c0                     xor eax, eax
10007966: e8daf4ffff               call 0x10006e45
1000796b: c3                       ret 
1000796c: 8bff                     mov edi, edi
1000796e: 55                       push ebp
1000796f: 8bec                     mov ebp, esp
10007971: 8b4508                   mov eax, dword ptr [ebp + 8]
10007974: a38c090110               mov dword ptr [0x1001098c], eax
10007979: 5d                       pop ebp
1000797a: c3                       ret 
1000797b: 8bff                     mov edi, edi
1000797d: 56                       push esi
1000797e: 57                       push edi
1000797f: 33ff                     xor edi, edi
10007981: ffb770f30010             push dword ptr [edi + 0x1000f370]
10007987: ff1548b00010             call dword ptr [0x1000b048]
1000798d: 898770f30010             mov dword ptr [edi + 0x1000f370], eax
10007993: 83c704                   add edi, 4
10007996: 83ff28                   cmp edi, 0x28
10007999: 72e6                     jb 0x10007981
1000799b: 5f                       pop edi
1000799c: 5e                       pop esi
1000799d: c3                       ret 
1000799e: cc                       int3 
1000799f: cc                       int3 
100079a0: 8bff                     mov edi, edi
100079a2: 55                       push ebp
100079a3: 8bec                     mov ebp, esp
100079a5: 8b4d08                   mov ecx, dword ptr [ebp + 8]
100079a8: b84d5a0000               mov eax, 0x5a4d
100079ad: 663901                   cmp word ptr [ecx], ax
100079b0: 7404                     je 0x100079b6
100079b2: 33c0                     xor eax, eax
100079b4: 5d                       pop ebp
100079b5: c3                       ret 
100079b6: 8b413c                   mov eax, dword ptr [ecx + 0x3c]
100079b9: 03c1                     add eax, ecx
100079bb: 813850450000             cmp dword ptr [eax], 0x4550
100079c1: 75ef                     jne 0x100079b2
100079c3: 33d2                     xor edx, edx
100079c5: b90b010000               mov ecx, 0x10b
100079ca: 66394818                 cmp word ptr [eax + 0x18], cx
100079ce: 0f94c2                   sete dl
100079d1: 8bc2                     mov eax, edx
100079d3: 5d                       pop ebp
100079d4: c3                       ret 
100079d5: cc                       int3 
100079d6: cc                       int3 
100079d7: cc                       int3 
100079d8: cc                       int3 
100079d9: cc                       int3 
100079da: cc                       int3 
100079db: cc                       int3 
100079dc: cc                       int3 
100079dd: cc                       int3 
100079de: cc                       int3 
100079df: cc                       int3 
100079e0: 8bff                     mov edi, edi
100079e2: 55                       push ebp
100079e3: 8bec                     mov ebp, esp
100079e5: 8b4508                   mov eax, dword ptr [ebp + 8]
100079e8: 8b483c                   mov ecx, dword ptr [eax + 0x3c]
100079eb: 03c8                     add ecx, eax
100079ed: 0fb74114                 movzx eax, word ptr [ecx + 0x14]
100079f1: 53                       push ebx
100079f2: 56                       push esi
100079f3: 0fb77106                 movzx esi, word ptr [ecx + 6]
100079f7: 33d2                     xor edx, edx
100079f9: 57                       push edi
100079fa: 8d440818                 lea eax, [eax + ecx + 0x18]
100079fe: 85f6                     test esi, esi
10007a00: 741b                     je 0x10007a1d
10007a02: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10007a05: 8b480c                   mov ecx, dword ptr [eax + 0xc]
10007a08: 3bf9                     cmp edi, ecx
10007a0a: 7209                     jb 0x10007a15
10007a0c: 8b5808                   mov ebx, dword ptr [eax + 8]
10007a0f: 03d9                     add ebx, ecx
10007a11: 3bfb                     cmp edi, ebx
10007a13: 720a                     jb 0x10007a1f
10007a15: 42                       inc edx
10007a16: 83c028                   add eax, 0x28
10007a19: 3bd6                     cmp edx, esi
10007a1b: 72e8                     jb 0x10007a05
10007a1d: 33c0                     xor eax, eax
10007a1f: 5f                       pop edi
10007a20: 5e                       pop esi
10007a21: 5b                       pop ebx
10007a22: 5d                       pop ebp
10007a23: c3                       ret 
10007a24: cc                       int3 
10007a25: cc                       int3 
10007a26: cc                       int3 
10007a27: cc                       int3 
10007a28: cc                       int3 
10007a29: cc                       int3 
10007a2a: cc                       int3 
10007a2b: cc                       int3 
10007a2c: cc                       int3 
10007a2d: cc                       int3 
10007a2e: cc                       int3 
10007a2f: cc                       int3 
10007a30: 8bff                     mov edi, edi
10007a32: 55                       push ebp
10007a33: 8bec                     mov ebp, esp
10007a35: 6afe                     push -2
10007a37: 6890dc0010               push 0x1000dc90
10007a3c: 68606e0010               push 0x10006e60
10007a41: 64a100000000             mov eax, dword ptr fs:[0]
10007a47: 50                       push eax
10007a48: 83ec08                   sub esp, 8
10007a4b: 53                       push ebx
10007a4c: 56                       push esi
10007a4d: 57                       push edi
10007a4e: a180f00010               mov eax, dword ptr [0x1000f080]
10007a53: 3145f8                   xor dword ptr [ebp - 8], eax
10007a56: 33c5                     xor eax, ebp
10007a58: 50                       push eax
10007a59: 8d45f0                   lea eax, [ebp - 0x10]
10007a5c: 64a300000000             mov dword ptr fs:[0], eax
10007a62: 8965e8                   mov dword ptr [ebp - 0x18], esp
10007a65: c745fc00000000           mov dword ptr [ebp - 4], 0
10007a6c: 6800000010               push 0x10000000
10007a71: e82affffff               call 0x100079a0
10007a76: 83c404                   add esp, 4
10007a79: 85c0                     test eax, eax
10007a7b: 7454                     je 0x10007ad1
10007a7d: 8b4508                   mov eax, dword ptr [ebp + 8]
10007a80: 2d00000010               sub eax, 0x10000000
10007a85: 50                       push eax
10007a86: 6800000010               push 0x10000000
10007a8b: e850ffffff               call 0x100079e0
10007a90: 83c408                   add esp, 8
10007a93: 85c0                     test eax, eax
10007a95: 743a                     je 0x10007ad1
10007a97: 8b4024                   mov eax, dword ptr [eax + 0x24]
10007a9a: c1e81f                   shr eax, 0x1f
10007a9d: f7d0                     not eax
10007a9f: 83e001                   and eax, 1
10007aa2: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10007aa9: 8b4df0                   mov ecx, dword ptr [ebp - 0x10]
10007aac: 64890d00000000           mov dword ptr fs:[0], ecx
10007ab3: 59                       pop ecx
10007ab4: 5f                       pop edi
10007ab5: 5e                       pop esi
10007ab6: 5b                       pop ebx
10007ab7: 8be5                     mov esp, ebp
10007ab9: 5d                       pop ebp
10007aba: c3                       ret 
10007abb: 8b45ec                   mov eax, dword ptr [ebp - 0x14]
10007abe: 8b08                     mov ecx, dword ptr [eax]
10007ac0: 33d2                     xor edx, edx
10007ac2: 8139050000c0             cmp dword ptr [ecx], 0xc0000005
10007ac8: 0f94c2                   sete dl
10007acb: 8bc2                     mov eax, edx
10007acd: c3                       ret 
10007ace: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
10007ad1: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10007ad8: 33c0                     xor eax, eax
10007ada: 8b4df0                   mov ecx, dword ptr [ebp - 0x10]
10007add: 64890d00000000           mov dword ptr fs:[0], ecx
10007ae4: 59                       pop ecx
10007ae5: 5f                       pop edi
10007ae6: 5e                       pop esi
10007ae7: 5b                       pop ebx
10007ae8: 8be5                     mov esp, ebp
10007aea: 5d                       pop ebp
10007aeb: c3                       ret 
10007aec: 8bff                     mov edi, edi
10007aee: 55                       push ebp
10007aef: 8bec                     mov ebp, esp
10007af1: 83ec24                   sub esp, 0x24
10007af4: a180f00010               mov eax, dword ptr [0x1000f080]
10007af9: 33c5                     xor eax, ebp
10007afb: 8945fc                   mov dword ptr [ebp - 4], eax
10007afe: 8b4508                   mov eax, dword ptr [ebp + 8]
10007b01: 53                       push ebx
10007b02: 8945e0                   mov dword ptr [ebp - 0x20], eax
10007b05: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10007b08: 56                       push esi
10007b09: 57                       push edi
10007b0a: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10007b0d: e87fe6ffff               call 0x10006191
10007b12: 8365ec00                 and dword ptr [ebp - 0x14], 0
10007b16: 833d9009011000           cmp dword ptr [0x10010990], 0
10007b1d: 8945e8                   mov dword ptr [ebp - 0x18], eax
10007b20: 757d                     jne 0x10007b9f
10007b22: 6890c40010               push 0x1000c490
10007b27: ff15e8b00010             call dword ptr [0x1000b0e8]
10007b2d: 8bd8                     mov ebx, eax
10007b2f: 85db                     test ebx, ebx
10007b31: 0f8410010000             je 0x10007c47
10007b37: 8b3d78b00010             mov edi, dword ptr [0x1000b078]
10007b3d: 6884c40010               push 0x1000c484
10007b42: 53                       push ebx
10007b43: ffd7                     call edi
10007b45: 85c0                     test eax, eax
10007b47: 0f84fa000000             je 0x10007c47
10007b4d: 8b3548b00010             mov esi, dword ptr [0x1000b048]
10007b53: 50                       push eax
10007b54: ffd6                     call esi
10007b56: 6874c40010               push 0x1000c474
10007b5b: 53                       push ebx
10007b5c: a390090110               mov dword ptr [0x10010990], eax
10007b61: ffd7                     call edi
10007b63: 50                       push eax
10007b64: ffd6                     call esi
10007b66: 6860c40010               push 0x1000c460
10007b6b: 53                       push ebx
10007b6c: a394090110               mov dword ptr [0x10010994], eax
10007b71: ffd7                     call edi
10007b73: 50                       push eax
10007b74: ffd6                     call esi
10007b76: 6844c40010               push 0x1000c444
10007b7b: 53                       push ebx
10007b7c: a398090110               mov dword ptr [0x10010998], eax
10007b81: ffd7                     call edi
10007b83: 50                       push eax
10007b84: ffd6                     call esi
10007b86: a3a0090110               mov dword ptr [0x100109a0], eax
10007b8b: 85c0                     test eax, eax
10007b8d: 7410                     je 0x10007b9f
10007b8f: 682cc40010               push 0x1000c42c
10007b94: 53                       push ebx
10007b95: ffd7                     call edi
10007b97: 50                       push eax
10007b98: ffd6                     call esi
10007b9a: a39c090110               mov dword ptr [0x1001099c], eax
10007b9f: a19c090110               mov eax, dword ptr [0x1001099c]
10007ba4: 8b4de8                   mov ecx, dword ptr [ebp - 0x18]
10007ba7: 8b3544b00010             mov esi, dword ptr [0x1000b044]
10007bad: 3bc1                     cmp eax, ecx
10007baf: 7447                     je 0x10007bf8
10007bb1: 390da0090110             cmp dword ptr [0x100109a0], ecx
10007bb7: 743f                     je 0x10007bf8
10007bb9: 50                       push eax
10007bba: ffd6                     call esi
10007bbc: ff35a0090110             push dword ptr [0x100109a0]
10007bc2: 8bf8                     mov edi, eax
10007bc4: ffd6                     call esi
10007bc6: 8bd8                     mov ebx, eax
10007bc8: 85ff                     test edi, edi
10007bca: 742c                     je 0x10007bf8
10007bcc: 85db                     test ebx, ebx
10007bce: 7428                     je 0x10007bf8
10007bd0: ffd7                     call edi
10007bd2: 85c0                     test eax, eax
10007bd4: 7419                     je 0x10007bef
10007bd6: 8d4ddc                   lea ecx, [ebp - 0x24]
10007bd9: 51                       push ecx
10007bda: 6a0c                     push 0xc
10007bdc: 8d4df0                   lea ecx, [ebp - 0x10]
10007bdf: 51                       push ecx
10007be0: 6a01                     push 1
10007be2: 50                       push eax
10007be3: ffd3                     call ebx
10007be5: 85c0                     test eax, eax
10007be7: 7406                     je 0x10007bef
10007be9: f645f801                 test byte ptr [ebp - 8], 1
10007bed: 7509                     jne 0x10007bf8
10007bef: 814d1000002000           or dword ptr [ebp + 0x10], 0x200000
10007bf6: eb33                     jmp 0x10007c2b
10007bf8: a194090110               mov eax, dword ptr [0x10010994]
10007bfd: 3b45e8                   cmp eax, dword ptr [ebp - 0x18]
10007c00: 7429                     je 0x10007c2b
10007c02: 50                       push eax
10007c03: ffd6                     call esi
10007c05: 85c0                     test eax, eax
10007c07: 7422                     je 0x10007c2b
10007c09: ffd0                     call eax
10007c0b: 8945ec                   mov dword ptr [ebp - 0x14], eax
10007c0e: 85c0                     test eax, eax
10007c10: 7419                     je 0x10007c2b
10007c12: a198090110               mov eax, dword ptr [0x10010998]
10007c17: 3b45e8                   cmp eax, dword ptr [ebp - 0x18]
10007c1a: 740f                     je 0x10007c2b
10007c1c: 50                       push eax
10007c1d: ffd6                     call esi
10007c1f: 85c0                     test eax, eax
10007c21: 7408                     je 0x10007c2b
10007c23: ff75ec                   push dword ptr [ebp - 0x14]
10007c26: ffd0                     call eax
10007c28: 8945ec                   mov dword ptr [ebp - 0x14], eax
10007c2b: ff3590090110             push dword ptr [0x10010990]
10007c31: ffd6                     call esi
10007c33: 85c0                     test eax, eax
10007c35: 7410                     je 0x10007c47
10007c37: ff7510                   push dword ptr [ebp + 0x10]
10007c3a: ff75e4                   push dword ptr [ebp - 0x1c]
10007c3d: ff75e0                   push dword ptr [ebp - 0x20]
10007c40: ff75ec                   push dword ptr [ebp - 0x14]
10007c43: ffd0                     call eax
10007c45: eb02                     jmp 0x10007c49
10007c47: 33c0                     xor eax, eax
10007c49: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10007c4c: 5f                       pop edi
10007c4d: 5e                       pop esi
10007c4e: 33cd                     xor ecx, ebp
10007c50: 5b                       pop ebx
10007c51: e864cfffff               call 0x10004bba
10007c56: c9                       leave 
10007c57: c3                       ret 
10007c58: 8bff                     mov edi, edi
10007c5a: 55                       push ebp
10007c5b: 8bec                     mov ebp, esp
10007c5d: 56                       push esi
10007c5e: 8b7508                   mov esi, dword ptr [ebp + 8]
10007c61: 57                       push edi
10007c62: 85f6                     test esi, esi
10007c64: 7407                     je 0x10007c6d
10007c66: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10007c69: 85ff                     test edi, edi
10007c6b: 7515                     jne 0x10007c82
10007c6d: e8c8deffff               call 0x10005b3a
10007c72: 6a16                     push 0x16
10007c74: 5e                       pop esi
10007c75: 8930                     mov dword ptr [eax], esi
10007c77: e80af7ffff               call 0x10007386
10007c7c: 8bc6                     mov eax, esi
10007c7e: 5f                       pop edi
10007c7f: 5e                       pop esi
10007c80: 5d                       pop ebp
10007c81: c3                       ret 
10007c82: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10007c85: 85c9                     test ecx, ecx
10007c87: 7507                     jne 0x10007c90
10007c89: 33c0                     xor eax, eax
10007c8b: 668906                   mov word ptr [esi], ax
10007c8e: ebdd                     jmp 0x10007c6d
10007c90: 8bd6                     mov edx, esi
10007c92: 66833a00                 cmp word ptr [edx], 0
10007c96: 7406                     je 0x10007c9e
10007c98: 83c202                   add edx, 2
10007c9b: 4f                       dec edi
10007c9c: 75f4                     jne 0x10007c92
10007c9e: 85ff                     test edi, edi
10007ca0: 74e7                     je 0x10007c89
10007ca2: 2bd1                     sub edx, ecx
10007ca4: 0fb701                   movzx eax, word ptr [ecx]
10007ca7: 6689040a                 mov word ptr [edx + ecx], ax
10007cab: 83c102                   add ecx, 2
10007cae: 6685c0                   test ax, ax
10007cb1: 7403                     je 0x10007cb6
10007cb3: 4f                       dec edi
10007cb4: 75ee                     jne 0x10007ca4
10007cb6: 33c0                     xor eax, eax
10007cb8: 85ff                     test edi, edi
10007cba: 75c2                     jne 0x10007c7e
10007cbc: 668906                   mov word ptr [esi], ax
10007cbf: e876deffff               call 0x10005b3a
10007cc4: 6a22                     push 0x22
10007cc6: 59                       pop ecx
10007cc7: 8908                     mov dword ptr [eax], ecx
10007cc9: 8bf1                     mov esi, ecx
10007ccb: ebaa                     jmp 0x10007c77
10007ccd: 8bff                     mov edi, edi
10007ccf: 55                       push ebp
10007cd0: 8bec                     mov ebp, esp
10007cd2: 8b5508                   mov edx, dword ptr [ebp + 8]
10007cd5: 53                       push ebx
10007cd6: 8b5d14                   mov ebx, dword ptr [ebp + 0x14]
10007cd9: 56                       push esi
10007cda: 57                       push edi
10007cdb: 85db                     test ebx, ebx
10007cdd: 7510                     jne 0x10007cef
10007cdf: 85d2                     test edx, edx
10007ce1: 7510                     jne 0x10007cf3
10007ce3: 39550c                   cmp dword ptr [ebp + 0xc], edx
10007ce6: 7512                     jne 0x10007cfa
10007ce8: 33c0                     xor eax, eax
10007cea: 5f                       pop edi
10007ceb: 5e                       pop esi
10007cec: 5b                       pop ebx
10007ced: 5d                       pop ebp
10007cee: c3                       ret 
10007cef: 85d2                     test edx, edx
10007cf1: 7407                     je 0x10007cfa
10007cf3: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10007cf6: 85ff                     test edi, edi
10007cf8: 7513                     jne 0x10007d0d
10007cfa: e83bdeffff               call 0x10005b3a
10007cff: 6a16                     push 0x16
10007d01: 5e                       pop esi
10007d02: 8930                     mov dword ptr [eax], esi
10007d04: e87df6ffff               call 0x10007386
10007d09: 8bc6                     mov eax, esi
10007d0b: ebdd                     jmp 0x10007cea
10007d0d: 85db                     test ebx, ebx
10007d0f: 7507                     jne 0x10007d18
10007d11: 33c0                     xor eax, eax
10007d13: 668902                   mov word ptr [edx], ax
10007d16: ebd0                     jmp 0x10007ce8
10007d18: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10007d1b: 85c9                     test ecx, ecx
10007d1d: 7507                     jne 0x10007d26
10007d1f: 33c0                     xor eax, eax
10007d21: 668902                   mov word ptr [edx], ax
10007d24: ebd4                     jmp 0x10007cfa
10007d26: 8bc2                     mov eax, edx
10007d28: 83fbff                   cmp ebx, -1
10007d2b: 7518                     jne 0x10007d45
10007d2d: 8bf2                     mov esi, edx
10007d2f: 2bf1                     sub esi, ecx
10007d31: 0fb701                   movzx eax, word ptr [ecx]
10007d34: 6689040e                 mov word ptr [esi + ecx], ax
10007d38: 83c102                   add ecx, 2
10007d3b: 6685c0                   test ax, ax
10007d3e: 7427                     je 0x10007d67
10007d40: 4f                       dec edi
10007d41: 75ee                     jne 0x10007d31
10007d43: eb22                     jmp 0x10007d67
10007d45: 8bf1                     mov esi, ecx
10007d47: 2bf2                     sub esi, edx
10007d49: 0fb70c06                 movzx ecx, word ptr [esi + eax]
10007d4d: 668908                   mov word ptr [eax], cx
10007d50: 83c002                   add eax, 2
10007d53: 6685c9                   test cx, cx
10007d56: 7406                     je 0x10007d5e
10007d58: 4f                       dec edi
10007d59: 7403                     je 0x10007d5e
10007d5b: 4b                       dec ebx
10007d5c: 75eb                     jne 0x10007d49
10007d5e: 85db                     test ebx, ebx
10007d60: 7505                     jne 0x10007d67
10007d62: 33c9                     xor ecx, ecx
10007d64: 668908                   mov word ptr [eax], cx
10007d67: 85ff                     test edi, edi
10007d69: 0f8579ffffff             jne 0x10007ce8
10007d6f: 33c0                     xor eax, eax
10007d71: 83fbff                   cmp ebx, -1
10007d74: 7510                     jne 0x10007d86
10007d76: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10007d79: 6a50                     push 0x50
10007d7b: 6689444afe               mov word ptr [edx + ecx*2 - 2], ax
10007d80: 58                       pop eax
10007d81: e964ffffff               jmp 0x10007cea
10007d86: 668902                   mov word ptr [edx], ax
10007d89: e8acddffff               call 0x10005b3a
10007d8e: 6a22                     push 0x22
10007d90: 59                       pop ecx
10007d91: 8908                     mov dword ptr [eax], ecx
10007d93: 8bf1                     mov esi, ecx
10007d95: e96affffff               jmp 0x10007d04
10007d9a: 8bff                     mov edi, edi
10007d9c: 55                       push ebp
10007d9d: 8bec                     mov ebp, esp
10007d9f: 8b4508                   mov eax, dword ptr [ebp + 8]
10007da2: 668b08                   mov cx, word ptr [eax]
10007da5: 83c002                   add eax, 2
10007da8: 6685c9                   test cx, cx
10007dab: 75f5                     jne 0x10007da2
10007dad: 2b4508                   sub eax, dword ptr [ebp + 8]
10007db0: d1f8                     sar eax, 1
10007db2: 48                       dec eax
10007db3: 5d                       pop ebp
10007db4: c3                       ret 
10007db5: 8bff                     mov edi, edi
10007db7: 55                       push ebp
10007db8: 8bec                     mov ebp, esp
10007dba: 56                       push esi
10007dbb: 8b7508                   mov esi, dword ptr [ebp + 8]
10007dbe: 57                       push edi
10007dbf: 85f6                     test esi, esi
10007dc1: 7407                     je 0x10007dca
10007dc3: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10007dc6: 85ff                     test edi, edi
10007dc8: 7515                     jne 0x10007ddf
10007dca: e86bddffff               call 0x10005b3a
10007dcf: 6a16                     push 0x16
10007dd1: 5e                       pop esi
10007dd2: 8930                     mov dword ptr [eax], esi
10007dd4: e8adf5ffff               call 0x10007386
10007dd9: 8bc6                     mov eax, esi
10007ddb: 5f                       pop edi
10007ddc: 5e                       pop esi
10007ddd: 5d                       pop ebp
10007dde: c3                       ret 
10007ddf: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10007de2: 85c0                     test eax, eax
10007de4: 7505                     jne 0x10007deb
10007de6: 668906                   mov word ptr [esi], ax
10007de9: ebdf                     jmp 0x10007dca
10007deb: 8bd6                     mov edx, esi
10007ded: 2bd0                     sub edx, eax
10007def: 0fb708                   movzx ecx, word ptr [eax]
10007df2: 66890c02                 mov word ptr [edx + eax], cx
10007df6: 83c002                   add eax, 2
10007df9: 6685c9                   test cx, cx
10007dfc: 7403                     je 0x10007e01
10007dfe: 4f                       dec edi
10007dff: 75ee                     jne 0x10007def
10007e01: 33c0                     xor eax, eax
10007e03: 85ff                     test edi, edi
10007e05: 75d4                     jne 0x10007ddb
10007e07: 668906                   mov word ptr [esi], ax
10007e0a: e82bddffff               call 0x10005b3a
10007e0f: 6a22                     push 0x22
10007e11: 59                       pop ecx
10007e12: 8908                     mov dword ptr [eax], ecx
10007e14: 8bf1                     mov esi, ecx
10007e16: ebbc                     jmp 0x10007dd4
10007e18: 8bff                     mov edi, edi
10007e1a: 55                       push ebp
10007e1b: 8bec                     mov ebp, esp
10007e1d: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10007e20: 85c9                     test ecx, ecx
10007e22: 781e                     js 0x10007e42
10007e24: 83f902                   cmp ecx, 2
10007e27: 7e0c                     jle 0x10007e35
10007e29: 83f903                   cmp ecx, 3
10007e2c: 7514                     jne 0x10007e42
10007e2e: a11cfd0010               mov eax, dword ptr [0x1000fd1c]
10007e33: 5d                       pop ebp
10007e34: c3                       ret 
10007e35: a11cfd0010               mov eax, dword ptr [0x1000fd1c]
10007e3a: 890d1cfd0010             mov dword ptr [0x1000fd1c], ecx
10007e40: 5d                       pop ebp
10007e41: c3                       ret 
10007e42: e8f3dcffff               call 0x10005b3a
10007e47: c70016000000             mov dword ptr [eax], 0x16
10007e4d: e834f5ffff               call 0x10007386
10007e52: 83c8ff                   or eax, 0xffffffff
10007e55: 5d                       pop ebp
10007e56: c3                       ret 
10007e57: 8bff                     mov edi, edi
10007e59: 55                       push ebp
10007e5a: 8bec                     mov ebp, esp
10007e5c: 8b4508                   mov eax, dword ptr [ebp + 8]
10007e5f: 85c0                     test eax, eax
10007e61: 7412                     je 0x10007e75
10007e63: 83e808                   sub eax, 8
10007e66: 8138dddd0000             cmp dword ptr [eax], 0xdddd
10007e6c: 7507                     jne 0x10007e75
10007e6e: 50                       push eax
10007e6f: e8ced2ffff               call 0x10005142
10007e74: 59                       pop ecx
10007e75: 5d                       pop ebp
10007e76: c3                       ret 
10007e77: 8bff                     mov edi, edi
10007e79: 55                       push ebp
10007e7a: 8bec                     mov ebp, esp
10007e7c: 8b4508                   mov eax, dword ptr [ebp + 8]
10007e7f: 56                       push esi
10007e80: 8bf1                     mov esi, ecx
10007e82: c6460c00                 mov byte ptr [esi + 0xc], 0
10007e86: 85c0                     test eax, eax
10007e88: 7563                     jne 0x10007eed
10007e8a: e8b2e4ffff               call 0x10006341
10007e8f: 894608                   mov dword ptr [esi + 8], eax
10007e92: 8b486c                   mov ecx, dword ptr [eax + 0x6c]
10007e95: 890e                     mov dword ptr [esi], ecx
10007e97: 8b4868                   mov ecx, dword ptr [eax + 0x68]
10007e9a: 894e04                   mov dword ptr [esi + 4], ecx
10007e9d: 8b0e                     mov ecx, dword ptr [esi]
10007e9f: 3b0de0f50010             cmp ecx, dword ptr [0x1000f5e0]
10007ea5: 7412                     je 0x10007eb9
10007ea7: 8b0d20fb0010             mov ecx, dword ptr [0x1000fb20]
10007ead: 854870                   test dword ptr [eax + 0x70], ecx
10007eb0: 7507                     jne 0x10007eb9
10007eb2: e807030000               call 0x100081be
10007eb7: 8906                     mov dword ptr [esi], eax
10007eb9: 8b4604                   mov eax, dword ptr [esi + 4]
10007ebc: 3b0510fa0010             cmp eax, dword ptr [0x1000fa10]
10007ec2: 7416                     je 0x10007eda
10007ec4: 8b4608                   mov eax, dword ptr [esi + 8]
10007ec7: 8b0d20fb0010             mov ecx, dword ptr [0x1000fb20]
10007ecd: 854870                   test dword ptr [eax + 0x70], ecx
10007ed0: 7508                     jne 0x10007eda
10007ed2: e883050000               call 0x1000845a
10007ed7: 894604                   mov dword ptr [esi + 4], eax
10007eda: 8b4608                   mov eax, dword ptr [esi + 8]
10007edd: f6407002                 test byte ptr [eax + 0x70], 2
10007ee1: 7514                     jne 0x10007ef7
10007ee3: 83487002                 or dword ptr [eax + 0x70], 2
10007ee7: c6460c01                 mov byte ptr [esi + 0xc], 1
10007eeb: eb0a                     jmp 0x10007ef7
10007eed: 8b08                     mov ecx, dword ptr [eax]
10007eef: 890e                     mov dword ptr [esi], ecx
10007ef1: 8b4004                   mov eax, dword ptr [eax + 4]
10007ef4: 894604                   mov dword ptr [esi + 4], eax
10007ef7: 8bc6                     mov eax, esi
10007ef9: 5e                       pop esi
10007efa: 5d                       pop ebp
10007efb: c20400                   ret 4
10007efe: 8bff                     mov edi, edi
10007f00: 55                       push ebp
10007f01: 8bec                     mov ebp, esp
10007f03: 53                       push ebx
10007f04: 56                       push esi
10007f05: 8b3598b00010             mov esi, dword ptr [0x1000b098]
10007f0b: 57                       push edi
10007f0c: 8b7d08                   mov edi, dword ptr [ebp + 8]
10007f0f: 57                       push edi
10007f10: ffd6                     call esi
10007f12: 8b87b0000000             mov eax, dword ptr [edi + 0xb0]
10007f18: 85c0                     test eax, eax
10007f1a: 7403                     je 0x10007f1f
10007f1c: 50                       push eax
10007f1d: ffd6                     call esi
10007f1f: 8b87b8000000             mov eax, dword ptr [edi + 0xb8]
10007f25: 85c0                     test eax, eax
10007f27: 7403                     je 0x10007f2c
10007f29: 50                       push eax
10007f2a: ffd6                     call esi
10007f2c: 8b87b4000000             mov eax, dword ptr [edi + 0xb4]
10007f32: 85c0                     test eax, eax
10007f34: 7403                     je 0x10007f39
10007f36: 50                       push eax
10007f37: ffd6                     call esi
10007f39: 8b87c0000000             mov eax, dword ptr [edi + 0xc0]
10007f3f: 85c0                     test eax, eax
10007f41: 7403                     je 0x10007f46
10007f43: 50                       push eax
10007f44: ffd6                     call esi
10007f46: 8d5f50                   lea ebx, [edi + 0x50]
10007f49: c7450806000000           mov dword ptr [ebp + 8], 6
10007f50: 817bf898f30010           cmp dword ptr [ebx - 8], 0x1000f398
10007f57: 7409                     je 0x10007f62
10007f59: 8b03                     mov eax, dword ptr [ebx]
10007f5b: 85c0                     test eax, eax
10007f5d: 7403                     je 0x10007f62
10007f5f: 50                       push eax
10007f60: ffd6                     call esi
10007f62: 837bfc00                 cmp dword ptr [ebx - 4], 0
10007f66: 740a                     je 0x10007f72
10007f68: 8b4304                   mov eax, dword ptr [ebx + 4]
10007f6b: 85c0                     test eax, eax
10007f6d: 7403                     je 0x10007f72
10007f6f: 50                       push eax
10007f70: ffd6                     call esi
10007f72: 83c310                   add ebx, 0x10
10007f75: ff4d08                   dec dword ptr [ebp + 8]
10007f78: 75d6                     jne 0x10007f50
10007f7a: 8b87d4000000             mov eax, dword ptr [edi + 0xd4]
10007f80: 05b4000000               add eax, 0xb4
10007f85: 50                       push eax
10007f86: ffd6                     call esi
10007f88: 5f                       pop edi
10007f89: 5e                       pop esi
10007f8a: 5b                       pop ebx
10007f8b: 5d                       pop ebp
10007f8c: c3                       ret 
10007f8d: 8bff                     mov edi, edi
10007f8f: 55                       push ebp
10007f90: 8bec                     mov ebp, esp
10007f92: 57                       push edi
10007f93: 8b7d08                   mov edi, dword ptr [ebp + 8]
10007f96: 85ff                     test edi, edi
10007f98: 0f8483000000             je 0x10008021
10007f9e: 53                       push ebx
10007f9f: 56                       push esi
10007fa0: 8b35a0b00010             mov esi, dword ptr [0x1000b0a0]
10007fa6: 57                       push edi
10007fa7: ffd6                     call esi
10007fa9: 8b87b0000000             mov eax, dword ptr [edi + 0xb0]
10007faf: 85c0                     test eax, eax
10007fb1: 7403                     je 0x10007fb6
10007fb3: 50                       push eax
10007fb4: ffd6                     call esi
10007fb6: 8b87b8000000             mov eax, dword ptr [edi + 0xb8]
10007fbc: 85c0                     test eax, eax
10007fbe: 7403                     je 0x10007fc3
10007fc0: 50                       push eax
10007fc1: ffd6                     call esi
10007fc3: 8b87b4000000             mov eax, dword ptr [edi + 0xb4]
10007fc9: 85c0                     test eax, eax
10007fcb: 7403                     je 0x10007fd0
10007fcd: 50                       push eax
10007fce: ffd6                     call esi
10007fd0: 8b87c0000000             mov eax, dword ptr [edi + 0xc0]
10007fd6: 85c0                     test eax, eax
10007fd8: 7403                     je 0x10007fdd
10007fda: 50                       push eax
10007fdb: ffd6                     call esi
10007fdd: 8d5f50                   lea ebx, [edi + 0x50]
10007fe0: c7450806000000           mov dword ptr [ebp + 8], 6
10007fe7: 817bf898f30010           cmp dword ptr [ebx - 8], 0x1000f398
10007fee: 7409                     je 0x10007ff9
10007ff0: 8b03                     mov eax, dword ptr [ebx]
10007ff2: 85c0                     test eax, eax
10007ff4: 7403                     je 0x10007ff9
10007ff6: 50                       push eax
10007ff7: ffd6                     call esi
10007ff9: 837bfc00                 cmp dword ptr [ebx - 4], 0
10007ffd: 740a                     je 0x10008009
10007fff: 8b4304                   mov eax, dword ptr [ebx + 4]
10008002: 85c0                     test eax, eax
10008004: 7403                     je 0x10008009
10008006: 50                       push eax
10008007: ffd6                     call esi
10008009: 83c310                   add ebx, 0x10
1000800c: ff4d08                   dec dword ptr [ebp + 8]
1000800f: 75d6                     jne 0x10007fe7
10008011: 8b87d4000000             mov eax, dword ptr [edi + 0xd4]
10008017: 05b4000000               add eax, 0xb4
1000801c: 50                       push eax
1000801d: ffd6                     call esi
1000801f: 5e                       pop esi
10008020: 5b                       pop ebx
10008021: 8bc7                     mov eax, edi
10008023: 5f                       pop edi
10008024: 5d                       pop ebp
10008025: c3                       ret 
10008026: 8bff                     mov edi, edi
10008028: 55                       push ebp
10008029: 8bec                     mov ebp, esp
1000802b: 53                       push ebx
1000802c: 56                       push esi
1000802d: 8b7508                   mov esi, dword ptr [ebp + 8]
10008030: 8b86bc000000             mov eax, dword ptr [esi + 0xbc]
10008036: 33db                     xor ebx, ebx
10008038: 57                       push edi
10008039: 3bc3                     cmp eax, ebx
1000803b: 746f                     je 0x100080ac
1000803d: 3d38fb0010               cmp eax, 0x1000fb38
10008042: 7468                     je 0x100080ac
10008044: 8b86b0000000             mov eax, dword ptr [esi + 0xb0]
1000804a: 3bc3                     cmp eax, ebx
1000804c: 745e                     je 0x100080ac
1000804e: 3918                     cmp dword ptr [eax], ebx
10008050: 755a                     jne 0x100080ac
10008052: 8b86b8000000             mov eax, dword ptr [esi + 0xb8]
10008058: 3bc3                     cmp eax, ebx
1000805a: 7417                     je 0x10008073
1000805c: 3918                     cmp dword ptr [eax], ebx
1000805e: 7513                     jne 0x10008073
10008060: 50                       push eax
10008061: e8dcd0ffff               call 0x10005142
10008066: ffb6bc000000             push dword ptr [esi + 0xbc]
1000806c: e82b140000               call 0x1000949c
10008071: 59                       pop ecx
10008072: 59                       pop ecx
10008073: 8b86b4000000             mov eax, dword ptr [esi + 0xb4]
10008079: 3bc3                     cmp eax, ebx
1000807b: 7417                     je 0x10008094
1000807d: 3918                     cmp dword ptr [eax], ebx
1000807f: 7513                     jne 0x10008094
10008081: 50                       push eax
10008082: e8bbd0ffff               call 0x10005142
10008087: ffb6bc000000             push dword ptr [esi + 0xbc]
1000808d: e8a1130000               call 0x10009433
10008092: 59                       pop ecx
10008093: 59                       pop ecx
10008094: ffb6b0000000             push dword ptr [esi + 0xb0]
1000809a: e8a3d0ffff               call 0x10005142
1000809f: ffb6bc000000             push dword ptr [esi + 0xbc]
100080a5: e898d0ffff               call 0x10005142
100080aa: 59                       pop ecx
100080ab: 59                       pop ecx
100080ac: 8b86c0000000             mov eax, dword ptr [esi + 0xc0]
100080b2: 3bc3                     cmp eax, ebx
100080b4: 7444                     je 0x100080fa
100080b6: 3918                     cmp dword ptr [eax], ebx
100080b8: 7540                     jne 0x100080fa
100080ba: 8b86c4000000             mov eax, dword ptr [esi + 0xc4]
100080c0: 2dfe000000               sub eax, 0xfe
100080c5: 50                       push eax
100080c6: e877d0ffff               call 0x10005142
100080cb: 8b86cc000000             mov eax, dword ptr [esi + 0xcc]
100080d1: bf80000000               mov edi, 0x80
100080d6: 2bc7                     sub eax, edi
100080d8: 50                       push eax
100080d9: e864d0ffff               call 0x10005142
100080de: 8b86d0000000             mov eax, dword ptr [esi + 0xd0]
100080e4: 2bc7                     sub eax, edi
100080e6: 50                       push eax
100080e7: e856d0ffff               call 0x10005142
100080ec: ffb6c0000000             push dword ptr [esi + 0xc0]
100080f2: e84bd0ffff               call 0x10005142
100080f7: 83c410                   add esp, 0x10
100080fa: 8b86d4000000             mov eax, dword ptr [esi + 0xd4]
10008100: 3da0f30010               cmp eax, 0x1000f3a0
10008105: 741b                     je 0x10008122
10008107: 3998b4000000             cmp dword ptr [eax + 0xb4], ebx
1000810d: 7513                     jne 0x10008122
1000810f: 50                       push eax
10008110: e8a70f0000               call 0x100090bc
10008115: ffb6d4000000             push dword ptr [esi + 0xd4]
1000811b: e822d0ffff               call 0x10005142
10008120: 59                       pop ecx
10008121: 59                       pop ecx
10008122: 8d7e50                   lea edi, [esi + 0x50]
10008125: c7450806000000           mov dword ptr [ebp + 8], 6
1000812c: 817ff898f30010           cmp dword ptr [edi - 8], 0x1000f398
10008133: 7411                     je 0x10008146
10008135: 8b07                     mov eax, dword ptr [edi]
10008137: 3bc3                     cmp eax, ebx
10008139: 740b                     je 0x10008146
1000813b: 3918                     cmp dword ptr [eax], ebx
1000813d: 7507                     jne 0x10008146
1000813f: 50                       push eax
10008140: e8fdcfffff               call 0x10005142
10008145: 59                       pop ecx
10008146: 395ffc                   cmp dword ptr [edi - 4], ebx
10008149: 7412                     je 0x1000815d
1000814b: 8b4704                   mov eax, dword ptr [edi + 4]
1000814e: 3bc3                     cmp eax, ebx
10008150: 740b                     je 0x1000815d
10008152: 3918                     cmp dword ptr [eax], ebx
10008154: 7507                     jne 0x1000815d
10008156: 50                       push eax
10008157: e8e6cfffff               call 0x10005142
1000815c: 59                       pop ecx
1000815d: 83c710                   add edi, 0x10
10008160: ff4d08                   dec dword ptr [ebp + 8]
10008163: 75c7                     jne 0x1000812c
10008165: 56                       push esi
10008166: e8d7cfffff               call 0x10005142
1000816b: 59                       pop ecx
1000816c: 5f                       pop edi
1000816d: 5e                       pop esi
1000816e: 5b                       pop ebx
1000816f: 5d                       pop ebp
10008170: c3                       ret 
10008171: 8bff                     mov edi, edi
10008173: 55                       push ebp
10008174: 8bec                     mov ebp, esp
10008176: 57                       push edi
10008177: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
1000817a: 85ff                     test edi, edi
1000817c: 743b                     je 0x100081b9
1000817e: 8b4508                   mov eax, dword ptr [ebp + 8]
10008181: 85c0                     test eax, eax
10008183: 7434                     je 0x100081b9
10008185: 56                       push esi
10008186: 8b30                     mov esi, dword ptr [eax]
10008188: 3bf7                     cmp esi, edi
1000818a: 7428                     je 0x100081b4
1000818c: 57                       push edi
1000818d: 8938                     mov dword ptr [eax], edi
1000818f: e86afdffff               call 0x10007efe
10008194: 59                       pop ecx
10008195: 85f6                     test esi, esi
10008197: 741b                     je 0x100081b4
10008199: 56                       push esi
1000819a: e8eefdffff               call 0x10007f8d
1000819f: 833e00                   cmp dword ptr [esi], 0
100081a2: 59                       pop ecx
100081a3: 750f                     jne 0x100081b4
100081a5: 81fe08f50010             cmp esi, 0x1000f508
100081ab: 7407                     je 0x100081b4
100081ad: 56                       push esi
100081ae: e873feffff               call 0x10008026
100081b3: 59                       pop ecx
100081b4: 8bc7                     mov eax, edi
100081b6: 5e                       pop esi
100081b7: eb02                     jmp 0x100081bb
100081b9: 33c0                     xor eax, eax
100081bb: 5f                       pop edi
100081bc: 5d                       pop ebp
100081bd: c3                       ret 
100081be: 6a0c                     push 0xc
100081c0: 68b0dc0010               push 0x1000dcb0
100081c5: e836ecffff               call 0x10006e00
100081ca: e872e1ffff               call 0x10006341
100081cf: 8bf0                     mov esi, eax
100081d1: a120fb0010               mov eax, dword ptr [0x1000fb20]
100081d6: 854670                   test dword ptr [esi + 0x70], eax
100081d9: 7422                     je 0x100081fd
100081db: 837e6c00                 cmp dword ptr [esi + 0x6c], 0
100081df: 741c                     je 0x100081fd
100081e1: e85be1ffff               call 0x10006341
100081e6: 8b706c                   mov esi, dword ptr [eax + 0x6c]
100081e9: 85f6                     test esi, esi
100081eb: 7508                     jne 0x100081f5
100081ed: 6a20                     push 0x20
100081ef: e833dcffff               call 0x10005e27
100081f4: 59                       pop ecx
100081f5: 8bc6                     mov eax, esi
100081f7: e849ecffff               call 0x10006e45
100081fc: c3                       ret 
100081fd: 6a0c                     push 0xc
100081ff: e83ff3ffff               call 0x10007543
10008204: 59                       pop ecx
10008205: 8365fc00                 and dword ptr [ebp - 4], 0
10008209: ff35e0f50010             push dword ptr [0x1000f5e0]
1000820f: 83c66c                   add esi, 0x6c
10008212: 56                       push esi
10008213: e859ffffff               call 0x10008171
10008218: 59                       pop ecx
10008219: 59                       pop ecx
1000821a: 8945e4                   mov dword ptr [ebp - 0x1c], eax
1000821d: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
10008224: e802000000               call 0x1000822b
10008229: ebbe                     jmp 0x100081e9
1000822b: 6a0c                     push 0xc
1000822d: e838f2ffff               call 0x1000746a
10008232: 59                       pop ecx
10008233: 8b75e4                   mov esi, dword ptr [ebp - 0x1c]
10008236: c3                       ret 
10008237: 2da4030000               sub eax, 0x3a4
1000823c: 7422                     je 0x10008260
1000823e: 83e804                   sub eax, 4
10008241: 7417                     je 0x1000825a
10008243: 83e80d                   sub eax, 0xd
10008246: 740c                     je 0x10008254
10008248: 48                       dec eax
10008249: 7403                     je 0x1000824e
1000824b: 33c0                     xor eax, eax
1000824d: c3                       ret 
1000824e: b804040000               mov eax, 0x404
10008253: c3                       ret 
10008254: b812040000               mov eax, 0x412
10008259: c3                       ret 
1000825a: b804080000               mov eax, 0x804
1000825f: c3                       ret 
10008260: b811040000               mov eax, 0x411
10008265: c3                       ret 
10008266: 8bff                     mov edi, edi
10008268: 56                       push esi
10008269: 57                       push edi
1000826a: 8bf0                     mov esi, eax
1000826c: 6801010000               push 0x101
10008271: 33ff                     xor edi, edi
10008273: 8d461c                   lea eax, [esi + 0x1c]
10008276: 57                       push edi
10008277: 50                       push eax
10008278: e843080000               call 0x10008ac0
1000827d: 33c0                     xor eax, eax
1000827f: 0fb7c8                   movzx ecx, ax
10008282: 8bc1                     mov eax, ecx
10008284: 897e04                   mov dword ptr [esi + 4], edi
10008287: 897e08                   mov dword ptr [esi + 8], edi
1000828a: 897e0c                   mov dword ptr [esi + 0xc], edi
1000828d: c1e110                   shl ecx, 0x10
10008290: 0bc1                     or eax, ecx
10008292: 8d7e10                   lea edi, [esi + 0x10]
10008295: ab                       stosd dword ptr es:[edi], eax
10008296: ab                       stosd dword ptr es:[edi], eax
10008297: ab                       stosd dword ptr es:[edi], eax
10008298: b9e8f50010               mov ecx, 0x1000f5e8
1000829d: 83c40c                   add esp, 0xc
100082a0: 8d461c                   lea eax, [esi + 0x1c]
100082a3: 2bce                     sub ecx, esi
100082a5: bf01010000               mov edi, 0x101
100082aa: 8a1401                   mov dl, byte ptr [ecx + eax]
100082ad: 8810                     mov byte ptr [eax], dl
100082af: 40                       inc eax
100082b0: 4f                       dec edi
100082b1: 75f7                     jne 0x100082aa
100082b3: 8d861d010000             lea eax, [esi + 0x11d]
100082b9: be00010000               mov esi, 0x100
100082be: 8a1408                   mov dl, byte ptr [eax + ecx]
100082c1: 8810                     mov byte ptr [eax], dl
100082c3: 40                       inc eax
100082c4: 4e                       dec esi
100082c5: 75f7                     jne 0x100082be
100082c7: 5f                       pop edi
100082c8: 5e                       pop esi
100082c9: c3                       ret 
100082ca: 8bff                     mov edi, edi
100082cc: 55                       push ebp
100082cd: 8bec                     mov ebp, esp
100082cf: 81ec1c050000             sub esp, 0x51c
100082d5: a180f00010               mov eax, dword ptr [0x1000f080]
100082da: 33c5                     xor eax, ebp
100082dc: 8945fc                   mov dword ptr [ebp - 4], eax
100082df: 53                       push ebx
100082e0: 57                       push edi
100082e1: 8d85e8faffff             lea eax, [ebp - 0x518]
100082e7: 50                       push eax
100082e8: ff7604                   push dword ptr [esi + 4]
100082eb: ff15ecb00010             call dword ptr [0x1000b0ec]
100082f1: bf00010000               mov edi, 0x100
100082f6: 85c0                     test eax, eax
100082f8: 0f84fc000000             je 0x100083fa
100082fe: 33c0                     xor eax, eax
10008300: 888405fcfeffff           mov byte ptr [ebp + eax - 0x104], al
10008307: 40                       inc eax
10008308: 3bc7                     cmp eax, edi
1000830a: 72f4                     jb 0x10008300
1000830c: 8a85eefaffff             mov al, byte ptr [ebp - 0x512]
10008312: c685fcfeffff20           mov byte ptr [ebp - 0x104], 0x20
10008319: 84c0                     test al, al
1000831b: 7430                     je 0x1000834d
1000831d: 8d9deffaffff             lea ebx, [ebp - 0x511]
10008323: 0fb6c8                   movzx ecx, al
10008326: 0fb603                   movzx eax, byte ptr [ebx]
10008329: 3bc8                     cmp ecx, eax
1000832b: 7716                     ja 0x10008343
1000832d: 2bc1                     sub eax, ecx
1000832f: 40                       inc eax
10008330: 50                       push eax
10008331: 8d940dfcfeffff           lea edx, [ebp + ecx - 0x104]
10008338: 6a20                     push 0x20
1000833a: 52                       push edx
1000833b: e880070000               call 0x10008ac0
10008340: 83c40c                   add esp, 0xc
10008343: 8a4301                   mov al, byte ptr [ebx + 1]
10008346: 83c302                   add ebx, 2
10008349: 84c0                     test al, al
1000834b: 75d6                     jne 0x10008323
1000834d: 6a00                     push 0
1000834f: ff760c                   push dword ptr [esi + 0xc]
10008352: 8d85fcfaffff             lea eax, [ebp - 0x504]
10008358: ff7604                   push dword ptr [esi + 4]
1000835b: 50                       push eax
1000835c: 57                       push edi
1000835d: 8d85fcfeffff             lea eax, [ebp - 0x104]
10008363: 50                       push eax
10008364: 6a01                     push 1
10008366: 6a00                     push 0
10008368: e841150000               call 0x100098ae
1000836d: 33db                     xor ebx, ebx
1000836f: 53                       push ebx
10008370: ff7604                   push dword ptr [esi + 4]
10008373: 8d85fcfdffff             lea eax, [ebp - 0x204]
10008379: 57                       push edi
1000837a: 50                       push eax
1000837b: 57                       push edi
1000837c: 8d85fcfeffff             lea eax, [ebp - 0x104]
10008382: 50                       push eax
10008383: 57                       push edi
10008384: ff760c                   push dword ptr [esi + 0xc]
10008387: 53                       push ebx
10008388: e8f4130000               call 0x10009781
1000838d: 83c444                   add esp, 0x44
10008390: 53                       push ebx
10008391: ff7604                   push dword ptr [esi + 4]
10008394: 8d85fcfcffff             lea eax, [ebp - 0x304]
1000839a: 57                       push edi
1000839b: 50                       push eax
1000839c: 57                       push edi
1000839d: 8d85fcfeffff             lea eax, [ebp - 0x104]
100083a3: 50                       push eax
100083a4: 6800020000               push 0x200
100083a9: ff760c                   push dword ptr [esi + 0xc]
100083ac: 53                       push ebx
100083ad: e8cf130000               call 0x10009781
100083b2: 83c424                   add esp, 0x24
100083b5: 33c0                     xor eax, eax
100083b7: 0fb78c45fcfaffff         movzx ecx, word ptr [ebp + eax*2 - 0x504]
100083bf: f6c101                   test cl, 1
100083c2: 740e                     je 0x100083d2
100083c4: 804c061d10               or byte ptr [esi + eax + 0x1d], 0x10
100083c9: 8a8c05fcfdffff           mov cl, byte ptr [ebp + eax - 0x204]
100083d0: eb11                     jmp 0x100083e3
100083d2: f6c102                   test cl, 2
100083d5: 7415                     je 0x100083ec
100083d7: 804c061d20               or byte ptr [esi + eax + 0x1d], 0x20
100083dc: 8a8c05fcfcffff           mov cl, byte ptr [ebp + eax - 0x304]
100083e3: 888c061d010000           mov byte ptr [esi + eax + 0x11d], cl
100083ea: eb07                     jmp 0x100083f3
100083ec: 889c061d010000           mov byte ptr [esi + eax + 0x11d], bl
100083f3: 40                       inc eax
100083f4: 3bc7                     cmp eax, edi
100083f6: 72bf                     jb 0x100083b7
100083f8: eb52                     jmp 0x1000844c
100083fa: 8d861d010000             lea eax, [esi + 0x11d]
10008400: c785e4faffff9fffffff     mov dword ptr [ebp - 0x51c], 0xffffff9f
1000840a: 33c9                     xor ecx, ecx
1000840c: 2985e4faffff             sub dword ptr [ebp - 0x51c], eax
10008412: 8b95e4faffff             mov edx, dword ptr [ebp - 0x51c]
10008418: 8d840e1d010000           lea eax, [esi + ecx + 0x11d]
1000841f: 03d0                     add edx, eax
10008421: 8d5a20                   lea ebx, [edx + 0x20]
10008424: 83fb19                   cmp ebx, 0x19
10008427: 770a                     ja 0x10008433
10008429: 804c0e1d10               or byte ptr [esi + ecx + 0x1d], 0x10
1000842e: 8d5120                   lea edx, [ecx + 0x20]
10008431: eb0d                     jmp 0x10008440
10008433: 83fa19                   cmp edx, 0x19
10008436: 770c                     ja 0x10008444
10008438: 804c0e1d20               or byte ptr [esi + ecx + 0x1d], 0x20
1000843d: 8d51e0                   lea edx, [ecx - 0x20]
10008440: 8810                     mov byte ptr [eax], dl
10008442: eb03                     jmp 0x10008447
10008444: c60000                   mov byte ptr [eax], 0
10008447: 41                       inc ecx
10008448: 3bcf                     cmp ecx, edi
1000844a: 72c6                     jb 0x10008412
1000844c: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
1000844f: 5f                       pop edi
10008450: 33cd                     xor ecx, ebp
10008452: 5b                       pop ebx
10008453: e862c7ffff               call 0x10004bba
10008458: c9                       leave 
10008459: c3                       ret 
1000845a: 6a0c                     push 0xc
1000845c: 68d0dc0010               push 0x1000dcd0
10008461: e89ae9ffff               call 0x10006e00
10008466: e8d6deffff               call 0x10006341
1000846b: 8bf8                     mov edi, eax
1000846d: a120fb0010               mov eax, dword ptr [0x1000fb20]
10008472: 854770                   test dword ptr [edi + 0x70], eax
10008475: 741d                     je 0x10008494
10008477: 837f6c00                 cmp dword ptr [edi + 0x6c], 0
1000847b: 7417                     je 0x10008494
1000847d: 8b7768                   mov esi, dword ptr [edi + 0x68]
10008480: 85f6                     test esi, esi
10008482: 7508                     jne 0x1000848c
10008484: 6a20                     push 0x20
10008486: e89cd9ffff               call 0x10005e27
1000848b: 59                       pop ecx
1000848c: 8bc6                     mov eax, esi
1000848e: e8b2e9ffff               call 0x10006e45
10008493: c3                       ret 
10008494: 6a0d                     push 0xd
10008496: e8a8f0ffff               call 0x10007543
1000849b: 59                       pop ecx
1000849c: 8365fc00                 and dword ptr [ebp - 4], 0
100084a0: 8b7768                   mov esi, dword ptr [edi + 0x68]
100084a3: 8975e4                   mov dword ptr [ebp - 0x1c], esi
100084a6: 3b3510fa0010             cmp esi, dword ptr [0x1000fa10]
100084ac: 7436                     je 0x100084e4
100084ae: 85f6                     test esi, esi
100084b0: 741a                     je 0x100084cc
100084b2: 56                       push esi
100084b3: ff15a0b00010             call dword ptr [0x1000b0a0]
100084b9: 85c0                     test eax, eax
100084bb: 750f                     jne 0x100084cc
100084bd: 81fee8f50010             cmp esi, 0x1000f5e8
100084c3: 7407                     je 0x100084cc
100084c5: 56                       push esi
100084c6: e877ccffff               call 0x10005142
100084cb: 59                       pop ecx
100084cc: a110fa0010               mov eax, dword ptr [0x1000fa10]
100084d1: 894768                   mov dword ptr [edi + 0x68], eax
100084d4: 8b3510fa0010             mov esi, dword ptr [0x1000fa10]
100084da: 8975e4                   mov dword ptr [ebp - 0x1c], esi
100084dd: 56                       push esi
100084de: ff1598b00010             call dword ptr [0x1000b098]
100084e4: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
100084eb: e805000000               call 0x100084f5
100084f0: eb8e                     jmp 0x10008480
100084f2: 8b75e4                   mov esi, dword ptr [ebp - 0x1c]
100084f5: 6a0d                     push 0xd
100084f7: e86eefffff               call 0x1000746a
100084fc: 59                       pop ecx
100084fd: c3                       ret 
100084fe: 8bff                     mov edi, edi
10008500: 55                       push ebp
10008501: 8bec                     mov ebp, esp
10008503: 83ec10                   sub esp, 0x10
10008506: 53                       push ebx
10008507: 33db                     xor ebx, ebx
10008509: 53                       push ebx
1000850a: 8d4df0                   lea ecx, [ebp - 0x10]
1000850d: e865f9ffff               call 0x10007e77
10008512: 891da4090110             mov dword ptr [0x100109a4], ebx
10008518: 83fefe                   cmp esi, -2
1000851b: 751e                     jne 0x1000853b
1000851d: c705a409011001000000     mov dword ptr [0x100109a4], 1
10008527: ff1538b00010             call dword ptr [0x1000b038]
1000852d: 385dfc                   cmp byte ptr [ebp - 4], bl
10008530: 7445                     je 0x10008577
10008532: 8b4df8                   mov ecx, dword ptr [ebp - 8]
10008535: 836170fd                 and dword ptr [ecx + 0x70], 0xfffffffd
10008539: eb3c                     jmp 0x10008577
1000853b: 83fefd                   cmp esi, -3
1000853e: 7512                     jne 0x10008552
10008540: c705a409011001000000     mov dword ptr [0x100109a4], 1
1000854a: ff15f0b00010             call dword ptr [0x1000b0f0]
10008550: ebdb                     jmp 0x1000852d
10008552: 83fefc                   cmp esi, -4
10008555: 7512                     jne 0x10008569
10008557: 8b45f0                   mov eax, dword ptr [ebp - 0x10]
1000855a: 8b4004                   mov eax, dword ptr [eax + 4]
1000855d: c705a409011001000000     mov dword ptr [0x100109a4], 1
10008567: ebc4                     jmp 0x1000852d
10008569: 385dfc                   cmp byte ptr [ebp - 4], bl
1000856c: 7407                     je 0x10008575
1000856e: 8b45f8                   mov eax, dword ptr [ebp - 8]
10008571: 836070fd                 and dword ptr [eax + 0x70], 0xfffffffd
10008575: 8bc6                     mov eax, esi
10008577: 5b                       pop ebx
10008578: c9                       leave 
10008579: c3                       ret 
1000857a: 8bff                     mov edi, edi
1000857c: 55                       push ebp
1000857d: 8bec                     mov ebp, esp
1000857f: 83ec20                   sub esp, 0x20
10008582: a180f00010               mov eax, dword ptr [0x1000f080]
10008587: 33c5                     xor eax, ebp
10008589: 8945fc                   mov dword ptr [ebp - 4], eax
1000858c: 53                       push ebx
1000858d: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
10008590: 56                       push esi
10008591: 8b7508                   mov esi, dword ptr [ebp + 8]
10008594: 57                       push edi
10008595: e864ffffff               call 0x100084fe
1000859a: 8bf8                     mov edi, eax
1000859c: 33f6                     xor esi, esi
1000859e: 897d08                   mov dword ptr [ebp + 8], edi
100085a1: 3bfe                     cmp edi, esi
100085a3: 750e                     jne 0x100085b3
100085a5: 8bc3                     mov eax, ebx
100085a7: e8bafcffff               call 0x10008266
100085ac: 33c0                     xor eax, eax
100085ae: e9a1010000               jmp 0x10008754
100085b3: 8975e4                   mov dword ptr [ebp - 0x1c], esi
100085b6: 33c0                     xor eax, eax
100085b8: 39b818fa0010             cmp dword ptr [eax + 0x1000fa18], edi
100085be: 0f8491000000             je 0x10008655
100085c4: ff45e4                   inc dword ptr [ebp - 0x1c]
100085c7: 83c030                   add eax, 0x30
100085ca: 3df0000000               cmp eax, 0xf0
100085cf: 72e7                     jb 0x100085b8
100085d1: 81ffe8fd0000             cmp edi, 0xfde8
100085d7: 0f8474010000             je 0x10008751
100085dd: 81ffe9fd0000             cmp edi, 0xfde9
100085e3: 0f8468010000             je 0x10008751
100085e9: 0fb7c7                   movzx eax, di
100085ec: 50                       push eax
100085ed: ff1534b00010             call dword ptr [0x1000b034]
100085f3: 85c0                     test eax, eax
100085f5: 0f8456010000             je 0x10008751
100085fb: 8d45e8                   lea eax, [ebp - 0x18]
100085fe: 50                       push eax
100085ff: 57                       push edi
10008600: ff15ecb00010             call dword ptr [0x1000b0ec]
10008606: 85c0                     test eax, eax
10008608: 0f8437010000             je 0x10008745
1000860e: 6801010000               push 0x101
10008613: 8d431c                   lea eax, [ebx + 0x1c]
10008616: 56                       push esi
10008617: 50                       push eax
10008618: e8a3040000               call 0x10008ac0
1000861d: 33d2                     xor edx, edx
1000861f: 42                       inc edx
10008620: 83c40c                   add esp, 0xc
10008623: 897b04                   mov dword ptr [ebx + 4], edi
10008626: 89730c                   mov dword ptr [ebx + 0xc], esi
10008629: 3955e8                   cmp dword ptr [ebp - 0x18], edx
1000862c: 0f86fc000000             jbe 0x1000872e
10008632: 807dee00                 cmp byte ptr [ebp - 0x12], 0
10008636: 0f84d3000000             je 0x1000870f
1000863c: 8d75ef                   lea esi, [ebp - 0x11]
1000863f: 8a0e                     mov cl, byte ptr [esi]
10008641: 84c9                     test cl, cl
10008643: 0f84c6000000             je 0x1000870f
10008649: 0fb646ff                 movzx eax, byte ptr [esi - 1]
1000864d: 0fb6c9                   movzx ecx, cl
10008650: e9a9000000               jmp 0x100086fe
10008655: 6801010000               push 0x101
1000865a: 8d431c                   lea eax, [ebx + 0x1c]
1000865d: 56                       push esi
1000865e: 50                       push eax
1000865f: e85c040000               call 0x10008ac0
10008664: 8b4de4                   mov ecx, dword ptr [ebp - 0x1c]
10008667: 83c40c                   add esp, 0xc
1000866a: 6bc930                   imul ecx, ecx, 0x30
1000866d: 8975e0                   mov dword ptr [ebp - 0x20], esi
10008670: 8db128fa0010             lea esi, [ecx + 0x1000fa28]
10008676: 8975e4                   mov dword ptr [ebp - 0x1c], esi
10008679: eb2b                     jmp 0x100086a6
1000867b: 8a4601                   mov al, byte ptr [esi + 1]
1000867e: 84c0                     test al, al
10008680: 7429                     je 0x100086ab
10008682: 0fb63e                   movzx edi, byte ptr [esi]
10008685: 0fb6c0                   movzx eax, al
10008688: eb12                     jmp 0x1000869c
1000868a: 8b45e0                   mov eax, dword ptr [ebp - 0x20]
1000868d: 8a8014fa0010             mov al, byte ptr [eax + 0x1000fa14]
10008693: 08443b1d                 or byte ptr [ebx + edi + 0x1d], al
10008697: 0fb64601                 movzx eax, byte ptr [esi + 1]
1000869b: 47                       inc edi
1000869c: 3bf8                     cmp edi, eax
1000869e: 76ea                     jbe 0x1000868a
100086a0: 8b7d08                   mov edi, dword ptr [ebp + 8]
100086a3: 83c602                   add esi, 2
100086a6: 803e00                   cmp byte ptr [esi], 0
100086a9: 75d0                     jne 0x1000867b
100086ab: 8b75e4                   mov esi, dword ptr [ebp - 0x1c]
100086ae: ff45e0                   inc dword ptr [ebp - 0x20]
100086b1: 83c608                   add esi, 8
100086b4: 837de004                 cmp dword ptr [ebp - 0x20], 4
100086b8: 8975e4                   mov dword ptr [ebp - 0x1c], esi
100086bb: 72e9                     jb 0x100086a6
100086bd: 8bc7                     mov eax, edi
100086bf: 897b04                   mov dword ptr [ebx + 4], edi
100086c2: c7430801000000           mov dword ptr [ebx + 8], 1
100086c9: e869fbffff               call 0x10008237
100086ce: 6a06                     push 6
100086d0: 89430c                   mov dword ptr [ebx + 0xc], eax
100086d3: 8d4310                   lea eax, [ebx + 0x10]
100086d6: 8d891cfa0010             lea ecx, [ecx + 0x1000fa1c]
100086dc: 5a                       pop edx
100086dd: 668b31                   mov si, word ptr [ecx]
100086e0: 668930                   mov word ptr [eax], si
100086e3: 83c102                   add ecx, 2
100086e6: 83c002                   add eax, 2
100086e9: 4a                       dec edx
100086ea: 75f1                     jne 0x100086dd
100086ec: 8bf3                     mov esi, ebx
100086ee: e8d7fbffff               call 0x100082ca
100086f3: e9b4feffff               jmp 0x100085ac
100086f8: 804c031d04               or byte ptr [ebx + eax + 0x1d], 4
100086fd: 40                       inc eax
100086fe: 3bc1                     cmp eax, ecx
10008700: 76f6                     jbe 0x100086f8
10008702: 83c602                   add esi, 2
10008705: 807eff00                 cmp byte ptr [esi - 1], 0
10008709: 0f8530ffffff             jne 0x1000863f
1000870f: 8d431e                   lea eax, [ebx + 0x1e]
10008712: b9fe000000               mov ecx, 0xfe
10008717: 800808                   or byte ptr [eax], 8
1000871a: 40                       inc eax
1000871b: 49                       dec ecx
1000871c: 75f9                     jne 0x10008717
1000871e: 8b4304                   mov eax, dword ptr [ebx + 4]
10008721: e811fbffff               call 0x10008237
10008726: 89430c                   mov dword ptr [ebx + 0xc], eax
10008729: 895308                   mov dword ptr [ebx + 8], edx
1000872c: eb03                     jmp 0x10008731
1000872e: 897308                   mov dword ptr [ebx + 8], esi
10008731: 33c0                     xor eax, eax
10008733: 0fb7c8                   movzx ecx, ax
10008736: 8bc1                     mov eax, ecx
10008738: c1e110                   shl ecx, 0x10
1000873b: 0bc1                     or eax, ecx
1000873d: 8d7b10                   lea edi, [ebx + 0x10]
10008740: ab                       stosd dword ptr es:[edi], eax
10008741: ab                       stosd dword ptr es:[edi], eax
10008742: ab                       stosd dword ptr es:[edi], eax
10008743: eba7                     jmp 0x100086ec
10008745: 3935a4090110             cmp dword ptr [0x100109a4], esi
1000874b: 0f8554feffff             jne 0x100085a5
10008751: 83c8ff                   or eax, 0xffffffff
10008754: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10008757: 5f                       pop edi
10008758: 5e                       pop esi
10008759: 33cd                     xor ecx, ebp
1000875b: 5b                       pop ebx
1000875c: e859c4ffff               call 0x10004bba
10008761: c9                       leave 
10008762: c3                       ret 
10008763: 6a14                     push 0x14
10008765: 68f0dc0010               push 0x1000dcf0
1000876a: e891e6ffff               call 0x10006e00
1000876f: 834de0ff                 or dword ptr [ebp - 0x20], 0xffffffff
10008773: e8c9dbffff               call 0x10006341
10008778: 8bf8                     mov edi, eax
1000877a: 897ddc                   mov dword ptr [ebp - 0x24], edi
1000877d: e8d8fcffff               call 0x1000845a
10008782: 8b5f68                   mov ebx, dword ptr [edi + 0x68]
10008785: 8b7508                   mov esi, dword ptr [ebp + 8]
10008788: e871fdffff               call 0x100084fe
1000878d: 894508                   mov dword ptr [ebp + 8], eax
10008790: 3b4304                   cmp eax, dword ptr [ebx + 4]
10008793: 0f8457010000             je 0x100088f0
10008799: 6820020000               push 0x220
1000879e: e8d0deffff               call 0x10006673
100087a3: 59                       pop ecx
100087a4: 8bd8                     mov ebx, eax
100087a6: 85db                     test ebx, ebx
100087a8: 0f8446010000             je 0x100088f4
100087ae: b988000000               mov ecx, 0x88
100087b3: 8b7768                   mov esi, dword ptr [edi + 0x68]
100087b6: 8bfb                     mov edi, ebx
100087b8: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
100087ba: 832300                   and dword ptr [ebx], 0
100087bd: 53                       push ebx
100087be: ff7508                   push dword ptr [ebp + 8]
100087c1: e8b4fdffff               call 0x1000857a
100087c6: 59                       pop ecx
100087c7: 59                       pop ecx
100087c8: 8945e0                   mov dword ptr [ebp - 0x20], eax
100087cb: 85c0                     test eax, eax
100087cd: 0f85fc000000             jne 0x100088cf
100087d3: 8b75dc                   mov esi, dword ptr [ebp - 0x24]
100087d6: ff7668                   push dword ptr [esi + 0x68]
100087d9: ff15a0b00010             call dword ptr [0x1000b0a0]
100087df: 85c0                     test eax, eax
100087e1: 7511                     jne 0x100087f4
100087e3: 8b4668                   mov eax, dword ptr [esi + 0x68]
100087e6: 3de8f50010               cmp eax, 0x1000f5e8
100087eb: 7407                     je 0x100087f4
100087ed: 50                       push eax
100087ee: e84fc9ffff               call 0x10005142
100087f3: 59                       pop ecx
100087f4: 895e68                   mov dword ptr [esi + 0x68], ebx
100087f7: 53                       push ebx
100087f8: 8b3d98b00010             mov edi, dword ptr [0x1000b098]
100087fe: ffd7                     call edi
10008800: f6467002                 test byte ptr [esi + 0x70], 2
10008804: 0f85ea000000             jne 0x100088f4
1000880a: f60520fb001001           test byte ptr [0x1000fb20], 1
10008811: 0f85dd000000             jne 0x100088f4
10008817: 6a0d                     push 0xd
10008819: e825edffff               call 0x10007543
1000881e: 59                       pop ecx
1000881f: 8365fc00                 and dword ptr [ebp - 4], 0
10008823: 8b4304                   mov eax, dword ptr [ebx + 4]
10008826: a3b4090110               mov dword ptr [0x100109b4], eax
1000882b: 8b4308                   mov eax, dword ptr [ebx + 8]
1000882e: a3b8090110               mov dword ptr [0x100109b8], eax
10008833: 8b430c                   mov eax, dword ptr [ebx + 0xc]
10008836: a3bc090110               mov dword ptr [0x100109bc], eax
1000883b: 33c0                     xor eax, eax
1000883d: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10008840: 83f805                   cmp eax, 5
10008843: 7d10                     jge 0x10008855
10008845: 668b4c4310               mov cx, word ptr [ebx + eax*2 + 0x10]
1000884a: 66890c45a8090110         mov word ptr [eax*2 + 0x100109a8], cx
10008852: 40                       inc eax
10008853: ebe8                     jmp 0x1000883d
10008855: 33c0                     xor eax, eax
10008857: 8945e4                   mov dword ptr [ebp - 0x1c], eax
1000885a: 3d01010000               cmp eax, 0x101
1000885f: 7d0d                     jge 0x1000886e
10008861: 8a4c181c                 mov cl, byte ptr [eax + ebx + 0x1c]
10008865: 888808f80010             mov byte ptr [eax + 0x1000f808], cl
1000886b: 40                       inc eax
1000886c: ebe9                     jmp 0x10008857
1000886e: 33c0                     xor eax, eax
10008870: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10008873: 3d00010000               cmp eax, 0x100
10008878: 7d10                     jge 0x1000888a
1000887a: 8a8c181d010000           mov cl, byte ptr [eax + ebx + 0x11d]
10008881: 888810f90010             mov byte ptr [eax + 0x1000f910], cl
10008887: 40                       inc eax
10008888: ebe6                     jmp 0x10008870
1000888a: ff3510fa0010             push dword ptr [0x1000fa10]
10008890: ff15a0b00010             call dword ptr [0x1000b0a0]
10008896: 85c0                     test eax, eax
10008898: 7513                     jne 0x100088ad
1000889a: a110fa0010               mov eax, dword ptr [0x1000fa10]
1000889f: 3de8f50010               cmp eax, 0x1000f5e8
100088a4: 7407                     je 0x100088ad
100088a6: 50                       push eax
100088a7: e896c8ffff               call 0x10005142
100088ac: 59                       pop ecx
100088ad: 891d10fa0010             mov dword ptr [0x1000fa10], ebx
100088b3: 53                       push ebx
100088b4: ffd7                     call edi
100088b6: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
100088bd: e802000000               call 0x100088c4
100088c2: eb30                     jmp 0x100088f4
100088c4: 6a0d                     push 0xd
100088c6: e89febffff               call 0x1000746a
100088cb: 59                       pop ecx
100088cc: c3                       ret 
100088cd: eb25                     jmp 0x100088f4
100088cf: 83f8ff                   cmp eax, -1
100088d2: 7520                     jne 0x100088f4
100088d4: 81fbe8f50010             cmp ebx, 0x1000f5e8
100088da: 7407                     je 0x100088e3
100088dc: 53                       push ebx
100088dd: e860c8ffff               call 0x10005142
100088e2: 59                       pop ecx
100088e3: e852d2ffff               call 0x10005b3a
100088e8: c70016000000             mov dword ptr [eax], 0x16
100088ee: eb04                     jmp 0x100088f4
100088f0: 8365e000                 and dword ptr [ebp - 0x20], 0
100088f4: 8b45e0                   mov eax, dword ptr [ebp - 0x20]
100088f7: e849e5ffff               call 0x10006e45
100088fc: c3                       ret 
100088fd: 833dec0e011000           cmp dword ptr [0x10010eec], 0
10008904: 7512                     jne 0x10008918
10008906: 6afd                     push -3
10008908: e856feffff               call 0x10008763
1000890d: 59                       pop ecx
1000890e: c705ec0e011001000000     mov dword ptr [0x10010eec], 1
10008918: 33c0                     xor eax, eax
1000891a: c3                       ret 
1000891b: 8bff                     mov edi, edi
1000891d: 55                       push ebp
1000891e: 8bec                     mov ebp, esp
10008920: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10008923: 85c9                     test ecx, ecx
10008925: 741b                     je 0x10008942
10008927: 6ae0                     push -0x20
10008929: 33d2                     xor edx, edx
1000892b: 58                       pop eax
1000892c: f7f1                     div ecx
1000892e: 3b450c                   cmp eax, dword ptr [ebp + 0xc]
10008931: 730f                     jae 0x10008942
10008933: e802d2ffff               call 0x10005b3a
10008938: c7000c000000             mov dword ptr [eax], 0xc
1000893e: 33c0                     xor eax, eax
10008940: 5d                       pop ebp
10008941: c3                       ret 
10008942: 0faf4d0c                 imul ecx, dword ptr [ebp + 0xc]
10008946: 56                       push esi
10008947: 8bf1                     mov esi, ecx
10008949: 85f6                     test esi, esi
1000894b: 7501                     jne 0x1000894e
1000894d: 46                       inc esi
1000894e: 33c0                     xor eax, eax
10008950: 83fee0                   cmp esi, -0x20
10008953: 7713                     ja 0x10008968
10008955: 56                       push esi
10008956: 6a08                     push 8
10008958: ff3558000110             push dword ptr [0x10010058]
1000895e: ff1540b00010             call dword ptr [0x1000b040]
10008964: 85c0                     test eax, eax
10008966: 7532                     jne 0x1000899a
10008968: 833db806011000           cmp dword ptr [0x100106b8], 0
1000896f: 741c                     je 0x1000898d
10008971: 56                       push esi
10008972: e860d0ffff               call 0x100059d7
10008977: 59                       pop ecx
10008978: 85c0                     test eax, eax
1000897a: 75d2                     jne 0x1000894e
1000897c: 8b4510                   mov eax, dword ptr [ebp + 0x10]
1000897f: 85c0                     test eax, eax
10008981: 7406                     je 0x10008989
10008983: c7000c000000             mov dword ptr [eax], 0xc
10008989: 33c0                     xor eax, eax
1000898b: eb0d                     jmp 0x1000899a
1000898d: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10008990: 85c9                     test ecx, ecx
10008992: 7406                     je 0x1000899a
10008994: c7010c000000             mov dword ptr [ecx], 0xc
1000899a: 5e                       pop esi
1000899b: 5d                       pop ebp
1000899c: c3                       ret 
1000899d: 8bff                     mov edi, edi
1000899f: 55                       push ebp
100089a0: 8bec                     mov ebp, esp
100089a2: 837d0800                 cmp dword ptr [ebp + 8], 0
100089a6: 750b                     jne 0x100089b3
100089a8: ff750c                   push dword ptr [ebp + 0xc]
100089ab: e8ccc7ffff               call 0x1000517c
100089b0: 59                       pop ecx
100089b1: 5d                       pop ebp
100089b2: c3                       ret 
100089b3: 56                       push esi
100089b4: 8b750c                   mov esi, dword ptr [ebp + 0xc]
100089b7: 85f6                     test esi, esi
100089b9: 750d                     jne 0x100089c8
100089bb: ff7508                   push dword ptr [ebp + 8]
100089be: e87fc7ffff               call 0x10005142
100089c3: 59                       pop ecx
100089c4: 33c0                     xor eax, eax
100089c6: eb4d                     jmp 0x10008a15
100089c8: 57                       push edi
100089c9: eb30                     jmp 0x100089fb
100089cb: 85f6                     test esi, esi
100089cd: 7501                     jne 0x100089d0
100089cf: 46                       inc esi
100089d0: 56                       push esi
100089d1: ff7508                   push dword ptr [ebp + 8]
100089d4: 6a00                     push 0
100089d6: ff3558000110             push dword ptr [0x10010058]
100089dc: ff1530b00010             call dword ptr [0x1000b030]
100089e2: 8bf8                     mov edi, eax
100089e4: 85ff                     test edi, edi
100089e6: 755e                     jne 0x10008a46
100089e8: 3905b8060110             cmp dword ptr [0x100106b8], eax
100089ee: 7440                     je 0x10008a30
100089f0: 56                       push esi
100089f1: e8e1cfffff               call 0x100059d7
100089f6: 59                       pop ecx
100089f7: 85c0                     test eax, eax
100089f9: 741d                     je 0x10008a18
100089fb: 83fee0                   cmp esi, -0x20
100089fe: 76cb                     jbe 0x100089cb
10008a00: 56                       push esi
10008a01: e8d1cfffff               call 0x100059d7
10008a06: 59                       pop ecx
10008a07: e82ed1ffff               call 0x10005b3a
10008a0c: c7000c000000             mov dword ptr [eax], 0xc
10008a12: 33c0                     xor eax, eax
10008a14: 5f                       pop edi
10008a15: 5e                       pop esi
10008a16: 5d                       pop ebp
10008a17: c3                       ret 
10008a18: e81dd1ffff               call 0x10005b3a
10008a1d: 8bf0                     mov esi, eax
10008a1f: ff1510b00010             call dword ptr [0x1000b010]
10008a25: 50                       push eax
10008a26: e8cdd0ffff               call 0x10005af8
10008a2b: 59                       pop ecx
10008a2c: 8906                     mov dword ptr [esi], eax
10008a2e: ebe2                     jmp 0x10008a12
10008a30: e805d1ffff               call 0x10005b3a
10008a35: 8bf0                     mov esi, eax
10008a37: ff1510b00010             call dword ptr [0x1000b010]
10008a3d: 50                       push eax
10008a3e: e8b5d0ffff               call 0x10005af8
10008a43: 59                       pop ecx
10008a44: 8906                     mov dword ptr [esi], eax
10008a46: 8bc7                     mov eax, edi
10008a48: ebca                     jmp 0x10008a14
10008a4a: 8bff                     mov edi, edi
10008a4c: 55                       push ebp
10008a4d: 8bec                     mov ebp, esp
10008a4f: 83ec10                   sub esp, 0x10
10008a52: ff7508                   push dword ptr [ebp + 8]
10008a55: 8d4df0                   lea ecx, [ebp - 0x10]
10008a58: e81af4ffff               call 0x10007e77
10008a5d: 0fb6450c                 movzx eax, byte ptr [ebp + 0xc]
10008a61: 8b4df4                   mov ecx, dword ptr [ebp - 0xc]
10008a64: 8a5514                   mov dl, byte ptr [ebp + 0x14]
10008a67: 8454011d                 test byte ptr [ecx + eax + 0x1d], dl
10008a6b: 751e                     jne 0x10008a8b
10008a6d: 837d1000                 cmp dword ptr [ebp + 0x10], 0
10008a71: 7412                     je 0x10008a85
10008a73: 8b4df0                   mov ecx, dword ptr [ebp - 0x10]
10008a76: 8b89c8000000             mov ecx, dword ptr [ecx + 0xc8]
10008a7c: 0fb70441                 movzx eax, word ptr [ecx + eax*2]
10008a80: 234510                   and eax, dword ptr [ebp + 0x10]
10008a83: eb02                     jmp 0x10008a87
10008a85: 33c0                     xor eax, eax
10008a87: 85c0                     test eax, eax
10008a89: 7403                     je 0x10008a8e
10008a8b: 33c0                     xor eax, eax
10008a8d: 40                       inc eax
10008a8e: 807dfc00                 cmp byte ptr [ebp - 4], 0
10008a92: 7407                     je 0x10008a9b
10008a94: 8b4df8                   mov ecx, dword ptr [ebp - 8]
10008a97: 836170fd                 and dword ptr [ecx + 0x70], 0xfffffffd
10008a9b: c9                       leave 
10008a9c: c3                       ret 
10008a9d: 8bff                     mov edi, edi
10008a9f: 55                       push ebp
10008aa0: 8bec                     mov ebp, esp
10008aa2: 6a04                     push 4
10008aa4: 6a00                     push 0
10008aa6: ff7508                   push dword ptr [ebp + 8]
10008aa9: 6a00                     push 0
10008aab: e89affffff               call 0x10008a4a
10008ab0: 83c410                   add esp, 0x10
10008ab3: 5d                       pop ebp
10008ab4: c3                       ret 
10008ab5: cc                       int3 
10008ab6: cc                       int3 
10008ab7: cc                       int3 
10008ab8: cc                       int3 
10008ab9: cc                       int3 
10008aba: cc                       int3 
10008abb: cc                       int3 
10008abc: cc                       int3 
10008abd: cc                       int3 
10008abe: cc                       int3 
10008abf: cc                       int3 
10008ac0: 8b54240c                 mov edx, dword ptr [esp + 0xc]
10008ac4: 8b4c2404                 mov ecx, dword ptr [esp + 4]
10008ac8: 85d2                     test edx, edx
10008aca: 7469                     je 0x10008b35
10008acc: 33c0                     xor eax, eax
10008ace: 8a442408                 mov al, byte ptr [esp + 8]
10008ad2: 84c0                     test al, al
10008ad4: 7516                     jne 0x10008aec
10008ad6: 81fa80000000             cmp edx, 0x80
10008adc: 720e                     jb 0x10008aec
10008ade: 833df80e011000           cmp dword ptr [0x10010ef8], 0
10008ae5: 7405                     je 0x10008aec
10008ae7: e9020e0000               jmp 0x100098ee
10008aec: 57                       push edi
10008aed: 8bf9                     mov edi, ecx
10008aef: 83fa04                   cmp edx, 4
10008af2: 7231                     jb 0x10008b25
10008af4: f7d9                     neg ecx
10008af6: 83e103                   and ecx, 3
10008af9: 740c                     je 0x10008b07
10008afb: 2bd1                     sub edx, ecx
10008afd: 8807                     mov byte ptr [edi], al
10008aff: 83c701                   add edi, 1
10008b02: 83e901                   sub ecx, 1
10008b05: 75f6                     jne 0x10008afd
10008b07: 8bc8                     mov ecx, eax
10008b09: c1e008                   shl eax, 8
10008b0c: 03c1                     add eax, ecx
10008b0e: 8bc8                     mov ecx, eax
10008b10: c1e010                   shl eax, 0x10
10008b13: 03c1                     add eax, ecx
10008b15: 8bca                     mov ecx, edx
10008b17: 83e203                   and edx, 3
10008b1a: c1e902                   shr ecx, 2
10008b1d: 7406                     je 0x10008b25
10008b1f: f3ab                     rep stosd dword ptr es:[edi], eax
10008b21: 85d2                     test edx, edx
10008b23: 740a                     je 0x10008b2f
10008b25: 8807                     mov byte ptr [edi], al
10008b27: 83c701                   add edi, 1
10008b2a: 83ea01                   sub edx, 1
10008b2d: 75f6                     jne 0x10008b25
10008b2f: 8b442408                 mov eax, dword ptr [esp + 8]
10008b33: 5f                       pop edi
10008b34: c3                       ret 
10008b35: 8b442404                 mov eax, dword ptr [esp + 4]
10008b39: c3                       ret 
10008b3a: cc                       int3 
10008b3b: cc                       int3 
10008b3c: cc                       int3 
10008b3d: cc                       int3 
10008b3e: cc                       int3 
10008b3f: cc                       int3 
10008b40: 56                       push esi
10008b41: 8b442414                 mov eax, dword ptr [esp + 0x14]
10008b45: 0bc0                     or eax, eax
10008b47: 7528                     jne 0x10008b71
10008b49: 8b4c2410                 mov ecx, dword ptr [esp + 0x10]
10008b4d: 8b44240c                 mov eax, dword ptr [esp + 0xc]
10008b51: 33d2                     xor edx, edx
10008b53: f7f1                     div ecx
10008b55: 8bd8                     mov ebx, eax
10008b57: 8b442408                 mov eax, dword ptr [esp + 8]
10008b5b: f7f1                     div ecx
10008b5d: 8bf0                     mov esi, eax
10008b5f: 8bc3                     mov eax, ebx
10008b61: f7642410                 mul dword ptr [esp + 0x10]
10008b65: 8bc8                     mov ecx, eax
10008b67: 8bc6                     mov eax, esi
10008b69: f7642410                 mul dword ptr [esp + 0x10]
10008b6d: 03d1                     add edx, ecx
10008b6f: eb47                     jmp 0x10008bb8
10008b71: 8bc8                     mov ecx, eax
10008b73: 8b5c2410                 mov ebx, dword ptr [esp + 0x10]
10008b77: 8b54240c                 mov edx, dword ptr [esp + 0xc]
10008b7b: 8b442408                 mov eax, dword ptr [esp + 8]
10008b7f: d1e9                     shr ecx, 1
10008b81: d1db                     rcr ebx, 1
10008b83: d1ea                     shr edx, 1
10008b85: d1d8                     rcr eax, 1
10008b87: 0bc9                     or ecx, ecx
10008b89: 75f4                     jne 0x10008b7f
10008b8b: f7f3                     div ebx
10008b8d: 8bf0                     mov esi, eax
10008b8f: f7642414                 mul dword ptr [esp + 0x14]
10008b93: 8bc8                     mov ecx, eax
10008b95: 8b442410                 mov eax, dword ptr [esp + 0x10]
10008b99: f7e6                     mul esi
10008b9b: 03d1                     add edx, ecx
10008b9d: 720e                     jb 0x10008bad
10008b9f: 3b54240c                 cmp edx, dword ptr [esp + 0xc]
10008ba3: 7708                     ja 0x10008bad
10008ba5: 720f                     jb 0x10008bb6
10008ba7: 3b442408                 cmp eax, dword ptr [esp + 8]
10008bab: 7609                     jbe 0x10008bb6
10008bad: 4e                       dec esi
10008bae: 2b442410                 sub eax, dword ptr [esp + 0x10]
10008bb2: 1b542414                 sbb edx, dword ptr [esp + 0x14]
10008bb6: 33db                     xor ebx, ebx
10008bb8: 2b442408                 sub eax, dword ptr [esp + 8]
10008bbc: 1b54240c                 sbb edx, dword ptr [esp + 0xc]
10008bc0: f7da                     neg edx
10008bc2: f7d8                     neg eax
10008bc4: 83da00                   sbb edx, 0
10008bc7: 8bca                     mov ecx, edx
10008bc9: 8bd3                     mov edx, ebx
10008bcb: 8bd9                     mov ebx, ecx
10008bcd: 8bc8                     mov ecx, eax
10008bcf: 8bc6                     mov eax, esi
10008bd1: 5e                       pop esi
10008bd2: c21000                   ret 0x10
10008bd5: cc                       int3 
10008bd6: cc                       int3 
10008bd7: cc                       int3 
10008bd8: cc                       int3 
10008bd9: cc                       int3 
10008bda: cc                       int3 
10008bdb: cc                       int3 
10008bdc: cc                       int3 
10008bdd: cc                       int3 
10008bde: cc                       int3 
10008bdf: cc                       int3 
10008be0: 55                       push ebp
10008be1: 8bec                     mov ebp, esp
10008be3: 53                       push ebx
10008be4: 56                       push esi
10008be5: 57                       push edi
10008be6: 55                       push ebp
10008be7: 6a00                     push 0
10008be9: 6a00                     push 0
10008beb: 68f88b0010               push 0x10008bf8
10008bf0: ff7508                   push dword ptr [ebp + 8]
10008bf3: e81a0f0000               call 0x10009b12
10008bf8: 5d                       pop ebp
10008bf9: 5f                       pop edi
10008bfa: 5e                       pop esi
10008bfb: 5b                       pop ebx
10008bfc: 8be5                     mov esp, ebp
10008bfe: 5d                       pop ebp
10008bff: c3                       ret 
10008c00: 8b4c2404                 mov ecx, dword ptr [esp + 4]
10008c04: f7410406000000           test dword ptr [ecx + 4], 6
10008c0b: b801000000               mov eax, 1
10008c10: 7432                     je 0x10008c44
10008c12: 8b442414                 mov eax, dword ptr [esp + 0x14]
10008c16: 8b48fc                   mov ecx, dword ptr [eax - 4]
10008c19: 33c8                     xor ecx, eax
10008c1b: e89abfffff               call 0x10004bba
10008c20: 55                       push ebp
10008c21: 8b6810                   mov ebp, dword ptr [eax + 0x10]
10008c24: 8b5028                   mov edx, dword ptr [eax + 0x28]
10008c27: 52                       push edx
10008c28: 8b5024                   mov edx, dword ptr [eax + 0x24]
10008c2b: 52                       push edx
10008c2c: e814000000               call 0x10008c45
10008c31: 83c408                   add esp, 8
10008c34: 5d                       pop ebp
10008c35: 8b442408                 mov eax, dword ptr [esp + 8]
10008c39: 8b542410                 mov edx, dword ptr [esp + 0x10]
10008c3d: 8902                     mov dword ptr [edx], eax
10008c3f: b803000000               mov eax, 3
10008c44: c3                       ret 
10008c45: 53                       push ebx
10008c46: 56                       push esi
10008c47: 57                       push edi
10008c48: 8b442410                 mov eax, dword ptr [esp + 0x10]
10008c4c: 55                       push ebp
10008c4d: 50                       push eax
10008c4e: 6afe                     push -2
10008c50: 68008c0010               push 0x10008c00
10008c55: 64ff3500000000           push dword ptr fs:[0]
10008c5c: a180f00010               mov eax, dword ptr [0x1000f080]
10008c61: 33c4                     xor eax, esp
10008c63: 50                       push eax
10008c64: 8d442404                 lea eax, [esp + 4]
10008c68: 64a300000000             mov dword ptr fs:[0], eax
10008c6e: 8b442428                 mov eax, dword ptr [esp + 0x28]
10008c72: 8b5808                   mov ebx, dword ptr [eax + 8]
10008c75: 8b700c                   mov esi, dword ptr [eax + 0xc]
10008c78: 83feff                   cmp esi, -1
10008c7b: 743a                     je 0x10008cb7
10008c7d: 837c242cff               cmp dword ptr [esp + 0x2c], -1
10008c82: 7406                     je 0x10008c8a
10008c84: 3b74242c                 cmp esi, dword ptr [esp + 0x2c]
10008c88: 762d                     jbe 0x10008cb7
10008c8a: 8d3476                   lea esi, [esi + esi*2]
10008c8d: 8b0cb3                   mov ecx, dword ptr [ebx + esi*4]
10008c90: 894c240c                 mov dword ptr [esp + 0xc], ecx
10008c94: 89480c                   mov dword ptr [eax + 0xc], ecx
10008c97: 837cb30400               cmp dword ptr [ebx + esi*4 + 4], 0
10008c9c: 7517                     jne 0x10008cb5
10008c9e: 6801010000               push 0x101
10008ca3: 8b44b308                 mov eax, dword ptr [ebx + esi*4 + 8]
10008ca7: e849000000               call 0x10008cf5
10008cac: 8b44b308                 mov eax, dword ptr [ebx + esi*4 + 8]
10008cb0: e85f000000               call 0x10008d14
10008cb5: ebb7                     jmp 0x10008c6e
10008cb7: 8b4c2404                 mov ecx, dword ptr [esp + 4]
10008cbb: 64890d00000000           mov dword ptr fs:[0], ecx
10008cc2: 83c418                   add esp, 0x18
10008cc5: 5f                       pop edi
10008cc6: 5e                       pop esi
10008cc7: 5b                       pop ebx
10008cc8: c3                       ret 
10008cc9: 33c0                     xor eax, eax
10008ccb: 648b0d00000000           mov ecx, dword ptr fs:[0]
10008cd2: 817904008c0010           cmp dword ptr [ecx + 4], 0x10008c00
10008cd9: 7510                     jne 0x10008ceb
10008cdb: 8b510c                   mov edx, dword ptr [ecx + 0xc]
10008cde: 8b520c                   mov edx, dword ptr [edx + 0xc]
10008ce1: 395108                   cmp dword ptr [ecx + 8], edx
10008ce4: 7505                     jne 0x10008ceb
10008ce6: b801000000               mov eax, 1
10008ceb: c3                       ret 
10008cec: 53                       push ebx
10008ced: 51                       push ecx
10008cee: bb10fb0010               mov ebx, 0x1000fb10
10008cf3: eb0b                     jmp 0x10008d00
10008cf5: 53                       push ebx
10008cf6: 51                       push ecx
10008cf7: bb10fb0010               mov ebx, 0x1000fb10
10008cfc: 8b4c240c                 mov ecx, dword ptr [esp + 0xc]
10008d00: 894b08                   mov dword ptr [ebx + 8], ecx
10008d03: 894304                   mov dword ptr [ebx + 4], eax
10008d06: 896b0c                   mov dword ptr [ebx + 0xc], ebp
10008d09: 55                       push ebp
10008d0a: 51                       push ecx
10008d0b: 50                       push eax
10008d0c: 58                       pop eax
10008d0d: 59                       pop ecx
10008d0e: 5d                       pop ebp
10008d0f: 59                       pop ecx
10008d10: 5b                       pop ebx
10008d11: c20400                   ret 4
10008d14: ffd0                     call eax
10008d16: c3                       ret 
10008d17: cc                       int3 
10008d18: cc                       int3 
10008d19: cc                       int3 
10008d1a: cc                       int3 
10008d1b: cc                       int3 
10008d1c: cc                       int3 
10008d1d: cc                       int3 
10008d1e: cc                       int3 
10008d1f: cc                       int3 
10008d20: 55                       push ebp
10008d21: 8bec                     mov ebp, esp
10008d23: 57                       push edi
10008d24: 56                       push esi
10008d25: 8b750c                   mov esi, dword ptr [ebp + 0xc]
10008d28: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10008d2b: 8b7d08                   mov edi, dword ptr [ebp + 8]
10008d2e: 8bc1                     mov eax, ecx
10008d30: 8bd1                     mov edx, ecx
10008d32: 03c6                     add eax, esi
10008d34: 3bfe                     cmp edi, esi
10008d36: 7608                     jbe 0x10008d40
10008d38: 3bf8                     cmp edi, eax
10008d3a: 0f82a0010000             jb 0x10008ee0
10008d40: 81f980000000             cmp ecx, 0x80
10008d46: 721c                     jb 0x10008d64
10008d48: 833df80e011000           cmp dword ptr [0x10010ef8], 0
10008d4f: 7413                     je 0x10008d64
10008d51: 57                       push edi
10008d52: 56                       push esi
10008d53: 83e70f                   and edi, 0xf
10008d56: 83e60f                   and esi, 0xf
10008d59: 3bfe                     cmp edi, esi
10008d5b: 5e                       pop esi
10008d5c: 5f                       pop edi
10008d5d: 7505                     jne 0x10008d64
10008d5f: e917caffff               jmp 0x1000577b
10008d64: f7c703000000             test edi, 3
10008d6a: 7514                     jne 0x10008d80
10008d6c: c1e902                   shr ecx, 2
10008d6f: 83e203                   and edx, 3
10008d72: 83f908                   cmp ecx, 8
10008d75: 7229                     jb 0x10008da0
10008d77: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008d79: ff2495908e0010           jmp dword ptr [edx*4 + 0x10008e90]
10008d80: 8bc7                     mov eax, edi
10008d82: ba03000000               mov edx, 3
10008d87: 83e904                   sub ecx, 4
10008d8a: 720c                     jb 0x10008d98
10008d8c: 83e003                   and eax, 3
10008d8f: 03c8                     add ecx, eax
10008d91: ff2485a48d0010           jmp dword ptr [eax*4 + 0x10008da4]
10008d98: ff248da08e0010           jmp dword ptr [ecx*4 + 0x10008ea0]
10008d9f: 90                       nop 
10008da0: ff248d248e0010           jmp dword ptr [ecx*4 + 0x10008e24]
10008da7: 90                       nop 
10008da8: b48d                     mov ah, 0x8d
10008daa: 0010                     add byte ptr [eax], dl
10008dac: e08d                     loopne 0x10008d3b
10008dae: 0010                     add byte ptr [eax], dl
10008db0: 048e                     add al, 0x8e
10008db2: 0010                     add byte ptr [eax], dl
10008db4: 23d1                     and edx, ecx
10008db6: 8a06                     mov al, byte ptr [esi]
10008db8: 8807                     mov byte ptr [edi], al
10008dba: 8a4601                   mov al, byte ptr [esi + 1]
10008dbd: 884701                   mov byte ptr [edi + 1], al
10008dc0: 8a4602                   mov al, byte ptr [esi + 2]
10008dc3: c1e902                   shr ecx, 2
10008dc6: 884702                   mov byte ptr [edi + 2], al
10008dc9: 83c603                   add esi, 3
10008dcc: 83c703                   add edi, 3
10008dcf: 83f908                   cmp ecx, 8
10008dd2: 72cc                     jb 0x10008da0
10008dd4: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008dd6: ff2495908e0010           jmp dword ptr [edx*4 + 0x10008e90]
10008ddd: 8d4900                   lea ecx, [ecx]
10008de0: 23d1                     and edx, ecx
10008de2: 8a06                     mov al, byte ptr [esi]
10008de4: 8807                     mov byte ptr [edi], al
10008de6: 8a4601                   mov al, byte ptr [esi + 1]
10008de9: c1e902                   shr ecx, 2
10008dec: 884701                   mov byte ptr [edi + 1], al
10008def: 83c602                   add esi, 2
10008df2: 83c702                   add edi, 2
10008df5: 83f908                   cmp ecx, 8
10008df8: 72a6                     jb 0x10008da0
10008dfa: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008dfc: ff2495908e0010           jmp dword ptr [edx*4 + 0x10008e90]
10008e03: 90                       nop 
10008e04: 23d1                     and edx, ecx
10008e06: 8a06                     mov al, byte ptr [esi]
10008e08: 8807                     mov byte ptr [edi], al
10008e0a: 83c601                   add esi, 1
10008e0d: c1e902                   shr ecx, 2
10008e10: 83c701                   add edi, 1
10008e13: 83f908                   cmp ecx, 8
10008e16: 7288                     jb 0x10008da0
10008e18: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008e1a: ff2495908e0010           jmp dword ptr [edx*4 + 0x10008e90]
10008e21: 8d4900                   lea ecx, [ecx]
10008e24: 878e0010748e             xchg dword ptr [esi - 0x718bf000], ecx
10008e2a: 0010                     add byte ptr [eax], dl
10008e2c: 6c                       insb byte ptr es:[edi], dx
10008e2d: 8e00                     mov es, word ptr [eax]
10008e2f: 10648e00                 adc byte ptr [esi + ecx*4], ah
10008e33: 105c8e00                 adc byte ptr [esi + ecx*4], bl
10008e37: 10548e00                 adc byte ptr [esi + ecx*4], dl
10008e3b: 104c8e00                 adc byte ptr [esi + ecx*4], cl
10008e3f: 10448e00                 adc byte ptr [esi + ecx*4], al
10008e43: 108b448ee489             adc byte ptr [ebx - 0x761b71bc], cl
10008e49: 44                       inc esp
10008e4a: 8f                       .byte 0x8f
10008e4b: e48b                     in al, 0x8b
10008e4d: 44                       inc esp
10008e4e: 8ee8                     mov gs, eax
10008e50: 89448fe8                 mov dword ptr [edi + ecx*4 - 0x18], eax
10008e54: 8b448eec                 mov eax, dword ptr [esi + ecx*4 - 0x14]
10008e58: 89448fec                 mov dword ptr [edi + ecx*4 - 0x14], eax
10008e5c: 8b448ef0                 mov eax, dword ptr [esi + ecx*4 - 0x10]
10008e60: 89448ff0                 mov dword ptr [edi + ecx*4 - 0x10], eax
10008e64: 8b448ef4                 mov eax, dword ptr [esi + ecx*4 - 0xc]
10008e68: 89448ff4                 mov dword ptr [edi + ecx*4 - 0xc], eax
10008e6c: 8b448ef8                 mov eax, dword ptr [esi + ecx*4 - 8]
10008e70: 89448ff8                 mov dword ptr [edi + ecx*4 - 8], eax
10008e74: 8b448efc                 mov eax, dword ptr [esi + ecx*4 - 4]
10008e78: 89448ffc                 mov dword ptr [edi + ecx*4 - 4], eax
10008e7c: 8d048d00000000           lea eax, [ecx*4]
10008e83: 03f0                     add esi, eax
10008e85: 03f8                     add edi, eax
10008e87: ff2495908e0010           jmp dword ptr [edx*4 + 0x10008e90]
10008e8e: 8bff                     mov edi, edi
10008e90: a08e0010a8               mov al, byte ptr [0xa810008e]
10008e95: 8e00                     mov es, word ptr [eax]
10008e97: 10b48e0010c88e           adc byte ptr [esi + ecx*4 - 0x7137f000], dh
10008e9e: 0010                     add byte ptr [eax], dl
10008ea0: 8b4508                   mov eax, dword ptr [ebp + 8]
10008ea3: 5e                       pop esi
10008ea4: 5f                       pop edi
10008ea5: c9                       leave 
10008ea6: c3                       ret 
10008ea7: 90                       nop 
10008ea8: 8a06                     mov al, byte ptr [esi]
10008eaa: 8807                     mov byte ptr [edi], al
10008eac: 8b4508                   mov eax, dword ptr [ebp + 8]
10008eaf: 5e                       pop esi
10008eb0: 5f                       pop edi
10008eb1: c9                       leave 
10008eb2: c3                       ret 
10008eb3: 90                       nop 
10008eb4: 8a06                     mov al, byte ptr [esi]
10008eb6: 8807                     mov byte ptr [edi], al
10008eb8: 8a4601                   mov al, byte ptr [esi + 1]
10008ebb: 884701                   mov byte ptr [edi + 1], al
10008ebe: 8b4508                   mov eax, dword ptr [ebp + 8]
10008ec1: 5e                       pop esi
10008ec2: 5f                       pop edi
10008ec3: c9                       leave 
10008ec4: c3                       ret 
10008ec5: 8d4900                   lea ecx, [ecx]
10008ec8: 8a06                     mov al, byte ptr [esi]
10008eca: 8807                     mov byte ptr [edi], al
10008ecc: 8a4601                   mov al, byte ptr [esi + 1]
10008ecf: 884701                   mov byte ptr [edi + 1], al
10008ed2: 8a4602                   mov al, byte ptr [esi + 2]
10008ed5: 884702                   mov byte ptr [edi + 2], al
10008ed8: 8b4508                   mov eax, dword ptr [ebp + 8]
10008edb: 5e                       pop esi
10008edc: 5f                       pop edi
10008edd: c9                       leave 
10008ede: c3                       ret 
10008edf: 90                       nop 
10008ee0: 8d7431fc                 lea esi, [ecx + esi - 4]
10008ee4: 8d7c39fc                 lea edi, [ecx + edi - 4]
10008ee8: f7c703000000             test edi, 3
10008eee: 7524                     jne 0x10008f14
10008ef0: c1e902                   shr ecx, 2
10008ef3: 83e203                   and edx, 3
10008ef6: 83f908                   cmp ecx, 8
10008ef9: 720d                     jb 0x10008f08
10008efb: fd                       std 
10008efc: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008efe: fc                       cld 
10008eff: ff24952c900010           jmp dword ptr [edx*4 + 0x1000902c]
10008f06: 8bff                     mov edi, edi
10008f08: f7d9                     neg ecx
10008f0a: ff248ddc8f0010           jmp dword ptr [ecx*4 + 0x10008fdc]
10008f11: 8d4900                   lea ecx, [ecx]
10008f14: 8bc7                     mov eax, edi
10008f16: ba03000000               mov edx, 3
10008f1b: 83f904                   cmp ecx, 4
10008f1e: 720c                     jb 0x10008f2c
10008f20: 83e003                   and eax, 3
10008f23: 2bc8                     sub ecx, eax
10008f25: ff2485308f0010           jmp dword ptr [eax*4 + 0x10008f30]
10008f2c: ff248d2c900010           jmp dword ptr [ecx*4 + 0x1000902c]
10008f33: 90                       nop 
10008f34: 40                       inc eax
10008f35: 8f00                     pop dword ptr [eax]
10008f37: 10648f00                 adc byte ptr [edi + ecx*4], ah
10008f3b: 108c8f00108a46           adc byte ptr [edi + ecx*4 + 0x468a1000], cl
10008f42: 0323                     add esp, dword ptr [ebx]
10008f44: d188470383ee             ror dword ptr [eax - 0x117cfcb9], 1
10008f4a: 01c1                     add ecx, eax
10008f4c: e90283ef01               jmp 0x11f01253
10008f51: 83f908                   cmp ecx, 8
10008f54: 72b2                     jb 0x10008f08
10008f56: fd                       std 
10008f57: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008f59: fc                       cld 
10008f5a: ff24952c900010           jmp dword ptr [edx*4 + 0x1000902c]
10008f61: 8d4900                   lea ecx, [ecx]
10008f64: 8a4603                   mov al, byte ptr [esi + 3]
10008f67: 23d1                     and edx, ecx
10008f69: 884703                   mov byte ptr [edi + 3], al
10008f6c: 8a4602                   mov al, byte ptr [esi + 2]
10008f6f: c1e902                   shr ecx, 2
10008f72: 884702                   mov byte ptr [edi + 2], al
10008f75: 83ee02                   sub esi, 2
10008f78: 83ef02                   sub edi, 2
10008f7b: 83f908                   cmp ecx, 8
10008f7e: 7288                     jb 0x10008f08
10008f80: fd                       std 
10008f81: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008f83: fc                       cld 
10008f84: ff24952c900010           jmp dword ptr [edx*4 + 0x1000902c]
10008f8b: 90                       nop 
10008f8c: 8a4603                   mov al, byte ptr [esi + 3]
10008f8f: 23d1                     and edx, ecx
10008f91: 884703                   mov byte ptr [edi + 3], al
10008f94: 8a4602                   mov al, byte ptr [esi + 2]
10008f97: 884702                   mov byte ptr [edi + 2], al
10008f9a: 8a4601                   mov al, byte ptr [esi + 1]
10008f9d: c1e902                   shr ecx, 2
10008fa0: 884701                   mov byte ptr [edi + 1], al
10008fa3: 83ee03                   sub esi, 3
10008fa6: 83ef03                   sub edi, 3
10008fa9: 83f908                   cmp ecx, 8
10008fac: 0f8256ffffff             jb 0x10008f08
10008fb2: fd                       std 
10008fb3: f3a5                     rep movsd dword ptr es:[edi], dword ptr [esi]
10008fb5: fc                       cld 
10008fb6: ff24952c900010           jmp dword ptr [edx*4 + 0x1000902c]
10008fbd: 8d4900                   lea ecx, [ecx]
10008fc0: e08f                     loopne 0x10008f51
10008fc2: 0010                     add byte ptr [eax], dl
10008fc4: e88f0010f0               call 0x109058
10008fc9: 8f00                     pop dword ptr [eax]
10008fcb: 10f8                     adc al, bh
10008fcd: 8f00                     pop dword ptr [eax]
10008fcf: 1000                     adc byte ptr [eax], al
10008fd1: 90                       nop 
10008fd2: 0010                     add byte ptr [eax], dl
10008fd4: 089000101090             or byte ptr [eax - 0x6feff000], dl
10008fda: 0010                     add byte ptr [eax], dl
10008fdc: 239000108b44             and edx, dword ptr [eax + 0x448b1000]
10008fe2: 8e1c89                   mov ds, word ptr [ecx + ecx*4]
10008fe5: 44                       inc esp
10008fe6: 8f                       .byte 0x8f
10008fe7: 1c8b                     sbb al, 0x8b
10008fe9: 44                       inc esp
10008fea: 8e18                     mov ds, word ptr [eax]
10008fec: 89448f18                 mov dword ptr [edi + ecx*4 + 0x18], eax
10008ff0: 8b448e14                 mov eax, dword ptr [esi + ecx*4 + 0x14]
10008ff4: 89448f14                 mov dword ptr [edi + ecx*4 + 0x14], eax
10008ff8: 8b448e10                 mov eax, dword ptr [esi + ecx*4 + 0x10]
10008ffc: 89448f10                 mov dword ptr [edi + ecx*4 + 0x10], eax
10009000: 8b448e0c                 mov eax, dword ptr [esi + ecx*4 + 0xc]
10009004: 89448f0c                 mov dword ptr [edi + ecx*4 + 0xc], eax
10009008: 8b448e08                 mov eax, dword ptr [esi + ecx*4 + 8]
1000900c: 89448f08                 mov dword ptr [edi + ecx*4 + 8], eax
10009010: 8b448e04                 mov eax, dword ptr [esi + ecx*4 + 4]
10009014: 89448f04                 mov dword ptr [edi + ecx*4 + 4], eax
10009018: 8d048d00000000           lea eax, [ecx*4]
1000901f: 03f0                     add esi, eax
10009021: 03f8                     add edi, eax
10009023: ff24952c900010           jmp dword ptr [edx*4 + 0x1000902c]
1000902a: 8bff                     mov edi, edi
1000902c: 3c90                     cmp al, 0x90
1000902e: 0010                     add byte ptr [eax], dl
10009030: 44                       inc esp
10009031: 90                       nop 
10009032: 0010                     add byte ptr [eax], dl
10009034: 54                       push esp
10009035: 90                       nop 
10009036: 0010                     add byte ptr [eax], dl
10009038: 689000108b               push 0x8b100090
1000903d: 45                       inc ebp
1000903e: 085e5f                   or byte ptr [esi + 0x5f], bl
10009041: c9                       leave 
10009042: c3                       ret 
10009043: 90                       nop 
10009044: 8a4603                   mov al, byte ptr [esi + 3]
10009047: 884703                   mov byte ptr [edi + 3], al
1000904a: 8b4508                   mov eax, dword ptr [ebp + 8]
1000904d: 5e                       pop esi
1000904e: 5f                       pop edi
1000904f: c9                       leave 
10009050: c3                       ret 
10009051: 8d4900                   lea ecx, [ecx]
10009054: 8a4603                   mov al, byte ptr [esi + 3]
10009057: 884703                   mov byte ptr [edi + 3], al
1000905a: 8a4602                   mov al, byte ptr [esi + 2]
1000905d: 884702                   mov byte ptr [edi + 2], al
10009060: 8b4508                   mov eax, dword ptr [ebp + 8]
10009063: 5e                       pop esi
10009064: 5f                       pop edi
10009065: c9                       leave 
10009066: c3                       ret 
10009067: 90                       nop 
10009068: 8a4603                   mov al, byte ptr [esi + 3]
1000906b: 884703                   mov byte ptr [edi + 3], al
1000906e: 8a4602                   mov al, byte ptr [esi + 2]
10009071: 884702                   mov byte ptr [edi + 2], al
10009074: 8a4601                   mov al, byte ptr [esi + 1]
10009077: 884701                   mov byte ptr [edi + 1], al
1000907a: 8b4508                   mov eax, dword ptr [ebp + 8]
1000907d: 5e                       pop esi
1000907e: 5f                       pop edi
1000907f: c9                       leave 
10009080: c3                       ret 
10009081: 6a02                     push 2
10009083: e89fcdffff               call 0x10005e27
10009088: 59                       pop ecx
10009089: c3                       ret 
1000908a: cc                       int3 
1000908b: cc                       int3 
1000908c: cc                       int3 
1000908d: cc                       int3 
1000908e: cc                       int3 
1000908f: cc                       int3 
10009090: 51                       push ecx
10009091: 8d4c2408                 lea ecx, [esp + 8]
10009095: 2bc8                     sub ecx, eax
10009097: 83e10f                   and ecx, 0xf
1000909a: 03c1                     add eax, ecx
1000909c: 1bc9                     sbb ecx, ecx
1000909e: 0bc1                     or eax, ecx
100090a0: 59                       pop ecx
100090a1: e90a090000               jmp 0x100099b0
100090a6: 51                       push ecx
100090a7: 8d4c2408                 lea ecx, [esp + 8]
100090ab: 2bc8                     sub ecx, eax
100090ad: 83e107                   and ecx, 7
100090b0: 03c1                     add eax, ecx
100090b2: 1bc9                     sbb ecx, ecx
100090b4: 0bc1                     or eax, ecx
100090b6: 59                       pop ecx
100090b7: e9f4080000               jmp 0x100099b0
100090bc: 8bff                     mov edi, edi
100090be: 55                       push ebp
100090bf: 8bec                     mov ebp, esp
100090c1: 56                       push esi
100090c2: 8b7508                   mov esi, dword ptr [ebp + 8]
100090c5: 85f6                     test esi, esi
100090c7: 0f8463030000             je 0x10009430
100090cd: ff7604                   push dword ptr [esi + 4]
100090d0: e86dc0ffff               call 0x10005142
100090d5: ff7608                   push dword ptr [esi + 8]
100090d8: e865c0ffff               call 0x10005142
100090dd: ff760c                   push dword ptr [esi + 0xc]
100090e0: e85dc0ffff               call 0x10005142
100090e5: ff7610                   push dword ptr [esi + 0x10]
100090e8: e855c0ffff               call 0x10005142
100090ed: ff7614                   push dword ptr [esi + 0x14]
100090f0: e84dc0ffff               call 0x10005142
100090f5: ff7618                   push dword ptr [esi + 0x18]
100090f8: e845c0ffff               call 0x10005142
100090fd: ff36                     push dword ptr [esi]
100090ff: e83ec0ffff               call 0x10005142
10009104: ff7620                   push dword ptr [esi + 0x20]
10009107: e836c0ffff               call 0x10005142
1000910c: ff7624                   push dword ptr [esi + 0x24]
1000910f: e82ec0ffff               call 0x10005142
10009114: ff7628                   push dword ptr [esi + 0x28]
10009117: e826c0ffff               call 0x10005142
1000911c: ff762c                   push dword ptr [esi + 0x2c]
1000911f: e81ec0ffff               call 0x10005142
10009124: ff7630                   push dword ptr [esi + 0x30]
10009127: e816c0ffff               call 0x10005142
1000912c: ff7634                   push dword ptr [esi + 0x34]
1000912f: e80ec0ffff               call 0x10005142
10009134: ff761c                   push dword ptr [esi + 0x1c]
10009137: e806c0ffff               call 0x10005142
1000913c: ff7638                   push dword ptr [esi + 0x38]
1000913f: e8febfffff               call 0x10005142
10009144: ff763c                   push dword ptr [esi + 0x3c]
10009147: e8f6bfffff               call 0x10005142
1000914c: 83c440                   add esp, 0x40
1000914f: ff7640                   push dword ptr [esi + 0x40]
10009152: e8ebbfffff               call 0x10005142
10009157: ff7644                   push dword ptr [esi + 0x44]
1000915a: e8e3bfffff               call 0x10005142
1000915f: ff7648                   push dword ptr [esi + 0x48]
10009162: e8dbbfffff               call 0x10005142
10009167: ff764c                   push dword ptr [esi + 0x4c]
1000916a: e8d3bfffff               call 0x10005142
1000916f: ff7650                   push dword ptr [esi + 0x50]
10009172: e8cbbfffff               call 0x10005142
10009177: ff7654                   push dword ptr [esi + 0x54]
1000917a: e8c3bfffff               call 0x10005142
1000917f: ff7658                   push dword ptr [esi + 0x58]
10009182: e8bbbfffff               call 0x10005142
10009187: ff765c                   push dword ptr [esi + 0x5c]
1000918a: e8b3bfffff               call 0x10005142
1000918f: ff7660                   push dword ptr [esi + 0x60]
10009192: e8abbfffff               call 0x10005142
10009197: ff7664                   push dword ptr [esi + 0x64]
1000919a: e8a3bfffff               call 0x10005142
1000919f: ff7668                   push dword ptr [esi + 0x68]
100091a2: e89bbfffff               call 0x10005142
100091a7: ff766c                   push dword ptr [esi + 0x6c]
100091aa: e893bfffff               call 0x10005142
100091af: ff7670                   push dword ptr [esi + 0x70]
100091b2: e88bbfffff               call 0x10005142
100091b7: ff7674                   push dword ptr [esi + 0x74]
100091ba: e883bfffff               call 0x10005142
100091bf: ff7678                   push dword ptr [esi + 0x78]
100091c2: e87bbfffff               call 0x10005142
100091c7: ff767c                   push dword ptr [esi + 0x7c]
100091ca: e873bfffff               call 0x10005142
100091cf: 83c440                   add esp, 0x40
100091d2: ffb680000000             push dword ptr [esi + 0x80]
100091d8: e865bfffff               call 0x10005142
100091dd: ffb684000000             push dword ptr [esi + 0x84]
100091e3: e85abfffff               call 0x10005142
100091e8: ffb688000000             push dword ptr [esi + 0x88]
100091ee: e84fbfffff               call 0x10005142
100091f3: ffb68c000000             push dword ptr [esi + 0x8c]
100091f9: e844bfffff               call 0x10005142
100091fe: ffb690000000             push dword ptr [esi + 0x90]
10009204: e839bfffff               call 0x10005142
10009209: ffb694000000             push dword ptr [esi + 0x94]
1000920f: e82ebfffff               call 0x10005142
10009214: ffb698000000             push dword ptr [esi + 0x98]
1000921a: e823bfffff               call 0x10005142
1000921f: ffb69c000000             push dword ptr [esi + 0x9c]
10009225: e818bfffff               call 0x10005142
1000922a: ffb6a0000000             push dword ptr [esi + 0xa0]
10009230: e80dbfffff               call 0x10005142
10009235: ffb6a4000000             push dword ptr [esi + 0xa4]
1000923b: e802bfffff               call 0x10005142
10009240: ffb6a8000000             push dword ptr [esi + 0xa8]
10009246: e8f7beffff               call 0x10005142
1000924b: ffb6bc000000             push dword ptr [esi + 0xbc]
10009251: e8ecbeffff               call 0x10005142
10009256: ffb6c0000000             push dword ptr [esi + 0xc0]
1000925c: e8e1beffff               call 0x10005142
10009261: ffb6c4000000             push dword ptr [esi + 0xc4]
10009267: e8d6beffff               call 0x10005142
1000926c: ffb6c8000000             push dword ptr [esi + 0xc8]
10009272: e8cbbeffff               call 0x10005142
10009277: ffb6cc000000             push dword ptr [esi + 0xcc]
1000927d: e8c0beffff               call 0x10005142
10009282: 83c440                   add esp, 0x40
10009285: ffb6d0000000             push dword ptr [esi + 0xd0]
1000928b: e8b2beffff               call 0x10005142
10009290: ffb6b8000000             push dword ptr [esi + 0xb8]
10009296: e8a7beffff               call 0x10005142
1000929b: ffb6d8000000             push dword ptr [esi + 0xd8]
100092a1: e89cbeffff               call 0x10005142
100092a6: ffb6dc000000             push dword ptr [esi + 0xdc]
100092ac: e891beffff               call 0x10005142
100092b1: ffb6e0000000             push dword ptr [esi + 0xe0]
100092b7: e886beffff               call 0x10005142
100092bc: ffb6e4000000             push dword ptr [esi + 0xe4]
100092c2: e87bbeffff               call 0x10005142
100092c7: ffb6e8000000             push dword ptr [esi + 0xe8]
100092cd: e870beffff               call 0x10005142
100092d2: ffb6ec000000             push dword ptr [esi + 0xec]
100092d8: e865beffff               call 0x10005142
100092dd: ffb6d4000000             push dword ptr [esi + 0xd4]
100092e3: e85abeffff               call 0x10005142
100092e8: ffb6f0000000             push dword ptr [esi + 0xf0]
100092ee: e84fbeffff               call 0x10005142
100092f3: ffb6f4000000             push dword ptr [esi + 0xf4]
100092f9: e844beffff               call 0x10005142
100092fe: ffb6f8000000             push dword ptr [esi + 0xf8]
10009304: e839beffff               call 0x10005142
10009309: ffb6fc000000             push dword ptr [esi + 0xfc]
1000930f: e82ebeffff               call 0x10005142
10009314: ffb600010000             push dword ptr [esi + 0x100]
1000931a: e823beffff               call 0x10005142
1000931f: ffb604010000             push dword ptr [esi + 0x104]
10009325: e818beffff               call 0x10005142
1000932a: ffb608010000             push dword ptr [esi + 0x108]
10009330: e80dbeffff               call 0x10005142
10009335: 83c440                   add esp, 0x40
10009338: ffb60c010000             push dword ptr [esi + 0x10c]
1000933e: e8ffbdffff               call 0x10005142
10009343: ffb610010000             push dword ptr [esi + 0x110]
10009349: e8f4bdffff               call 0x10005142
1000934e: ffb614010000             push dword ptr [esi + 0x114]
10009354: e8e9bdffff               call 0x10005142
10009359: ffb618010000             push dword ptr [esi + 0x118]
1000935f: e8debdffff               call 0x10005142
10009364: ffb61c010000             push dword ptr [esi + 0x11c]
1000936a: e8d3bdffff               call 0x10005142
1000936f: ffb620010000             push dword ptr [esi + 0x120]
10009375: e8c8bdffff               call 0x10005142
1000937a: ffb624010000             push dword ptr [esi + 0x124]
10009380: e8bdbdffff               call 0x10005142
10009385: ffb628010000             push dword ptr [esi + 0x128]
1000938b: e8b2bdffff               call 0x10005142
10009390: ffb62c010000             push dword ptr [esi + 0x12c]
10009396: e8a7bdffff               call 0x10005142
1000939b: ffb630010000             push dword ptr [esi + 0x130]
100093a1: e89cbdffff               call 0x10005142
100093a6: ffb634010000             push dword ptr [esi + 0x134]
100093ac: e891bdffff               call 0x10005142
100093b1: ffb638010000             push dword ptr [esi + 0x138]
100093b7: e886bdffff               call 0x10005142
100093bc: ffb63c010000             push dword ptr [esi + 0x13c]
100093c2: e87bbdffff               call 0x10005142
100093c7: ffb640010000             push dword ptr [esi + 0x140]
100093cd: e870bdffff               call 0x10005142
100093d2: ffb644010000             push dword ptr [esi + 0x144]
100093d8: e865bdffff               call 0x10005142
100093dd: ffb648010000             push dword ptr [esi + 0x148]
100093e3: e85abdffff               call 0x10005142
100093e8: 83c440                   add esp, 0x40
100093eb: ffb64c010000             push dword ptr [esi + 0x14c]
100093f1: e84cbdffff               call 0x10005142
100093f6: ffb650010000             push dword ptr [esi + 0x150]
100093fc: e841bdffff               call 0x10005142
10009401: ffb654010000             push dword ptr [esi + 0x154]
10009407: e836bdffff               call 0x10005142
1000940c: ffb658010000             push dword ptr [esi + 0x158]
10009412: e82bbdffff               call 0x10005142
10009417: ffb65c010000             push dword ptr [esi + 0x15c]
1000941d: e820bdffff               call 0x10005142
10009422: ffb660010000             push dword ptr [esi + 0x160]
10009428: e815bdffff               call 0x10005142
1000942d: 83c418                   add esp, 0x18
10009430: 5e                       pop esi
10009431: 5d                       pop ebp
10009432: c3                       ret 
10009433: 8bff                     mov edi, edi
10009435: 55                       push ebp
10009436: 8bec                     mov ebp, esp
10009438: 56                       push esi
10009439: 8b7508                   mov esi, dword ptr [ebp + 8]
1000943c: 85f6                     test esi, esi
1000943e: 7459                     je 0x10009499
10009440: 8b06                     mov eax, dword ptr [esi]
10009442: 3b0538fb0010             cmp eax, dword ptr [0x1000fb38]
10009448: 7407                     je 0x10009451
1000944a: 50                       push eax
1000944b: e8f2bcffff               call 0x10005142
10009450: 59                       pop ecx
10009451: 8b4604                   mov eax, dword ptr [esi + 4]
10009454: 3b053cfb0010             cmp eax, dword ptr [0x1000fb3c]
1000945a: 7407                     je 0x10009463
1000945c: 50                       push eax
1000945d: e8e0bcffff               call 0x10005142
10009462: 59                       pop ecx
10009463: 8b4608                   mov eax, dword ptr [esi + 8]
10009466: 3b0540fb0010             cmp eax, dword ptr [0x1000fb40]
1000946c: 7407                     je 0x10009475
1000946e: 50                       push eax
1000946f: e8cebcffff               call 0x10005142
10009474: 59                       pop ecx
10009475: 8b4630                   mov eax, dword ptr [esi + 0x30]
10009478: 3b0568fb0010             cmp eax, dword ptr [0x1000fb68]
1000947e: 7407                     je 0x10009487
10009480: 50                       push eax
10009481: e8bcbcffff               call 0x10005142
10009486: 59                       pop ecx
10009487: 8b7634                   mov esi, dword ptr [esi + 0x34]
1000948a: 3b356cfb0010             cmp esi, dword ptr [0x1000fb6c]
10009490: 7407                     je 0x10009499
10009492: 56                       push esi
10009493: e8aabcffff               call 0x10005142
10009498: 59                       pop ecx
10009499: 5e                       pop esi
1000949a: 5d                       pop ebp
1000949b: c3                       ret 
1000949c: 8bff                     mov edi, edi
1000949e: 55                       push ebp
1000949f: 8bec                     mov ebp, esp
100094a1: 56                       push esi
100094a2: 8b7508                   mov esi, dword ptr [ebp + 8]
100094a5: 85f6                     test esi, esi
100094a7: 0f84ea000000             je 0x10009597
100094ad: 8b460c                   mov eax, dword ptr [esi + 0xc]
100094b0: 3b0544fb0010             cmp eax, dword ptr [0x1000fb44]
100094b6: 7407                     je 0x100094bf
100094b8: 50                       push eax
100094b9: e884bcffff               call 0x10005142
100094be: 59                       pop ecx
100094bf: 8b4610                   mov eax, dword ptr [esi + 0x10]
100094c2: 3b0548fb0010             cmp eax, dword ptr [0x1000fb48]
100094c8: 7407                     je 0x100094d1
100094ca: 50                       push eax
100094cb: e872bcffff               call 0x10005142
100094d0: 59                       pop ecx
100094d1: 8b4614                   mov eax, dword ptr [esi + 0x14]
100094d4: 3b054cfb0010             cmp eax, dword ptr [0x1000fb4c]
100094da: 7407                     je 0x100094e3
100094dc: 50                       push eax
100094dd: e860bcffff               call 0x10005142
100094e2: 59                       pop ecx
100094e3: 8b4618                   mov eax, dword ptr [esi + 0x18]
100094e6: 3b0550fb0010             cmp eax, dword ptr [0x1000fb50]
100094ec: 7407                     je 0x100094f5
100094ee: 50                       push eax
100094ef: e84ebcffff               call 0x10005142
100094f4: 59                       pop ecx
100094f5: 8b461c                   mov eax, dword ptr [esi + 0x1c]
100094f8: 3b0554fb0010             cmp eax, dword ptr [0x1000fb54]
100094fe: 7407                     je 0x10009507
10009500: 50                       push eax
10009501: e83cbcffff               call 0x10005142
10009506: 59                       pop ecx
10009507: 8b4620                   mov eax, dword ptr [esi + 0x20]
1000950a: 3b0558fb0010             cmp eax, dword ptr [0x1000fb58]
10009510: 7407                     je 0x10009519
10009512: 50                       push eax
10009513: e82abcffff               call 0x10005142
10009518: 59                       pop ecx
10009519: 8b4624                   mov eax, dword ptr [esi + 0x24]
1000951c: 3b055cfb0010             cmp eax, dword ptr [0x1000fb5c]
10009522: 7407                     je 0x1000952b
10009524: 50                       push eax
10009525: e818bcffff               call 0x10005142
1000952a: 59                       pop ecx
1000952b: 8b4638                   mov eax, dword ptr [esi + 0x38]
1000952e: 3b0570fb0010             cmp eax, dword ptr [0x1000fb70]
10009534: 7407                     je 0x1000953d
10009536: 50                       push eax
10009537: e806bcffff               call 0x10005142
1000953c: 59                       pop ecx
1000953d: 8b463c                   mov eax, dword ptr [esi + 0x3c]
10009540: 3b0574fb0010             cmp eax, dword ptr [0x1000fb74]
10009546: 7407                     je 0x1000954f
10009548: 50                       push eax
10009549: e8f4bbffff               call 0x10005142
1000954e: 59                       pop ecx
1000954f: 8b4640                   mov eax, dword ptr [esi + 0x40]
10009552: 3b0578fb0010             cmp eax, dword ptr [0x1000fb78]
10009558: 7407                     je 0x10009561
1000955a: 50                       push eax
1000955b: e8e2bbffff               call 0x10005142
10009560: 59                       pop ecx
10009561: 8b4644                   mov eax, dword ptr [esi + 0x44]
10009564: 3b057cfb0010             cmp eax, dword ptr [0x1000fb7c]
1000956a: 7407                     je 0x10009573
1000956c: 50                       push eax
1000956d: e8d0bbffff               call 0x10005142
10009572: 59                       pop ecx
10009573: 8b4648                   mov eax, dword ptr [esi + 0x48]
10009576: 3b0580fb0010             cmp eax, dword ptr [0x1000fb80]
1000957c: 7407                     je 0x10009585
1000957e: 50                       push eax
1000957f: e8bebbffff               call 0x10005142
10009584: 59                       pop ecx
10009585: 8b764c                   mov esi, dword ptr [esi + 0x4c]
10009588: 3b3584fb0010             cmp esi, dword ptr [0x1000fb84]
1000958e: 7407                     je 0x10009597
10009590: 56                       push esi
10009591: e8acbbffff               call 0x10005142
10009596: 59                       pop ecx
10009597: 5e                       pop esi
10009598: 5d                       pop ebp
10009599: c3                       ret 
1000959a: 8bff                     mov edi, edi
1000959c: 55                       push ebp
1000959d: 8bec                     mov ebp, esp
1000959f: 83ec10                   sub esp, 0x10
100095a2: a180f00010               mov eax, dword ptr [0x1000f080]
100095a7: 33c5                     xor eax, ebp
100095a9: 8945fc                   mov dword ptr [ebp - 4], eax
100095ac: 8b5518                   mov edx, dword ptr [ebp + 0x18]
100095af: 53                       push ebx
100095b0: 33db                     xor ebx, ebx
100095b2: 56                       push esi
100095b3: 57                       push edi
100095b4: 3bd3                     cmp edx, ebx
100095b6: 7e1f                     jle 0x100095d7
100095b8: 8b4514                   mov eax, dword ptr [ebp + 0x14]
100095bb: 8bca                     mov ecx, edx
100095bd: 49                       dec ecx
100095be: 3818                     cmp byte ptr [eax], bl
100095c0: 7408                     je 0x100095ca
100095c2: 40                       inc eax
100095c3: 3bcb                     cmp ecx, ebx
100095c5: 75f6                     jne 0x100095bd
100095c7: 83c9ff                   or ecx, 0xffffffff
100095ca: 8bc2                     mov eax, edx
100095cc: 2bc1                     sub eax, ecx
100095ce: 48                       dec eax
100095cf: 3bc2                     cmp eax, edx
100095d1: 7d01                     jge 0x100095d4
100095d3: 40                       inc eax
100095d4: 894518                   mov dword ptr [ebp + 0x18], eax
100095d7: 895df8                   mov dword ptr [ebp - 8], ebx
100095da: 395d24                   cmp dword ptr [ebp + 0x24], ebx
100095dd: 750b                     jne 0x100095ea
100095df: 8b4508                   mov eax, dword ptr [ebp + 8]
100095e2: 8b00                     mov eax, dword ptr [eax]
100095e4: 8b4004                   mov eax, dword ptr [eax + 4]
100095e7: 894524                   mov dword ptr [ebp + 0x24], eax
100095ea: 8b3514b00010             mov esi, dword ptr [0x1000b014]
100095f0: 33c0                     xor eax, eax
100095f2: 395d28                   cmp dword ptr [ebp + 0x28], ebx
100095f5: 53                       push ebx
100095f6: 53                       push ebx
100095f7: ff7518                   push dword ptr [ebp + 0x18]
100095fa: 0f95c0                   setne al
100095fd: ff7514                   push dword ptr [ebp + 0x14]
10009600: 8d04c501000000           lea eax, [eax*8 + 1]
10009607: 50                       push eax
10009608: ff7524                   push dword ptr [ebp + 0x24]
1000960b: ffd6                     call esi
1000960d: 8bf8                     mov edi, eax
1000960f: 897df0                   mov dword ptr [ebp - 0x10], edi
10009612: 3bfb                     cmp edi, ebx
10009614: 7507                     jne 0x1000961d
10009616: 33c0                     xor eax, eax
10009618: e952010000               jmp 0x1000976f
1000961d: 7e43                     jle 0x10009662
1000961f: 6ae0                     push -0x20
10009621: 33d2                     xor edx, edx
10009623: 58                       pop eax
10009624: f7f7                     div edi
10009626: 83f802                   cmp eax, 2
10009629: 7237                     jb 0x10009662
1000962b: 8d443f08                 lea eax, [edi + edi + 8]
1000962f: 3d00040000               cmp eax, 0x400
10009634: 7713                     ja 0x10009649
10009636: e855faffff               call 0x10009090
1000963b: 8bc4                     mov eax, esp
1000963d: 3bc3                     cmp eax, ebx
1000963f: 741c                     je 0x1000965d
10009641: c700cccc0000             mov dword ptr [eax], 0xcccc
10009647: eb11                     jmp 0x1000965a
10009649: 50                       push eax
1000964a: e82dbbffff               call 0x1000517c
1000964f: 59                       pop ecx
10009650: 3bc3                     cmp eax, ebx
10009652: 7409                     je 0x1000965d
10009654: c700dddd0000             mov dword ptr [eax], 0xdddd
1000965a: 83c008                   add eax, 8
1000965d: 8945f4                   mov dword ptr [ebp - 0xc], eax
10009660: eb03                     jmp 0x10009665
10009662: 895df4                   mov dword ptr [ebp - 0xc], ebx
10009665: 395df4                   cmp dword ptr [ebp - 0xc], ebx
10009668: 74ac                     je 0x10009616
1000966a: 57                       push edi
1000966b: ff75f4                   push dword ptr [ebp - 0xc]
1000966e: ff7518                   push dword ptr [ebp + 0x18]
10009671: ff7514                   push dword ptr [ebp + 0x14]
10009674: 6a01                     push 1
10009676: ff7524                   push dword ptr [ebp + 0x24]
10009679: ffd6                     call esi
1000967b: 85c0                     test eax, eax
1000967d: 0f84e0000000             je 0x10009763
10009683: 8b352cb00010             mov esi, dword ptr [0x1000b02c]
10009689: 53                       push ebx
1000968a: 53                       push ebx
1000968b: 57                       push edi
1000968c: ff75f4                   push dword ptr [ebp - 0xc]
1000968f: ff7510                   push dword ptr [ebp + 0x10]
10009692: ff750c                   push dword ptr [ebp + 0xc]
10009695: ffd6                     call esi
10009697: 8945f8                   mov dword ptr [ebp - 8], eax
1000969a: 3bc3                     cmp eax, ebx
1000969c: 0f84c1000000             je 0x10009763
100096a2: b900040000               mov ecx, 0x400
100096a7: 854d10                   test dword ptr [ebp + 0x10], ecx
100096aa: 7429                     je 0x100096d5
100096ac: 8b4520                   mov eax, dword ptr [ebp + 0x20]
100096af: 3bc3                     cmp eax, ebx
100096b1: 0f84ac000000             je 0x10009763
100096b7: 3945f8                   cmp dword ptr [ebp - 8], eax
100096ba: 0f8fa3000000             jg 0x10009763
100096c0: 50                       push eax
100096c1: ff751c                   push dword ptr [ebp + 0x1c]
100096c4: 57                       push edi
100096c5: ff75f4                   push dword ptr [ebp - 0xc]
100096c8: ff7510                   push dword ptr [ebp + 0x10]
100096cb: ff750c                   push dword ptr [ebp + 0xc]
100096ce: ffd6                     call esi
100096d0: e98e000000               jmp 0x10009763
100096d5: 8b7df8                   mov edi, dword ptr [ebp - 8]
100096d8: 3bfb                     cmp edi, ebx
100096da: 7e42                     jle 0x1000971e
100096dc: 6ae0                     push -0x20
100096de: 33d2                     xor edx, edx
100096e0: 58                       pop eax
100096e1: f7f7                     div edi
100096e3: 83f802                   cmp eax, 2
100096e6: 7236                     jb 0x1000971e
100096e8: 8d443f08                 lea eax, [edi + edi + 8]
100096ec: 3bc1                     cmp eax, ecx
100096ee: 7716                     ja 0x10009706
100096f0: e89bf9ffff               call 0x10009090
100096f5: 8bfc                     mov edi, esp
100096f7: 3bfb                     cmp edi, ebx
100096f9: 7468                     je 0x10009763
100096fb: c707cccc0000             mov dword ptr [edi], 0xcccc
10009701: 83c708                   add edi, 8
10009704: eb1a                     jmp 0x10009720
10009706: 50                       push eax
10009707: e870baffff               call 0x1000517c
1000970c: 59                       pop ecx
1000970d: 3bc3                     cmp eax, ebx
1000970f: 7409                     je 0x1000971a
10009711: c700dddd0000             mov dword ptr [eax], 0xdddd
10009717: 83c008                   add eax, 8
1000971a: 8bf8                     mov edi, eax
1000971c: eb02                     jmp 0x10009720
1000971e: 33ff                     xor edi, edi
10009720: 3bfb                     cmp edi, ebx
10009722: 743f                     je 0x10009763
10009724: ff75f8                   push dword ptr [ebp - 8]
10009727: 57                       push edi
10009728: ff75f0                   push dword ptr [ebp - 0x10]
1000972b: ff75f4                   push dword ptr [ebp - 0xc]
1000972e: ff7510                   push dword ptr [ebp + 0x10]
10009731: ff750c                   push dword ptr [ebp + 0xc]
10009734: ffd6                     call esi
10009736: 85c0                     test eax, eax
10009738: 7422                     je 0x1000975c
1000973a: 53                       push ebx
1000973b: 53                       push ebx
1000973c: 395d20                   cmp dword ptr [ebp + 0x20], ebx
1000973f: 7504                     jne 0x10009745
10009741: 53                       push ebx
10009742: 53                       push ebx
10009743: eb06                     jmp 0x1000974b
10009745: ff7520                   push dword ptr [ebp + 0x20]
10009748: ff751c                   push dword ptr [ebp + 0x1c]
1000974b: ff75f8                   push dword ptr [ebp - 8]
1000974e: 57                       push edi
1000974f: 53                       push ebx
10009750: ff7524                   push dword ptr [ebp + 0x24]
10009753: ff15c0b00010             call dword ptr [0x1000b0c0]
10009759: 8945f8                   mov dword ptr [ebp - 8], eax
1000975c: 57                       push edi
1000975d: e8f5e6ffff               call 0x10007e57
10009762: 59                       pop ecx
10009763: ff75f4                   push dword ptr [ebp - 0xc]
10009766: e8ece6ffff               call 0x10007e57
1000976b: 8b45f8                   mov eax, dword ptr [ebp - 8]
1000976e: 59                       pop ecx
1000976f: 8d65e4                   lea esp, [ebp - 0x1c]
10009772: 5f                       pop edi
10009773: 5e                       pop esi
10009774: 5b                       pop ebx
10009775: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
10009778: 33cd                     xor ecx, ebp
1000977a: e83bb4ffff               call 0x10004bba
1000977f: c9                       leave 
10009780: c3                       ret 
10009781: 8bff                     mov edi, edi
10009783: 55                       push ebp
10009784: 8bec                     mov ebp, esp
10009786: 83ec10                   sub esp, 0x10
10009789: ff7508                   push dword ptr [ebp + 8]
1000978c: 8d4df0                   lea ecx, [ebp - 0x10]
1000978f: e8e3e6ffff               call 0x10007e77
10009794: ff7528                   push dword ptr [ebp + 0x28]
10009797: 8d45f0                   lea eax, [ebp - 0x10]
1000979a: ff7524                   push dword ptr [ebp + 0x24]
1000979d: ff7520                   push dword ptr [ebp + 0x20]
100097a0: ff751c                   push dword ptr [ebp + 0x1c]
100097a3: ff7518                   push dword ptr [ebp + 0x18]
100097a6: ff7514                   push dword ptr [ebp + 0x14]
100097a9: ff7510                   push dword ptr [ebp + 0x10]
100097ac: ff750c                   push dword ptr [ebp + 0xc]
100097af: 50                       push eax
100097b0: e8e5fdffff               call 0x1000959a
100097b5: 83c424                   add esp, 0x24
100097b8: 807dfc00                 cmp byte ptr [ebp - 4], 0
100097bc: 7407                     je 0x100097c5
100097be: 8b4df8                   mov ecx, dword ptr [ebp - 8]
100097c1: 836170fd                 and dword ptr [ecx + 0x70], 0xfffffffd
100097c5: c9                       leave 
100097c6: c3                       ret 
100097c7: 8bff                     mov edi, edi
100097c9: 55                       push ebp
100097ca: 8bec                     mov ebp, esp
100097cc: 51                       push ecx
100097cd: 51                       push ecx
100097ce: a180f00010               mov eax, dword ptr [0x1000f080]
100097d3: 33c5                     xor eax, ebp
100097d5: 8945fc                   mov dword ptr [ebp - 4], eax
100097d8: 53                       push ebx
100097d9: 33db                     xor ebx, ebx
100097db: 56                       push esi
100097dc: 57                       push edi
100097dd: 895df8                   mov dword ptr [ebp - 8], ebx
100097e0: 395d1c                   cmp dword ptr [ebp + 0x1c], ebx
100097e3: 750b                     jne 0x100097f0
100097e5: 8b4508                   mov eax, dword ptr [ebp + 8]
100097e8: 8b00                     mov eax, dword ptr [eax]
100097ea: 8b4004                   mov eax, dword ptr [eax + 4]
100097ed: 89451c                   mov dword ptr [ebp + 0x1c], eax
100097f0: 8b3514b00010             mov esi, dword ptr [0x1000b014]
100097f6: 33c0                     xor eax, eax
100097f8: 395d20                   cmp dword ptr [ebp + 0x20], ebx
100097fb: 53                       push ebx
100097fc: 53                       push ebx
100097fd: ff7514                   push dword ptr [ebp + 0x14]
10009800: 0f95c0                   setne al
10009803: ff7510                   push dword ptr [ebp + 0x10]
10009806: 8d04c501000000           lea eax, [eax*8 + 1]
1000980d: 50                       push eax
1000980e: ff751c                   push dword ptr [ebp + 0x1c]
10009811: ffd6                     call esi
10009813: 8bf8                     mov edi, eax
10009815: 3bfb                     cmp edi, ebx
10009817: 7504                     jne 0x1000981d
10009819: 33c0                     xor eax, eax
1000981b: eb7f                     jmp 0x1000989c
1000981d: 7e3c                     jle 0x1000985b
1000981f: 81fff0ffff7f             cmp edi, 0x7ffffff0
10009825: 7734                     ja 0x1000985b
10009827: 8d443f08                 lea eax, [edi + edi + 8]
1000982b: 3d00040000               cmp eax, 0x400
10009830: 7713                     ja 0x10009845
10009832: e859f8ffff               call 0x10009090
10009837: 8bc4                     mov eax, esp
10009839: 3bc3                     cmp eax, ebx
1000983b: 741c                     je 0x10009859
1000983d: c700cccc0000             mov dword ptr [eax], 0xcccc
10009843: eb11                     jmp 0x10009856
10009845: 50                       push eax
10009846: e831b9ffff               call 0x1000517c
1000984b: 59                       pop ecx
1000984c: 3bc3                     cmp eax, ebx
1000984e: 7409                     je 0x10009859
10009850: c700dddd0000             mov dword ptr [eax], 0xdddd
10009856: 83c008                   add eax, 8
10009859: 8bd8                     mov ebx, eax
1000985b: 85db                     test ebx, ebx
1000985d: 74ba                     je 0x10009819
1000985f: 8d043f                   lea eax, [edi + edi]
10009862: 50                       push eax
10009863: 6a00                     push 0
10009865: 53                       push ebx
10009866: e855f2ffff               call 0x10008ac0
1000986b: 83c40c                   add esp, 0xc
1000986e: 57                       push edi
1000986f: 53                       push ebx
10009870: ff7514                   push dword ptr [ebp + 0x14]
10009873: ff7510                   push dword ptr [ebp + 0x10]
10009876: 6a01                     push 1
10009878: ff751c                   push dword ptr [ebp + 0x1c]
1000987b: ffd6                     call esi
1000987d: 85c0                     test eax, eax
1000987f: 7411                     je 0x10009892
10009881: ff7518                   push dword ptr [ebp + 0x18]
10009884: 50                       push eax
10009885: 53                       push ebx
10009886: ff750c                   push dword ptr [ebp + 0xc]
10009889: ff1508b00010             call dword ptr [0x1000b008]
1000988f: 8945f8                   mov dword ptr [ebp - 8], eax
10009892: 53                       push ebx
10009893: e8bfe5ffff               call 0x10007e57
10009898: 8b45f8                   mov eax, dword ptr [ebp - 8]
1000989b: 59                       pop ecx
1000989c: 8d65ec                   lea esp, [ebp - 0x14]
1000989f: 5f                       pop edi
100098a0: 5e                       pop esi
100098a1: 5b                       pop ebx
100098a2: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
100098a5: 33cd                     xor ecx, ebp
100098a7: e80eb3ffff               call 0x10004bba
100098ac: c9                       leave 
100098ad: c3                       ret 
100098ae: 8bff                     mov edi, edi
100098b0: 55                       push ebp
100098b1: 8bec                     mov ebp, esp
100098b3: 83ec10                   sub esp, 0x10
100098b6: ff7508                   push dword ptr [ebp + 8]
100098b9: 8d4df0                   lea ecx, [ebp - 0x10]
100098bc: e8b6e5ffff               call 0x10007e77
100098c1: ff7524                   push dword ptr [ebp + 0x24]
100098c4: 8d45f0                   lea eax, [ebp - 0x10]
100098c7: ff751c                   push dword ptr [ebp + 0x1c]
100098ca: ff7518                   push dword ptr [ebp + 0x18]
100098cd: ff7514                   push dword ptr [ebp + 0x14]
100098d0: ff7510                   push dword ptr [ebp + 0x10]
100098d3: ff750c                   push dword ptr [ebp + 0xc]
100098d6: 50                       push eax
100098d7: e8ebfeffff               call 0x100097c7
100098dc: 83c41c                   add esp, 0x1c
100098df: 807dfc00                 cmp byte ptr [ebp - 4], 0
100098e3: 7407                     je 0x100098ec
100098e5: 8b4df8                   mov ecx, dword ptr [ebp - 8]
100098e8: 836170fd                 and dword ptr [ecx + 0x70], 0xfffffffd
100098ec: c9                       leave 
100098ed: c3                       ret 
100098ee: 660fefc0                 pxor xmm0, xmm0
100098f2: 51                       push ecx
100098f3: 53                       push ebx
100098f4: 8bc1                     mov eax, ecx
100098f6: 83e00f                   and eax, 0xf
100098f9: 85c0                     test eax, eax
100098fb: 757f                     jne 0x1000997c
100098fd: 8bc2                     mov eax, edx
100098ff: 83e27f                   and edx, 0x7f
10009902: c1e807                   shr eax, 7
10009905: 7437                     je 0x1000993e
10009907: 8da42400000000           lea esp, [esp]
1000990e: 660f7f01                 movdqa xmmword ptr [ecx], xmm0
10009912: 660f7f4110               movdqa xmmword ptr [ecx + 0x10], xmm0
10009917: 660f7f4120               movdqa xmmword ptr [ecx + 0x20], xmm0
1000991c: 660f7f4130               movdqa xmmword ptr [ecx + 0x30], xmm0
10009921: 660f7f4140               movdqa xmmword ptr [ecx + 0x40], xmm0
10009926: 660f7f4150               movdqa xmmword ptr [ecx + 0x50], xmm0
1000992b: 660f7f4160               movdqa xmmword ptr [ecx + 0x60], xmm0
10009930: 660f7f4170               movdqa xmmword ptr [ecx + 0x70], xmm0
10009935: 8d8980000000             lea ecx, [ecx + 0x80]
1000993b: 48                       dec eax
1000993c: 75d0                     jne 0x1000990e
1000993e: 85d2                     test edx, edx
10009940: 7437                     je 0x10009979
10009942: 8bc2                     mov eax, edx
10009944: c1e804                   shr eax, 4
10009947: 740f                     je 0x10009958
10009949: eb03                     jmp 0x1000994e
1000994b: 8d4900                   lea ecx, [ecx]
1000994e: 660f7f01                 movdqa xmmword ptr [ecx], xmm0
10009952: 8d4910                   lea ecx, [ecx + 0x10]
10009955: 48                       dec eax
10009956: 75f6                     jne 0x1000994e
10009958: 83e20f                   and edx, 0xf
1000995b: 741c                     je 0x10009979
1000995d: 8bc2                     mov eax, edx
1000995f: 33db                     xor ebx, ebx
10009961: c1ea02                   shr edx, 2
10009964: 7408                     je 0x1000996e
10009966: 8919                     mov dword ptr [ecx], ebx
10009968: 8d4904                   lea ecx, [ecx + 4]
1000996b: 4a                       dec edx
1000996c: 75f8                     jne 0x10009966
1000996e: 83e003                   and eax, 3
10009971: 7406                     je 0x10009979
10009973: 8819                     mov byte ptr [ecx], bl
10009975: 41                       inc ecx
10009976: 48                       dec eax
10009977: 75fa                     jne 0x10009973
10009979: 5b                       pop ebx
1000997a: 58                       pop eax
1000997b: c3                       ret 
1000997c: 8bd8                     mov ebx, eax
1000997e: f7db                     neg ebx
10009980: 83c310                   add ebx, 0x10
10009983: 2bd3                     sub edx, ebx
10009985: 33c0                     xor eax, eax
10009987: 52                       push edx
10009988: 8bd3                     mov edx, ebx
1000998a: 83e203                   and edx, 3
1000998d: 7406                     je 0x10009995
1000998f: 8801                     mov byte ptr [ecx], al
10009991: 41                       inc ecx
10009992: 4a                       dec edx
10009993: 75fa                     jne 0x1000998f
10009995: c1eb02                   shr ebx, 2
10009998: 7408                     je 0x100099a2
1000999a: 8901                     mov dword ptr [ecx], eax
1000999c: 8d4904                   lea ecx, [ecx + 4]
1000999f: 4b                       dec ebx
100099a0: 75f8                     jne 0x1000999a
100099a2: 5a                       pop edx
100099a3: e955ffffff               jmp 0x100098fd
100099a8: cc                       int3 
100099a9: cc                       int3 
100099aa: cc                       int3 
100099ab: cc                       int3 
100099ac: cc                       int3 
100099ad: cc                       int3 
100099ae: cc                       int3 
100099af: cc                       int3 
100099b0: 51                       push ecx
100099b1: 8d4c2404                 lea ecx, [esp + 4]
100099b5: 2bc8                     sub ecx, eax
100099b7: 1bc0                     sbb eax, eax
100099b9: f7d0                     not eax
100099bb: 23c8                     and ecx, eax
100099bd: 8bc4                     mov eax, esp
100099bf: 2500f0ffff               and eax, 0xfffff000
100099c4: 3bc8                     cmp ecx, eax
100099c6: 720a                     jb 0x100099d2
100099c8: 8bc1                     mov eax, ecx
100099ca: 59                       pop ecx
100099cb: 94                       xchg esp, eax
100099cc: 8b00                     mov eax, dword ptr [eax]
100099ce: 890424                   mov dword ptr [esp], eax
100099d1: c3                       ret 
100099d2: 2d00100000               sub eax, 0x1000
100099d7: 8500                     test dword ptr [eax], eax
100099d9: ebe9                     jmp 0x100099c4
100099db: cc                       int3 
100099dc: cc                       int3 
100099dd: cc                       int3 
100099de: cc                       int3 
100099df: cc                       int3 
100099e0: 8b442408                 mov eax, dword ptr [esp + 8]
100099e4: 8b4c2410                 mov ecx, dword ptr [esp + 0x10]
100099e8: 0bc8                     or ecx, eax
100099ea: 8b4c240c                 mov ecx, dword ptr [esp + 0xc]
100099ee: 7509                     jne 0x100099f9
100099f0: 8b442404                 mov eax, dword ptr [esp + 4]
100099f4: f7e1                     mul ecx
100099f6: c21000                   ret 0x10
100099f9: 53                       push ebx
100099fa: f7e1                     mul ecx
100099fc: 8bd8                     mov ebx, eax
100099fe: 8b442408                 mov eax, dword ptr [esp + 8]
10009a02: f7642414                 mul dword ptr [esp + 0x14]
10009a06: 03d8                     add ebx, eax
10009a08: 8b442408                 mov eax, dword ptr [esp + 8]
10009a0c: f7e1                     mul ecx
10009a0e: 03d3                     add edx, ebx
10009a10: 5b                       pop ebx
10009a11: c21000                   ret 0x10
10009a14: cc                       int3 
10009a15: cc                       int3 
10009a16: cc                       int3 
10009a17: cc                       int3 
10009a18: cc                       int3 
10009a19: cc                       int3 
10009a1a: cc                       int3 
10009a1b: cc                       int3 
10009a1c: cc                       int3 
10009a1d: cc                       int3 
10009a1e: cc                       int3 
10009a1f: cc                       int3 
10009a20: 55                       push ebp
10009a21: 8bec                     mov ebp, esp
10009a23: 56                       push esi
10009a24: 33c0                     xor eax, eax
10009a26: 50                       push eax
10009a27: 50                       push eax
10009a28: 50                       push eax
10009a29: 50                       push eax
10009a2a: 50                       push eax
10009a2b: 50                       push eax
10009a2c: 50                       push eax
10009a2d: 50                       push eax
10009a2e: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10009a31: 8d4900                   lea ecx, [ecx]
10009a34: 8a02                     mov al, byte ptr [edx]
10009a36: 0ac0                     or al, al
10009a38: 7409                     je 0x10009a43
10009a3a: 83c201                   add edx, 1
10009a3d: 0fab0424                 bts dword ptr [esp], eax
10009a41: ebf1                     jmp 0x10009a34
10009a43: 8b7508                   mov esi, dword ptr [ebp + 8]
10009a46: 83c9ff                   or ecx, 0xffffffff
10009a49: 8d4900                   lea ecx, [ecx]
10009a4c: 83c101                   add ecx, 1
10009a4f: 8a06                     mov al, byte ptr [esi]
10009a51: 0ac0                     or al, al
10009a53: 7409                     je 0x10009a5e
10009a55: 83c601                   add esi, 1
10009a58: 0fa30424                 bt dword ptr [esp], eax
10009a5c: 73ee                     jae 0x10009a4c
10009a5e: 8bc1                     mov eax, ecx
10009a60: 83c420                   add esp, 0x20
10009a63: 5e                       pop esi
10009a64: c9                       leave 
10009a65: c3                       ret 
10009a66: cc                       int3 
10009a67: cc                       int3 
10009a68: cc                       int3 
10009a69: cc                       int3 
10009a6a: cc                       int3 
10009a6b: cc                       int3 
10009a6c: cc                       int3 
10009a6d: cc                       int3 
10009a6e: cc                       int3 
10009a6f: cc                       int3 
10009a70: 55                       push ebp
10009a71: 8bec                     mov ebp, esp
10009a73: 56                       push esi
10009a74: 33c0                     xor eax, eax
10009a76: 50                       push eax
10009a77: 50                       push eax
10009a78: 50                       push eax
10009a79: 50                       push eax
10009a7a: 50                       push eax
10009a7b: 50                       push eax
10009a7c: 50                       push eax
10009a7d: 50                       push eax
10009a7e: 8b550c                   mov edx, dword ptr [ebp + 0xc]
10009a81: 8d4900                   lea ecx, [ecx]
10009a84: 8a02                     mov al, byte ptr [edx]
10009a86: 0ac0                     or al, al
10009a88: 7409                     je 0x10009a93
10009a8a: 83c201                   add edx, 1
10009a8d: 0fab0424                 bts dword ptr [esp], eax
10009a91: ebf1                     jmp 0x10009a84
10009a93: 8b7508                   mov esi, dword ptr [ebp + 8]
10009a96: 8bff                     mov edi, edi
10009a98: 8a06                     mov al, byte ptr [esi]
10009a9a: 0ac0                     or al, al
10009a9c: 740c                     je 0x10009aaa
10009a9e: 83c601                   add esi, 1
10009aa1: 0fa30424                 bt dword ptr [esp], eax
10009aa5: 73f1                     jae 0x10009a98
10009aa7: 8d46ff                   lea eax, [esi - 1]
10009aaa: 83c420                   add esp, 0x20
10009aad: 5e                       pop esi
10009aae: c9                       leave 
10009aaf: c3                       ret 
10009ab0: 55                       push ebp
10009ab1: 8bec                     mov ebp, esp
10009ab3: 57                       push edi
10009ab4: 56                       push esi
10009ab5: 53                       push ebx
10009ab6: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10009ab9: 0bc9                     or ecx, ecx
10009abb: 744d                     je 0x10009b0a
10009abd: 8b7508                   mov esi, dword ptr [ebp + 8]
10009ac0: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
10009ac3: b741                     mov bh, 0x41
10009ac5: b35a                     mov bl, 0x5a
10009ac7: b620                     mov dh, 0x20
10009ac9: 8d4900                   lea ecx, [ecx]
10009acc: 8a26                     mov ah, byte ptr [esi]
10009ace: 0ae4                     or ah, ah
10009ad0: 8a07                     mov al, byte ptr [edi]
10009ad2: 7427                     je 0x10009afb
10009ad4: 0ac0                     or al, al
10009ad6: 7423                     je 0x10009afb
10009ad8: 83c601                   add esi, 1
10009adb: 83c701                   add edi, 1
10009ade: 3ae7                     cmp ah, bh
10009ae0: 7206                     jb 0x10009ae8
10009ae2: 3ae3                     cmp ah, bl
10009ae4: 7702                     ja 0x10009ae8
10009ae6: 02e6                     add ah, dh
10009ae8: 3ac7                     cmp al, bh
10009aea: 7206                     jb 0x10009af2
10009aec: 3ac3                     cmp al, bl
10009aee: 7702                     ja 0x10009af2
10009af0: 02c6                     add al, dh
10009af2: 3ae0                     cmp ah, al
10009af4: 750b                     jne 0x10009b01
10009af6: 83e901                   sub ecx, 1
10009af9: 75d1                     jne 0x10009acc
10009afb: 33c9                     xor ecx, ecx
10009afd: 3ae0                     cmp ah, al
10009aff: 7409                     je 0x10009b0a
10009b01: b9ffffffff               mov ecx, 0xffffffff
10009b06: 7202                     jb 0x10009b0a
10009b08: f7d9                     neg ecx
10009b0a: 8bc1                     mov eax, ecx
10009b0c: 5b                       pop ebx
10009b0d: 5e                       pop esi
10009b0e: 5f                       pop edi
10009b0f: c9                       leave 
10009b10: c3                       ret 
10009b11: cc                       int3 
10009b12: ff25e4b00010             jmp dword ptr [0x1000b0e4]
10009b18: 8bff                     mov edi, edi
10009b1a: 55                       push ebp
10009b1b: 8bec                     mov ebp, esp
10009b1d: 51                       push ecx
10009b1e: 53                       push ebx
10009b1f: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009b22: 83c00c                   add eax, 0xc
10009b25: 8945fc                   mov dword ptr [ebp - 4], eax
10009b28: 648b1d00000000           mov ebx, dword ptr fs:[0]
10009b2f: 8b03                     mov eax, dword ptr [ebx]
10009b31: 64a300000000             mov dword ptr fs:[0], eax
10009b37: 8b4508                   mov eax, dword ptr [ebp + 8]
10009b3a: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
10009b3d: 8b6dfc                   mov ebp, dword ptr [ebp - 4]
10009b40: 8b63fc                   mov esp, dword ptr [ebx - 4]
10009b43: ffe0                     jmp eax
10009b45: 5b                       pop ebx
10009b46: c9                       leave 
10009b47: c20800                   ret 8
10009b4a: 58                       pop eax
10009b4b: 59                       pop ecx
10009b4c: 870424                   xchg dword ptr [esp], eax
10009b4f: ffe0                     jmp eax
10009b51: 8bff                     mov edi, edi
10009b53: 55                       push ebp
10009b54: 8bec                     mov ebp, esp
10009b56: 51                       push ecx
10009b57: 51                       push ecx
10009b58: 53                       push ebx
10009b59: 56                       push esi
10009b5a: 57                       push edi
10009b5b: 648b3500000000           mov esi, dword ptr fs:[0]
10009b62: 8975fc                   mov dword ptr [ebp - 4], esi
10009b65: c745f87c9b0010           mov dword ptr [ebp - 8], 0x10009b7c
10009b6c: 6a00                     push 0
10009b6e: ff750c                   push dword ptr [ebp + 0xc]
10009b71: ff75f8                   push dword ptr [ebp - 8]
10009b74: ff7508                   push dword ptr [ebp + 8]
10009b77: e896ffffff               call 0x10009b12
10009b7c: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009b7f: 8b4004                   mov eax, dword ptr [eax + 4]
10009b82: 83e0fd                   and eax, 0xfffffffd
10009b85: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10009b88: 894104                   mov dword ptr [ecx + 4], eax
10009b8b: 648b3d00000000           mov edi, dword ptr fs:[0]
10009b92: 8b5dfc                   mov ebx, dword ptr [ebp - 4]
10009b95: 893b                     mov dword ptr [ebx], edi
10009b97: 64891d00000000           mov dword ptr fs:[0], ebx
10009b9e: 5f                       pop edi
10009b9f: 5e                       pop esi
10009ba0: 5b                       pop ebx
10009ba1: c9                       leave 
10009ba2: c20800                   ret 8
10009ba5: 55                       push ebp
10009ba6: 8bec                     mov ebp, esp
10009ba8: 83ec08                   sub esp, 8
10009bab: 53                       push ebx
10009bac: 56                       push esi
10009bad: 57                       push edi
10009bae: fc                       cld 
10009baf: 8945fc                   mov dword ptr [ebp - 4], eax
10009bb2: 33c0                     xor eax, eax
10009bb4: 50                       push eax
10009bb5: 50                       push eax
10009bb6: 50                       push eax
10009bb7: ff75fc                   push dword ptr [ebp - 4]
10009bba: ff7514                   push dword ptr [ebp + 0x14]
10009bbd: ff7510                   push dword ptr [ebp + 0x10]
10009bc0: ff750c                   push dword ptr [ebp + 0xc]
10009bc3: ff7508                   push dword ptr [ebp + 8]
10009bc6: e8280f0000               call 0x1000aaf3
10009bcb: 83c420                   add esp, 0x20
10009bce: 8945f8                   mov dword ptr [ebp - 8], eax
10009bd1: 5f                       pop edi
10009bd2: 5e                       pop esi
10009bd3: 5b                       pop ebx
10009bd4: 8b45f8                   mov eax, dword ptr [ebp - 8]
10009bd7: 8be5                     mov esp, ebp
10009bd9: 5d                       pop ebp
10009bda: c3                       ret 
10009bdb: 8bff                     mov edi, edi
10009bdd: 55                       push ebp
10009bde: 8bec                     mov ebp, esp
10009be0: 56                       push esi
10009be1: fc                       cld 
10009be2: 8b750c                   mov esi, dword ptr [ebp + 0xc]
10009be5: 8b4e08                   mov ecx, dword ptr [esi + 8]
10009be8: 33ce                     xor ecx, esi
10009bea: e8cbafffff               call 0x10004bba
10009bef: 6a00                     push 0
10009bf1: 56                       push esi
10009bf2: ff7614                   push dword ptr [esi + 0x14]
10009bf5: ff760c                   push dword ptr [esi + 0xc]
10009bf8: 6a00                     push 0
10009bfa: ff7510                   push dword ptr [ebp + 0x10]
10009bfd: ff7610                   push dword ptr [esi + 0x10]
10009c00: ff7508                   push dword ptr [ebp + 8]
10009c03: e8eb0e0000               call 0x1000aaf3
10009c08: 83c420                   add esp, 0x20
10009c0b: 5e                       pop esi
10009c0c: 5d                       pop ebp
10009c0d: c3                       ret 
10009c0e: 8bff                     mov edi, edi
10009c10: 55                       push ebp
10009c11: 8bec                     mov ebp, esp
10009c13: 83ec38                   sub esp, 0x38
10009c16: 53                       push ebx
10009c17: 817d0823010000           cmp dword ptr [ebp + 8], 0x123
10009c1e: 7512                     jne 0x10009c32
10009c20: b8b99c0010               mov eax, 0x10009cb9
10009c25: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
10009c28: 8901                     mov dword ptr [ecx], eax
10009c2a: 33c0                     xor eax, eax
10009c2c: 40                       inc eax
10009c2d: e9b0000000               jmp 0x10009ce2
10009c32: 8365d800                 and dword ptr [ebp - 0x28], 0
10009c36: c745dce59c0010           mov dword ptr [ebp - 0x24], 0x10009ce5
10009c3d: a180f00010               mov eax, dword ptr [0x1000f080]
10009c42: 8d4dd8                   lea ecx, [ebp - 0x28]
10009c45: 33c1                     xor eax, ecx
10009c47: 8945e0                   mov dword ptr [ebp - 0x20], eax
10009c4a: 8b4518                   mov eax, dword ptr [ebp + 0x18]
10009c4d: 8945e4                   mov dword ptr [ebp - 0x1c], eax
10009c50: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009c53: 8945e8                   mov dword ptr [ebp - 0x18], eax
10009c56: 8b451c                   mov eax, dword ptr [ebp + 0x1c]
10009c59: 8945ec                   mov dword ptr [ebp - 0x14], eax
10009c5c: 8b4520                   mov eax, dword ptr [ebp + 0x20]
10009c5f: 8945f0                   mov dword ptr [ebp - 0x10], eax
10009c62: 8365f400                 and dword ptr [ebp - 0xc], 0
10009c66: 8365f800                 and dword ptr [ebp - 8], 0
10009c6a: 8365fc00                 and dword ptr [ebp - 4], 0
10009c6e: 8965f4                   mov dword ptr [ebp - 0xc], esp
10009c71: 896df8                   mov dword ptr [ebp - 8], ebp
10009c74: 64a100000000             mov eax, dword ptr fs:[0]
10009c7a: 8945d8                   mov dword ptr [ebp - 0x28], eax
10009c7d: 8d45d8                   lea eax, [ebp - 0x28]
10009c80: 64a300000000             mov dword ptr fs:[0], eax
10009c86: c745c801000000           mov dword ptr [ebp - 0x38], 1
10009c8d: 8b4508                   mov eax, dword ptr [ebp + 8]
10009c90: 8945cc                   mov dword ptr [ebp - 0x34], eax
10009c93: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10009c96: 8945d0                   mov dword ptr [ebp - 0x30], eax
10009c99: e8a3c6ffff               call 0x10006341
10009c9e: 8b8080000000             mov eax, dword ptr [eax + 0x80]
10009ca4: 8945d4                   mov dword ptr [ebp - 0x2c], eax
10009ca7: 8d45cc                   lea eax, [ebp - 0x34]
10009caa: 50                       push eax
10009cab: 8b4508                   mov eax, dword ptr [ebp + 8]
10009cae: ff30                     push dword ptr [eax]
10009cb0: ff55d4                   call dword ptr [ebp - 0x2c]
10009cb3: 59                       pop ecx
10009cb4: 59                       pop ecx
10009cb5: 8365c800                 and dword ptr [ebp - 0x38], 0
10009cb9: 837dfc00                 cmp dword ptr [ebp - 4], 0
10009cbd: 7417                     je 0x10009cd6
10009cbf: 648b1d00000000           mov ebx, dword ptr fs:[0]
10009cc6: 8b03                     mov eax, dword ptr [ebx]
10009cc8: 8b5dd8                   mov ebx, dword ptr [ebp - 0x28]
10009ccb: 8903                     mov dword ptr [ebx], eax
10009ccd: 64891d00000000           mov dword ptr fs:[0], ebx
10009cd4: eb09                     jmp 0x10009cdf
10009cd6: 8b45d8                   mov eax, dword ptr [ebp - 0x28]
10009cd9: 64a300000000             mov dword ptr fs:[0], eax
10009cdf: 8b45c8                   mov eax, dword ptr [ebp - 0x38]
10009ce2: 5b                       pop ebx
10009ce3: c9                       leave 
10009ce4: c3                       ret 
10009ce5: 8bff                     mov edi, edi
10009ce7: 55                       push ebp
10009ce8: 8bec                     mov ebp, esp
10009cea: 51                       push ecx
10009ceb: 53                       push ebx
10009cec: fc                       cld 
10009ced: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009cf0: 8b4808                   mov ecx, dword ptr [eax + 8]
10009cf3: 334d0c                   xor ecx, dword ptr [ebp + 0xc]
10009cf6: e8bfaeffff               call 0x10004bba
10009cfb: 8b4508                   mov eax, dword ptr [ebp + 8]
10009cfe: 8b4004                   mov eax, dword ptr [eax + 4]
10009d01: 83e066                   and eax, 0x66
10009d04: 7411                     je 0x10009d17
10009d06: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009d09: c7402401000000           mov dword ptr [eax + 0x24], 1
10009d10: 33c0                     xor eax, eax
10009d12: 40                       inc eax
10009d13: eb6c                     jmp 0x10009d81
10009d15: eb6a                     jmp 0x10009d81
10009d17: 6a01                     push 1
10009d19: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009d1c: ff7018                   push dword ptr [eax + 0x18]
10009d1f: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009d22: ff7014                   push dword ptr [eax + 0x14]
10009d25: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009d28: ff700c                   push dword ptr [eax + 0xc]
10009d2b: 6a00                     push 0
10009d2d: ff7510                   push dword ptr [ebp + 0x10]
10009d30: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009d33: ff7010                   push dword ptr [eax + 0x10]
10009d36: ff7508                   push dword ptr [ebp + 8]
10009d39: e8b50d0000               call 0x1000aaf3
10009d3e: 83c420                   add esp, 0x20
10009d41: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009d44: 83782400                 cmp dword ptr [eax + 0x24], 0
10009d48: 750b                     jne 0x10009d55
10009d4a: ff7508                   push dword ptr [ebp + 8]
10009d4d: ff750c                   push dword ptr [ebp + 0xc]
10009d50: e8fcfdffff               call 0x10009b51
10009d55: 6a00                     push 0
10009d57: 6a00                     push 0
10009d59: 6a00                     push 0
10009d5b: 6a00                     push 0
10009d5d: 6a00                     push 0
10009d5f: 8d45fc                   lea eax, [ebp - 4]
10009d62: 50                       push eax
10009d63: 6823010000               push 0x123
10009d68: e8a1feffff               call 0x10009c0e
10009d6d: 83c41c                   add esp, 0x1c
10009d70: 8b45fc                   mov eax, dword ptr [ebp - 4]
10009d73: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
10009d76: 8b631c                   mov esp, dword ptr [ebx + 0x1c]
10009d79: 8b6b20                   mov ebp, dword ptr [ebx + 0x20]
10009d7c: ffe0                     jmp eax
10009d7e: 33c0                     xor eax, eax
10009d80: 40                       inc eax
10009d81: 5b                       pop ebx
10009d82: c9                       leave 
10009d83: c3                       ret 
10009d84: 8bff                     mov edi, edi
10009d86: 55                       push ebp
10009d87: 8bec                     mov ebp, esp
10009d89: 51                       push ecx
10009d8a: 53                       push ebx
10009d8b: 56                       push esi
10009d8c: 57                       push edi
10009d8d: 8b7d08                   mov edi, dword ptr [ebp + 8]
10009d90: 8b4710                   mov eax, dword ptr [edi + 0x10]
10009d93: 8b770c                   mov esi, dword ptr [edi + 0xc]
10009d96: 8945fc                   mov dword ptr [ebp - 4], eax
10009d99: 8bde                     mov ebx, esi
10009d9b: eb2b                     jmp 0x10009dc8
10009d9d: 83feff                   cmp esi, -1
10009da0: 7505                     jne 0x10009da7
10009da2: e877d9ffff               call 0x1000771e
10009da7: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
10009daa: 4e                       dec esi
10009dab: 8bc6                     mov eax, esi
10009dad: 6bc014                   imul eax, eax, 0x14
10009db0: 0345fc                   add eax, dword ptr [ebp - 4]
10009db3: 394804                   cmp dword ptr [eax + 4], ecx
10009db6: 7d05                     jge 0x10009dbd
10009db8: 3b4808                   cmp ecx, dword ptr [eax + 8]
10009dbb: 7e05                     jle 0x10009dc2
10009dbd: 83feff                   cmp esi, -1
10009dc0: 7509                     jne 0x10009dcb
10009dc2: ff4d0c                   dec dword ptr [ebp + 0xc]
10009dc5: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10009dc8: 897508                   mov dword ptr [ebp + 8], esi
10009dcb: 837d0c00                 cmp dword ptr [ebp + 0xc], 0
10009dcf: 7dcc                     jge 0x10009d9d
10009dd1: 8b4514                   mov eax, dword ptr [ebp + 0x14]
10009dd4: 46                       inc esi
10009dd5: 8930                     mov dword ptr [eax], esi
10009dd7: 8b4518                   mov eax, dword ptr [ebp + 0x18]
10009dda: 8918                     mov dword ptr [eax], ebx
10009ddc: 3b5f0c                   cmp ebx, dword ptr [edi + 0xc]
10009ddf: 7704                     ja 0x10009de5
10009de1: 3bf3                     cmp esi, ebx
10009de3: 7605                     jbe 0x10009dea
10009de5: e834d9ffff               call 0x1000771e
10009dea: 8bc6                     mov eax, esi
10009dec: 6bc014                   imul eax, eax, 0x14
10009def: 0345fc                   add eax, dword ptr [ebp - 4]
10009df2: 5f                       pop edi
10009df3: 5e                       pop esi
10009df4: 5b                       pop ebx
10009df5: c9                       leave 
10009df6: c3                       ret 
10009df7: 8bff                     mov edi, edi
10009df9: 55                       push ebp
10009dfa: 8bec                     mov ebp, esp
10009dfc: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009dff: 56                       push esi
10009e00: 8b7508                   mov esi, dword ptr [ebp + 8]
10009e03: 8906                     mov dword ptr [esi], eax
10009e05: e837c5ffff               call 0x10006341
10009e0a: 8b8098000000             mov eax, dword ptr [eax + 0x98]
10009e10: 894604                   mov dword ptr [esi + 4], eax
10009e13: e829c5ffff               call 0x10006341
10009e18: 89b098000000             mov dword ptr [eax + 0x98], esi
10009e1e: 8bc6                     mov eax, esi
10009e20: 5e                       pop esi
10009e21: 5d                       pop ebp
10009e22: c3                       ret 
10009e23: 8bff                     mov edi, edi
10009e25: 55                       push ebp
10009e26: 8bec                     mov ebp, esp
10009e28: e814c5ffff               call 0x10006341
10009e2d: 8b8098000000             mov eax, dword ptr [eax + 0x98]
10009e33: eb0a                     jmp 0x10009e3f
10009e35: 8b08                     mov ecx, dword ptr [eax]
10009e37: 3b4d08                   cmp ecx, dword ptr [ebp + 8]
10009e3a: 740a                     je 0x10009e46
10009e3c: 8b4004                   mov eax, dword ptr [eax + 4]
10009e3f: 85c0                     test eax, eax
10009e41: 75f2                     jne 0x10009e35
10009e43: 40                       inc eax
10009e44: 5d                       pop ebp
10009e45: c3                       ret 
10009e46: 33c0                     xor eax, eax
10009e48: 5d                       pop ebp
10009e49: c3                       ret 
10009e4a: 8bff                     mov edi, edi
10009e4c: 55                       push ebp
10009e4d: 8bec                     mov ebp, esp
10009e4f: 56                       push esi
10009e50: e8ecc4ffff               call 0x10006341
10009e55: 8b7508                   mov esi, dword ptr [ebp + 8]
10009e58: 3bb098000000             cmp esi, dword ptr [eax + 0x98]
10009e5e: 7511                     jne 0x10009e71
10009e60: e8dcc4ffff               call 0x10006341
10009e65: 8b4e04                   mov ecx, dword ptr [esi + 4]
10009e68: 898898000000             mov dword ptr [eax + 0x98], ecx
10009e6e: 5e                       pop esi
10009e6f: 5d                       pop ebp
10009e70: c3                       ret 
10009e71: e8cbc4ffff               call 0x10006341
10009e76: 8b8098000000             mov eax, dword ptr [eax + 0x98]
10009e7c: eb09                     jmp 0x10009e87
10009e7e: 8b4804                   mov ecx, dword ptr [eax + 4]
10009e81: 3bf1                     cmp esi, ecx
10009e83: 740f                     je 0x10009e94
10009e85: 8bc1                     mov eax, ecx
10009e87: 83780400                 cmp dword ptr [eax + 4], 0
10009e8b: 75f1                     jne 0x10009e7e
10009e8d: 5e                       pop esi
10009e8e: 5d                       pop ebp
10009e8f: e98ad8ffff               jmp 0x1000771e
10009e94: 8b4e04                   mov ecx, dword ptr [esi + 4]
10009e97: 894804                   mov dword ptr [eax + 4], ecx
10009e9a: ebd2                     jmp 0x10009e6e
10009e9c: 8bff                     mov edi, edi
10009e9e: 55                       push ebp
10009e9f: 8bec                     mov ebp, esp
10009ea1: 83ec18                   sub esp, 0x18
10009ea4: a180f00010               mov eax, dword ptr [0x1000f080]
10009ea9: 8365e800                 and dword ptr [ebp - 0x18], 0
10009ead: 8d4de8                   lea ecx, [ebp - 0x18]
10009eb0: 33c1                     xor eax, ecx
10009eb2: 8b4d08                   mov ecx, dword ptr [ebp + 8]
10009eb5: 8945f0                   mov dword ptr [ebp - 0x10], eax
10009eb8: 8b450c                   mov eax, dword ptr [ebp + 0xc]
10009ebb: 8945f4                   mov dword ptr [ebp - 0xc], eax
10009ebe: 8b4514                   mov eax, dword ptr [ebp + 0x14]
10009ec1: 40                       inc eax
10009ec2: c745ecdb9b0010           mov dword ptr [ebp - 0x14], 0x10009bdb
10009ec9: 894df8                   mov dword ptr [ebp - 8], ecx
10009ecc: 8945fc                   mov dword ptr [ebp - 4], eax
10009ecf: 64a100000000             mov eax, dword ptr fs:[0]
10009ed5: 8945e8                   mov dword ptr [ebp - 0x18], eax
10009ed8: 8d45e8                   lea eax, [ebp - 0x18]
10009edb: 64a300000000             mov dword ptr fs:[0], eax
10009ee1: ff7518                   push dword ptr [ebp + 0x18]
10009ee4: 51                       push ecx
10009ee5: ff7510                   push dword ptr [ebp + 0x10]
10009ee8: e8f30c0000               call 0x1000abe0
10009eed: 8bc8                     mov ecx, eax
10009eef: 8b45e8                   mov eax, dword ptr [ebp - 0x18]
10009ef2: 64a300000000             mov dword ptr fs:[0], eax
10009ef8: 8bc1                     mov eax, ecx
10009efa: c9                       leave 
10009efb: c3                       ret 
10009efc: c70108d50010             mov dword ptr [ecx], 0x1000d508
10009f02: e9a6adffff               jmp 0x10004cad
10009f07: 8bff                     mov edi, edi
10009f09: 55                       push ebp
10009f0a: 8bec                     mov ebp, esp
10009f0c: 56                       push esi
10009f0d: 8bf1                     mov esi, ecx
10009f0f: c70608d50010             mov dword ptr [esi], 0x1000d508
10009f15: e893adffff               call 0x10004cad
10009f1a: f6450801                 test byte ptr [ebp + 8], 1
10009f1e: 7407                     je 0x10009f27
10009f20: 56                       push esi
10009f21: e8deadffff               call 0x10004d04
10009f26: 59                       pop ecx
10009f27: 8bc6                     mov eax, esi
10009f29: 5e                       pop esi
10009f2a: 5d                       pop ebp
10009f2b: c20400                   ret 4
10009f2e: 8bff                     mov edi, edi
10009f30: 55                       push ebp
10009f31: 8bec                     mov ebp, esp
10009f33: 56                       push esi
10009f34: 57                       push edi
10009f35: 8b7d08                   mov edi, dword ptr [ebp + 8]
10009f38: 8b4704                   mov eax, dword ptr [edi + 4]
10009f3b: 85c0                     test eax, eax
10009f3d: 7447                     je 0x10009f86
10009f3f: 8d5008                   lea edx, [eax + 8]
10009f42: 803a00                   cmp byte ptr [edx], 0
10009f45: 743f                     je 0x10009f86
10009f47: 8b750c                   mov esi, dword ptr [ebp + 0xc]
10009f4a: 8b4e04                   mov ecx, dword ptr [esi + 4]
10009f4d: 3bc1                     cmp eax, ecx
10009f4f: 7414                     je 0x10009f65
10009f51: 83c108                   add ecx, 8
10009f54: 51                       push ecx
10009f55: 52                       push edx
10009f56: e815bbffff               call 0x10005a70
10009f5b: 59                       pop ecx
10009f5c: 59                       pop ecx
10009f5d: 85c0                     test eax, eax
10009f5f: 7404                     je 0x10009f65
10009f61: 33c0                     xor eax, eax
10009f63: eb24                     jmp 0x10009f89
10009f65: f60602                   test byte ptr [esi], 2
10009f68: 7405                     je 0x10009f6f
10009f6a: f60708                   test byte ptr [edi], 8
10009f6d: 74f2                     je 0x10009f61
10009f6f: 8b4510                   mov eax, dword ptr [ebp + 0x10]
10009f72: 8b00                     mov eax, dword ptr [eax]
10009f74: a801                     test al, 1
10009f76: 7405                     je 0x10009f7d
10009f78: f60701                   test byte ptr [edi], 1
10009f7b: 74e4                     je 0x10009f61
10009f7d: a802                     test al, 2
10009f7f: 7405                     je 0x10009f86
10009f81: f60702                   test byte ptr [edi], 2
10009f84: 74db                     je 0x10009f61
10009f86: 33c0                     xor eax, eax
10009f88: 40                       inc eax
10009f89: 5f                       pop edi
10009f8a: 5e                       pop esi
10009f8b: 5d                       pop ebp
10009f8c: c3                       ret 
10009f8d: 8bff                     mov edi, edi
10009f8f: 55                       push ebp
10009f90: 8bec                     mov ebp, esp
10009f92: 8b4508                   mov eax, dword ptr [ebp + 8]
10009f95: 8b00                     mov eax, dword ptr [eax]
10009f97: 8b00                     mov eax, dword ptr [eax]
10009f99: 3d524343e0               cmp eax, 0xe0434352
10009f9e: 741f                     je 0x10009fbf
10009fa0: 3d4d4f43e0               cmp eax, 0xe0434f4d
10009fa5: 7418                     je 0x10009fbf
10009fa7: 3d63736de0               cmp eax, 0xe06d7363
10009fac: 752a                     jne 0x10009fd8
10009fae: e88ec3ffff               call 0x10006341
10009fb3: 83a09000000000           and dword ptr [eax + 0x90], 0
10009fba: e913d7ffff               jmp 0x100076d2
10009fbf: e87dc3ffff               call 0x10006341
10009fc4: 83b89000000000           cmp dword ptr [eax + 0x90], 0
10009fcb: 7e0b                     jle 0x10009fd8
10009fcd: e86fc3ffff               call 0x10006341
10009fd2: ff8890000000             dec dword ptr [eax + 0x90]
10009fd8: 33c0                     xor eax, eax
10009fda: 5d                       pop ebp
10009fdb: c3                       ret 
10009fdc: 6a10                     push 0x10
10009fde: 6800df0010               push 0x1000df00
10009fe3: e818ceffff               call 0x10006e00
10009fe8: 8b7d10                   mov edi, dword ptr [ebp + 0x10]
10009feb: 8b5d08                   mov ebx, dword ptr [ebp + 8]
10009fee: 817f0480000000           cmp dword ptr [edi + 4], 0x80
10009ff5: 7f06                     jg 0x10009ffd
10009ff7: 0fbe7308                 movsx esi, byte ptr [ebx + 8]
10009ffb: eb03                     jmp 0x1000a000
10009ffd: 8b7308                   mov esi, dword ptr [ebx + 8]
1000a000: 8975e4                   mov dword ptr [ebp - 0x1c], esi
1000a003: e839c3ffff               call 0x10006341
1000a008: ff8090000000             inc dword ptr [eax + 0x90]
1000a00e: 8365fc00                 and dword ptr [ebp - 4], 0
1000a012: 3b7514                   cmp esi, dword ptr [ebp + 0x14]
1000a015: 7462                     je 0x1000a079
1000a017: 83feff                   cmp esi, -1
1000a01a: 7e05                     jle 0x1000a021
1000a01c: 3b7704                   cmp esi, dword ptr [edi + 4]
1000a01f: 7c05                     jl 0x1000a026
1000a021: e8f8d6ffff               call 0x1000771e
1000a026: 8bc6                     mov eax, esi
1000a028: 8b4f08                   mov ecx, dword ptr [edi + 8]
1000a02b: 8b34c1                   mov esi, dword ptr [ecx + eax*8]
1000a02e: 8975e0                   mov dword ptr [ebp - 0x20], esi
1000a031: c745fc01000000           mov dword ptr [ebp - 4], 1
1000a038: 837cc10400               cmp dword ptr [ecx + eax*8 + 4], 0
1000a03d: 7415                     je 0x1000a054
1000a03f: 897308                   mov dword ptr [ebx + 8], esi
1000a042: 6803010000               push 0x103
1000a047: 53                       push ebx
1000a048: 8b4f08                   mov ecx, dword ptr [edi + 8]
1000a04b: ff74c104                 push dword ptr [ecx + eax*8 + 4]
1000a04f: e88c0b0000               call 0x1000abe0
1000a054: 8365fc00                 and dword ptr [ebp - 4], 0
1000a058: eb1a                     jmp 0x1000a074
1000a05a: ff75ec                   push dword ptr [ebp - 0x14]
1000a05d: e82bffffff               call 0x10009f8d
1000a062: 59                       pop ecx
1000a063: c3                       ret 
1000a064: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
1000a067: 8365fc00                 and dword ptr [ebp - 4], 0
1000a06b: 8b7d10                   mov edi, dword ptr [ebp + 0x10]
1000a06e: 8b5d08                   mov ebx, dword ptr [ebp + 8]
1000a071: 8b75e0                   mov esi, dword ptr [ebp - 0x20]
1000a074: 8975e4                   mov dword ptr [ebp - 0x1c], esi
1000a077: eb99                     jmp 0x1000a012
1000a079: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000a080: e819000000               call 0x1000a09e
1000a085: 3b7514                   cmp esi, dword ptr [ebp + 0x14]
1000a088: 7405                     je 0x1000a08f
1000a08a: e88fd6ffff               call 0x1000771e
1000a08f: 897308                   mov dword ptr [ebx + 8], esi
1000a092: e8aecdffff               call 0x10006e45
1000a097: c3                       ret 
1000a098: 8b5d08                   mov ebx, dword ptr [ebp + 8]
1000a09b: 8b75e4                   mov esi, dword ptr [ebp - 0x1c]
1000a09e: e89ec2ffff               call 0x10006341
1000a0a3: 83b89000000000           cmp dword ptr [eax + 0x90], 0
1000a0aa: 7e0b                     jle 0x1000a0b7
1000a0ac: e890c2ffff               call 0x10006341
1000a0b1: ff8890000000             dec dword ptr [eax + 0x90]
1000a0b7: c3                       ret 
1000a0b8: 8b00                     mov eax, dword ptr [eax]
1000a0ba: 813863736de0             cmp dword ptr [eax], 0xe06d7363
1000a0c0: 7538                     jne 0x1000a0fa
1000a0c2: 83781003                 cmp dword ptr [eax + 0x10], 3
1000a0c6: 7532                     jne 0x1000a0fa
1000a0c8: 8b4814                   mov ecx, dword ptr [eax + 0x14]
1000a0cb: 81f920059319             cmp ecx, 0x19930520
1000a0d1: 7410                     je 0x1000a0e3
1000a0d3: 81f921059319             cmp ecx, 0x19930521
1000a0d9: 7408                     je 0x1000a0e3
1000a0db: 81f922059319             cmp ecx, 0x19930522
1000a0e1: 7517                     jne 0x1000a0fa
1000a0e3: 83781c00                 cmp dword ptr [eax + 0x1c], 0
1000a0e7: 7511                     jne 0x1000a0fa
1000a0e9: e853c2ffff               call 0x10006341
1000a0ee: 33c9                     xor ecx, ecx
1000a0f0: 41                       inc ecx
1000a0f1: 89880c020000             mov dword ptr [eax + 0x20c], ecx
1000a0f7: 8bc1                     mov eax, ecx
1000a0f9: c3                       ret 
1000a0fa: 33c0                     xor eax, eax
1000a0fc: c3                       ret 
1000a0fd: 6a08                     push 8
1000a0ff: 6828df0010               push 0x1000df28
1000a104: e8f7ccffff               call 0x10006e00
1000a109: 8b4d08                   mov ecx, dword ptr [ebp + 8]
1000a10c: 85c9                     test ecx, ecx
1000a10e: 742a                     je 0x1000a13a
1000a110: 813963736de0             cmp dword ptr [ecx], 0xe06d7363
1000a116: 7522                     jne 0x1000a13a
1000a118: 8b411c                   mov eax, dword ptr [ecx + 0x1c]
1000a11b: 85c0                     test eax, eax
1000a11d: 741b                     je 0x1000a13a
1000a11f: 8b4004                   mov eax, dword ptr [eax + 4]
1000a122: 85c0                     test eax, eax
1000a124: 7414                     je 0x1000a13a
1000a126: 8365fc00                 and dword ptr [ebp - 4], 0
1000a12a: 50                       push eax
1000a12b: ff7118                   push dword ptr [ecx + 0x18]
1000a12e: e817faffff               call 0x10009b4a
1000a133: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000a13a: e806cdffff               call 0x10006e45
1000a13f: c3                       ret 
1000a140: 33c0                     xor eax, eax
1000a142: 38450c                   cmp byte ptr [ebp + 0xc], al
1000a145: 0f95c0                   setne al
1000a148: c3                       ret 
1000a149: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
1000a14c: e881d5ffff               call 0x100076d2
1000a151: cc                       int3 
1000a152: 8bff                     mov edi, edi
1000a154: 55                       push ebp
1000a155: 8bec                     mov ebp, esp
1000a157: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
1000a15a: 8b01                     mov eax, dword ptr [ecx]
1000a15c: 56                       push esi
1000a15d: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a160: 03c6                     add eax, esi
1000a162: 83790400                 cmp dword ptr [ecx + 4], 0
1000a166: 7c10                     jl 0x1000a178
1000a168: 8b5104                   mov edx, dword ptr [ecx + 4]
1000a16b: 8b4908                   mov ecx, dword ptr [ecx + 8]
1000a16e: 8b3432                   mov esi, dword ptr [edx + esi]
1000a171: 8b0c0e                   mov ecx, dword ptr [esi + ecx]
1000a174: 03ca                     add ecx, edx
1000a176: 03c1                     add eax, ecx
1000a178: 5e                       pop esi
1000a179: 5d                       pop ebp
1000a17a: c3                       ret 
1000a17b: 8bff                     mov edi, edi
1000a17d: 55                       push ebp
1000a17e: 8bec                     mov ebp, esp
1000a180: 83ec0c                   sub esp, 0xc
1000a183: 85ff                     test edi, edi
1000a185: 750a                     jne 0x1000a191
1000a187: e892d5ffff               call 0x1000771e
1000a18c: e841d5ffff               call 0x100076d2
1000a191: 8365f800                 and dword ptr [ebp - 8], 0
1000a195: 833f00                   cmp dword ptr [edi], 0
1000a198: c645ff00                 mov byte ptr [ebp - 1], 0
1000a19c: 7e53                     jle 0x1000a1f1
1000a19e: 53                       push ebx
1000a19f: 56                       push esi
1000a1a0: 8b4508                   mov eax, dword ptr [ebp + 8]
1000a1a3: 8b401c                   mov eax, dword ptr [eax + 0x1c]
1000a1a6: 8b400c                   mov eax, dword ptr [eax + 0xc]
1000a1a9: 8b18                     mov ebx, dword ptr [eax]
1000a1ab: 8d7004                   lea esi, [eax + 4]
1000a1ae: 85db                     test ebx, ebx
1000a1b0: 7e33                     jle 0x1000a1e5
1000a1b2: 8b45f8                   mov eax, dword ptr [ebp - 8]
1000a1b5: c1e004                   shl eax, 4
1000a1b8: 8945f4                   mov dword ptr [ebp - 0xc], eax
1000a1bb: 8b4d08                   mov ecx, dword ptr [ebp + 8]
1000a1be: ff711c                   push dword ptr [ecx + 0x1c]
1000a1c1: 8b06                     mov eax, dword ptr [esi]
1000a1c3: 50                       push eax
1000a1c4: 8b4704                   mov eax, dword ptr [edi + 4]
1000a1c7: 0345f4                   add eax, dword ptr [ebp - 0xc]
1000a1ca: 50                       push eax
1000a1cb: e85efdffff               call 0x10009f2e
1000a1d0: 83c40c                   add esp, 0xc
1000a1d3: 85c0                     test eax, eax
1000a1d5: 750a                     jne 0x1000a1e1
1000a1d7: 4b                       dec ebx
1000a1d8: 83c604                   add esi, 4
1000a1db: 85db                     test ebx, ebx
1000a1dd: 7fdc                     jg 0x1000a1bb
1000a1df: eb04                     jmp 0x1000a1e5
1000a1e1: c645ff01                 mov byte ptr [ebp - 1], 1
1000a1e5: ff45f8                   inc dword ptr [ebp - 8]
1000a1e8: 8b45f8                   mov eax, dword ptr [ebp - 8]
1000a1eb: 3b07                     cmp eax, dword ptr [edi]
1000a1ed: 7cb1                     jl 0x1000a1a0
1000a1ef: 5e                       pop esi
1000a1f0: 5b                       pop ebx
1000a1f1: 8a45ff                   mov al, byte ptr [ebp - 1]
1000a1f4: c9                       leave 
1000a1f5: c3                       ret 
1000a1f6: 6a04                     push 4
1000a1f8: b850af0010               mov eax, 0x1000af50
1000a1fd: e82a0a0000               call 0x1000ac2c
1000a202: e83ac1ffff               call 0x10006341
1000a207: 83b89400000000           cmp dword ptr [eax + 0x94], 0
1000a20e: 7405                     je 0x1000a215
1000a210: e809d5ffff               call 0x1000771e
1000a215: 8365fc00                 and dword ptr [ebp - 4], 0
1000a219: e8edd4ffff               call 0x1000770b
1000a21e: 834dfcff                 or dword ptr [ebp - 4], 0xffffffff
1000a222: e8abd4ffff               call 0x100076d2
1000a227: e815c1ffff               call 0x10006341
1000a22c: 8b4d08                   mov ecx, dword ptr [ebp + 8]
1000a22f: 6a00                     push 0
1000a231: 6a00                     push 0
1000a233: 898894000000             mov dword ptr [eax + 0x94], ecx
1000a239: e8ffb2ffff               call 0x1000553d
1000a23e: cc                       int3 
1000a23f: 6a2c                     push 0x2c
1000a241: 68a0df0010               push 0x1000dfa0
1000a246: e8b5cbffff               call 0x10006e00
1000a24b: 8bd9                     mov ebx, ecx
1000a24d: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
1000a250: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a253: 895de4                   mov dword ptr [ebp - 0x1c], ebx
1000a256: 8365cc00                 and dword ptr [ebp - 0x34], 0
1000a25a: 8b47fc                   mov eax, dword ptr [edi - 4]
1000a25d: 8945dc                   mov dword ptr [ebp - 0x24], eax
1000a260: ff7618                   push dword ptr [esi + 0x18]
1000a263: 8d45c4                   lea eax, [ebp - 0x3c]
1000a266: 50                       push eax
1000a267: e88bfbffff               call 0x10009df7
1000a26c: 59                       pop ecx
1000a26d: 59                       pop ecx
1000a26e: 8945d8                   mov dword ptr [ebp - 0x28], eax
1000a271: e8cbc0ffff               call 0x10006341
1000a276: 8b8088000000             mov eax, dword ptr [eax + 0x88]
1000a27c: 8945d4                   mov dword ptr [ebp - 0x2c], eax
1000a27f: e8bdc0ffff               call 0x10006341
1000a284: 8b808c000000             mov eax, dword ptr [eax + 0x8c]
1000a28a: 8945d0                   mov dword ptr [ebp - 0x30], eax
1000a28d: e8afc0ffff               call 0x10006341
1000a292: 89b088000000             mov dword ptr [eax + 0x88], esi
1000a298: e8a4c0ffff               call 0x10006341
1000a29d: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
1000a2a0: 89888c000000             mov dword ptr [eax + 0x8c], ecx
1000a2a6: 8365fc00                 and dword ptr [ebp - 4], 0
1000a2aa: 33c0                     xor eax, eax
1000a2ac: 40                       inc eax
1000a2ad: 894510                   mov dword ptr [ebp + 0x10], eax
1000a2b0: 8945fc                   mov dword ptr [ebp - 4], eax
1000a2b3: ff751c                   push dword ptr [ebp + 0x1c]
1000a2b6: ff7518                   push dword ptr [ebp + 0x18]
1000a2b9: 53                       push ebx
1000a2ba: ff7514                   push dword ptr [ebp + 0x14]
1000a2bd: 57                       push edi
1000a2be: e8d9fbffff               call 0x10009e9c
1000a2c3: 83c414                   add esp, 0x14
1000a2c6: 8945e4                   mov dword ptr [ebp - 0x1c], eax
1000a2c9: 8365fc00                 and dword ptr [ebp - 4], 0
1000a2cd: eb6f                     jmp 0x1000a33e
1000a2cf: 8b45ec                   mov eax, dword ptr [ebp - 0x14]
1000a2d2: e8e1fdffff               call 0x1000a0b8
1000a2d7: c3                       ret 
1000a2d8: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
1000a2db: e861c0ffff               call 0x10006341
1000a2e0: 83a00c02000000           and dword ptr [eax + 0x20c], 0
1000a2e7: 8b7514                   mov esi, dword ptr [ebp + 0x14]
1000a2ea: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
1000a2ed: 817e0480000000           cmp dword ptr [esi + 4], 0x80
1000a2f4: 7f06                     jg 0x1000a2fc
1000a2f6: 0fbe4f08                 movsx ecx, byte ptr [edi + 8]
1000a2fa: eb03                     jmp 0x1000a2ff
1000a2fc: 8b4f08                   mov ecx, dword ptr [edi + 8]
1000a2ff: 8b5e10                   mov ebx, dword ptr [esi + 0x10]
1000a302: 8365e000                 and dword ptr [ebp - 0x20], 0
1000a306: 8b45e0                   mov eax, dword ptr [ebp - 0x20]
1000a309: 3b460c                   cmp eax, dword ptr [esi + 0xc]
1000a30c: 7318                     jae 0x1000a326
1000a30e: 6bc014                   imul eax, eax, 0x14
1000a311: 8b541804                 mov edx, dword ptr [eax + ebx + 4]
1000a315: 3bca                     cmp ecx, edx
1000a317: 7e41                     jle 0x1000a35a
1000a319: 3b4c1808                 cmp ecx, dword ptr [eax + ebx + 8]
1000a31d: 7f3b                     jg 0x1000a35a
1000a31f: 8b4608                   mov eax, dword ptr [esi + 8]
1000a322: 8b4cd008                 mov ecx, dword ptr [eax + edx*8 + 8]
1000a326: 51                       push ecx
1000a327: 56                       push esi
1000a328: 6a00                     push 0
1000a32a: 57                       push edi
1000a32b: e8acfcffff               call 0x10009fdc
1000a330: 83c410                   add esp, 0x10
1000a333: 8365e400                 and dword ptr [ebp - 0x1c], 0
1000a337: 8365fc00                 and dword ptr [ebp - 4], 0
1000a33b: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a33e: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000a345: c7451000000000           mov dword ptr [ebp + 0x10], 0
1000a34c: e814000000               call 0x1000a365
1000a351: 8b45e4                   mov eax, dword ptr [ebp - 0x1c]
1000a354: e8eccaffff               call 0x10006e45
1000a359: c3                       ret 
1000a35a: ff45e0                   inc dword ptr [ebp - 0x20]
1000a35d: eba7                     jmp 0x1000a306
1000a35f: 8b7d0c                   mov edi, dword ptr [ebp + 0xc]
1000a362: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a365: 8b45dc                   mov eax, dword ptr [ebp - 0x24]
1000a368: 8947fc                   mov dword ptr [edi - 4], eax
1000a36b: ff75d8                   push dword ptr [ebp - 0x28]
1000a36e: e8d7faffff               call 0x10009e4a
1000a373: 59                       pop ecx
1000a374: e8c8bfffff               call 0x10006341
1000a379: 8b4dd4                   mov ecx, dword ptr [ebp - 0x2c]
1000a37c: 898888000000             mov dword ptr [eax + 0x88], ecx
1000a382: e8babfffff               call 0x10006341
1000a387: 8b4dd0                   mov ecx, dword ptr [ebp - 0x30]
1000a38a: 89888c000000             mov dword ptr [eax + 0x8c], ecx
1000a390: 813e63736de0             cmp dword ptr [esi], 0xe06d7363
1000a396: 7542                     jne 0x1000a3da
1000a398: 837e1003                 cmp dword ptr [esi + 0x10], 3
1000a39c: 753c                     jne 0x1000a3da
1000a39e: 8b4614                   mov eax, dword ptr [esi + 0x14]
1000a3a1: 3d20059319               cmp eax, 0x19930520
1000a3a6: 740e                     je 0x1000a3b6
1000a3a8: 3d21059319               cmp eax, 0x19930521
1000a3ad: 7407                     je 0x1000a3b6
1000a3af: 3d22059319               cmp eax, 0x19930522
1000a3b4: 7524                     jne 0x1000a3da
1000a3b6: 837dcc00                 cmp dword ptr [ebp - 0x34], 0
1000a3ba: 751e                     jne 0x1000a3da
1000a3bc: 837de400                 cmp dword ptr [ebp - 0x1c], 0
1000a3c0: 7418                     je 0x1000a3da
1000a3c2: ff7618                   push dword ptr [esi + 0x18]
1000a3c5: e859faffff               call 0x10009e23
1000a3ca: 59                       pop ecx
1000a3cb: 85c0                     test eax, eax
1000a3cd: 740b                     je 0x1000a3da
1000a3cf: ff7510                   push dword ptr [ebp + 0x10]
1000a3d2: 56                       push esi
1000a3d3: e825fdffff               call 0x1000a0fd
1000a3d8: 59                       pop ecx
1000a3d9: 59                       pop ecx
1000a3da: c3                       ret 
1000a3db: 6a0c                     push 0xc
1000a3dd: 68c8df0010               push 0x1000dfc8
1000a3e2: e819caffff               call 0x10006e00
1000a3e7: 33d2                     xor edx, edx
1000a3e9: 8955e4                   mov dword ptr [ebp - 0x1c], edx
1000a3ec: 8b4510                   mov eax, dword ptr [ebp + 0x10]
1000a3ef: 8b4804                   mov ecx, dword ptr [eax + 4]
1000a3f2: 3bca                     cmp ecx, edx
1000a3f4: 0f8458010000             je 0x1000a552
1000a3fa: 385108                   cmp byte ptr [ecx + 8], dl
1000a3fd: 0f844f010000             je 0x1000a552
1000a403: 8b4808                   mov ecx, dword ptr [eax + 8]
1000a406: 3bca                     cmp ecx, edx
1000a408: 750c                     jne 0x1000a416
1000a40a: f70000000080             test dword ptr [eax], 0x80000000
1000a410: 0f843c010000             je 0x1000a552
1000a416: 8b00                     mov eax, dword ptr [eax]
1000a418: 8b750c                   mov esi, dword ptr [ebp + 0xc]
1000a41b: 85c0                     test eax, eax
1000a41d: 7804                     js 0x1000a423
1000a41f: 8d74310c                 lea esi, [ecx + esi + 0xc]
1000a423: 8955fc                   mov dword ptr [ebp - 4], edx
1000a426: 33db                     xor ebx, ebx
1000a428: 43                       inc ebx
1000a429: 53                       push ebx
1000a42a: a808                     test al, 8
1000a42c: 7441                     je 0x1000a46f
1000a42e: 8b7d08                   mov edi, dword ptr [ebp + 8]
1000a431: ff7718                   push dword ptr [edi + 0x18]
1000a434: e829080000               call 0x1000ac62
1000a439: 59                       pop ecx
1000a43a: 59                       pop ecx
1000a43b: 85c0                     test eax, eax
1000a43d: 0f84f2000000             je 0x1000a535
1000a443: 53                       push ebx
1000a444: 56                       push esi
1000a445: e818080000               call 0x1000ac62
1000a44a: 59                       pop ecx
1000a44b: 59                       pop ecx
1000a44c: 85c0                     test eax, eax
1000a44e: 0f84e1000000             je 0x1000a535
1000a454: 8b4718                   mov eax, dword ptr [edi + 0x18]
1000a457: 8906                     mov dword ptr [esi], eax
1000a459: 8b4d14                   mov ecx, dword ptr [ebp + 0x14]
1000a45c: 83c108                   add ecx, 8
1000a45f: 51                       push ecx
1000a460: 50                       push eax
1000a461: e8ecfcffff               call 0x1000a152
1000a466: 59                       pop ecx
1000a467: 59                       pop ecx
1000a468: 8906                     mov dword ptr [esi], eax
1000a46a: e9cb000000               jmp 0x1000a53a
1000a46f: 8b7d14                   mov edi, dword ptr [ebp + 0x14]
1000a472: 8b4508                   mov eax, dword ptr [ebp + 8]
1000a475: ff7018                   push dword ptr [eax + 0x18]
1000a478: 841f                     test byte ptr [edi], bl
1000a47a: 7448                     je 0x1000a4c4
1000a47c: e8e1070000               call 0x1000ac62
1000a481: 59                       pop ecx
1000a482: 59                       pop ecx
1000a483: 85c0                     test eax, eax
1000a485: 0f84aa000000             je 0x1000a535
1000a48b: 53                       push ebx
1000a48c: 56                       push esi
1000a48d: e8d0070000               call 0x1000ac62
1000a492: 59                       pop ecx
1000a493: 59                       pop ecx
1000a494: 85c0                     test eax, eax
1000a496: 0f8499000000             je 0x1000a535
1000a49c: ff7714                   push dword ptr [edi + 0x14]
1000a49f: 8b4508                   mov eax, dword ptr [ebp + 8]
1000a4a2: ff7018                   push dword ptr [eax + 0x18]
1000a4a5: 56                       push esi
1000a4a6: e865a8ffff               call 0x10004d10
1000a4ab: 83c40c                   add esp, 0xc
1000a4ae: 837f1404                 cmp dword ptr [edi + 0x14], 4
1000a4b2: 0f8582000000             jne 0x1000a53a
1000a4b8: 8b06                     mov eax, dword ptr [esi]
1000a4ba: 85c0                     test eax, eax
1000a4bc: 747c                     je 0x1000a53a
1000a4be: 83c708                   add edi, 8
1000a4c1: 57                       push edi
1000a4c2: eb9c                     jmp 0x1000a460
1000a4c4: 395718                   cmp dword ptr [edi + 0x18], edx
1000a4c7: 7538                     jne 0x1000a501
1000a4c9: e894070000               call 0x1000ac62
1000a4ce: 59                       pop ecx
1000a4cf: 59                       pop ecx
1000a4d0: 85c0                     test eax, eax
1000a4d2: 7461                     je 0x1000a535
1000a4d4: 53                       push ebx
1000a4d5: 56                       push esi
1000a4d6: e887070000               call 0x1000ac62
1000a4db: 59                       pop ecx
1000a4dc: 59                       pop ecx
1000a4dd: 85c0                     test eax, eax
1000a4df: 7454                     je 0x1000a535
1000a4e1: ff7714                   push dword ptr [edi + 0x14]
1000a4e4: 83c708                   add edi, 8
1000a4e7: 57                       push edi
1000a4e8: 8b4508                   mov eax, dword ptr [ebp + 8]
1000a4eb: ff7018                   push dword ptr [eax + 0x18]
1000a4ee: e85ffcffff               call 0x1000a152
1000a4f3: 59                       pop ecx
1000a4f4: 59                       pop ecx
1000a4f5: 50                       push eax
1000a4f6: 56                       push esi
1000a4f7: e814a8ffff               call 0x10004d10
1000a4fc: 83c40c                   add esp, 0xc
1000a4ff: eb39                     jmp 0x1000a53a
1000a501: e85c070000               call 0x1000ac62
1000a506: 59                       pop ecx
1000a507: 59                       pop ecx
1000a508: 85c0                     test eax, eax
1000a50a: 7429                     je 0x1000a535
1000a50c: 53                       push ebx
1000a50d: 56                       push esi
1000a50e: e84f070000               call 0x1000ac62
1000a513: 59                       pop ecx
1000a514: 59                       pop ecx
1000a515: 85c0                     test eax, eax
1000a517: 741c                     je 0x1000a535
1000a519: ff7718                   push dword ptr [edi + 0x18]
1000a51c: e841070000               call 0x1000ac62
1000a521: 59                       pop ecx
1000a522: 85c0                     test eax, eax
1000a524: 740f                     je 0x1000a535
1000a526: f60704                   test byte ptr [edi], 4
1000a529: 6a00                     push 0
1000a52b: 58                       pop eax
1000a52c: 0f95c0                   setne al
1000a52f: 40                       inc eax
1000a530: 8945e4                   mov dword ptr [ebp - 0x1c], eax
1000a533: eb05                     jmp 0x1000a53a
1000a535: e8e4d1ffff               call 0x1000771e
1000a53a: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000a541: 8b45e4                   mov eax, dword ptr [ebp - 0x1c]
1000a544: eb0e                     jmp 0x1000a554
1000a546: 33c0                     xor eax, eax
1000a548: 40                       inc eax
1000a549: c3                       ret 
1000a54a: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
1000a54d: e880d1ffff               call 0x100076d2
1000a552: 33c0                     xor eax, eax
1000a554: e8ecc8ffff               call 0x10006e45
1000a559: c3                       ret 
1000a55a: 6a08                     push 8
1000a55c: 68e8df0010               push 0x1000dfe8
1000a561: e89ac8ffff               call 0x10006e00
1000a566: 8b4510                   mov eax, dword ptr [ebp + 0x10]
1000a569: f70000000080             test dword ptr [eax], 0x80000000
1000a56f: 7405                     je 0x1000a576
1000a571: 8b5d0c                   mov ebx, dword ptr [ebp + 0xc]
1000a574: eb0a                     jmp 0x1000a580
1000a576: 8b4808                   mov ecx, dword ptr [eax + 8]
1000a579: 8b550c                   mov edx, dword ptr [ebp + 0xc]
1000a57c: 8d5c110c                 lea ebx, [ecx + edx + 0xc]
1000a580: 8365fc00                 and dword ptr [ebp - 4], 0
1000a584: 8b7514                   mov esi, dword ptr [ebp + 0x14]
1000a587: 56                       push esi
1000a588: 50                       push eax
1000a589: ff750c                   push dword ptr [ebp + 0xc]
1000a58c: 8b7d08                   mov edi, dword ptr [ebp + 8]
1000a58f: 57                       push edi
1000a590: e846feffff               call 0x1000a3db
1000a595: 83c410                   add esp, 0x10
1000a598: 48                       dec eax
1000a599: 741f                     je 0x1000a5ba
1000a59b: 48                       dec eax
1000a59c: 7534                     jne 0x1000a5d2
1000a59e: 6a01                     push 1
1000a5a0: 8d4608                   lea eax, [esi + 8]
1000a5a3: 50                       push eax
1000a5a4: ff7718                   push dword ptr [edi + 0x18]
1000a5a7: e8a6fbffff               call 0x1000a152
1000a5ac: 59                       pop ecx
1000a5ad: 59                       pop ecx
1000a5ae: 50                       push eax
1000a5af: ff7618                   push dword ptr [esi + 0x18]
1000a5b2: 53                       push ebx
1000a5b3: e892f5ffff               call 0x10009b4a
1000a5b8: eb18                     jmp 0x1000a5d2
1000a5ba: 8d4608                   lea eax, [esi + 8]
1000a5bd: 50                       push eax
1000a5be: ff7718                   push dword ptr [edi + 0x18]
1000a5c1: e88cfbffff               call 0x1000a152
1000a5c6: 59                       pop ecx
1000a5c7: 59                       pop ecx
1000a5c8: 50                       push eax
1000a5c9: ff7618                   push dword ptr [esi + 0x18]
1000a5cc: 53                       push ebx
1000a5cd: e878f5ffff               call 0x10009b4a
1000a5d2: c745fcfeffffff           mov dword ptr [ebp - 4], 0xfffffffe
1000a5d9: e867c8ffff               call 0x10006e45
1000a5de: c3                       ret 
1000a5df: 33c0                     xor eax, eax
1000a5e1: 40                       inc eax
1000a5e2: c3                       ret 
1000a5e3: 8b65e8                   mov esp, dword ptr [ebp - 0x18]
1000a5e6: e8e7d0ffff               call 0x100076d2
1000a5eb: cc                       int3 
1000a5ec: 8bff                     mov edi, edi
1000a5ee: 55                       push ebp
1000a5ef: 8bec                     mov ebp, esp
1000a5f1: 837d1800                 cmp dword ptr [ebp + 0x18], 0
1000a5f5: 7410                     je 0x1000a607
1000a5f7: ff7518                   push dword ptr [ebp + 0x18]
1000a5fa: 53                       push ebx
1000a5fb: 56                       push esi
1000a5fc: ff7508                   push dword ptr [ebp + 8]
1000a5ff: e856ffffff               call 0x1000a55a
1000a604: 83c410                   add esp, 0x10
1000a607: 837d2000                 cmp dword ptr [ebp + 0x20], 0
1000a60b: ff7508                   push dword ptr [ebp + 8]
1000a60e: 7503                     jne 0x1000a613
1000a610: 56                       push esi
1000a611: eb03                     jmp 0x1000a616
1000a613: ff7520                   push dword ptr [ebp + 0x20]
1000a616: e836f5ffff               call 0x10009b51
1000a61b: ff37                     push dword ptr [edi]
1000a61d: ff7514                   push dword ptr [ebp + 0x14]
1000a620: ff7510                   push dword ptr [ebp + 0x10]
1000a623: 56                       push esi
1000a624: e8b3f9ffff               call 0x10009fdc
1000a629: 8b4704                   mov eax, dword ptr [edi + 4]
1000a62c: 6800010000               push 0x100
1000a631: ff751c                   push dword ptr [ebp + 0x1c]
1000a634: 40                       inc eax
1000a635: ff7514                   push dword ptr [ebp + 0x14]
1000a638: 894608                   mov dword ptr [esi + 8], eax
1000a63b: ff750c                   push dword ptr [ebp + 0xc]
1000a63e: 8b4b0c                   mov ecx, dword ptr [ebx + 0xc]
1000a641: 56                       push esi
1000a642: ff7508                   push dword ptr [ebp + 8]
1000a645: e8f5fbffff               call 0x1000a23f
1000a64a: 83c428                   add esp, 0x28
1000a64d: 85c0                     test eax, eax
1000a64f: 7407                     je 0x1000a658
1000a651: 56                       push esi
1000a652: 50                       push eax
1000a653: e8c0f4ffff               call 0x10009b18
1000a658: 5d                       pop ebp
1000a659: c3                       ret 
1000a65a: 8bff                     mov edi, edi
1000a65c: 55                       push ebp
1000a65d: 8bec                     mov ebp, esp
1000a65f: 83ec0c                   sub esp, 0xc
1000a662: 56                       push esi
1000a663: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a666: 813e03000080             cmp dword ptr [esi], 0x80000003
1000a66c: 0f84ec000000             je 0x1000a75e
1000a672: 57                       push edi
1000a673: e8c9bcffff               call 0x10006341
1000a678: 83b88000000000           cmp dword ptr [eax + 0x80], 0
1000a67f: 7447                     je 0x1000a6c8
1000a681: e8bbbcffff               call 0x10006341
1000a686: 8db880000000             lea edi, [eax + 0x80]
1000a68c: e800bbffff               call 0x10006191
1000a691: 3907                     cmp dword ptr [edi], eax
1000a693: 7433                     je 0x1000a6c8
1000a695: 8b06                     mov eax, dword ptr [esi]
1000a697: 3d4d4f43e0               cmp eax, 0xe0434f4d
1000a69c: 742a                     je 0x1000a6c8
1000a69e: 3d524343e0               cmp eax, 0xe0434352
1000a6a3: 7423                     je 0x1000a6c8
1000a6a5: ff7524                   push dword ptr [ebp + 0x24]
1000a6a8: ff7520                   push dword ptr [ebp + 0x20]
1000a6ab: ff7518                   push dword ptr [ebp + 0x18]
1000a6ae: ff7514                   push dword ptr [ebp + 0x14]
1000a6b1: ff7510                   push dword ptr [ebp + 0x10]
1000a6b4: ff750c                   push dword ptr [ebp + 0xc]
1000a6b7: 56                       push esi
1000a6b8: e851f5ffff               call 0x10009c0e
1000a6bd: 83c41c                   add esp, 0x1c
1000a6c0: 85c0                     test eax, eax
1000a6c2: 0f8595000000             jne 0x1000a75d
1000a6c8: 8b7d18                   mov edi, dword ptr [ebp + 0x18]
1000a6cb: 837f0c00                 cmp dword ptr [edi + 0xc], 0
1000a6cf: 7505                     jne 0x1000a6d6
1000a6d1: e848d0ffff               call 0x1000771e
1000a6d6: 8b751c                   mov esi, dword ptr [ebp + 0x1c]
1000a6d9: 8d45f4                   lea eax, [ebp - 0xc]
1000a6dc: 50                       push eax
1000a6dd: 8d45fc                   lea eax, [ebp - 4]
1000a6e0: 50                       push eax
1000a6e1: 56                       push esi
1000a6e2: ff7520                   push dword ptr [ebp + 0x20]
1000a6e5: 57                       push edi
1000a6e6: e899f6ffff               call 0x10009d84
1000a6eb: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
1000a6ee: 83c414                   add esp, 0x14
1000a6f1: 3b4df4                   cmp ecx, dword ptr [ebp - 0xc]
1000a6f4: 7367                     jae 0x1000a75d
1000a6f6: 83c00c                   add eax, 0xc
1000a6f9: 8945f8                   mov dword ptr [ebp - 8], eax
1000a6fc: 53                       push ebx
1000a6fd: 8d78f4                   lea edi, [eax - 0xc]
1000a700: 3b37                     cmp esi, dword ptr [edi]
1000a702: 7c47                     jl 0x1000a74b
1000a704: 3b70f8                   cmp esi, dword ptr [eax - 8]
1000a707: 7f42                     jg 0x1000a74b
1000a709: 8b08                     mov ecx, dword ptr [eax]
1000a70b: c1e104                   shl ecx, 4
1000a70e: 034804                   add ecx, dword ptr [eax + 4]
1000a711: 8b51f4                   mov edx, dword ptr [ecx - 0xc]
1000a714: 85d2                     test edx, edx
1000a716: 7406                     je 0x1000a71e
1000a718: 807a0800                 cmp byte ptr [edx + 8], 0
1000a71c: 752d                     jne 0x1000a74b
1000a71e: 8d59f0                   lea ebx, [ecx - 0x10]
1000a721: f60340                   test byte ptr [ebx], 0x40
1000a724: 7525                     jne 0x1000a74b
1000a726: ff7524                   push dword ptr [ebp + 0x24]
1000a729: 8b750c                   mov esi, dword ptr [ebp + 0xc]
1000a72c: ff7520                   push dword ptr [ebp + 0x20]
1000a72f: 6a00                     push 0
1000a731: ff7518                   push dword ptr [ebp + 0x18]
1000a734: ff7514                   push dword ptr [ebp + 0x14]
1000a737: ff7510                   push dword ptr [ebp + 0x10]
1000a73a: ff7508                   push dword ptr [ebp + 8]
1000a73d: e8aafeffff               call 0x1000a5ec
1000a742: 8b751c                   mov esi, dword ptr [ebp + 0x1c]
1000a745: 8b45f8                   mov eax, dword ptr [ebp - 8]
1000a748: 83c41c                   add esp, 0x1c
1000a74b: ff45fc                   inc dword ptr [ebp - 4]
1000a74e: 8b4dfc                   mov ecx, dword ptr [ebp - 4]
1000a751: 83c014                   add eax, 0x14
1000a754: 8945f8                   mov dword ptr [ebp - 8], eax
1000a757: 3b4df4                   cmp ecx, dword ptr [ebp - 0xc]
1000a75a: 72a1                     jb 0x1000a6fd
1000a75c: 5b                       pop ebx
1000a75d: 5f                       pop edi
1000a75e: 5e                       pop esi
1000a75f: c9                       leave 
1000a760: c3                       ret 
1000a761: 8bff                     mov edi, edi
1000a763: 55                       push ebp
1000a764: 8bec                     mov ebp, esp
1000a766: 83ec34                   sub esp, 0x34
1000a769: 8b4d0c                   mov ecx, dword ptr [ebp + 0xc]
1000a76c: 53                       push ebx
1000a76d: 8b5d18                   mov ebx, dword ptr [ebp + 0x18]
1000a770: 8b4304                   mov eax, dword ptr [ebx + 4]
1000a773: 56                       push esi
1000a774: 57                       push edi
1000a775: c645ff00                 mov byte ptr [ebp - 1], 0
1000a779: 3d80000000               cmp eax, 0x80
1000a77e: 7f06                     jg 0x1000a786
1000a780: 0fbe4908                 movsx ecx, byte ptr [ecx + 8]
1000a784: eb03                     jmp 0x1000a789
1000a786: 8b4908                   mov ecx, dword ptr [ecx + 8]
1000a789: 894df8                   mov dword ptr [ebp - 8], ecx
1000a78c: 83f9ff                   cmp ecx, -1
1000a78f: 7c04                     jl 0x1000a795
1000a791: 3bc8                     cmp ecx, eax
1000a793: 7c05                     jl 0x1000a79a
1000a795: e884cfffff               call 0x1000771e
1000a79a: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a79d: bf63736de0               mov edi, 0xe06d7363
1000a7a2: 393e                     cmp dword ptr [esi], edi
1000a7a4: 0f85e8020000             jne 0x1000aa92
1000a7aa: 837e1003                 cmp dword ptr [esi + 0x10], 3
1000a7ae: bb20059319               mov ebx, 0x19930520
1000a7b3: 0f8529010000             jne 0x1000a8e2
1000a7b9: 8b4614                   mov eax, dword ptr [esi + 0x14]
1000a7bc: 3bc3                     cmp eax, ebx
1000a7be: 7412                     je 0x1000a7d2
1000a7c0: 3d21059319               cmp eax, 0x19930521
1000a7c5: 740b                     je 0x1000a7d2
1000a7c7: 3d22059319               cmp eax, 0x19930522
1000a7cc: 0f8510010000             jne 0x1000a8e2
1000a7d2: 837e1c00                 cmp dword ptr [esi + 0x1c], 0
1000a7d6: 0f8506010000             jne 0x1000a8e2
1000a7dc: e860bbffff               call 0x10006341
1000a7e1: 83b88800000000           cmp dword ptr [eax + 0x88], 0
1000a7e8: 0f84e3020000             je 0x1000aad1
1000a7ee: e84ebbffff               call 0x10006341
1000a7f3: 8bb088000000             mov esi, dword ptr [eax + 0x88]
1000a7f9: 897508                   mov dword ptr [ebp + 8], esi
1000a7fc: e840bbffff               call 0x10006341
1000a801: 8b808c000000             mov eax, dword ptr [eax + 0x8c]
1000a807: 6a01                     push 1
1000a809: 56                       push esi
1000a80a: 894510                   mov dword ptr [ebp + 0x10], eax
1000a80d: e850040000               call 0x1000ac62
1000a812: 59                       pop ecx
1000a813: 59                       pop ecx
1000a814: 85c0                     test eax, eax
1000a816: 7505                     jne 0x1000a81d
1000a818: e801cfffff               call 0x1000771e
1000a81d: 393e                     cmp dword ptr [esi], edi
1000a81f: 7526                     jne 0x1000a847
1000a821: 837e1003                 cmp dword ptr [esi + 0x10], 3
1000a825: 7520                     jne 0x1000a847
1000a827: 8b4614                   mov eax, dword ptr [esi + 0x14]
1000a82a: 3bc3                     cmp eax, ebx
1000a82c: 740e                     je 0x1000a83c
1000a82e: 3d21059319               cmp eax, 0x19930521
1000a833: 7407                     je 0x1000a83c
1000a835: 3d22059319               cmp eax, 0x19930522
1000a83a: 750b                     jne 0x1000a847
1000a83c: 837e1c00                 cmp dword ptr [esi + 0x1c], 0
1000a840: 7505                     jne 0x1000a847
1000a842: e8d7ceffff               call 0x1000771e
1000a847: e8f5baffff               call 0x10006341
1000a84c: 83b89400000000           cmp dword ptr [eax + 0x94], 0
1000a853: 0f8489000000             je 0x1000a8e2
1000a859: e8e3baffff               call 0x10006341
1000a85e: 8bb894000000             mov edi, dword ptr [eax + 0x94]
1000a864: e8d8baffff               call 0x10006341
1000a869: ff7508                   push dword ptr [ebp + 8]
1000a86c: 33f6                     xor esi, esi
1000a86e: 89b094000000             mov dword ptr [eax + 0x94], esi
1000a874: e802f9ffff               call 0x1000a17b
1000a879: 59                       pop ecx
1000a87a: 84c0                     test al, al
1000a87c: 755c                     jne 0x1000a8da
1000a87e: 33db                     xor ebx, ebx
1000a880: 391f                     cmp dword ptr [edi], ebx
1000a882: 7e1d                     jle 0x1000a8a1
1000a884: 8b4704                   mov eax, dword ptr [edi + 4]
1000a887: 8b4c0304                 mov ecx, dword ptr [ebx + eax + 4]
1000a88b: 68e0fc0010               push 0x1000fce0
1000a890: e88da8ffff               call 0x10005122
1000a895: 84c0                     test al, al
1000a897: 750d                     jne 0x1000a8a6
1000a899: 46                       inc esi
1000a89a: 83c310                   add ebx, 0x10
1000a89d: 3b37                     cmp esi, dword ptr [edi]
1000a89f: 7ce3                     jl 0x1000a884
1000a8a1: e82cceffff               call 0x100076d2
1000a8a6: 6a01                     push 1
1000a8a8: ff7508                   push dword ptr [ebp + 8]
1000a8ab: e84df8ffff               call 0x1000a0fd
1000a8b0: 59                       pop ecx
1000a8b1: 59                       pop ecx
1000a8b2: 8d4508                   lea eax, [ebp + 8]
1000a8b5: 50                       push eax
1000a8b6: 8d4dcc                   lea ecx, [ebp - 0x34]
1000a8b9: c7450810d50010           mov dword ptr [ebp + 8], 0x1000d510
1000a8c0: e88ca3ffff               call 0x10004c51
1000a8c5: 6804e00010               push 0x1000e004
1000a8ca: 8d45cc                   lea eax, [ebp - 0x34]
1000a8cd: 50                       push eax
1000a8ce: c745cc08d50010           mov dword ptr [ebp - 0x34], 0x1000d508
1000a8d5: e863acffff               call 0x1000553d
1000a8da: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a8dd: bf63736de0               mov edi, 0xe06d7363
1000a8e2: 393e                     cmp dword ptr [esi], edi
1000a8e4: 0f85a5010000             jne 0x1000aa8f
1000a8ea: 837e1003                 cmp dword ptr [esi + 0x10], 3
1000a8ee: 0f859b010000             jne 0x1000aa8f
1000a8f4: 8b4614                   mov eax, dword ptr [esi + 0x14]
1000a8f7: 3bc3                     cmp eax, ebx
1000a8f9: 7412                     je 0x1000a90d
1000a8fb: 3d21059319               cmp eax, 0x19930521
1000a900: 740b                     je 0x1000a90d
1000a902: 3d22059319               cmp eax, 0x19930522
1000a907: 0f8582010000             jne 0x1000aa8f
1000a90d: 8b7d18                   mov edi, dword ptr [ebp + 0x18]
1000a910: 837f0c00                 cmp dword ptr [edi + 0xc], 0
1000a914: 0f86dc000000             jbe 0x1000a9f6
1000a91a: 8d45e0                   lea eax, [ebp - 0x20]
1000a91d: 50                       push eax
1000a91e: 8d45f0                   lea eax, [ebp - 0x10]
1000a921: 50                       push eax
1000a922: ff75f8                   push dword ptr [ebp - 8]
1000a925: ff7520                   push dword ptr [ebp + 0x20]
1000a928: 57                       push edi
1000a929: e856f4ffff               call 0x10009d84
1000a92e: 8b4df0                   mov ecx, dword ptr [ebp - 0x10]
1000a931: 83c414                   add esp, 0x14
1000a934: 3b4de0                   cmp ecx, dword ptr [ebp - 0x20]
1000a937: 0f83b9000000             jae 0x1000a9f6
1000a93d: 8d7810                   lea edi, [eax + 0x10]
1000a940: 897de4                   mov dword ptr [ebp - 0x1c], edi
1000a943: 8b4df8                   mov ecx, dword ptr [ebp - 8]
1000a946: 8d47f0                   lea eax, [edi - 0x10]
1000a949: 8945d8                   mov dword ptr [ebp - 0x28], eax
1000a94c: 3908                     cmp dword ptr [eax], ecx
1000a94e: 0f8f8a000000             jg 0x1000a9de
1000a954: 3b4ff4                   cmp ecx, dword ptr [edi - 0xc]
1000a957: 0f8f81000000             jg 0x1000a9de
1000a95d: 8b07                     mov eax, dword ptr [edi]
1000a95f: 8945f4                   mov dword ptr [ebp - 0xc], eax
1000a962: 8b47fc                   mov eax, dword ptr [edi - 4]
1000a965: 8945e8                   mov dword ptr [ebp - 0x18], eax
1000a968: 85c0                     test eax, eax
1000a96a: 7e72                     jle 0x1000a9de
1000a96c: 8b461c                   mov eax, dword ptr [esi + 0x1c]
1000a96f: 8b400c                   mov eax, dword ptr [eax + 0xc]
1000a972: 8d5804                   lea ebx, [eax + 4]
1000a975: 8b00                     mov eax, dword ptr [eax]
1000a977: 8945ec                   mov dword ptr [ebp - 0x14], eax
1000a97a: 85c0                     test eax, eax
1000a97c: 7e23                     jle 0x1000a9a1
1000a97e: ff761c                   push dword ptr [esi + 0x1c]
1000a981: 8b03                     mov eax, dword ptr [ebx]
1000a983: 50                       push eax
1000a984: ff75f4                   push dword ptr [ebp - 0xc]
1000a987: 8945dc                   mov dword ptr [ebp - 0x24], eax
1000a98a: e89ff5ffff               call 0x10009f2e
1000a98f: 83c40c                   add esp, 0xc
1000a992: 85c0                     test eax, eax
1000a994: 751a                     jne 0x1000a9b0
1000a996: ff4dec                   dec dword ptr [ebp - 0x14]
1000a999: 83c304                   add ebx, 4
1000a99c: 3945ec                   cmp dword ptr [ebp - 0x14], eax
1000a99f: 7fdd                     jg 0x1000a97e
1000a9a1: ff4de8                   dec dword ptr [ebp - 0x18]
1000a9a4: 8345f410                 add dword ptr [ebp - 0xc], 0x10
1000a9a8: 837de800                 cmp dword ptr [ebp - 0x18], 0
1000a9ac: 7fbe                     jg 0x1000a96c
1000a9ae: eb2e                     jmp 0x1000a9de
1000a9b0: ff7524                   push dword ptr [ebp + 0x24]
1000a9b3: 8b7dd8                   mov edi, dword ptr [ebp - 0x28]
1000a9b6: ff7520                   push dword ptr [ebp + 0x20]
1000a9b9: 8b5df4                   mov ebx, dword ptr [ebp - 0xc]
1000a9bc: ff75dc                   push dword ptr [ebp - 0x24]
1000a9bf: c645ff01                 mov byte ptr [ebp - 1], 1
1000a9c3: ff7518                   push dword ptr [ebp + 0x18]
1000a9c6: ff7514                   push dword ptr [ebp + 0x14]
1000a9c9: ff7510                   push dword ptr [ebp + 0x10]
1000a9cc: 56                       push esi
1000a9cd: 8b750c                   mov esi, dword ptr [ebp + 0xc]
1000a9d0: e817fcffff               call 0x1000a5ec
1000a9d5: 8b7508                   mov esi, dword ptr [ebp + 8]
1000a9d8: 8b7de4                   mov edi, dword ptr [ebp - 0x1c]
1000a9db: 83c41c                   add esp, 0x1c
1000a9de: ff45f0                   inc dword ptr [ebp - 0x10]
1000a9e1: 8b45f0                   mov eax, dword ptr [ebp - 0x10]
1000a9e4: 83c714                   add edi, 0x14
1000a9e7: 897de4                   mov dword ptr [ebp - 0x1c], edi
1000a9ea: 3b45e0                   cmp eax, dword ptr [ebp - 0x20]
1000a9ed: 0f8250ffffff             jb 0x1000a943
1000a9f3: 8b7d18                   mov edi, dword ptr [ebp + 0x18]
1000a9f6: 807d1c00                 cmp byte ptr [ebp + 0x1c], 0
1000a9fa: 740a                     je 0x1000aa06
1000a9fc: 6a01                     push 1
1000a9fe: 56                       push esi
1000a9ff: e8f9f6ffff               call 0x1000a0fd
1000aa04: 59                       pop ecx
1000aa05: 59                       pop ecx
1000aa06: 807dff00                 cmp byte ptr [ebp - 1], 0
1000aa0a: 0f85ae000000             jne 0x1000aabe
1000aa10: 8b07                     mov eax, dword ptr [edi]
1000aa12: 25ffffff1f               and eax, 0x1fffffff
1000aa17: 3d21059319               cmp eax, 0x19930521
1000aa1c: 0f829c000000             jb 0x1000aabe
1000aa22: 8b7f1c                   mov edi, dword ptr [edi + 0x1c]
1000aa25: 85ff                     test edi, edi
1000aa27: 0f8491000000             je 0x1000aabe
1000aa2d: 56                       push esi
1000aa2e: e848f7ffff               call 0x1000a17b
1000aa33: 59                       pop ecx
1000aa34: 84c0                     test al, al
1000aa36: 0f8582000000             jne 0x1000aabe
1000aa3c: e800b9ffff               call 0x10006341
1000aa41: e8fbb8ffff               call 0x10006341
1000aa46: e8f6b8ffff               call 0x10006341
1000aa4b: 89b088000000             mov dword ptr [eax + 0x88], esi
1000aa51: e8ebb8ffff               call 0x10006341
1000aa56: 837d2400                 cmp dword ptr [ebp + 0x24], 0
1000aa5a: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
1000aa5d: 89888c000000             mov dword ptr [eax + 0x8c], ecx
1000aa63: 56                       push esi
1000aa64: 7505                     jne 0x1000aa6b
1000aa66: ff750c                   push dword ptr [ebp + 0xc]
1000aa69: eb03                     jmp 0x1000aa6e
1000aa6b: ff7524                   push dword ptr [ebp + 0x24]
1000aa6e: e8def0ffff               call 0x10009b51
1000aa73: 8b7518                   mov esi, dword ptr [ebp + 0x18]
1000aa76: 6aff                     push -1
1000aa78: 56                       push esi
1000aa79: ff7514                   push dword ptr [ebp + 0x14]
1000aa7c: ff750c                   push dword ptr [ebp + 0xc]
1000aa7f: e858f5ffff               call 0x10009fdc
1000aa84: 83c410                   add esp, 0x10
1000aa87: ff761c                   push dword ptr [esi + 0x1c]
1000aa8a: e867f7ffff               call 0x1000a1f6
1000aa8f: 8b5d18                   mov ebx, dword ptr [ebp + 0x18]
1000aa92: 837b0c00                 cmp dword ptr [ebx + 0xc], 0
1000aa96: 7626                     jbe 0x1000aabe
1000aa98: 807d1c00                 cmp byte ptr [ebp + 0x1c], 0
1000aa9c: 0f85fffdffff             jne 0x1000a8a1
1000aaa2: ff7524                   push dword ptr [ebp + 0x24]
1000aaa5: ff7520                   push dword ptr [ebp + 0x20]
1000aaa8: ff75f8                   push dword ptr [ebp - 8]
1000aaab: 53                       push ebx
1000aaac: ff7514                   push dword ptr [ebp + 0x14]
1000aaaf: ff7510                   push dword ptr [ebp + 0x10]
1000aab2: ff750c                   push dword ptr [ebp + 0xc]
1000aab5: 56                       push esi
1000aab6: e89ffbffff               call 0x1000a65a
1000aabb: 83c420                   add esp, 0x20
1000aabe: e87eb8ffff               call 0x10006341
1000aac3: 83b89400000000           cmp dword ptr [eax + 0x94], 0
1000aaca: 7405                     je 0x1000aad1
1000aacc: e84dccffff               call 0x1000771e
1000aad1: 5f                       pop edi
1000aad2: 5e                       pop esi
1000aad3: 5b                       pop ebx
1000aad4: c9                       leave 
1000aad5: c3                       ret 
1000aad6: 8bff                     mov edi, edi
1000aad8: 55                       push ebp
1000aad9: 8bec                     mov ebp, esp
1000aadb: 56                       push esi
1000aadc: ff7508                   push dword ptr [ebp + 8]
1000aadf: 8bf1                     mov esi, ecx
1000aae1: e8f9a1ffff               call 0x10004cdf
1000aae6: c70608d50010             mov dword ptr [esi], 0x1000d508
1000aaec: 8bc6                     mov eax, esi
1000aaee: 5e                       pop esi
1000aaef: 5d                       pop ebp
1000aaf0: c20400                   ret 4
1000aaf3: 8bff                     mov edi, edi
1000aaf5: 55                       push ebp
1000aaf6: 8bec                     mov ebp, esp
1000aaf8: 53                       push ebx
1000aaf9: 56                       push esi
1000aafa: 57                       push edi
1000aafb: e841b8ffff               call 0x10006341
1000ab00: 83b80c02000000           cmp dword ptr [eax + 0x20c], 0
1000ab07: 8b4518                   mov eax, dword ptr [ebp + 0x18]
1000ab0a: 8b4d08                   mov ecx, dword ptr [ebp + 8]
1000ab0d: bf63736de0               mov edi, 0xe06d7363
1000ab12: beffffff1f               mov esi, 0x1fffffff
1000ab17: bb22059319               mov ebx, 0x19930522
1000ab1c: 7520                     jne 0x1000ab3e
1000ab1e: 8b11                     mov edx, dword ptr [ecx]
1000ab20: 3bd7                     cmp edx, edi
1000ab22: 741a                     je 0x1000ab3e
1000ab24: 81fa26000080             cmp edx, 0x80000026
1000ab2a: 7412                     je 0x1000ab3e
1000ab2c: 8b10                     mov edx, dword ptr [eax]
1000ab2e: 23d6                     and edx, esi
1000ab30: 3bd3                     cmp edx, ebx
1000ab32: 720a                     jb 0x1000ab3e
1000ab34: f6402001                 test byte ptr [eax + 0x20], 1
1000ab38: 0f8593000000             jne 0x1000abd1
1000ab3e: f6410466                 test byte ptr [ecx + 4], 0x66
1000ab42: 7423                     je 0x1000ab67
1000ab44: 83780400                 cmp dword ptr [eax + 4], 0
1000ab48: 0f8483000000             je 0x1000abd1
1000ab4e: 837d1c00                 cmp dword ptr [ebp + 0x1c], 0
1000ab52: 757d                     jne 0x1000abd1
1000ab54: 6aff                     push -1
1000ab56: 50                       push eax
1000ab57: ff7514                   push dword ptr [ebp + 0x14]
1000ab5a: ff750c                   push dword ptr [ebp + 0xc]
1000ab5d: e87af4ffff               call 0x10009fdc
1000ab62: 83c410                   add esp, 0x10
1000ab65: eb6a                     jmp 0x1000abd1
1000ab67: 83780c00                 cmp dword ptr [eax + 0xc], 0
1000ab6b: 7512                     jne 0x1000ab7f
1000ab6d: 8b10                     mov edx, dword ptr [eax]
1000ab6f: 23d6                     and edx, esi
1000ab71: 81fa21059319             cmp edx, 0x19930521
1000ab77: 7258                     jb 0x1000abd1
1000ab79: 83781c00                 cmp dword ptr [eax + 0x1c], 0
1000ab7d: 7452                     je 0x1000abd1
1000ab7f: 3939                     cmp dword ptr [ecx], edi
1000ab81: 7532                     jne 0x1000abb5
1000ab83: 83791003                 cmp dword ptr [ecx + 0x10], 3
1000ab87: 722c                     jb 0x1000abb5
1000ab89: 395914                   cmp dword ptr [ecx + 0x14], ebx
1000ab8c: 7627                     jbe 0x1000abb5
1000ab8e: 8b511c                   mov edx, dword ptr [ecx + 0x1c]
1000ab91: 8b5208                   mov edx, dword ptr [edx + 8]
1000ab94: 85d2                     test edx, edx
1000ab96: 741d                     je 0x1000abb5
1000ab98: 0fb67524                 movzx esi, byte ptr [ebp + 0x24]
1000ab9c: 56                       push esi
1000ab9d: ff7520                   push dword ptr [ebp + 0x20]
1000aba0: ff751c                   push dword ptr [ebp + 0x1c]
1000aba3: 50                       push eax
1000aba4: ff7514                   push dword ptr [ebp + 0x14]
1000aba7: ff7510                   push dword ptr [ebp + 0x10]
1000abaa: ff750c                   push dword ptr [ebp + 0xc]
1000abad: 51                       push ecx
1000abae: ffd2                     call edx
1000abb0: 83c420                   add esp, 0x20
1000abb3: eb1f                     jmp 0x1000abd4
1000abb5: ff7520                   push dword ptr [ebp + 0x20]
1000abb8: ff751c                   push dword ptr [ebp + 0x1c]
1000abbb: ff7524                   push dword ptr [ebp + 0x24]
1000abbe: 50                       push eax
1000abbf: ff7514                   push dword ptr [ebp + 0x14]
1000abc2: ff7510                   push dword ptr [ebp + 0x10]
1000abc5: ff750c                   push dword ptr [ebp + 0xc]
1000abc8: 51                       push ecx
1000abc9: e893fbffff               call 0x1000a761
1000abce: 83c420                   add esp, 0x20
1000abd1: 33c0                     xor eax, eax
1000abd3: 40                       inc eax
1000abd4: 5f                       pop edi
1000abd5: 5e                       pop esi
1000abd6: 5b                       pop ebx
1000abd7: 5d                       pop ebp
1000abd8: c3                       ret 
1000abd9: cc                       int3 
1000abda: cc                       int3 
1000abdb: cc                       int3 
1000abdc: cc                       int3 
1000abdd: cc                       int3 
1000abde: cc                       int3 
1000abdf: cc                       int3 
1000abe0: 55                       push ebp
1000abe1: 8bec                     mov ebp, esp
1000abe3: 83ec04                   sub esp, 4
1000abe6: 53                       push ebx
1000abe7: 51                       push ecx
1000abe8: 8b450c                   mov eax, dword ptr [ebp + 0xc]
1000abeb: 83c00c                   add eax, 0xc
1000abee: 8945fc                   mov dword ptr [ebp - 4], eax
1000abf1: 8b4508                   mov eax, dword ptr [ebp + 8]
1000abf4: 55                       push ebp
1000abf5: ff7510                   push dword ptr [ebp + 0x10]
1000abf8: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
1000abfb: 8b6dfc                   mov ebp, dword ptr [ebp - 4]
1000abfe: e8e9e0ffff               call 0x10008cec
1000ac03: 56                       push esi
1000ac04: 57                       push edi
1000ac05: ffd0                     call eax
1000ac07: 5f                       pop edi
1000ac08: 5e                       pop esi
1000ac09: 8bdd                     mov ebx, ebp
1000ac0b: 5d                       pop ebp
1000ac0c: 8b4d10                   mov ecx, dword ptr [ebp + 0x10]
1000ac0f: 55                       push ebp
1000ac10: 8beb                     mov ebp, ebx
1000ac12: 81f900010000             cmp ecx, 0x100
1000ac18: 7505                     jne 0x1000ac1f
1000ac1a: b902000000               mov ecx, 2
1000ac1f: 51                       push ecx
1000ac20: e8c7e0ffff               call 0x10008cec
1000ac25: 5d                       pop ebp
1000ac26: 59                       pop ecx
1000ac27: 5b                       pop ebx
1000ac28: c9                       leave 
1000ac29: c20c00                   ret 0xc
1000ac2c: 50                       push eax
1000ac2d: 64ff3500000000           push dword ptr fs:[0]
1000ac34: 8d44240c                 lea eax, [esp + 0xc]
1000ac38: 2b64240c                 sub esp, dword ptr [esp + 0xc]
1000ac3c: 53                       push ebx
1000ac3d: 56                       push esi
1000ac3e: 57                       push edi
1000ac3f: 8928                     mov dword ptr [eax], ebp
1000ac41: 8be8                     mov ebp, eax
1000ac43: a180f00010               mov eax, dword ptr [0x1000f080]
1000ac48: 33c5                     xor eax, ebp
1000ac4a: 50                       push eax
1000ac4b: 8965f0                   mov dword ptr [ebp - 0x10], esp
1000ac4e: ff75fc                   push dword ptr [ebp - 4]
1000ac51: c745fcffffffff           mov dword ptr [ebp - 4], 0xffffffff
1000ac58: 8d45f4                   lea eax, [ebp - 0xc]
1000ac5b: 64a300000000             mov dword ptr fs:[0], eax
1000ac61: c3                       ret 
1000ac62: 8bff                     mov edi, edi
1000ac64: 55                       push ebp
1000ac65: 8bec                     mov ebp, esp
1000ac67: 33c0                     xor eax, eax
1000ac69: 40                       inc eax
1000ac6a: 837d0800                 cmp dword ptr [ebp + 8], 0
1000ac6e: 7502                     jne 0x1000ac72
1000ac70: 33c0                     xor eax, eax
1000ac72: 5d                       pop ebp
1000ac73: c3                       ret 
1000ac74: cc                       int3 
1000ac75: cc                       int3 
1000ac76: cc                       int3 
1000ac77: cc                       int3 
1000ac78: cc                       int3 
1000ac79: cc                       int3 
1000ac7a: cc                       int3 
1000ac7b: cc                       int3 
1000ac7c: cc                       int3 
1000ac7d: cc                       int3 
1000ac7e: cc                       int3 
1000ac7f: cc                       int3 
1000ac80: 8b542408                 mov edx, dword ptr [esp + 8]
1000ac84: 8d420c                   lea eax, [edx + 0xc]
1000ac87: 8b4adc                   mov ecx, dword ptr [edx - 0x24]
1000ac8a: 33c8                     xor ecx, eax
1000ac8c: e8299fffff               call 0x10004bba
1000ac91: b8c8dd0010               mov eax, 0x1000ddc8
1000ac96: e90aefffff               jmp 0x10009ba5
1000ac9b: cc                       int3 
1000ac9c: cc                       int3 
1000ac9d: cc                       int3 
1000ac9e: cc                       int3 
1000ac9f: cc                       int3 
1000aca0: 8db518ffffff             lea esi, [ebp - 0xe8]
1000aca6: e9958fffff               jmp 0x10003c40
1000acab: 8b8508ffffff             mov eax, dword ptr [ebp - 0xf8]
1000acb1: 83e001                   and eax, 1
1000acb4: 0f8412000000             je 0x1000accc
1000acba: 83a508fffffffe           and dword ptr [ebp - 0xf8], 0xfffffffe
1000acc1: 8db56cffffff             lea esi, [ebp - 0x94]
1000acc7: e9748fffff               jmp 0x10003c40
1000accc: c3                       ret 
1000accd: 8b8508ffffff             mov eax, dword ptr [ebp - 0xf8]
1000acd3: 83e002                   and eax, 2
1000acd6: 0f8412000000             je 0x1000acee
1000acdc: 83a508fffffffd           and dword ptr [ebp - 0xf8], 0xfffffffd
1000ace3: 8db534ffffff             lea esi, [ebp - 0xcc]
1000ace9: e9528fffff               jmp 0x10003c40
1000acee: c3                       ret 
1000acef: 8b8508ffffff             mov eax, dword ptr [ebp - 0xf8]
1000acf5: 83e004                   and eax, 4
1000acf8: 0f8412000000             je 0x1000ad10
1000acfe: 83a508fffffffb           and dword ptr [ebp - 0xf8], 0xfffffffb
1000ad05: 8db550ffffff             lea esi, [ebp - 0xb0]
1000ad0b: e9308fffff               jmp 0x10003c40
1000ad10: c3                       ret 
1000ad11: 8b8508ffffff             mov eax, dword ptr [ebp - 0xf8]
1000ad17: 83e008                   and eax, 8
1000ad1a: 0f840f000000             je 0x1000ad2f
1000ad20: 83a508fffffff7           and dword ptr [ebp - 0xf8], 0xfffffff7
1000ad27: 8d7588                   lea esi, [ebp - 0x78]
1000ad2a: e9118fffff               jmp 0x10003c40
1000ad2f: c3                       ret 
1000ad30: 8b542408                 mov edx, dword ptr [esp + 8]
1000ad34: 8d8204ffffff             lea eax, [edx - 0xfc]
1000ad3a: 8b8a00ffffff             mov ecx, dword ptr [edx - 0x100]
1000ad40: 33c8                     xor ecx, eax
1000ad42: e8739effff               call 0x10004bba
1000ad47: 83c00c                   add eax, 0xc
1000ad4a: 8b4af8                   mov ecx, dword ptr [edx - 8]
1000ad4d: 33c8                     xor ecx, eax
1000ad4f: e8669effff               call 0x10004bba
1000ad54: b814de0010               mov eax, 0x1000de14
1000ad59: e947eeffff               jmp 0x10009ba5
1000ad5e: cc                       int3 
1000ad5f: cc                       int3 
1000ad60: 8db5fcfeffff             lea esi, [ebp - 0x104]
1000ad66: e9d58effff               jmp 0x10003c40
1000ad6b: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000ad71: 83e001                   and eax, 1
1000ad74: 0f8412000000             je 0x1000ad8c
1000ad7a: 83a5ecfefffffe           and dword ptr [ebp - 0x114], 0xfffffffe
1000ad81: 8db518ffffff             lea esi, [ebp - 0xe8]
1000ad87: e9b48effff               jmp 0x10003c40
1000ad8c: c3                       ret 
1000ad8d: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000ad93: 83e002                   and eax, 2
1000ad96: 0f8412000000             je 0x1000adae
1000ad9c: 83a5ecfefffffd           and dword ptr [ebp - 0x114], 0xfffffffd
1000ada3: 8db550ffffff             lea esi, [ebp - 0xb0]
1000ada9: e9928effff               jmp 0x10003c40
1000adae: c3                       ret 
1000adaf: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000adb5: 83e004                   and eax, 4
1000adb8: 0f8412000000             je 0x1000add0
1000adbe: 83a5ecfefffffb           and dword ptr [ebp - 0x114], 0xfffffffb
1000adc5: 8db534ffffff             lea esi, [ebp - 0xcc]
1000adcb: e9708effff               jmp 0x10003c40
1000add0: c3                       ret 
1000add1: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000add7: 83e008                   and eax, 8
1000adda: 0f8412000000             je 0x1000adf2
1000ade0: 83a5ecfefffff7           and dword ptr [ebp - 0x114], 0xfffffff7
1000ade7: 8db56cffffff             lea esi, [ebp - 0x94]
1000aded: e94e8effff               jmp 0x10003c40
1000adf2: c3                       ret 
1000adf3: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000adf9: 83e010                   and eax, 0x10
1000adfc: 0f840f000000             je 0x1000ae11
1000ae02: 83a5ecfeffffef           and dword ptr [ebp - 0x114], 0xffffffef
1000ae09: 8d7588                   lea esi, [ebp - 0x78]
1000ae0c: e92f8effff               jmp 0x10003c40
1000ae11: c3                       ret 
1000ae12: 8db518ffffff             lea esi, [ebp - 0xe8]
1000ae18: e9238effff               jmp 0x10003c40
1000ae1d: 8db518ffffff             lea esi, [ebp - 0xe8]
1000ae23: e9188effff               jmp 0x10003c40
1000ae28: 8db518ffffff             lea esi, [ebp - 0xe8]
1000ae2e: e90d8effff               jmp 0x10003c40
1000ae33: 8db518ffffff             lea esi, [ebp - 0xe8]
1000ae39: e9028effff               jmp 0x10003c40
1000ae3e: 8b542408                 mov edx, dword ptr [esp + 8]
1000ae42: 8d82e4feffff             lea eax, [edx - 0x11c]
1000ae48: 8b8ae0feffff             mov ecx, dword ptr [edx - 0x120]
1000ae4e: 33c8                     xor ecx, eax
1000ae50: e8659dffff               call 0x10004bba
1000ae55: 83c00c                   add eax, 0xc
1000ae58: 8b4af8                   mov ecx, dword ptr [edx - 8]
1000ae5b: 33c8                     xor ecx, eax
1000ae5d: e8589dffff               call 0x10004bba
1000ae62: b888de0010               mov eax, 0x1000de88
1000ae67: e939edffff               jmp 0x10009ba5
1000ae6c: cc                       int3 
1000ae6d: cc                       int3 
1000ae6e: cc                       int3 
1000ae6f: cc                       int3 
1000ae70: 8db5fcfeffff             lea esi, [ebp - 0x104]
1000ae76: e9c58dffff               jmp 0x10003c40
1000ae7b: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000ae81: 83e001                   and eax, 1
1000ae84: 0f8412000000             je 0x1000ae9c
1000ae8a: 83a5ecfefffffe           and dword ptr [ebp - 0x114], 0xfffffffe
1000ae91: 8db56cffffff             lea esi, [ebp - 0x94]
1000ae97: e9a48dffff               jmp 0x10003c40
1000ae9c: c3                       ret 
1000ae9d: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000aea3: 83e002                   and eax, 2
1000aea6: 0f8412000000             je 0x1000aebe
1000aeac: 83a5ecfefffffd           and dword ptr [ebp - 0x114], 0xfffffffd
1000aeb3: 8db534ffffff             lea esi, [ebp - 0xcc]
1000aeb9: e9828dffff               jmp 0x10003c40
1000aebe: c3                       ret 
1000aebf: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000aec5: 83e004                   and eax, 4
1000aec8: 0f8412000000             je 0x1000aee0
1000aece: 83a5ecfefffffb           and dword ptr [ebp - 0x114], 0xfffffffb
1000aed5: 8db550ffffff             lea esi, [ebp - 0xb0]
1000aedb: e9608dffff               jmp 0x10003c40
1000aee0: c3                       ret 
1000aee1: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000aee7: 83e008                   and eax, 8
1000aeea: 0f840f000000             je 0x1000aeff
1000aef0: 83a5ecfefffff7           and dword ptr [ebp - 0x114], 0xfffffff7
1000aef7: 8d7588                   lea esi, [ebp - 0x78]
1000aefa: e9418dffff               jmp 0x10003c40
1000aeff: c3                       ret 
1000af00: 8b85ecfeffff             mov eax, dword ptr [ebp - 0x114]
1000af06: 83e010                   and eax, 0x10
1000af09: 0f8412000000             je 0x1000af21
1000af0f: 83a5ecfeffffef           and dword ptr [ebp - 0x114], 0xffffffef
1000af16: 8db518ffffff             lea esi, [ebp - 0xe8]
1000af1c: e91f8dffff               jmp 0x10003c40
1000af21: c3                       ret 
1000af22: 8b542408                 mov edx, dword ptr [esp + 8]
1000af26: 8d82ecfeffff             lea eax, [edx - 0x114]
1000af2c: 8b8ae8feffff             mov ecx, dword ptr [edx - 0x118]
1000af32: 33c8                     xor ecx, eax
1000af34: e8819cffff               call 0x10004bba
1000af39: 83c00c                   add eax, 0xc
1000af3c: 8b4af8                   mov ecx, dword ptr [edx - 8]
1000af3f: 33c8                     xor ecx, eax
1000af41: e8749cffff               call 0x10004bba
1000af46: b8dcde0010               mov eax, 0x1000dedc
1000af4b: e955ecffff               jmp 0x10009ba5
1000af50: 8b542408                 mov edx, dword ptr [esp + 8]
1000af54: 8d420c                   lea eax, [edx + 0xc]
1000af57: 8b4aec                   mov ecx, dword ptr [edx - 0x14]
1000af5a: 33c8                     xor ecx, eax
1000af5c: e8599cffff               call 0x10004bba
1000af61: b878df0010               mov eax, 0x1000df78
1000af66: e93aecffff               jmp 0x10009ba5
1000af6b: c70500fd0010b4b10010     mov dword ptr [0x1000fd00], 0x1000b1b4
1000af75: b900fd0010               mov ecx, 0x1000fd00
1000af7a: e92e9dffff               jmp 0x10004cad
1000af7f: 0000                     add byte ptr [eax], al
1000af81: 0000                     add byte ptr [eax], al
1000af83: 0000                     add byte ptr [eax], al
1000af85: 0000                     add byte ptr [eax], al
1000af87: 0000                     add byte ptr [eax], al
1000af89: 0000                     add byte ptr [eax], al
1000af8b: 0000                     add byte ptr [eax], al
1000af8d: 0000                     add byte ptr [eax], al
1000af8f: 0000                     add byte ptr [eax], al
1000af91: 0000                     add byte ptr [eax], al
1000af93: 0000                     add byte ptr [eax], al
1000af95: 0000                     add byte ptr [eax], al
1000af97: 0000                     add byte ptr [eax], al
1000af99: 0000                     add byte ptr [eax], al
1000af9b: 0000                     add byte ptr [eax], al
1000af9d: 0000                     add byte ptr [eax], al
1000af9f: 0000                     add byte ptr [eax], al
1000afa1: 0000                     add byte ptr [eax], al
1000afa3: 0000                     add byte ptr [eax], al
1000afa5: 0000                     add byte ptr [eax], al
1000afa7: 0000                     add byte ptr [eax], al
1000afa9: 0000                     add byte ptr [eax], al
1000afab: 0000                     add byte ptr [eax], al
1000afad: 0000                     add byte ptr [eax], al
1000afaf: 0000                     add byte ptr [eax], al
1000afb1: 0000                     add byte ptr [eax], al
1000afb3: 0000                     add byte ptr [eax], al
1000afb5: 0000                     add byte ptr [eax], al
1000afb7: 0000                     add byte ptr [eax], al
1000afb9: 0000                     add byte ptr [eax], al
1000afbb: 0000                     add byte ptr [eax], al
1000afbd: 0000                     add byte ptr [eax], al
1000afbf: 0000                     add byte ptr [eax], al
1000afc1: 0000                     add byte ptr [eax], al
1000afc3: 0000                     add byte ptr [eax], al
1000afc5: 0000                     add byte ptr [eax], al
1000afc7: 0000                     add byte ptr [eax], al
1000afc9: 0000                     add byte ptr [eax], al
1000afcb: 0000                     add byte ptr [eax], al
1000afcd: 0000                     add byte ptr [eax], al
1000afcf: 0000                     add byte ptr [eax], al
1000afd1: 0000                     add byte ptr [eax], al
1000afd3: 0000                     add byte ptr [eax], al
1000afd5: 0000                     add byte ptr [eax], al
1000afd7: 0000                     add byte ptr [eax], al
1000afd9: 0000                     add byte ptr [eax], al
1000afdb: 0000                     add byte ptr [eax], al
1000afdd: 0000                     add byte ptr [eax], al
1000afdf: 0000                     add byte ptr [eax], al
1000afe1: 0000                     add byte ptr [eax], al
1000afe3: 0000                     add byte ptr [eax], al
1000afe5: 0000                     add byte ptr [eax], al
1000afe7: 0000                     add byte ptr [eax], al
1000afe9: 0000                     add byte ptr [eax], al
1000afeb: 0000                     add byte ptr [eax], al
1000afed: 0000                     add byte ptr [eax], al
1000afef: 0000                     add byte ptr [eax], al
1000aff1: 0000                     add byte ptr [eax], al
1000aff3: 0000                     add byte ptr [eax], al
1000aff5: 0000                     add byte ptr [eax], al
1000aff7: 0000                     add byte ptr [eax], al
1000aff9: 0000                     add byte ptr [eax], al
1000affb: 0000                     add byte ptr [eax], al
1000affd: 0000                     add byte ptr [eax], al
1000afff: 00                       .byte 0x00
