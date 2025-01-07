function 0x11e4(uint256 varg0) private { 

    require(address(map_2[varg0]), Error('URI query for nonexistent token'));

    if (0xff & _mintEnable >> 8) {

        v0 = 0x2f30(array_14.length);

        v1 = new uint256[](v0);

        v2 = v3 = v1.data;

        v4 = 0x2f30(array_14.length);

        if (v4) {

            if (31 < v4) {

                do {

                    MEM[v2] = STORAGE[v5];

                    v5 += 1;

                    v2 += 32;

                } while (v3 + v4 <= v2);

            } else {

                MEM[v3] = array_14.length >> 8 << 8;

            }

        }

        v6 = 0x1d2b(varg0);

        v7 = v8 = 0;

        while (v7 < v1.length) {

            MEM[v7 + (32 + MEM[64])] = v1[v7];

            v7 += 32;

        }

        if (v7 > v1.length) {

            MEM[v1.length + (32 + MEM[64])] = 0;

            goto 0x2d2f;

        }

        v9 = v10 = 0;

        while (v9 < v6.length) {

            MEM[v9 + (32 + MEM[64] + v1.length)] = v6[v9];

            v9 += 32;

        }

        if (v9 > v6.length) {

            MEM[v6.length + (32 + MEM[64] + v1.length)] = 0;

            goto 0x2d43;

        }

        MEM[32 + MEM[64] + v1.length + v6.length] = '.json';

        MEM[MEM[64]] = 5 + (32 + MEM[64] + v1.length + v6.length) - MEM[64] - 32;

        MEM[64] = 5 + (32 + MEM[64] + v1.length + v6.length);

        return MEM[64];

    } else {

        v11 = 0x2f30(array_13.length);

        v12 = new bytes[](v11);

        v13 = v14 = v12.data;

        v15 = 0x2f30(array_13.length);

        if (v15) {

            if (31 < v15) {

                do {

                    MEM[v13] = STORAGE[v16];

                    v16 += 1;

                    v13 += 32;

                } while (v14 + v15 <= v13);

            } else {

                MEM[v14] = array_13.length >> 8 << 8;

            }

        }

        return v12;

    }

}
