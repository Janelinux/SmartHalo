function tokenURI(uint256 tokenId) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = @_exists_2131(tokenId);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed) {

        v1 = @_baseURI_1477();

        if (v1.length > 0) {

            v2 = @toString_707(tokenId);

            v3 = v4 = 0;

            while (v3 < v1.length) {

                MEM[v3 + (32 + MEM[64])] = v1[v3];

                v3 += 32;

            }

            if (v3 > v1.length) {

                MEM[v1.length + (32 + MEM[64])] = 0;

            }

            v5 = v6 = 0;

            while (v5 < v2.length) {

                MEM[v5 + (32 + MEM[64] + v1.length)] = v2[v5];

                v5 += 32;

            }

            if (v5 > v2.length) {

                MEM[v2.length + (32 + MEM[64] + v1.length)] = 0;

            }

            v7 = v8 = 0;

            v9 = v10 = _uriSuffix.length >> 1;

            if (!(_uriSuffix.length & 0x1)) {

                v9 = v11 = v10 & 0x7f;

            }

            require(_uriSuffix.length & 0x1 != v9 < 32, Panic(34)); // access to incorrectly encoded storage byte array

            if (!(_uriSuffix.length & 0x1)) {

                MEM[32 + MEM[64] + v1.length + v2.length] = bytes31(_uriSuffix.length);

                v7 = v12 = 32 + MEM[64] + v1.length + v2.length + v9;

            } else if (_uriSuffix.length & 0x1 == 1) {

                v13 = v14 = _uriSuffix.data;

                v15 = v16 = 0;

                while (v15 < v9) {

                    MEM[v15 + (32 + MEM[64] + v1.length + v2.length)] = STORAGE[v13];

                    v13 += 1;

                    v15 += 32;

                }

                v7 = 32 + MEM[64] + v1.length + v2.length + v9;

            }

            v17 = v18 = MEM[64];

            MEM[v18] = v7 - v18 - 32;

            MEM[64] = v7;

        } else {

            v17 = v19 = MEM[64];

            MEM[v19] = 0;

        }

    } else {

        v20 = v21 = _hiddenMetadataUri.length >> 1;

        if (!(_hiddenMetadataUri.length & 0x1)) {

            v20 = v22 = v21 & 0x7f;

        }

        require(_hiddenMetadataUri.length & 0x1 != v20 < 32, Panic(34)); // access to incorrectly encoded storage byte array

        v17 = v23 = new bytes[](v20);

        v24 = v25 = v23.data;

        v26 = v27 = _hiddenMetadataUri.length >> 1;

        if (!(_hiddenMetadataUri.length & 0x1)) {

            v26 = v28 = v27 & 0x7f;

        }

        require(_hiddenMetadataUri.length & 0x1 != v26 < 32, Panic(34)); // access to incorrectly encoded storage byte array

        if (v26) {

            if (31 < v26) {

                v29 = v30 = _hiddenMetadataUri.data;

                do {

                    MEM[v24] = STORAGE[v29];

                    v29 += 1;

                    v24 += 32;

                } while (v25 + v26 <= v24);

            } else {

                MEM[v25] = _hiddenMetadataUri.length >> 8 << 8;

            }

        }

    }

    v31 = new uint256[](MEM[?]);

    v32 = v33 = 0;

    while (v32 < MEM[?]) {

        MEM[v32 + v31.data] = MEM[v32 + (v34 + 32)];

        v32 += 32;

    }

    if (v32 > MEM[?]) {

        MEM[MEM[?] + v31.data] = 0;

    }

    return v31;

}
