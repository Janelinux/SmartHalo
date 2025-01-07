function unstake(uint256[] tokenIds) public payable { 

    require(msg.data.length - 4 >= 32);

    require(tokenIds <= uint64.max);

    require(4 + tokenIds + 31 < msg.data.length);

    require(tokenIds.length <= uint64.max);

    require(4 + tokenIds + (tokenIds.length << 5) + 32 <= msg.data.length);

    require(!_paused, Error('Pausable: paused'));

    require(stor_1 != 2, Error('ReentrancyGuard: reentrant call'));

    stor_1 = 2;

    v0 = v1 = tokenIds.length <= 40;

    if (tokenIds.length <= 40) {

        v0 = v2 = bool(tokenIds.length);

    }

    require(v0, Error('Unstake: amount prohibited'));

    v3 = v4 = 0;

    while (v3 < tokenIds.length) {

        require(v3 < tokenIds.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(bool(_calculateRewardsByAccount[msg.sender].field1[tokenIds[v3]]), Error('Unstake: token not staked'));

        require(v3 < tokenIds.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(uint128(_stakes[tokenIds[v3]]) < block.timestamp, Error('Unstake: lockup period not expired'));

        require(v3 < tokenIds.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v5 = 0x1181(tokenIds[v3]);

        v3 = _SafeAdd(v3, v5);

        require(v3 < tokenIds.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        if (_calculateRewardsByAccount[msg.sender].field1[tokenIds[v3]]) {

            v6 = _SafeSub(_calculateRewardsByAccount[msg.sender].field1[tokenIds[v3]], 1);

            v7 = _SafeSub(_calculateRewardsByAccount[msg.sender].field0.length, 1);

            if (v7 != v6) {

                require(v7 < _calculateRewardsByAccount[msg.sender].field0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(v6 < _calculateRewardsByAccount[msg.sender].field0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                _calculateRewardsByAccount[msg.sender].field0[v6] = _calculateRewardsByAccount[msg.sender].field0[v7];

                _calculateRewardsByAccount[msg.sender].field1[_calculateRewardsByAccount[msg.sender].field0[v7]] = _calculateRewardsByAccount[msg.sender].field1[tokenIds[v3]];

            }

            require(_calculateRewardsByAccount[msg.sender].field0.length, Panic(49)); // attemp to .pop an empty array

            _calculateRewardsByAccount[msg.sender].field0[_calculateRewardsByAccount[msg.sender].field0.length - 1] = 0;

            _calculateRewardsByAccount[msg.sender].field0.length = _calculateRewardsByAccount[msg.sender].field0.length - 1;

            _calculateRewardsByAccount[msg.sender].field1[tokenIds[v3]] = 0;

        }

        require(v3 < tokenIds.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        _stakes[tokenIds[v3]] = 0;

        require(v3 < tokenIds.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(bool((address(0xfb10b1717c92e9cc2d634080c3c337808408d9e1)).code.size));

        v8 = address(0xfb10b1717c92e9cc2d634080c3c337808408d9e1).safeTransferFrom(address(this), msg.sender, tokenIds[v3]).gas(msg.gas);

        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v3 = 0x2146(v3);

    }

    require(bool((address(0x43ab765ee05075d78ad8aa79dcb1978ca3079258)).code.size));

    v9, /* bool */ v10 = address(0x43ab765ee05075d78ad8aa79dcb1978ca3079258).transfer(msg.sender, v3).gas(msg.gas);

    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v10 == bool(v10));

    v11 = new uint256[](tokenIds.length);

    require(tokenIds.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

    CALLDATACOPY(v11.data, tokenIds.data, tokenIds.length << 5);

    MEM[64 + ((tokenIds.length << 5) + MEM[64])] = 0;

    emit Unstaked(msg.sender, v11);

    emit RewardsClaimed(msg.sender, v3);

    stor_1 = 1;

}
