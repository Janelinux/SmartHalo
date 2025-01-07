function getMetadata(uint8 version, uint256 from, uint256 to) public payable { 

    require(msg.data.length - 4 >= 96);

    require(from < to);

    require(to >= from, Panic(17)); // arithmetic overflow or underflow

    v0 = to - from;

    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v1 = new uint256[](v0);

    if (v0) {

        v2 = v1.data;

        do {

            MEM[v2] = 96;

            v2 += 32;

            v0 = v0 - 1;

        } while (!v0);

    }

    v3 = v4 = 0;

    while (v5 < to) {

        require(bool(0x9602874e70fa093793cadac9d0c392f80e3a80e0.code.size));

        v6, /* uint256 */ v7 = 0x9602874e70fa093793cadac9d0c392f80e3a80e0.showLicenseForBASTARD(version, v5).gas(msg.gas);

        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        RETURNDATACOPY(v7, 0, RETURNDATASIZE());

        require(v7 + RETURNDATASIZE() - v7 >= 32);

        require(MEM[v7] <= uint64.max);

        require(v7 + MEM[v7] + 31 < v7 + RETURNDATASIZE());

        require(MEM[v7 + MEM[v7]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

        require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v7 + MEM[v7]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v7 + MEM[v7]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

        MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v7 + MEM[v7]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);

        MEM[MEM[64]] = MEM[v7 + MEM[v7]];

        require(v7 + MEM[v7] + MEM[v7 + MEM[v7]] + 32 <= v7 + RETURNDATASIZE());

        v8 = v9 = 0;

        while (v8 < MEM[v7 + MEM[v7]]) {

            MEM[v8 + (MEM[64] + 32)] = MEM[v8 + (v7 + MEM[v7] + 32)];

            v8 += 32;

        }

        if (v8 > MEM[v7 + MEM[v7]]) {

            MEM[MEM[64] + 32 + MEM[v7 + MEM[v7]]] = 0;

        }

        require(v3 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v1[v3] = MEM[64];

        require(v3 != uint256.max, Panic(17)); // arithmetic overflow or underflow

        v3 += 1;

        require(v5 != uint256.max, Panic(17)); // arithmetic overflow or underflow

        v5 += 1;

    }

    v10 = new uint256[](v1.length);

    v11 = v12 = v10.data;

    v13 = v14 = MEM[64] + (v1.length << 5) + 64;

    v15 = v16 = v1.data;

    v17 = v18 = 0;

    while (v17 < v1.length) {

        MEM[v11] = v13 - MEM[64] - 64;

        MEM[v13] = MEM[MEM[v15]];

        v19 = v20 = 0;

        while (v19 < MEM[MEM[v15]]) {

            MEM[v19 + (v13 + 32)] = MEM[v19 + (MEM[v15] + 32)];

            v19 += 32;

        }

        if (v19 > MEM[MEM[v15]]) {

            MEM[v13 + 32 + MEM[MEM[v15]]] = 0;

        }

        v13 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v15]]) + v13);

        v11 += 32;

        v15 += 32;

        v17 += 1;

    }

    return v10;

}
