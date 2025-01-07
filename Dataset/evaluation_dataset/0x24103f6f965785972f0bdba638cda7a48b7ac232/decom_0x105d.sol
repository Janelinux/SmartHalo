function 0x105d(uint256 varg0) private { 

    v0 = 0x1654(uint16(varg0));

    require(v0, Error('URI query for nonexistent token'));

    v1 = 0x2532(_baseURI.length);

    if (v1 > 0) {

        v2 = 0x1bf3(varg0);

        v3 = v4 = 0;

        v5 = v6 = _baseURI.length >> 1;

        if (!(_baseURI.length & 0x1)) {

            v5 = v7 = v6 & 0x7f;

        }

        require(_baseURI.length & 0x1 != v5 < 32, Panic(34));

        if (!(_baseURI.length & 0x1)) {

            MEM[32 + MEM[64]] = _baseURI.length & ~0xff;

            v3 = v8 = 32 + MEM[64] + v5;

            goto 0x26f9B0x1169;

        } else if (_baseURI.length & 0x1 == 1) {

            v9 = v10 = 0;

            while (v9 < v5) {

                MEM[v9 + (32 + MEM[64])] = STORAGE[v11];

                v11 += 1;

                v9 += 32;

            }

            v3 = v12 = 32 + MEM[64] + v5;

        }

        v13 = v14 = 0;

        while (v13 < v2.length) {

            MEM[v13 + v3] = v2[v13];

            v13 += 32;

        }

        if (v13 > v2.length) {

            MEM[v2.length + v3] = 0;

            goto 0x2661B0x1169;

        }

        MEM[v2.length + v3] = '.json';

        MEM[MEM[64]] = 5 + (v2.length + v3) - MEM[64] - 32;

        MEM[64] = 5 + (v2.length + v3);

        return MEM[64];

    } else {

        v15 = 0x2532(_placeholderURI.length);

        v16 = new bytes[](v15);

        v17 = v18 = v16.data;

        v19 = 0x2532(_placeholderURI.length);

        if (v19) {

            if (31 < v19) {

                do {

                    MEM[v17] = STORAGE[v20];

                    v20 += 1;

                    v17 += 32;

                } while (v18 + v19 <= v17);

            } else {

                MEM[v18] = _placeholderURI.length >> 8 << 8;

            }

        }

        return v16;

    }

}
