function 0xe5c(uint256 varg0) private { 

    v0 = 0x10b7(varg0);

    require(v0, Error('URI does not exist!'));

    if (!_revealed) {

        v1 = 0x1e84(_hiddenMetadataUri.length);

        v2 = new bytes[](v1);

        v3 = v4 = v2.data;

        v5 = 0x1e84(_hiddenMetadataUri.length);

        if (v5) {

            if (31 < v5) {

                do {

                    MEM[v3] = STORAGE[v6];

                    v6 += 1;

                    v3 += 32;

                } while (v4 + v5 <= v3);

            } else {

                MEM[v4] = _hiddenMetadataUri.length >> 8 << 8;

            }

        }

        return v2;

    } else {

        v7 = 0x1e84(__baseTokenURI.length);

        v8 = new uint256[](v7);

        v9 = v10 = v8.data;

        v11 = 0x1e84(__baseTokenURI.length);

        if (v11) {

            if (31 < v11) {

                do {

                    MEM[v9] = STORAGE[v12];

                    v12 += 1;

                    v9 += 32;

                } while (v10 + v11 <= v9);

            } else {

                MEM[v10] = __baseTokenURI.length >> 8 << 8;

            }

        }

        v13 = 0x15d8(varg0);

        v14 = v15 = 0;

        while (v14 < v8.length) {

            MEM[v14 + (32 + MEM[64])] = v8[v14];

            v14 += 32;

        }

        if (v14 > v8.length) {

            MEM[v8.length + (32 + MEM[64])] = 0;

            goto 0x1d44;

        }

        v16 = v17 = 0;

        while (v16 < v13.length) {

            MEM[v16 + (32 + MEM[64] + v8.length)] = v13[v16];

            v16 += 32;

        }

        if (v16 > v13.length) {

            MEM[v13.length + (32 + MEM[64] + v8.length)] = 0;

            goto 0x1d58;

        }

        MEM[32 + MEM[64] + v8.length + v13.length] = '.json';

        MEM[MEM[64]] = 5 + (32 + MEM[64] + v8.length + v13.length) - MEM[64] - 32;

        MEM[64] = 5 + (32 + MEM[64] + v8.length + v13.length);

        return MEM[64];

    }

}
