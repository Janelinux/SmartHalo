function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = 0xf6e(varg0);

    require(v0, URIQueryForNonexistentToken());

    v1 = 0x1b55(_setBaseURI.length);

    v2 = new uint256[](v1);

    v3 = v4 = v2.data;

    v5 = 0x1b55(_setBaseURI.length);

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

        v7 = 0x16a9(varg0);

        v8 = v9 = 0;

        while (v8 < v2.length) {

            MEM[v8 + (32 + MEM[64])] = v2[v8];

            v8 += 32;

        }

        if (v8 > v2.length) {

            MEM[v2.length + (32 + MEM[64])] = 0;

            goto 0x1d2aB0x567;

        }

        v10 = v11 = 0;

        while (v10 < v7.length) {

            MEM[v10 + (32 + MEM[64] + v2.length)] = v7[v10];

            v10 += 32;

        }

        if (v10 > v7.length) {

            MEM[v7.length + (32 + MEM[64] + v2.length)] = 0;

            goto 0x1d3eB0x567;

        }

        MEM[32 + MEM[64] + v2.length + v7.length] = '.json';

        v12 = v13 = MEM[64];

        MEM[v13] = 5 + (32 + MEM[64] + v2.length + v7.length) - v13 - 32;

        MEM[64] = 5 + (32 + MEM[64] + v2.length + v7.length);

    } else {

        v12 = v14 = new struct(1);

        v14.word0 = 0;

    }

    v15 = new array[](MEM[v12]);

    v16 = v17 = 0;

    while (v16 < MEM[v12]) {

        v15[v16] = MEM[v16 + (v12 + 32)];

        v16 += 32;

    }

    if (v16 > MEM[v12]) {

        v15[MEM[v12]] = 0;

        goto 0x182dB0x1841B0x2530x54c;

    }

    return v15;

}
