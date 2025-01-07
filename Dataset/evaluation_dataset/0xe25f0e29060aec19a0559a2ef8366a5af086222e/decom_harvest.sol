function harvest(address _for, address _stakeToken) public nonPayable { 

    require(msg.data.length - 4 >= 64);

    require(msg.sender == _operator, Error('ConcentratorStrategy: only operator'));

    v0 = new uint256[](_rewards.length);

    v1 = v2 = v0.data;

    if (_rewards.length) {

        v3 = v4 = _rewards.data;

        do {

            MEM[v1] = address(STORAGE[v3]);

            v3 = v3 + 1;

            v1 += 32;

        } while (v2 + (_rewards.length << 5) <= v1);

    }

    require(_rewards.length <= uint64.max);

    v5 = new uint256[](_rewards.length);

    if (_rewards.length) {

        CALLDATACOPY(v5.data, msg.data.length, _rewards.length << 5);

    }

    v6 = v7 = 0;

    while (v6 < _rewards.length) {

        assert(v6 < v0.length);

        require(bool((address(v0[v6])).code.size));

        v8, /* uint256 */ v9 = address(v0[v6]).balanceOf(address(this)).gas(msg.gas);

        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        assert(v6 < v5.length);

        v5[v6] = v9;

        v6 += 1;

    }

    require(bool(_rewarder.code.size));

    v10 = _rewarder.getReward().gas(msg.gas);

    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v11 = v12 = 0;

    while (v11 < _rewards.length) {

        assert(v11 < v5.length);

        assert(v11 < v0.length);

        require(bool((address(v0[v11])).code.size));

        v13, /* uint256 */ v14 = address(v0[v11]).balanceOf(address(this)).gas(msg.gas);

        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        assert(v11 < v5.length);

        v5[v11] = v14 - v5[v11];

        v11 += 1;

    }

    v15 = v16 = 0;

    while (v15 < _rewards.length) {

        assert(v15 < v0.length);

        assert(v15 < v5.length);

        if (address(v0[v15]) != _stakeToken) {

            if (v5[v15]) {

                0x1271(v5[v15], _for, address(v0[v15]));

                require(bool(_for.code.size));

                v17, /* uint256 */ v18 = _for.zap(address(v0[v15]), v5[v15], _stakeToken, 0).gas(msg.gas);

                require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(RETURNDATASIZE() >= 32);

                v15 += v18;

            }

        } else {

            v15 += v5[v15];

        }

        v15 += 1;

    }

    if (_stakeToken) {

        0x1271(v15, msg.sender, _stakeToken);

    } else {

        v19, /* uint256 */ v20 = msg.sender.call().value(v15).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v21 = new bytes[](RETURNDATASIZE());

            v20 = v21.data;

            RETURNDATACOPY(v20, 0, RETURNDATASIZE());

        }

        require(v19, Error('ConcentratorStrategy: transfer ETH failed'));

    }

    return v15;

}
