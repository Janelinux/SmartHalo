function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x1c93(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed != 0) {

        v1 = 0x1c93(varg0);

        require(v1, URIQueryForNonexistentToken());

        v2 = 0x32d0(array_e.length);

        v3 = new bytes[](v2);

        v4 = v5 = v3.data;

        v6 = 0x32d0(array_e.length);

        if (v6) {

            if (31 < v6) {

                do {

                    MEM[v4] = STORAGE[v7];

                    v7 += 1;

                    v4 += 32;

                } while (v5 + v6 <= v4);

            } else {

                MEM[v5] = array_e.length >> 8 << 8;

            }

        }

        if (v3.length != 0) {

            v8 = v9 = MEM[64] + 128 - 1;

            MEM8[v9] = 48 + varg0 % 10 & 0xFF;

            v10 = v11 = varg0 / 10;

            while (v10) {

                v8 = v8 - 1;

                MEM8[v8] = 48 + v10 % 10 & 0xFF;

                v10 = v10 / 10;

            }

            MEM[v8 - 32] = MEM[64] + 128 - v8;

            v12 = v13 = 0;

            while (v12 < v3.length) {

                MEM[32 + MEM[64] + v12] = v3[v12];

                v12 = v12 + 32;

            }

            if (v12 > v3.length) {

                MEM[32 + MEM[64] + v3.length] = 0;

            }

            v14 = v15 = 0;

            while (v14 < MEM[v8 - 32]) {

                MEM[32 + MEM[64] + v3.length + v14] = MEM[v8 - 32 + 32 + v14];

                v14 = v14 + 32;

            }

            if (v14 > MEM[v8 - 32]) {

                MEM[32 + MEM[64] + v3.length + MEM[v8 - 32]] = 0;

            }

            v16 = MEM[64];

            MEM[v16] = 32 + MEM[64] + v3.length + MEM[v8 - 32] - v16 - 32;

            MEM[64] = 32 + MEM[64] + v3.length + MEM[v8 - 32];

        } else {

            v16 = v17 = new struct(1);

            v17.word0 = 0;

        }

        if (MEM[v16] > 0) {

            v18 = v19 = 0;

            while (v18 < MEM[v16]) {

                MEM[32 + MEM[64] + v18] = MEM[v16 + 32 + v18];

                v18 = v18 + 32;

            }

            if (v18 > MEM[v16]) {

                MEM[32 + MEM[64] + MEM[v16]] = 0;

            }

            MEM[32 + MEM[64] + MEM[v16] + 0] = '.json';

            v20 = MEM[64];

            MEM[v20] = 32 + MEM[64] + MEM[v16] + 5 - v20 - 32;

            MEM[64] = 32 + MEM[64] + MEM[v16] + 5;

        } else {

            v20 = v21 = new struct(1);

            v21.word0 = 0;

        }

    } else {

        v22 = 0x32d0(_notRevealedUri.length);

        v20 = v23 = new bytes[](v22);

        v24 = v25 = v23.data;

        v26 = 0x32d0(_notRevealedUri.length);

        if (v26) {

            if (31 < v26) {

                do {

                    MEM[v24] = STORAGE[v27];

                    v27 += 1;

                    v24 += 32;

                } while (v25 + v26 <= v24);

            } else {

                MEM[v25] = _notRevealedUri.length >> 8 << 8;

            }

        }

    }

    v28 = new array[](MEM[v20]);

    v29 = v30 = 0;

    while (v29 < MEM[v20]) {

        v28[v29] = MEM[v20 + 32 + v29];

        v29 = v29 + 32;

    }

    if (v29 > MEM[v20]) {

        v28[MEM[v20]] = 0;

    }

    return v28;

}
