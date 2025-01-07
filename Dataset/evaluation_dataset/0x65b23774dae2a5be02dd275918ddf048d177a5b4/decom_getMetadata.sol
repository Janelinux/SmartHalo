function getMetadata(address token) public payable { 

    require(msg.data.length - 4 >= 32);

    MEM[MEM[64]] = address(0x0);

    MEM[32 + MEM[64]] = 96;

    MEM[64 + MEM[64]] = 96;

    MEM[96 + MEM[64]] = uint8(0);

    v0 = new struct(4);

    v0.word0 = token;

    require(bool(token.code.size));

    v1, /* uint256 */ v2 = token.name().gas(msg.gas);

    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    RETURNDATACOPY(v2, 0, RETURNDATASIZE());

    require(v2 + RETURNDATASIZE() - v2 >= 32);

    require(MEM[v2] <= uint64.max);

    require(v2 + MEM[v2] + 31 < v2 + RETURNDATASIZE());

    require(MEM[v2 + MEM[v2]] <= uint64.max);

    require(!((32 + (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v2 + MEM[v2]] + 31)) < MEM[64]) | (32 + (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v2 + MEM[v2]] + 31)) > uint64.max)));

    MEM[64] = 32 + (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v2 + MEM[v2]] + 31));

    MEM[MEM[64]] = MEM[v2 + MEM[v2]];

    require(v2 + RETURNDATASIZE() >= 32 + (MEM[v2 + MEM[v2]] + (v2 + MEM[v2])));

    v3 = v4 = 0;

    while (v3 < MEM[v2 + MEM[v2]]) {

        MEM[v3 + (MEM[64] + 32)] = MEM[v3 + (v2 + MEM[v2] + 32)];

        v3 += 32;

    }

    if (v3 > MEM[v2 + MEM[v2]]) {

        MEM[MEM[64] + 32 + MEM[v2 + MEM[v2]]] = 0;

    }

    v0.word1 = MEM[64];

    require(bool(token.code.size));

    v5, /* uint256 */ v6 = token.symbol().gas(msg.gas);

    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    RETURNDATACOPY(v6, 0, RETURNDATASIZE());

    require(v6 + RETURNDATASIZE() - v6 >= 32);

    require(MEM[v6] <= uint64.max);

    require(v6 + MEM[v6] + 31 < v6 + RETURNDATASIZE());

    require(MEM[v6 + MEM[v6]] <= uint64.max);

    require(!((32 + (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v6 + MEM[v6]] + 31)) < MEM[64]) | (32 + (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v6 + MEM[v6]] + 31)) > uint64.max)));

    MEM[64] = 32 + (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v6 + MEM[v6]] + 31));

    MEM[MEM[64]] = MEM[v6 + MEM[v6]];

    require(v6 + RETURNDATASIZE() >= 32 + (MEM[v6 + MEM[v6]] + (v6 + MEM[v6])));

    v7 = v8 = 0;

    while (v7 < MEM[v6 + MEM[v6]]) {

        MEM[v7 + (MEM[64] + 32)] = MEM[v7 + (v6 + MEM[v6] + 32)];

        v7 += 32;

    }

    if (v7 > MEM[v6 + MEM[v6]]) {

        MEM[MEM[64] + 32 + MEM[v6 + MEM[v6]]] = 0;

    }

    v0.word2 = MEM[64];

    require(bool(token.code.size));

    v9, /* uint8 */ v10 = token.decimals().gas(msg.gas);

    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v10 == uint8(v10));

    v0.word3 = uint8(v10);

    v11 = new uint256[](address(v0.word0));

    MEM[v11.data] = 128;

    v12 = v13 = 0;

    while (v12 < MEM[v0.word1]) {

        MEM[v12 + (MEM[64] + 160 + 32)] = MEM[v12 + (v0.word1 + 32)];

        v12 += 32;

    }

    if (v12 > MEM[v0.word1]) {

        MEM[MEM[64] + 160 + 32 + MEM[v0.word1]] = 0;

    }

    MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0.word1]) + (MEM[64] + 160))] = MEM[v0.word2];

    v14 = v15 = 0;

    while (v14 < MEM[v0.word2]) {

        MEM[v14 + (32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0.word1]) + (MEM[64] + 160)) + 32)] = MEM[v14 + (v0.word2 + 32)];

        v14 += 32;

    }

    if (v14 > MEM[v0.word2]) {

        MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0.word1]) + (MEM[64] + 160)) + 32 + MEM[v0.word2]] = 0;

    }

    v16 = new uint256[](uint8(v0.word3));

    return v11, v17, v16, 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0.word1]) + (MEM[64] + 160)) - MEM[64] - 32, v17, MEM[v0.word1];

}
