function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = 0x1340(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    v1 = 0x18e1(varg0);

    require(1 + v1 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v2 = new bytes[](1 + v1);

    if (1 + v1) {

        CALLDATACOPY(v2.data, msg.data.length, 1 + v1);

    }

    v3 = v4 = 32 + (v2 + (1 + v1));

    do {

        v3 += ~0;

        MEM8[v3] = (byte('0123456789abcdef', v5 % 10)) & 0xFF;

        v5 = v5 / 10;

    } while (!v5);

    v6 = v7 = 0;

    v8 = 0x1ee7(_setBaseTokenURI.length);

    if (!(0x1 & _setBaseTokenURI.length)) {

        MEM[32 + MEM[64]] = bytes31(_setBaseTokenURI.length);

        v6 = v9 = 32 + MEM[64] + v8 * bool(v8);

        goto 0x212d;

    } else if (0x1 & _setBaseTokenURI.length == 1) {

        v10 = v11 = _setBaseTokenURI.data;

        v12 = v13 = 0;

        while (v12 < v8) {

            MEM[v12 + (32 + MEM[64])] = STORAGE[v10];

            v10 += 1;

            v12 += 32;

        }

        v6 = v14 = 32 + MEM[64] + v8;

    }

    v15 = v16 = 0;

    while (v15 < v2.length) {

        MEM[v15 + v6] = v2[v15];

        v15 += 32;

    }

    if (v15 <= v2.length) {

        goto 0x2141;

    } else {

        MEM[v2.length + v6] = 0;

    }

    MEM[v6 + v2.length] = '.json';

    v17 = new array[](5 + (v6 + v2.length) - MEM[64] + ~31);

    v18 = v19 = 0;

    while (v18 < 5 + (v6 + v2.length) - MEM[64] + ~31) {

        v17[v18] = MEM[v18 + (MEM[64] + 32)];

        v18 += 32;

    }

    if (v18 <= 5 + (v6 + v2.length) - MEM[64] + ~31) {

        goto 0x1a30B0x1a44B0x2b56;

    } else {

        v17[5 + (v6 + v2.length) - MEM[64] + ~31] = 0;

    }

    return v17;

}
