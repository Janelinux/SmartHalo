function tokenURI(uint256 tokenId) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = @_exists_1696(tokenId);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    v1 = @toString_801(tokenId);

    v2 = 0;

    v3 = __tokenURIBase.length >> 1;

    if (!(__tokenURIBase.length & 0x1)) {

        v3 = v4 = v3 & 0x7f;

    }

    require(__tokenURIBase.length & 0x1 != v3 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (!(__tokenURIBase.length & 0x1)) {

        MEM[32 + MEM[64]] = bytes31(__tokenURIBase.length);

        v2 = v5 = 32 + MEM[64] + v3;

    } else if (__tokenURIBase.length & 0x1 == 1) {

        v6 = v7 = __tokenURIBase.data;

        v8 = v9 = 0;

        while (v8 < v3) {

            MEM[v8 + (32 + MEM[64])] = STORAGE[v6];

            v6 += 1;

            v8 += 32;

        }

        v2 = v10 = 32 + MEM[64] + v3;

    }

    v11 = v12 = 0;

    while (v11 < v1.length) {

        MEM[v11 + (?)] = v1[v11];

        v11 += 32;

    }

    if (v11 > v1.length) {

        MEM[v1.length + (?)] = 0;

    }

    v13 = 0;

    v14 = __tokenURIExtension.length >> 1;

    if (!(__tokenURIExtension.length & 0x1)) {

        v14 = v15 = v14 & 0x7f;

    }

    require(__tokenURIExtension.length & 0x1 != v14 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (!(__tokenURIExtension.length & 0x1)) {

        MEM[v2 + v1.length] = bytes31(__tokenURIExtension.length);

        v13 = v16 = v2 + v1.length + v14;

    } else if (__tokenURIExtension.length & 0x1 == 1) {

        v17 = v18 = __tokenURIExtension.data;

        v19 = v20 = 0;

        while (v19 < v14) {

            MEM[v19 + (v2 + v1.length)] = STORAGE[v17];

            v17 += 1;

            v19 += 32;

        }

        v13 = v21 = v2 + v1.length + v14;

    }

    v22 = new uint256[](v13 - MEM[64] - 32);

    v23 = v24 = 0;

    while (v23 < v13 - MEM[64] - 32) {

        MEM[v23 + v22.data] = MEM[v23 + (MEM[64] + 32)];

        v23 += 32;

    }

    if (v23 > v13 - MEM[64] - 32) {

        MEM[v13 - MEM[64] - 32 + v22.data] = 0;

    }

    return v22;

}
