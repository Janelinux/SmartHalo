function unstakeSaviors(uint256[] saviorIds) public payable { 

    require(msg.data.length - 4 >= 32);

    require(saviorIds <= uint64.max);

    require(4 + saviorIds + 31 < msg.data.length);

    require(saviorIds.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v0 = new uint256[](saviorIds.length);

    require(!((v0 + ((saviorIds.length << 5) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((saviorIds.length << 5) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)

    v1 = v2 = v0.data;

    require(32 + ((saviorIds.length << 5) + (4 + saviorIds)) <= msg.data.length);

    v3 = v4 = saviorIds.data;

    while (v3 < 32 + ((saviorIds.length << 5) + (4 + saviorIds))) {

        MEM[v1] = msg.data[v3];

        v3 += 32;

        v1 += 32;

    }

    v5 = _SafeSub(block.timestamp, _claimRewards[msg.sender].field2);

    v6 = _SafeMul(v5, _rEWARD_PER_SAVIOR);

    v7 = _SafeMul(v6, _claimRewards[msg.sender].field0.length);

    _claimRewards[msg.sender].field2 = block.timestamp;

    v8 = _SafeAdd(_claimRewards[msg.sender].field3, v7);

    _claimRewards[msg.sender].field3 = v8;

    v9 = v10 = 0;

    while (v9 < v0.length) {

        require(v9 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(bool(_claimRewards[msg.sender].field1[v0[v9]]), Error('NOT_OWNER'));

        if (_claimRewards[msg.sender].field1[v0[v9]]) {

            v11 = _SafeSub(_claimRewards[msg.sender].field1[v0[v9]], 1);

            v12 = _SafeSub(_claimRewards[msg.sender].field0.length, 1);

            if (v12 != v11) {

                require(v12 < _claimRewards[msg.sender].field0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(v11 < _claimRewards[msg.sender].field0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                _claimRewards[msg.sender].field0[v11] = _claimRewards[msg.sender].field0[v12];

                _claimRewards[msg.sender].field1[_claimRewards[msg.sender].field0[v12]] = _claimRewards[msg.sender].field1[v0[v9]];

            }

            require(_claimRewards[msg.sender].field0.length, Panic(49)); // attemp to .pop an empty array

            _claimRewards[msg.sender].field0[_claimRewards[msg.sender].field0.length - 1] = 0;

            _claimRewards[msg.sender].field0.length = _claimRewards[msg.sender].field0.length - 1;

            _claimRewards[msg.sender].field1[v0[v9]] = 0;

        }

        require(bool(stor_2_0_19.code.size));

        v13 = stor_2_0_19.transferFrom(this, msg.sender, v0[v9]).gas(msg.gas);

        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v9 += 1;

    }

}
