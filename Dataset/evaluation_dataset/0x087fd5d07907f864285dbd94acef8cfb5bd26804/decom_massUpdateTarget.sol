function massUpdateTarget(uint256[] varg0, address[] varg1, address[] varg2, uint256[] varg3, bool[] varg4) public payable { 

    require(msg.data.length - 4 >= 160);

    require(varg0 <= uint64.max);

    require(4 + varg0 + 31 < msg.data.length);

    v0 = 0x36ba(varg0.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    v1 = v2 = MEM[64] + 32;

    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);

    v3 = v4 = varg0.data;

    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {

        MEM[v1] = msg.data[v3];

        v1 += 32;

        v3 += 32;

    }

    require(varg1 <= uint64.max);

    require(4 + varg1 + 31 < msg.data.length);

    v5 = 0x36ba(varg1.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    v6 = v7 = MEM[64] + 32;

    require(32 + (4 + varg1 + (varg1.length << 5)) <= msg.data.length);

    v8 = v9 = varg1.data;

    while (v8 < 32 + (4 + varg1 + (varg1.length << 5))) {

        require(msg.data[v8] == address(msg.data[v8]));

        MEM[v6] = msg.data[v8];

        v6 += 32;

        v8 += 32;

    }

    require(varg2 <= uint64.max);

    require(4 + varg2 + 31 < msg.data.length);

    v10 = 0x36ba(varg2.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v10 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v10 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    v11 = v12 = MEM[64] + 32;

    require(32 + (4 + varg2 + (varg2.length << 5)) <= msg.data.length);

    v13 = v14 = varg2.data;

    while (v13 < 32 + (4 + varg2 + (varg2.length << 5))) {

        require(msg.data[v13] == address(msg.data[v13]));

        MEM[v11] = msg.data[v13];

        v11 += 32;

        v13 += 32;

    }

    require(varg3 <= uint64.max);

    require(4 + varg3 + 31 < msg.data.length);

    v15 = 0x36ba(varg3.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v15 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v15 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    v16 = v17 = MEM[64] + 32;

    require(32 + (4 + varg3 + (varg3.length << 5)) <= msg.data.length);

    v18 = v19 = varg3.data;

    while (v18 < 32 + (4 + varg3 + (varg3.length << 5))) {

        MEM[v16] = msg.data[v18];

        v16 += 32;

        v18 += 32;

    }

    require(varg4 <= uint64.max);

    require(4 + varg4 + 31 < msg.data.length);

    v20 = 0x36ba(varg4.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v20 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v20 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    v21 = v22 = MEM[64] + 32;

    require(32 + (4 + varg4 + (varg4.length << 5)) <= msg.data.length);

    v23 = v24 = varg4.data;

    while (v23 < 32 + (4 + varg4 + (varg4.length << 5))) {

        require(msg.data[v23] == bool(msg.data[v23]));

        MEM[v21] = msg.data[v23];

        v21 += 32;

        v23 += 32;

    }

    v25 = _SafeSub(0x556301154b68721fc0006964a933e4c80713f8e5ff47e21c74251559fe91dad6, 1);

    require(address(STORAGE[v25]) == msg.sender, Error('not an owner'));

    v26 = v27 = 0;

    while (v26 < varg0.length) {

        require(v26 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v26 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v26 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v26 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v26 < varg4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v28 = _SafeSub(0xc73b86a2cead4de9aab5c1c10b7a07c185c2a0127b2d055b66229887a2a03da0, 1);

        if (MEM[32 + (v26 << 5) + MEM[64]]) {

            v29 = STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28) + 2];

            v30, /* address */ v31 = 0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.lockableToken(address(MEM[32 + (v26 << 5) + MEM[64]]), MEM[32 + (v26 << 5) + MEM[64]]).gas(msg.gas);

            require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v31 == address(v31));

            v32, /* address */ v33 = 0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.lockableToken(address(STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28)]), v29).gas(msg.gas);

            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v33 == address(v33));

            require(address(v33) == address(v31), Error('updateTargetInfo: different lockable tokens'));

            v34, /* uint256 */ v35 = 0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.lockedAmount(address(STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28)]), v29).gas(msg.gas);

            require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(bool(0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.code.size));

            v36 = 0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.delegatecall(bytes4(0x243f5d6200000000000000000000000000000000000000000000000000000000), address(STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28)]), v29, v35).gas(msg.gas);

            require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            v37, /* address */ v38 = 0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.lockableToken(address(MEM[32 + (v26 << 5) + MEM[64]]), MEM[32 + (v26 << 5) + MEM[64]]).gas(msg.gas);

            require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v38 == address(v38));

            v39, /* uint256 */ v40 = address(v38).balanceOf(this).gas(msg.gas);

            require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(bool(0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.code.size));

            v41 = 0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0.delegatecall(bytes4(0x47e75bba00000000000000000000000000000000000000000000000000000000), address(MEM[32 + (v26 << 5) + MEM[64]]), MEM[32 + (v26 << 5) + MEM[64]], v40).gas(msg.gas);

            require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        }

        STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28)] = bytes12(STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28)]) | address(MEM[32 + (v26 << 5) + MEM[64]]);

        STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28) + 1] = bytes12(STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28) + 1]) | address(MEM[32 + (v26 << 5) + MEM[64]]);

        STORAGE[keccak256(MEM[32 + (v26 << 5) + MEM[64]], v28) + 2] = MEM[32 + (v26 << 5) + MEM[64]];

        emit UpdateTargetInfo(MEM[32 + (v26 << 5) + MEM[64]]);

        v26 = 0x3be2(v26);

    }

}
