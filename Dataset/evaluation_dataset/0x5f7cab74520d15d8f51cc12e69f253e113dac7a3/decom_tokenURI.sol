function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(address(_tokenURI[varg0]), Error('ERC721Metadata: URI query for nonexistent token'));

    v0 = 0x23d6(_baseURI.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x23d6(_baseURI.length);

    if (v4) {

        if (31 < v4) {

            v5 = v6 = _baseURI.data;

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = _baseURI.length >> 8 << 8;

        }

    }

    v7 = 0x1d03(varg0);

    require(1 + v7 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v8 = new bytes[](1 + v7);

    if (1 + v7) {

        CALLDATACOPY(v8.data, msg.data.length, 1 + v7);

    }

    v9 = v10 = 32 + (v8 + (1 + v7));

    do {

        v9 += ~0;

        MEM8[v9] = (byte('0123456789abcdef', v11 % 10)) & 0xFF;

        v11 = v11 / 10;

    } while (!v11);

    v12 = v13 = 0;

    while (v12 < v1.length) {

        MEM[v12 + (32 + MEM[64])] = v1[v12];

        v12 += 32;

    }

    if (v12 > v1.length) {

        MEM[v1.length + (32 + MEM[64])] = 0;

        goto 0x2594B0x125f;

    }

    v14 = v15 = 0;

    while (v14 < v8.length) {

        MEM[v14 + (32 + MEM[64] + v1.length)] = v8[v14];

        v14 += 32;

    }

    if (v14 > v8.length) {

        MEM[v8.length + (32 + MEM[64] + v1.length)] = 0;

        goto 0x25a7B0x125f;

    }

    v16 = v17 = 0;

    v18 = 0x23d6(_baseExtension.length);

    if (!(0x1 & _baseExtension.length)) {

        MEM[32 + MEM[64] + v1.length + v8.length] = bytes31(_baseExtension.length);

        v16 = v19 = 32 + MEM[64] + v1.length + v8.length + v18 * bool(v18);

        goto 0x2611B0x125f;

    } else if (0x1 & _baseExtension.length == 1) {

        v20 = v21 = _baseExtension.data;

        v22 = v23 = 0;

        while (v22 < v18) {

            MEM[v22 + (32 + MEM[64] + v1.length + v8.length)] = STORAGE[v20];

            v20 += 1;

            v22 += 32;

        }

        v16 = 32 + MEM[64] + v1.length + v8.length + v18;

    }

    v24 = new array[](v16 - MEM[64] - 32);

    v25 = v26 = 0;

    while (v25 < v16 - MEM[64] - 32) {

        v24[v25] = MEM[v25 + (MEM[64] + 32)];

        v25 += 32;

    }

    if (v25 > v16 - MEM[64] - 32) {

        v24[v16 - MEM[64] - 32] = 0;

        goto 0x2047B0x205bB0x2320x513;

    }

    return v24;

}
