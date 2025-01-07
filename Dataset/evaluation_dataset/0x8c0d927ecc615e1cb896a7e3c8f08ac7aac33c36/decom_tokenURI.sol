function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x22fd(varg0);

    require(v0, Error('ERC721AMetadata: URI query for nonexistent token'));

    if (_revealed - bool(0)) {

        v1 = 0x29d4();

        if (v1.length > 0) {

            v2 = v3 = MEM[64] + 160 - 32;

            MEM[v3] = 0;

            while (1) {

                v2 = v2 - 1;

                MEM8[v2] = 48 + v4 % 10 & 0xFF;

                v4 = v4 / 10;

                if (v4) {

                    break;

                }

            }

            MEM[v2 - 32] = v3 - v2;

            v5 = v6 = 0;

            while (v5 < v1.length) {

                MEM[32 + MEM[64] + v5] = v1[v5];

                v5 = v5 + 32;

            }

            MEM[32 + MEM[64] + v1.length] = 0;

            v7 = v8 = 0;

            while (v7 < MEM[v2 - 32]) {

                MEM[32 + MEM[64] + v1.length + v7] = MEM[v2 - 32 + 32 + v7];

                v7 = v7 + 32;

            }

            MEM[32 + MEM[64] + v1.length + MEM[v2 - 32]] = 0;

            MEM[32 + MEM[64] + v1.length + MEM[v2 - 32] + 0] = '.json';

            v9 = MEM[64];

            MEM[v9] = 32 + MEM[64] + v1.length + MEM[v2 - 32] + 5 - v9 - 32;

            MEM[64] = 32 + MEM[64] + v1.length + MEM[v2 - 32] + 5;

        } else {

            v9 = v10 = MEM[64];

            MEM[v10] = 0;

        }

    } else {

        v11 = 0x3f20(_tokenURI.length);

        v9 = v12 = new bytes[](v11);

        v13 = v14 = v12.data;

        v15 = 0x3f20(_tokenURI.length);

        if (v15) {

            if (31 < v15) {

                v16 = v17 = _tokenURI.data;

                do {

                    MEM[v13] = STORAGE[v16];

                    v16 += 1;

                    v13 += 32;

                } while (v14 + v15 <= v13);

            } else {

                MEM[v14] = _tokenURI.length >> 8 << 8;

            }

        }

    }

    v18 = new array[](MEM[v9]);

    v19 = v20 = 0;

    while (v19 < MEM[v9]) {

        v18[v19] = MEM[v9 + 32 + v19];

        v19 = v19 + 32;

    }

    v18[MEM[v9]] = 0;

    return v18;

}
