function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x16a3(varg0);

    require(v0, Error('URI does not exist!'));

    v1 = 0x2dd2(__baseTokenURI.length);

    v2 = new bytes[](v1);

    v3 = v4 = v2.data;

    v5 = 0x2dd2(__baseTokenURI.length);

    if (v5) {

        if (31 < v5) {

            do {

                MEM[v3] = STORAGE[v6];

                v6 += 1;

                v3 += 32;

            } while (v4 + v5 <= v3);

        } else {

            MEM[v4] = __baseTokenURI.length >> 8 << 8;

        }

    }

    if (varg0 != 0) {

        v7 = v8 = 0;

        while (v9 != 0) {

            require(v7 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17));

            v7 = v7 + 1;

            v9 = _SafeDiv(v9, 10);

        }

        require(v7 <= 0xffffffffffffffff, Panic(65));

        v10 = new bytes[](v7);

        if (v7) {

            CALLDATACOPY(v10.data, msg.data.length, v7);

        }

        while (v9 != 0) {

            if (v7 >= 1) {

                break;

            }

            require(v7 >= 1, Panic(17));

            v7 = v7 - 1;

            require(10, Panic(18));

            v11 = _SafeAdd(48, v9 % 10);

            require(v7 < v10.length, Panic(50));

            MEM8[32 + v7 + v10] = (byte(~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & v11 << 248, 0x0)) & 0xFF;

            v9 = _SafeDiv(v9, 10);

        }

    } else {

        v10 = v12 = new struct(2);

        v12.word0 = 1;

        v13 = v12.data;

        v12.word1 = 0x3000000000000000000000000000000000000000000000000000000000000000;

    }

    v14 = v15 = 0;

    while (v14 < v2.length) {

        MEM[32 + MEM[64] + v14] = v2[v14];

        v14 = v14 + 32;

    }

    if (v14 > v2.length) {

        MEM[32 + MEM[64] + v2.length] = 0;

    }

    v16 = v17 = 0;

    while (v16 < MEM[v10]) {

        MEM[32 + MEM[64] + v2.length + v16] = MEM[v10 + 32 + v16];

        v16 = v16 + 32;

    }

    if (v16 > MEM[v10]) {

        MEM[32 + MEM[64] + v2.length + MEM[v10]] = 0;

    }

    MEM[32 + MEM[64] + v2.length + MEM[v10] + 0] = '.json';

    v18 = new array[](32 + MEM[64] + v2.length + MEM[v10] + 5 - MEM[64] - 32);

    v19 = v20 = 0;

    while (v19 < 32 + MEM[64] + v2.length + MEM[v10] + 5 - MEM[64] - 32) {

        v18[v19] = MEM[MEM[64] + 32 + v19];

        v19 = v19 + 32;

    }

    if (v19 > 32 + MEM[64] + v2.length + MEM[v10] + 5 - MEM[64] - 32) {

        v18[32 + MEM[64] + v2.length + MEM[v10] + 5 - MEM[64] - 32] = 0;

    }

    return v18;

}
