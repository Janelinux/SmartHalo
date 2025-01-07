function 0xcc5(uint256 varg0) private { 

    v0 = 0xeff(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (0 - _revealed) {

        v1 = 0x1a6c(_baseURI.length);

        v2 = new uint256[](v1);

        v3 = v4 = v2.data;

        v5 = 0x1a6c(_baseURI.length);

        if (v5) {

            if (31 < v5) {

                do {

                    MEM[v3] = STORAGE[v6];

                    v6 += 1;

                    v3 += 32;

                } while (v4 + v5 <= v3);

            } else {

                MEM[v4] = _baseURI.length >> 8 << 8;

            }

        }

        if (v2.length > 0) {

            v7 = 0x1414(varg0);

            v8 = v9 = 0;

            while (v8 < v2.length) {

                MEM[v8 + (32 + MEM[64])] = v2[v8];

                v8 += 32;

            }

            MEM[v2.length + (32 + MEM[64])] = 0;

            v10 = v11 = 0;

            while (v10 < v7.length) {

                MEM[v10 + (32 + MEM[64] + v2.length)] = v7[v10];

                v10 += 32;

            }

            MEM[v7.length + (32 + MEM[64] + v2.length)] = 0;

            MEM[32 + MEM[64] + v2.length + v7.length] = '.json';

            v12 = v13 = MEM[64];

            MEM[v13] = 5 + (32 + MEM[64] + v2.length + v7.length) - v13 - 32;

            MEM[64] = 5 + (32 + MEM[64] + v2.length + v7.length);

        } else {

            v12 = v14 = new struct(1);

            v14.word0 = 0;

        }

        return v12;

    } else {

        v15 = 0x1a6c(_notRevealedUri.length);

        v16 = new bytes[](v15);

        v17 = v18 = v16.data;

        v19 = 0x1a6c(_notRevealedUri.length);

        if (v19) {

            if (31 < v19) {

                do {

                    MEM[v17] = STORAGE[v20];

                    v20 += 1;

                    v17 += 32;

                } while (v18 + v19 <= v17);

            } else {

                MEM[v18] = _notRevealedUri.length >> 8 << 8;

            }

        }

        return v16;

    }

}
