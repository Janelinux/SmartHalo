function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(_totalSupply > varg0, Error('ERC721Metadata: Nonexistent token'));

    v0 = 0x2319(_baseURI.length);

    v1 = new uint256[](v0);

    v2 = v3 = v1.data;

    v4 = 0x2319(_baseURI.length);

    if (v4) {

        if (31 < v4) {

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = _baseURI.length >> 8 << 8;

        }

    }

    if (v1.length > 0) {

        v6 = 0x1bbf(varg0);

        v7 = v8 = 0;

        while (v7 < v1.length) {

            MEM[v7 + (32 + MEM[64])] = v1[v7];

            v7 += 32;

        }

        if (v7 > v1.length) {

            MEM[v1.length + (32 + MEM[64])] = 0;

            goto 0x2437B0x61b;

        }

        v9 = v10 = 0;

        while (v9 < v6.length) {

            MEM[v9 + (32 + MEM[64] + v1.length)] = v6[v9];

            v9 += 32;

        }

        if (v9 > v6.length) {

            MEM[v6.length + (32 + MEM[64] + v1.length)] = 0;

            goto 0x244bB0x61b;

        }

        MEM[32 + MEM[64] + v1.length + v6.length] = '.json';

        v11 = v12 = MEM[64];

        MEM[v12] = 5 + (32 + MEM[64] + v1.length + v6.length) - v12 - 32;

        MEM[64] = 5 + (32 + MEM[64] + v1.length + v6.length);

    } else {

        v11 = v13 = new struct(1);

        v13.word0 = 0;

    }

    v14 = new array[](MEM[v11]);

    v15 = v16 = 0;

    while (v15 < MEM[v11]) {

        v14[v15] = MEM[v15 + (v11 + 32)];

        v15 += 32;

    }

    if (v15 > MEM[v11]) {

        v14[MEM[v11]] = 0;

        goto 0x1fa8B0x1fbcB0x2960x600;

    }

    return v14;

}
