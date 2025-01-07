function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x1c7e(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    v1 = 0x20fb();

    if (v1.length > 0) {

        if (varg0 - 0) {

            v2 = v3 = 0;

            while (v4 != 0) {

                v2 = 0x3894(v2);

                v4 = _SafeDiv(v4, 10);

            }

            require(v2 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

            v5 = new bytes[](v2);

            if (v2) {

                CALLDATACOPY(v5.data, msg.data.length, v2);

            }

            while (v4 != 0) {

                v2 = v2 - 1;

                require(v2 <= v2, Panic(17)); // arithmetic overflow or underflow

                require(10, Panic(18)); // division by zero

                v6 = _SafeAdd(48, v4 % 10);

                require(v2 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                MEM8[32 + v2 + v5] = (byte(bytes1(v6 << 248), 0x0)) & 0xFF;

                v4 = _SafeDiv(v4, 10);

            }

        } else {

            v5 = v7 = 0x3000000000000000000000000000000000000000000000000000000000000000;

        }

        v8 = v9 = 0;

        while (v8 < v1.length) {

            MEM[32 + MEM[64] + v8] = v1[v8];

            v8 = v8 + 32;

        }

        MEM[32 + MEM[64] + v1.length] = 0;

        v10 = v11 = 0;

        while (v10 < MEM[v5]) {

            MEM[32 + MEM[64] + v1.length + v10] = MEM[v5 + 32 + v10];

            v10 = v10 + 32;

        }

        MEM[32 + MEM[64] + v1.length + MEM[v5]] = 0;

        v12 = MEM[64];

        MEM[v12] = 32 + MEM[64] + v1.length + MEM[v5] - v12 - 32;

        MEM[64] = 32 + MEM[64] + v1.length + MEM[v5];

    } else {

        v12 = v13 = MEM[64];

        MEM[v13] = 0;

    }

    v14 = new array[](MEM[v12]);

    v15 = v16 = 0;

    while (v15 < MEM[v12]) {

        v14[v15] = MEM[v12 + 32 + v15];

        v15 = v15 + 32;

    }

    v14[MEM[v12]] = 0;

    return v14;

}
