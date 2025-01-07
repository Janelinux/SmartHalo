function claimFees(address[] varg0, uint256 varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    require(!((MEM[64] + (~0x1f & (varg0.length << 5) + 32 + 31) < MEM[64]) | (MEM[64] + (~0x1f & (varg0.length << 5) + 32 + 31) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    v0 = v1 = MEM[64] + 32;

    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);

    v2 = v3 = varg0.data;

    while (v2 < 32 + (4 + varg0 + (varg0.length << 5))) {

        require(msg.data[v2] == address(msg.data[v2]));

        MEM[v0] = msg.data[v2];

        v2 += 32;

        v0 += 32;

    }

    require(varg0.length, Error('!_tokens'));

    v4 = v5 = 0;

    while (v4 < varg1) {

        require(bool(_feeDistro.code.size));

        v6 = _feeDistro.checkpointUser(address(0xaf52695e1bb01a16d33d7194c28c42b10e0dbec2)).gas(msg.gas);

        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v4 = 0x713(v4);

    }

    v7 = v8 = 0;

    while (v7 < varg0.length) {

        if (v7 < varg0.length) {

            break;

        }

        require(v7 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v9 = MEM[(v7 << 5) + MEM[64] + 32];

        v10, v11 = _feeDistro.getTokenTimeCursor(address(v9)).gas(msg.gas);

        if (bool(v10)) {

            break;

        }

        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        if (MEM[64] + RETURNDATASIZE() - MEM[64] >= 32) {

            break;

        }

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        if (v11 > _lastTokenTimes[address(v9)]) {

            break;

        }

        require(v11 > _lastTokenTimes[address(v9)], Error('not time yet'));

        v12, /* address */ v13, /* address */ v14, /* bool */ v15 = address(0xb314f7c160d078923eaaae9c6cbde8f1b7bfe7fd).feeTokens(address(v9)).gas(msg.gas);

        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

        require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)

        MEM[64] = MEM[64] + 96;

        require(v13 == address(v13));

        MEM[MEM[64]] = v13;

        require(v14 == address(v14));

        require(v15 == bool(v15));

        MEM[MEM[64] + 64] = v15;

        v16, v17 = address(v9).balanceOf(address(v14)).gas(msg.gas);

        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v18, /* bool */ v19 = address(0xb314f7c160d078923eaaae9c6cbde8f1b7bfe7fd).earmarkFees(address(v9)).gas(msg.gas);

        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v19 == bool(v19));

        v20, v21 = address(v9).balanceOf(address(v14)).gas(msg.gas);

        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v21 >= v17, Panic(17)); // arithmetic overflow or underflow

        require(v21 - v17 > 0, Error('nothing claimed'));

        _lastTokenTimes[address(v9)] = v11;

        v7 = 0x713(v7);

    }

}
