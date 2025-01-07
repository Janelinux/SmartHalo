function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    0x354a(varg0);

    require(varg0 < _totalSupply, Error('ERC721Metadata: URI query for nonexistent token'));

    require(varg0 < _totalSupply, Error('ERC721Metadata: URI query for nonexistent token'));

    v0 = 0x3016();

    if (v0.length > 0) {

        if (varg0 - 0) {

            v1 = v2 = 0;

            while (v3 != 0) {

                v1 = 0x3fcd(v1);

                v3 = _SafeDiv(v3, 10);

            }

            require(v1 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

            v4 = new bytes[](v1);

            if (v1) {

                CALLDATACOPY(v4.data, msg.data.length, v1);

            }

            while (v3 != 0) {

                v1 = _SafeSub(v1, 1);

                require(10, Panic(18)); // division by zero

                v5 = _SafeAdd(48, v3 % 10);

                require(v1 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                MEM8[32 + v1 + v4] = (byte(bytes1(v5 << 248), 0x0)) & 0xFF;

                v3 = _SafeDiv(v3, 10);

            }

        } else {

            v4 = v6 = 48;

        }

        v7 = v8 = 0;

        while (v7 < v0.length) {

            MEM[32 + MEM[64] + v7] = v0[v7];

            v7 = v7 + 32;

        }

        MEM[32 + MEM[64] + v0.length] = 0;

        v9 = v10 = 0;

        while (v9 < MEM[v4]) {

            MEM[32 + MEM[64] + v0.length + v9] = MEM[v4 + 32 + v9];

            v9 = v9 + 32;

        }

        MEM[32 + MEM[64] + v0.length + MEM[v4]] = 0;

        v11 = MEM[64];

        MEM[v11] = 32 + MEM[64] + v0.length + MEM[v4] - v11 - 32;

        MEM[64] = 32 + MEM[64] + v0.length + MEM[v4];

    } else {

        v11 = v12 = MEM[64];

        MEM[v12] = 0;

    }

    if (MEM[v11] > 0) {

        v13 = v14 = 0;

        while (v13 < MEM[v11]) {

            MEM[32 + MEM[64] + v13] = MEM[v11 + 32 + v13];

            v13 = v13 + 32;

        }

        MEM[32 + MEM[64] + MEM[v11]] = 0;

        MEM[32 + MEM[64] + MEM[v11] + 0] = '.json';

        v15 = MEM[64];

        MEM[v15] = 32 + MEM[64] + MEM[v11] + 5 - v15 - 32;

        MEM[64] = 32 + MEM[64] + MEM[v11] + 5;

    } else {

        v15 = v16 = MEM[64];

        MEM[64] = 32 + v16;

        MEM[v16] = 0;

    }

    v17 = new array[](MEM[v15]);

    v18 = v19 = 0;

    while (v18 < MEM[v15]) {

        MEM[v17.data + v18] = MEM[v15 + 32 + v18];

        v18 = v18 + 32;

    }

    MEM[v17.data + MEM[v15]] = 0;

    return v17;

}
