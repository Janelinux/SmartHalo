function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = 0xe96(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    v1 = 0x1428(varg0);

    v2 = v3 = 0;

    v4 = v5 = _setBaseURI.length >> 1;

    if (!(_setBaseURI.length & 0x1)) {

        v4 = v6 = v5 & 0x7f;

    }

    require(_setBaseURI.length & 0x1 != v4 < 32, Panic(34));

    if (!(_setBaseURI.length & 0x1)) {

        MEM[32 + MEM[64]] = _setBaseURI.length & ~0xff;

        v2 = v7 = 32 + MEM[64] + v4;

        goto 0x1bb8B0xd18;

    } else if (_setBaseURI.length & 0x1 == 1) {

        v8 = v9 = 0;

        while (v8 < v4) {

            MEM[v8 + (32 + MEM[64])] = STORAGE[v10];

            v10 += 1;

            v8 += 32;

        }

        v2 = 32 + MEM[64] + v4;

    }

    MEM[v2] = 0x2f00000000000000000000000000000000000000000000000000000000000000;

    v11 = v12 = 0;

    while (v11 < v1.length) {

        MEM[v11 + (1 + v2)] = v1[v11];

        v11 += 32;

    }

    if (v11 > v1.length) {

        MEM[v1.length + (1 + v2)] = 0;

        goto 0x1b20B0xd18;

    }

    MEM[v1.length + (1 + v2)] = '.json';

    v13 = new array[](5 + (v1.length + (1 + v2)) - MEM[64] - 32);

    v14 = v15 = 0;

    while (v14 < 5 + (v1.length + (1 + v2)) - MEM[64] - 32) {

        v13[v14] = MEM[v14 + (MEM[64] + 32)];

        v14 += 32;

    }

    if (v14 > 5 + (v1.length + (1 + v2)) - MEM[64] - 32) {

        v13[5 + (v1.length + (1 + v2)) - MEM[64] - 32] = 0;

        goto 0x1afaB0x1c32B0x24a0x4ee;

    }

    return v13;

}
