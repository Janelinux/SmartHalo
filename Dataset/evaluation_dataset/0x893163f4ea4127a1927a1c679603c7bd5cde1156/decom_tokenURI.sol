function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x19ef(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (varg0 != 0) {

        v1 = v2 = 0;

        while (v3 != 0) {

            require(v1 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17));

            v1 = v1 + 1;

            v3 = _SafeDiv(v3, 10);

        }

        require(v1 <= 0xffffffffffffffff, Panic(65));

        v4 = new bytes[](v1);

        if (v1) {

            CALLDATACOPY(v4.data, msg.data.length, v1);

        }

        while (v3 != 0) {

            if (v1 >= 1) {

                break;

            }

            require(v1 >= 1, Panic(17));

            v1 = v1 - 1;

            require(10, Panic(18));

            v5 = _SafeAdd(48, v3 % 10);

            require(v1 < v4.length, Panic(50));

            MEM8[32 + v1 + v4] = (byte(~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & v5 << 248, 0x0)) & 0xFF;

            v3 = _SafeDiv(v3, 10);

        }

    } else {

        v4 = v6 = new struct(2);

        v6.word0 = 1;

        v7 = v6.data;

        v6.word1 = 0x3000000000000000000000000000000000000000000000000000000000000000;

    }

    v8 = 0;

    v9 = 0x385f(_baseTokenURI.length);

    if (_baseTokenURI.length & 0x1 == 0) {

        MEM[32 + MEM[64]] = _baseTokenURI.length & ~0xff;

        v8 = v10 = 32 + MEM[64] + v9;

        goto 0x30f7B0x331cB0x161b;

    } else if (_baseTokenURI.length & 0x1 == 1) {

        v11 = v12 = 0;

        while (v11 < v9) {

            MEM[32 + MEM[64] + v11] = STORAGE[v13];

            v13 = v13 + 1;

            v11 = v11 + 32;

        }

        v8 = v14 = 32 + MEM[64] + v9;

    }

    MEM[v8 + 0] = 0x2f00000000000000000000000000000000000000000000000000000000000000;

    v15 = v16 = 0;

    while (v15 < MEM[v4]) {

        MEM[v8 + 1 + v15] = MEM[v4 + 32 + v15];

        v15 = v15 + 32;

    }

    if (v15 > MEM[v4]) {

        MEM[v8 + 1 + MEM[v4]] = 0;

    }

    MEM[v8 + 1 + MEM[v4] + 0] = '.json';

    v17 = new array[](v8 + 1 + MEM[v4] + 5 - MEM[64] - 32);

    v18 = v19 = 0;

    while (v18 < v8 + 1 + MEM[v4] + 5 - MEM[64] - 32) {

        v17[v18] = MEM[MEM[64] + 32 + v18];

        v18 = v18 + 32;

    }

    if (v18 > v8 + 1 + MEM[v4] + 5 - MEM[64] - 32) {

        v17[v8 + 1 + MEM[v4] + 5 - MEM[64] - 32] = 0;

    }

    return v17;

}
