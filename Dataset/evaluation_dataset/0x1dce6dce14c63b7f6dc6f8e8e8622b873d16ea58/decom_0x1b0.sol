function 0x1b0(uint256 varg0, address varg1) private { 

    v0 = new array[](64);

    MEM[4 + MEM[64] + 96] = MEM[varg0.word0];

    v1 = v2 = 4 + MEM[64] + 128;

    v3 = v4 = 4 + MEM[64] + (MEM[varg0.word0] << 5) + 128;

    v5 = v6 = varg0.word0 + 32;

    v7 = v8 = 0;

    while (v7 < MEM[varg0.word0]) {

        MEM[v1] = ~127 + (v3 - (4 + MEM[64]));

        MEM[v3] = 64;

        MEM[v3 + 64] = MEM[MEM[MEM[v5]]];

        v9 = v10 = 0;

        while (v9 < MEM[MEM[MEM[v5]]]) {

            MEM[v9 + (v3 + 64 + 32)] = MEM[v9 + (MEM[MEM[v5]] + 32)];

            v9 += 32;

        }

        if (v9 > MEM[MEM[MEM[v5]]]) {

            MEM[v3 + 64 + 32 + MEM[MEM[MEM[v5]]]] = 0;

        }

        MEM[32 + v3] = 32 + ((~0x1f & 31 + MEM[MEM[MEM[v5]]]) + (v3 + 64)) - v3;

        MEM[32 + ((~0x1f & 31 + MEM[MEM[MEM[v5]]]) + (v3 + 64))] = MEM[MEM[32 + MEM[v5]]];

        v11 = v12 = 0;

        while (v11 < MEM[MEM[32 + MEM[v5]]]) {

            MEM[v11 + (32 + ((~0x1f & 31 + MEM[MEM[MEM[v5]]]) + (v3 + 64)) + 32)] = MEM[v11 + (MEM[32 + MEM[v5]] + 32)];

            v11 += 32;

        }

        if (v11 > MEM[MEM[32 + MEM[v5]]]) {

            MEM[32 + ((~0x1f & 31 + MEM[MEM[MEM[v5]]]) + (v3 + 64)) + 32 + MEM[MEM[32 + MEM[v5]]]] = 0;

        }

        v3 = 32 + ((~0x1f & 31 + MEM[MEM[32 + MEM[v5]]]) + (32 + ((~0x1f & 31 + MEM[MEM[MEM[v5]]]) + (v3 + 64))));

        v5 += 32;

        v1 += 32;

        v7 += 1;

    }

    v13 = new array[](~31 + (v3 - (4 + MEM[64])));

    MEM[v3] = MEM[varg0.word1];

    v14 = v15 = 0;

    while (v14 < MEM[varg0.word1]) {

        MEM[v14 + (v3 + 32)] = MEM[v14 + (varg0.word1 + 32)];

        v14 += 32;

    }

    if (v14 > MEM[varg0.word1]) {

        MEM[v3 + 32 + MEM[varg0.word1]] = 0;

    }

    v16, v17 = varg1.staticcall(uint32(0x5ea01e63), v0, v13).gas(msg.gas);

    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    RETURNDATACOPY(v17, 0, RETURNDATASIZE());

    MEM[64] = v17 + (~0x1f & RETURNDATASIZE() + 31);

    require(v17 + RETURNDATASIZE() - v17 >= 32);

    require(MEM[v17] <= 0xffffffffffffffff);

    require(v17 + RETURNDATASIZE() > v17 + MEM[v17] + 31);

    v18 = MEM[v17 + MEM[v17]];

    v19 = 0x446(v18);

    v20 = MEM[64];

    require(!((v20 + (~0x1f & v19 + 31) < v20) | (v20 + (~0x1f & v19 + 31) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    require(v17 + MEM[v17] + v18 + 32 <= v17 + RETURNDATASIZE());

    v21 = v22 = 0;

    while (v21 < v18) {

        MEM[v21 + (v20 + 32)] = MEM[v21 + (v17 + MEM[v17] + 32)];

        v21 += 32;

    }

    if (v21 > v18) {

        MEM[v20 + 32 + v18] = 0;

    }

    if (0 - v18) {

        v23 = _SafeAdd(2, v18);

        require(3, Panic(18)); // division by zero

        require(!(bool(4) & (v23 / 3 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)), Panic(17)); // arithmetic overflow or underflow

        v24 = _SafeAdd(32, v23 / 3 << 2);

        require(v24 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

        v25 = v26 = new bytes[](v24);

        if (v24) {

            CALLDATACOPY(v26.data, msg.data.length, v24);

        }

        v27 = v26.data;

        while (v20 < v20 + v18) {

            v20 = v20 + 3;

            MEM8[v27] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (MEM[v20] >> 18 & 0x3f)] & 0xFF;

            MEM8[v27 + 1] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (MEM[v20] >> 12 & 0x3f)] & 0xFF;

            MEM8[v27 + 1 + 1] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (MEM[v20] >> 6 & 0x3f)] & 0xFF;

            MEM8[v27 + 1 + 1 + 1] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (MEM[v20] & 0x3f)] & 0xFF;

            v27 = 1 + (v27 + 1 + 1 + 1);

        }

        if (v18 % 3 == 1) {

            MEM[v27 + ~1] = 0x3d3d000000000000000000000000000000000000000000000000000000000000;

        } else if (v18 % 3 == 2) {

            MEM[v27 + ~0] = 0x3d00000000000000000000000000000000000000000000000000000000000000;

        }

    } else {

        v25 = MEM[64];

        MEM[v25] = 0;

    }

    return v25;

}
