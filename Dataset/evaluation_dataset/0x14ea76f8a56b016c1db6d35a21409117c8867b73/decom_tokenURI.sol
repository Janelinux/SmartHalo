function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    require(address(map_2[varg0]) != 0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed != 0) {

        v0 = 0x3c3d(array_b.length);

        v1 = new bytes[](v0);

        v2 = v3 = v1.data;

        v4 = 0x3c3d(array_b.length);

        if (v4) {

            if (31 < v4) {

                do {

                    MEM[v2] = STORAGE[v5];

                    v5 += 1;

                    v2 += 32;

                } while (v3 + v4 <= v2);

            } else {

                MEM[v3] = array_b.length >> 8 << 8;

            }

        }

        if (v1.length > 0) {

            if (varg0 != 0) {

                v6 = v7 = 0;

                while (v8 != 0) {

                    v6 = 0x3ca0(v6);

                    v8 = _SafeDiv(v8, 10);

                }

                require(v6 <= 0xffffffffffffffff, Panic(65));

                v9 = new bytes[](v6);

                if (v6) {

                }

                while (v8 != 0) {

                    v6 = _SafeSub(v6, 1);

                    require(10, Panic(18));

                    v10 = _SafeAdd(48, v8 % 10);

                    require(v6 < v9.length, Panic(50));

                    MEM8[32 + v6 + v9] = (byte(~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & v10 << 248, 0x0)) & 0xFF;

                    v8 = _SafeDiv(v8, 10);

                }

            } else {

                v9 = v11 = new struct(2);

                v11.word0 = 1;

                v12 = v11.data;

                v11.word1 = 0x3000000000000000000000000000000000000000000000000000000000000000;

            }

            v13 = v14 = 0;

            while (v13 < v1.length) {

                MEM[32 + MEM[64] + v13] = v1[v13];

                v13 = v13 + 32;

            }

            if (v13 > v1.length) {

                MEM[32 + MEM[64] + v1.length] = 0;

            }

            v15 = v16 = 0;

            while (v15 < MEM[v9]) {

                MEM[32 + MEM[64] + v1.length + v15] = MEM[v9 + 32 + v15];

                v15 = v15 + 32;

            }

            if (v15 > MEM[v9]) {

                MEM[32 + MEM[64] + v1.length + MEM[v9]] = 0;

            }

            v17 = 0;

            v18 = 0x3c3d(_baseExtension.length);

            if (_baseExtension.length & 0x1 == 0) {

                MEM[32 + MEM[64] + v1.length + MEM[v9]] = _baseExtension.length & ~0xff;

                v17 = v19 = 32 + MEM[64] + v1.length + MEM[v9] + v18;

                goto 0x3328B0x3600B0x190cB0x754;

            } else if (_baseExtension.length & 0x1 == 1) {

                v20 = v21 = 0;

                while (v20 < v18) {

                    MEM[32 + MEM[64] + v1.length + MEM[v9] + v20] = STORAGE[v22];

                    v22 = v22 + 1;

                    v20 = v20 + 32;

                }

                v17 = v23 = 32 + MEM[64] + v1.length + MEM[v9] + v18;

            }

            v24 = MEM[64];

            MEM[v24] = v17 - v24 - 32;

            MEM[64] = v17;

        } else {

            v24 = v25 = new struct(1);

            v25.word0 = 0;

        }

    } else {

        v26 = 0x3c3d(_notRevealedUri.length);

        v24 = v27 = new bytes[](v26);

        v28 = v29 = v27.data;

        v30 = 0x3c3d(_notRevealedUri.length);

        if (v30) {

            if (31 < v30) {

                do {

                    MEM[v28] = STORAGE[v31];

                    v31 += 1;

                    v28 += 32;

                } while (v29 + v30 <= v28);

            } else {

                MEM[v29] = _notRevealedUri.length >> 8 << 8;

            }

        }

    }

    v32 = new array[](MEM[v24]);

    v33 = v34 = 0;

    while (v33 < MEM[v24]) {

        v32[v33] = MEM[v24 + 32 + v33];

        v33 = v33 + 32;

    }

    if (v33 > MEM[v24]) {

        v32[MEM[v24]] = 0;

    }

    return v32;

}
