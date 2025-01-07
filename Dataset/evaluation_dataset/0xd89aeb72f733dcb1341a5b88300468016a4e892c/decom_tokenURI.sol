function tokenURI(uint256 tokenId) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(address(_@ownerOf_312[tokenId]), Error('ERC721Metadata: URI query for nonexistent token'));

    v0 = @toString_1636(tokenId);

    v1 = v2 = 0;

    v3 = v4 = array_d.length >> 1;

    if (!(array_d.length & 0x1)) {

        v3 = v5 = v4 & 0x7f;

    }

    require(array_d.length & 0x1 != v3 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (!(array_d.length & 0x1)) {

        MEM[32 + MEM[64]] = bytes31(array_d.length);

        v1 = v6 = 32 + MEM[64] + v3;

    } else if (array_d.length & 0x1 == 1) {

        v7 = v8 = array_d.data;

        v9 = v10 = 0;

        while (v9 < v3) {

            MEM[v9 + (32 + MEM[64])] = STORAGE[v7];

            v7 += 1;

            v9 += 32;

        }

        v1 = 32 + MEM[64] + v3;

    }

    MEM[v1] = 0x2f00000000000000000000000000000000000000000000000000000000000000;

    v11 = v12 = 0;

    while (v11 < v0.length) {

        MEM[v11 + (1 + v1)] = v0[v11];

        v11 += 32;

    }

    if (v11 > v0.length) {

        MEM[v0.length + (1 + v1)] = 0;

    }

    MEM[v0.length + (1 + v1)] = '.json';

    v13 = new uint256[](5 + (v0.length + (1 + v1)) - MEM[64] - 32);

    v14 = v15 = 0;

    while (v14 < 5 + (v0.length + (1 + v1)) - MEM[64] - 32) {

        MEM[v14 + v13.data] = MEM[v14 + (MEM[64] + 32)];

        v14 += 32;

    }

    if (v14 > 5 + (v0.length + (1 + v1)) - MEM[64] - 32) {

        MEM[5 + (v0.length + (1 + v1)) - MEM[64] - 32 + v13.data] = 0;

    }

    return v13;

}
