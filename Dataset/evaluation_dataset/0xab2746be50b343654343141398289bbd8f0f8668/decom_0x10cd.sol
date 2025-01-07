function 0x10cd(uint256 varg0) private { 

    v0 = 0x1623(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed) {

        v1 = 0x2372(_uriPrefix.length);

        v2 = new uint256[](v1);

        v3 = v4 = v2.data;

        v5 = 0x2372(_uriPrefix.length);

        if (v5) {

            if (31 < v5) {

                do {

                    MEM[v3] = STORAGE[v6];

                    v6 += 1;

                    v3 += 32;

                } while (v4 + v5 <= v3);

            } else {

                MEM[v4] = _uriPrefix.length >> 8 << 8;

            }

        }

        if (v2.length > 0) {

            v7 = 0x1b66(varg0);

            v8 = v9 = 0;

            while (v8 < v2.length) {

                MEM[v8 + (32 + MEM[64])] = v2[v8];

                v8 += 32;

            }

            if (v8 > v2.length) {

                MEM[v2.length + (32 + MEM[64])] = 0;

                goto 0x24cfB0x1212;

            }

            v10 = v11 = 0;

            while (v10 < v7.length) {

                MEM[v10 + (32 + MEM[64] + v2.length)] = v7[v10];

                v10 += 32;

            }

            if (v10 > v7.length) {

                MEM[v7.length + (32 + MEM[64] + v2.length)] = 0;

                goto 0x24e2B0x1212;

            }

            v12 = v13 = 0;

            v14 = v15 = _uriSuffix.length >> 1;

            if (!(_uriSuffix.length & 0x1)) {

                v14 = v16 = v15 & 0x7f;

            }

            require(_uriSuffix.length & 0x1 != v14 < 32, Panic(34));

            if (!(_uriSuffix.length & 0x1)) {

                MEM[32 + MEM[64] + v2.length + v7.length] = _uriSuffix.length & ~0xff;

                v12 = v17 = 32 + MEM[64] + v2.length + v7.length + v14;

                goto 0x256fB0x1212;

            } else if (_uriSuffix.length & 0x1 == 1) {

                v18 = v19 = 0;

                while (v18 < v14) {

                    MEM[v18 + (32 + MEM[64] + v2.length + v7.length)] = STORAGE[v20];

                    v20 += 1;

                    v18 += 32;

                }

                v12 = 32 + MEM[64] + v2.length + v7.length + v14;

            }

            v21 = v22 = MEM[64];

            MEM[v22] = v12 - v22 - 32;

            MEM[64] = v12;

        } else {

            v21 = v23 = new struct(1);

            v23.word0 = 0;

        }

        return v21;

    } else {

        v24 = 0x2372(_hiddenMetadataUri.length);

        v25 = new bytes[](v24);

        v26 = v27 = v25.data;

        v28 = 0x2372(_hiddenMetadataUri.length);

        if (v28) {

            if (31 < v28) {

                do {

                    MEM[v26] = STORAGE[v29];

                    v29 += 1;

                    v26 += 32;

                } while (v27 + v28 <= v26);

            } else {

                MEM[v27] = _hiddenMetadataUri.length >> 8 << 8;

            }

        }

        return v25;

    }

}
