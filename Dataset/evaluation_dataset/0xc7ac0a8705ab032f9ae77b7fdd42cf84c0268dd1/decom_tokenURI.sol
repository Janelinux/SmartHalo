function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x277b(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed != 0) {

        v1 = 0x43dc(array_e.length);

        v2 = new bytes[](v1);

        v3 = v4 = v2.data;

        v5 = 0x43dc(array_e.length);

        if (v5) {

            if (31 < v5) {

                do {

                    MEM[v3] = STORAGE[v6];

                    v6 += 1;

                    v3 += 32;

                } while (v4 + v5 <= v3);

            } else {

                MEM[v4] = array_e.length >> 8 << 8;

            }

        }

        if (v2.length > 0) {

            if (varg0 != 0) {

                v7 = v8 = 0;

                while (v9 != 0) {

                    v7 = 0x443f(v7);

                    v9 = _SafeDiv(v9, 10);

                }

                require(v7 <= 0xffffffffffffffff, Panic(65));

                v10 = new bytes[](v7);

                if (v7) {

                }

                while (v9 != 0) {

                    if (v7 >= 1) {

                        break;

                    }

                    require(v7 >= 1, Panic(17));

                    v7 = v7 - 1;

                    require(10, Panic(18));

                    v11 = _SafeAdd(48, v9 % 10);

                    require(v7 < v10.length, Panic(50));

                    MEM8[32 + v7 + v10] = (byte(~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & v11 << 248, 0x0)) & 0xFF;

                    v9 = _SafeDiv(v9, 10);

                }

            } else {

                v10 = v12 = new struct(2);

                v12.word0 = 1;

                v13 = v12.data;

                v12.word1 = 0x3000000000000000000000000000000000000000000000000000000000000000;

            }

            v14 = v15 = 0;

            while (v14 < v2.length) {

                MEM[32 + MEM[64] + v14] = v2[v14];

                v14 = v14 + 32;

            }

            if (v14 > v2.length) {

                MEM[32 + MEM[64] + v2.length] = 0;

            }

            v16 = v17 = 0;

            while (v16 < MEM[v10]) {

                MEM[32 + MEM[64] + v2.length + v16] = MEM[v10 + 32 + v16];

                v16 = v16 + 32;

            }

            if (v16 > MEM[v10]) {

                MEM[32 + MEM[64] + v2.length + MEM[v10]] = 0;

            }

            v18 = 0;

            v19 = 0x43dc(_uriSuffix.length);

            if (_uriSuffix.length & 0x1 == 0) {

                MEM[32 + MEM[64] + v2.length + MEM[v10]] = _uriSuffix.length & ~0xff;

                v18 = v20 = 32 + MEM[64] + v2.length + MEM[v10] + v19;

                goto 0x3cc1B0x3ec7B0x2402B0x8c1;

            } else if (_uriSuffix.length & 0x1 == 1) {

                v21 = v22 = 0;

                while (v21 < v19) {

                    MEM[32 + MEM[64] + v2.length + MEM[v10] + v21] = STORAGE[v23];

                    v23 = v23 + 1;

                    v21 = v21 + 32;

                }

                v18 = v24 = 32 + MEM[64] + v2.length + MEM[v10] + v19;

            }

            v25 = MEM[64];

            MEM[v25] = v18 - v25 - 32;

            MEM[64] = v18;

        } else {

            v25 = v26 = new struct(1);

            v26.word0 = 0;

        }

    } else {

        v27 = 0x43dc(_tokenURI.length);

        v25 = v28 = new bytes[](v27);

        v29 = v30 = v28.data;

        v31 = 0x43dc(_tokenURI.length);

        if (v31) {

            if (31 < v31) {

                do {

                    MEM[v29] = STORAGE[v32];

                    v32 += 1;

                    v29 += 32;

                } while (v30 + v31 <= v29);

            } else {

                MEM[v30] = _tokenURI.length >> 8 << 8;

            }

        }

    }

    v33 = new array[](MEM[v25]);

    v34 = v35 = 0;

    while (v34 < MEM[v25]) {

        v33[v34] = MEM[v25 + 32 + v34];

        v34 = v34 + 32;

    }

    if (v34 > MEM[v25]) {

        v33[MEM[v25]] = 0;

    }

    return v33;

}
