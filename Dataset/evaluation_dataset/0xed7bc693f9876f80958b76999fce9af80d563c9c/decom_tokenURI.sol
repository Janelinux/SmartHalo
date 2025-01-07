function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x19a1(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed - bool(0)) {

        v1 = 0x2c5b(_uriPrefix.length);

        v2 = new bytes[](v1);

        v3 = v4 = v2.data;

        v5 = 0x2c5b(_uriPrefix.length);

        if (v5) {

            if (31 < v5) {

                v6 = v7 = _uriPrefix.data;

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

            v8 = v9 = 0;

            if (varg0 >= 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000) {

                v10 = v11 = varg0 / 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000;

                v8 = v12 = 64;

            }

            if (v10 >= 0x4ee2d6d415b85acef8100000000) {

                v10 = v13 = v10 / 0x4ee2d6d415b85acef8100000000;

                v8 = v14 = v8 + 32;

            }

            if (v10 >= 0x2386f26fc10000) {

                v10 = v15 = v10 / 0x2386f26fc10000;

                v8 = v16 = v8 + 16;

            }

            if (v10 >= 0x5f5e100) {

                v10 = v17 = v10 / 0x5f5e100;

                v8 = v18 = v8 + 8;

            }

            if (v10 >= 10000) {

                v10 = v19 = v10 / 10000;

                v8 = v20 = v8 + 4;

            }

            if (v10 >= 100) {

                v10 = v21 = v10 / 100;

                v8 = v22 = v8 + 2;

            }

            if (v10 >= 10) {

                v8 = v23 = v8 + 1;

            }

            require(v8 + 1 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

            v24 = new bytes[](v8 + 1);

            if (v8 + 1) {

            }

            v25 = v26 = v24 + (32 + (v8 + 1));

            while (1) {

                v25 = v25 - 1;

                MEM8[v25] = (byte('0123456789abcdef', v10 % 10)) & 0xFF;

                v10 = v10 / 10;

                if (v10 - 0) {

                    break;

                }

            }

            v27 = v28 = 0;

            while (v27 < v2.length) {

                MEM[32 + MEM[64] + v27] = v2[v27];

                v27 = v27 + 32;

            }

            if (v27 > v2.length) {

                MEM[32 + MEM[64] + v2.length] = 0;

            }

            v29 = v30 = 0;

            while (v29 < v24.length) {

                MEM[32 + MEM[64] + v2.length + v29] = v24[v29];

                v29 = v29 + 32;

            }

            if (v29 > v24.length) {

                MEM[32 + MEM[64] + v2.length + v24.length] = 0;

            }

            v31 = 0;

            v32 = 0x2c5b(_uriSuffix.length);

            if (_uriSuffix.length & 0x1 == 0) {

                MEM[32 + MEM[64] + v2.length + v24.length] = bytes31(_uriSuffix.length);

                v31 = v33 = 32 + MEM[64] + v2.length + v24.length + v32;

                goto 0x3157B0x3178B0x170dB0x68f;

            } else if (_uriSuffix.length & 0x1 == 1) {

                v34 = v35 = _uriSuffix.data;

                v36 = v37 = 0;

                while (v36 < v32) {

                    MEM[32 + MEM[64] + v2.length + v24.length + v36] = STORAGE[v34];

                    v34 = v34 + 1;

                    v36 = v36 + 32;

                }

                v31 = v38 = 32 + MEM[64] + v2.length + v24.length + v32;

            }

            v39 = MEM[64];

            MEM[v39] = v31 - v39 - 32;

            MEM[64] = v31;

        } else {

            v39 = v40 = MEM[64];

            MEM[v40] = 0;

        }

    } else {

        v41 = 0x2c5b(_hiddenMetadataUri.length);

        v39 = v42 = new bytes[](v41);

        v43 = v44 = v42.data;

        v45 = 0x2c5b(_hiddenMetadataUri.length);

        if (v45) {

            if (31 < v45) {

                v46 = v47 = _hiddenMetadataUri.data;

                do {

                    MEM[v43] = STORAGE[v46];

                    v46 += 1;

                    v43 += 32;

                } while (v44 + v45 <= v43);

            } else {

                MEM[v44] = _hiddenMetadataUri.length >> 8 << 8;

            }

        }

    }

    v48 = new array[](MEM[v39]);

    v49 = v50 = 0;

    while (v49 < MEM[v39]) {

        v48[v49] = MEM[v39 + 32 + v49];

        v49 = v49 + 32;

    }

    if (v49 > MEM[v39]) {

        v48[MEM[v39]] = 0;

    }

    return v48;

}
