function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = 0x15bd(varg0);

    v1 = v2 = 0;

    v3 = v4 = _baseTokenURI.length >> 1;

    if (!(_baseTokenURI.length & 0x1)) {

        v3 = v5 = v4 & 0x7f;

    }

    require(_baseTokenURI.length & 0x1 != v3 < 32, Panic(34));

    if (!(_baseTokenURI.length & 0x1)) {

        MEM[32 + MEM[64]] = _baseTokenURI.length & ~0xff;

        v1 = v6 = 32 + MEM[64] + v3;

        goto 0x1f9aB0xf8f;

    } else if (_baseTokenURI.length & 0x1 == 1) {

        v7 = v8 = 0;

        while (v7 < v3) {

            MEM[v7 + (32 + MEM[64])] = STORAGE[v9];

            v9 += 1;

            v7 += 32;

        }

        v1 = v10 = 32 + MEM[64] + v3;

    }

    v11 = v12 = 0;

    while (v11 < v0.length) {

        MEM[v11 + v1] = v0[v11];

        v11 += 32;

    }

    if (v11 > v0.length) {

        MEM[v0.length + v1] = 0;

        goto 0x1f02B0xf8f;

    }

    v13 = new array[](v0.length + v1 - MEM[64] - 32);

    v14 = v15 = 0;

    while (v14 < v0.length + v1 - MEM[64] - 32) {

        v13[v14] = MEM[v14 + (MEM[64] + 32)];

        v14 += 32;

    }

    if (v14 > v0.length + v1 - MEM[64] - 32) {

        v13[v0.length + v1 - MEM[64] - 32] = 0;

        goto 0x1edcB0x1ff0B0x2270x4b7;

    }

    return v13;

}
