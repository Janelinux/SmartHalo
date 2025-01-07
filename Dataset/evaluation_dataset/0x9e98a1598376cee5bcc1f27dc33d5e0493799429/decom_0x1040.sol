function 0x1040(uint256 varg0) private { 

    require(address(map_2[varg0]), Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed) {

        v0 = 0x22e9(array_b.length);

        v1 = new uint256[](v0);

        v2 = v3 = v1.data;

        v4 = 0x22e9(array_b.length);

        if (v4) {

            if (31 < v4) {

                do {

                    MEM[v2] = STORAGE[v5];

                    v5 += 1;

                    v2 += 32;

                } while (v3 + v4 <= v2);

            } else {

                MEM[v3] = array_b.length >> 8 << 8;

            }

        }

        if (v1.length > 0) {

            v6 = 0x16df(varg0);

            v7 = v8 = 0;

            while (v7 < v1.length) {

                MEM[v7 + (32 + MEM[64])] = v1[v7];

                v7 += 32;

            }

            if (v7 > v1.length) {

                MEM[v1.length + (32 + MEM[64])] = 0;

                goto 0x203eB0x1194;

            }

            v9 = v10 = 0;

            while (v9 < v6.length) {

                MEM[v9 + (32 + MEM[64] + v1.length)] = v6[v9];

                v9 += 32;

            }

            if (v9 > v6.length) {

                MEM[v6.length + (32 + MEM[64] + v1.length)] = 0;

                goto 0x2051B0x1194;

            }

            v11 = v12 = 0;

            v13 = v14 = _baseExtension.length >> 1;

            if (!(_baseExtension.length & 0x1)) {

                v13 = v15 = v14 & 0x7f;

            }

            require(_baseExtension.length & 0x1 != v13 < 32, Panic(34));

            if (!(_baseExtension.length & 0x1)) {

                MEM[32 + MEM[64] + v1.length + v6.length] = _baseExtension.length & ~0xff;

                v11 = v16 = 32 + MEM[64] + v1.length + v6.length + v13;

                goto 0x20deB0x1194;

            } else if (_baseExtension.length & 0x1 == 1) {

                v17 = v18 = 0;

                while (v17 < v13) {

                    MEM[v17 + (32 + MEM[64] + v1.length + v6.length)] = STORAGE[v19];

                    v19 += 1;

                    v17 += 32;

                }

                v11 = 32 + MEM[64] + v1.length + v6.length + v13;

            }

            v20 = v21 = MEM[64];

            MEM[v21] = v11 - v21 - 32;

            MEM[64] = v11;

        } else {

            v20 = v22 = new struct(1);

            v22.word0 = 0;

        }

        return v20;

    } else {

        v23 = 0x22e9(_notRevealedUri.length);

        v24 = new bytes[](v23);

        v25 = v26 = v24.data;

        v27 = 0x22e9(_notRevealedUri.length);

        if (v27) {

            if (31 < v27) {

                do {

                    MEM[v25] = STORAGE[v28];

                    v28 += 1;

                    v25 += 32;

                } while (v26 + v27 <= v25);

            } else {

                MEM[v26] = _notRevealedUri.length >> 8 << 8;

            }

        }

        return v24;

    }

}
