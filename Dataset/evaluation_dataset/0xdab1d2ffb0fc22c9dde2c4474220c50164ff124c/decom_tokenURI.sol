function tokenURI(uint256 tokenId) public payable { 

    require(msg.data.length - 4 >= 32);

    require(_totalSupply > tokenId, Error('ERC721Metadata: URI query for nonexistent token'));

    if (uint8(_paused >> 8)) {

        v0 = 0x18c4(tokenId);

        v1 = v2 = 0;

        v3 = v4 = _baseURI.length >> 1;

        if (!(_baseURI.length & 0x1)) {

            v3 = v5 = v4 & 0x7f;

        }

        require(_baseURI.length & 0x1 != v3 < 32, Panic(34)); // access to incorrectly encoded storage byte array

        if (!(_baseURI.length & 0x1)) {

            MEM[32 + MEM[64]] = bytes31(_baseURI.length);

            v1 = v6 = 32 + MEM[64] + v3;

        } else if (_baseURI.length & 0x1 == 1) {

            v7 = v8 = _baseURI.data;

            while (v1 < v3) {

                MEM[v1 + (32 + MEM[64])] = STORAGE[v7];

                v7 += 1;

                v1 += 32;

            }

            v1 = v9 = 32 + MEM[64] + v3;

        }

        v10 = v11 = 0;

        while (v10 < v0.length) {

            MEM[v10 + v1] = v0[v10];

            v10 += 32;

        }

        if (v10 > v0.length) {

            MEM[v0.length + v1] = 0;

        }

        MEM[v0.length + v1] = '.json';

        v12 = v13 = MEM[64];

        MEM[v13] = 5 + (v0.length + v1) - v13 - 32;

    } else {

        v14 = 0x275e(_unrevealedURI.length);

        v12 = v15 = new bytes[](v14);

        v16 = v17 = v15.data;

        v18 = 0x275e(_unrevealedURI.length);

        if (v18) {

            if (31 < v18) {

                v19 = v20 = _unrevealedURI.data;

                do {

                    MEM[v16] = STORAGE[v19];

                    v19 += 1;

                    v16 += 32;

                } while (v17 + v18 <= v16);

            } else {

                MEM[v17] = _unrevealedURI.length >> 8 << 8;

            }

        }

    }

    v21 = new uint256[](MEM[?]);

    v22 = v23 = 0;

    while (v22 < MEM[?]) {

        MEM[v22 + v21.data] = MEM[v22 + (v24 + 32)];

        v22 += 32;

    }

    if (v22 > MEM[?]) {

        MEM[MEM[?] + v21.data] = 0;

    }

    return v21;

}
