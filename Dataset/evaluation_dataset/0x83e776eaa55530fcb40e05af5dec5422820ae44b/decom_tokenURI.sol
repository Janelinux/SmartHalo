function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    require(varg0 < _totalSupply.length, Error('ERC721Metadata: URI query for nonexistent token'));

    v0 = 0x2bda(_tokenURI.length);

    if (v0 > 0) {

        if (varg0 - 0) {

            v1 = v2 = 0;

            while (v3 != 0) {

                require(v1 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17)); // arithmetic overflow or underflow

                v1 = v1 + 1;

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

            v4 = v6 = 0x3000000000000000000000000000000000000000000000000000000000000000;

        }

        v7 = 0x3353(11, 32 + MEM[64]);

        v8 = v9 = 0;

        while (v8 < MEM[v4]) {

            MEM[v7 + v8] = MEM[v4 + 32 + v8];

            v8 = v8 + 32;

        }

        MEM[v7 + MEM[v4]] = 0;

        MEM[v7 + MEM[v4] + 0] = '.json';

        v10 = MEM[64];

        MEM[v10] = v7 + MEM[v4] + 5 - v10 - 32;

        MEM[64] = v7 + MEM[v4] + 5;

    } else {

        v10 = v11 = MEM[64];

        MEM[64] = 32 + v11;

        MEM[v11] = 0;

    }

    v12 = new array[](MEM[v10]);

    v13 = v14 = 0;

    while (v13 < MEM[v10]) {

        v12[v13] = MEM[v10 + 32 + v13];

        v13 = v13 + 32;

    }

    v12[MEM[v10]] = 0;

    return v12;

}
