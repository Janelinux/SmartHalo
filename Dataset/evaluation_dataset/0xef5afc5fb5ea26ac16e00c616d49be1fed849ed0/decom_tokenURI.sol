function tokenURI(uint256 tokenId) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(_@ownerOf_629[tokenId], Error('ERC721URIStorage: URI query for nonexistent token'));

    v0 = v1 = _tokenURI[tokenId].length >> 1;

    if (!(_tokenURI[tokenId].length & 0x1)) {

        v0 = v2 = v1 & 0x7f;

    }

    require(_tokenURI[tokenId].length & 0x1 != v0 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v3 = v4 = new bytes[](v0);

    v5 = v6 = v4.data;

    v7 = v8 = _tokenURI[tokenId].length >> 1;

    if (!(_tokenURI[tokenId].length & 0x1)) {

        v7 = v9 = v8 & 0x7f;

    }

    require(_tokenURI[tokenId].length & 0x1 != v7 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (v7) {

        if (31 < v7) {

            v10 = v11 = _tokenURI[tokenId].data;

            do {

                MEM[v5] = STORAGE[v10];

                v10 += 1;

                v5 += 32;

            } while (v6 + v7 <= v5);

        } else {

            MEM[v6] = _tokenURI[tokenId].length >> 8 << 8;

        }

    }

    v12 = @_baseURI_3037();

    if (0 != v12.length) {

        if (!v4.length) {

            require(_@ownerOf_629[tokenId], Error('ERC721Metadata: URI query for nonexistent token'));

            v13 = @_baseURI_3037();

            if (v13.length > 0) {

                v14 = @toString_2465(tokenId);

                v15 = v16 = 0;

                while (v15 < v13.length) {

                    MEM[v15 + (32 + MEM[64])] = v13[v15];

                    v15 += 32;

                }

                if (v15 > v13.length) {

                    MEM[v13.length + (32 + MEM[64])] = 0;

                }

                v17 = v18 = 0;

                while (v17 < v14.length) {

                    MEM[v17 + (32 + MEM[64] + v13.length)] = v14[v17];

                    v17 += 32;

                }

                if (v17 > v14.length) {

                    MEM[v14.length + (32 + MEM[64] + v13.length)] = 0;

                }

                v3 = MEM[64];

                MEM[v3] = v14.length + (32 + MEM[64] + v13.length) - v3 - 32;

                MEM[64] = v14.length + (32 + MEM[64] + v13.length);

            } else {

                v3 = v19 = MEM[64];

                MEM[v19] = 0;

            }

        } else {

            v20 = v21 = 0;

            while (v20 < v12.length) {

                MEM[v20 + (32 + MEM[64])] = v12[v20];

                v20 += 32;

            }

            if (v20 > v12.length) {

                MEM[v12.length + (32 + MEM[64])] = 0;

            }

            v22 = v23 = 0;

            while (v22 < v4.length) {

                MEM[v22 + (32 + MEM[64] + v12.length)] = v4[v22];

                v22 += 32;

            }

            if (v22 > v4.length) {

                MEM[v4.length + (32 + MEM[64] + v12.length)] = 0;

            }

            v3 = v24 = MEM[64];

            MEM[v24] = v4.length + (32 + MEM[64] + v12.length) - v24 - 32;

            MEM[64] = v4.length + (32 + MEM[64] + v12.length);

        }

    }

    v25 = new uint256[](MEM[v3]);

    v26 = v27 = 0;

    while (v26 < MEM[v3]) {

        MEM[v26 + v25.data] = MEM[v26 + (v3 + 32)];

        v26 += 32;

    }

    if (v26 > MEM[v3]) {

        MEM[MEM[v3] + v25.data] = 0;

    }

    return v25;

}
