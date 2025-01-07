function 0x1aa7(uint256 varg0) private { 

    v0 = 0x14d5(varg0);

    require(v0, URIQueryForNonexistentToken());

    v1 = 0x2040(_setBaseURI.length);

    v2 = new bytes[](v1);

    v3 = v4 = v2.data;

    v5 = 0x2040(_setBaseURI.length);

    if (v5) {

        if (31 < v5) {

            do {

                MEM[v3] = STORAGE[v6];

                v6 += 1;

                v3 += 32;

            } while (v4 + v5 <= v3);

        } else {

            MEM[v4] = _setBaseURI.length >> 8 << 8;

        }

    }

    if (0 - v2.length) {

        v7 = v8 = 127 + MEM[64];

        MEM8[v8] = varg0 % 10 + 48 & 0xFF;

        v9 = v10 = varg0 / 10;

        while (v9) {

            v7 = v7 - 1;

            MEM8[v7] = 48 + v9 % 10 & 0xFF;

            v9 = v9 / 10;

        }

        MEM[v7 + ~31] = MEM[64] + 128 - v7;

        v11 = v12 = 0;

        while (v11 < v2.length) {

            MEM[v11 + (32 + MEM[64])] = v2[v11];

            v11 += 32;

        }

        MEM[v2.length + (32 + MEM[64])] = 0;

        v13 = v14 = 0;

        while (v13 < MEM[v7 + ~31]) {

            MEM[v13 + (32 + MEM[64] + v2.length)] = MEM[v13 + (v7 + ~31 + 32)];

            v13 += 32;

        }

        MEM[MEM[v7 + ~31] + (32 + MEM[64] + v2.length)] = 0;

        MEM[MEM[64]] = MEM[v7 + ~31] + (32 + MEM[64] + v2.length) - MEM[64] - 32;

        MEM[64] = MEM[v7 + ~31] + (32 + MEM[64] + v2.length);

        return MEM[64];

    } else {

        v15 = new struct(1);

        v15.word0 = 0;

        return v15;

    }

}
