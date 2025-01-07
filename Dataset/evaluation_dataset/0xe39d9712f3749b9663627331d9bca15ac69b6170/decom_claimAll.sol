function claimAll(address[] xToken, address[] collection) public payable { 

    require(msg.data.length - 4 >= 64);

    require(xToken <= uint64.max);

    v0 = 0;

    require(4 + xToken + 31 < msg.data.length, v0, v0);

    require(xToken.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v1 = new address[](xToken.length);

    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (xToken.length << 5) + 32 + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (xToken.length << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    v2 = v3 = v1.data;

    v4 = v5 = xToken.data;

    require(msg.data.length >= 32 + (4 + xToken + (xToken.length << 5)), v0, v0);

    while (v0 < xToken.length) {

        require(msg.data[v4] == address(msg.data[v4]));

        MEM[v2] = msg.data[v4];

        v2 += 32;

        v4 += 32;

        v0 += 1;

    }

    require(collection <= uint64.max);

    v6 = 0;

    require(4 + collection + 31 < msg.data.length, v6, v6);

    require(collection.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v7 = new address[](collection.length);

    require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (collection.length << 5) + 32 + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (collection.length << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    v8 = v9 = v7.data;

    v10 = v11 = collection.data;

    require(msg.data.length >= 32 + (4 + collection + (collection.length << 5)), v6, v6);

    while (v6 < collection.length) {

        require(msg.data[v10] == address(msg.data[v10]));

        MEM[v8] = msg.data[v10];

        v8 += 32;

        v10 += 32;

        v6 += 1;

    }

    require(v1.length <= _max, Error('Claimable#claimAll: incorrect length', 'Claimable#claimAll: incorrect length'));

    require(v1.length == v7.length, Error('Claimable#claimAll: incorrect len'));

    v12 = v13 = 0;

    while (v12 < v1.length) {

        require(v12 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v12 < v7.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(uint8(_owner >> 160) <= 2, Panic(33)); // failed convertion to enum type

        require(uint8(_owner >> 160) == 1, Error('Claimable#onlyState: ONLY_STATE_ALLOWED'));

        require(address(v1[v12]), Error('Claimable#claim: empty address'));

        require(address(v7[v12]), Error('Claimable#claim: empty address'));

        require(bool(_migration.code.size));

        v14, /* bool */ v15 = _migration.adapters(address(v7[v12])).gas(msg.gas);

        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v15 == bool(v15));

        require(v15, Error('Claimable#claim: not adapter'));

        require(bool((address(v7[v12])).code.size));

        v16, /* bool */ v17 = address(v7[v12]).isWhitelisted(address(v1[v12])).gas(msg.gas);

        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v17 == bool(v17));

        require(v17, Error('Claimable#claim: not associated'));

        require(bool(_migration.code.size));

        v18, /* bool */ v19 = _migration.hasStaked(msg.sender, address(v1[v12])).gas(msg.gas);

        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v19 == bool(v19));

        require(v19, Error('Claimable#claim: not staked'));

        require(!_claimed[msg.sender][_index[address(v7[v12])]], Error('Claimable#claim: already claimed'));

        require(bool(_collection.code.size));

        v20, /* uint256 */ v21 = _collection.balanceOf(this, _index[address(v7[v12])]).gas(msg.gas);

        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v21 > 0, Error('Claimable#claim: no NFTs left'));

        _claimed[msg.sender][_index[address(v7[v12])]] = 1;

        v22 = new uint256[](0);

        require(bool(_collection.code.size));

        v23 = _collection.safeTransferFrom(this, msg.sender, _index[address(v7[v12])], 1, v22).gas(msg.gas);

        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        emit Claimed(msg.sender, _index[address(v7[v12])]);

        v12 = 0x1bf1(v12);

    }

}
