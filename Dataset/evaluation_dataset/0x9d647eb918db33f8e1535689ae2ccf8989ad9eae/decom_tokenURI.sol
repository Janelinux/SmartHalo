function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    0x3b38(varg0);

    v0 = 0x2b9d(varg0);

    require(v0, Error('Nonexistent tokenId'));

    if (_revealed - 0) {

        MEM[64] = MEM[64] + 160;

        v1 = v2 = MEM[64] + 160 - 32;

        MEM[v2] = 0;

        while (1) {

            v1 = v1 - 1;

            MEM8[v1] = 48 + v3 % 10 & 0xFF;

            v3 = v3 / 10;

            if (v3) {

                break;

            }

        }

        MEM[v1 - 32] = v2 - v1;

        v4 = 0;

        v5 = 0x43fe(_setBaseURI.length);

        if (_setBaseURI.length & 0x1 == 0) {

            MEM[32 + MEM[64]] = _setBaseURI.length & ~0xff;

            v4 = v6 = 32 + MEM[64] + v5 * v5;

            goto 0x4f17B0x4f9dB0x287dB0xbc8;

        } else if (_setBaseURI.length & 0x1 == 1) {

            v7 = v8 = 0;

            while (v7 < v5) {

                MEM[32 + MEM[64] + v7] = STORAGE[v9];

                v9 = v9 + 1;

                v7 = v7 + 32;

            }

            v4 = v10 = 32 + MEM[64] + v5;

        }

        v11 = v12 = 0;

        while (v11 < MEM[v1 - 32]) {

            MEM[v4 + v11] = MEM[v1 - 32 + 32 + v11];

            v11 = v11 + 32;

        }

        MEM[v4 + MEM[v1 - 32]] = 0;

        MEM[v4 + MEM[v1 - 32] + 0] = '.json';

        v13 = MEM[64];

        MEM[v13] = v4 + MEM[v1 - 32] + 5 - v13 - 32;

        MEM[64] = v4 + MEM[v1 - 32] + 5;

    } else {

        v13 = v14 = new struct(3);

        v14.word0 = 63;

    }

    v15 = new array[](MEM[v13]);

    v16 = v17 = 0;

    while (v16 < MEM[v13]) {

        v15[v16] = MEM[v13 + 32 + v16];

        v16 = v16 + 32;

    }

    v15[MEM[v13]] = 0;

    return v15;

}
