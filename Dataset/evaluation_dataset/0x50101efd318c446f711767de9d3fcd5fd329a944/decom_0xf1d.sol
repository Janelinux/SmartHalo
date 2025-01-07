function 0xf1d(uint256 varg0) private { 

    v0 = 0x1042(varg0);

    require(v0, URIQueryForNonexistentToken());

    v1 = 0x1c41(_setBaseURI.length);

    v2 = new bytes[](v1);

    v3 = v4 = v2.data;

    v5 = 0x1c41(_setBaseURI.length);

    if (v5) {

        if (31 < v5) {

            v6 = v7 = _setBaseURI.data;

            do {

                MEM[v3] = STORAGE[v6];

                v6 += 1;

                v3 += 32;

            } while (v4 + v5 <= v3);

        } else {

            MEM[v4] = _setBaseURI.length >> 8 << 8;

        }

    }

    if (_isOpenBox) {

        if (v2.length) {

            v8 = v9 = 127 + MEM[64];

            MEM8[v9] = varg0 % 10 + 48 & 0xFF;

            v10 = v11 = varg0 / 10;

            while (v10) {

                v8 = v8 - 1;

                MEM8[v8] = 48 + v10 % 10 & 0xFF;

                v10 = v10 / 10;

            }

            MEM[v8 + ~31] = MEM[64] + 128 - v8;

            v12 = v13 = 0;

            while (v12 < v2.length) {

                MEM[v12 + (32 + MEM[64])] = v2[v12];

                v12 += 32;

            }

            if (v12 > v2.length) {

                MEM[v2.length + (32 + MEM[64])] = 0;

                goto 0x1b4a;

            }

            v14 = v15 = 0;

            while (v14 < MEM[v8 + ~31]) {

                MEM[v14 + (32 + MEM[64] + v2.length)] = MEM[v14 + (v8 + ~31 + 32)];

                v14 += 32;

            }

            if (v14 > MEM[v8 + ~31]) {

                MEM[MEM[v8 + ~31] + (32 + MEM[64] + v2.length)] = 0;

                goto 0x1b5e;

            }

            MEM[MEM[64]] = MEM[v8 + ~31] + (32 + MEM[64] + v2.length) - MEM[64] - 32;

            MEM[64] = MEM[v8 + ~31] + (32 + MEM[64] + v2.length);

            return MEM[64];

        } else {

            v2 = v16 = MEM[64];

            MEM[v16] = 0;

        }

    } else if (!v2.length) {

        v2 = v17 = MEM[64];

        MEM[v17] = 0;

    }

    return v2;

}
