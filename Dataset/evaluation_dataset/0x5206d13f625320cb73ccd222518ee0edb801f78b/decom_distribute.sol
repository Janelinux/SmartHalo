function distribute() public payable { 

    require(0xb63cac384247597756545b500253ff8e607a8020 == msg.sender, Only_Staking());

    require(_triggerRebase, Not_Unlocked());

    v0 = 0x497(0xb63cac384247597756545b500253ff8e607a8020);

    require(0x9a315bdf513367c0377fb36545857d12e85813ef.code.size);

    v1 = 0x9a315bdf513367c0377fb36545857d12e85813ef.mint(0xb63cac384247597756545b500253ff8e607a8020, v0).gas(msg.gas);

    require(v1); // checks call status, propagates error data on error

    v2 = v3 = 0;

    while (v2 < _pools.length) {

        if (v2 < _pools.length) {

            break;

        }

        require(v2 < _pools.length, Panic(50));

        if (address(_pools[v2])) {

            v4 = 0x497(address(_pools[v2]));

            require(0x9a315bdf513367c0377fb36545857d12e85813ef.code.size);

            v5 = 0x9a315bdf513367c0377fb36545857d12e85813ef.mint(address(_pools[v2]), v4).gas(msg.gas);

            require(v5); // checks call status, propagates error data on error

            require((address(_pools[v2])).code.size);

            v6 = address(_pools[v2]).sync().gas(msg.gas);

            require(v6); // checks call status, propagates error data on error

        }

        require(v2 != ~0, Panic(17));

        v2 += 1;

    }

    if (_adjustment) {

        if (!stor_4_0_0) {

            if (_rewardRate <= _adjustment) {

                _rewardRate = 0;

            } else {

                require(_rewardRate >= _adjustment, Panic(17));

                _rewardRate = _rewardRate - _adjustment;

            }

            if (_rewardRate <= stor_6) {

                _adjustment = 0;

                _rewardRate = stor_6;

            }

        } else {

            require(_rewardRate <= ~_adjustment, Panic(17));

            _rewardRate = _rewardRate + _adjustment;

            if (_rewardRate >= stor_6) {

                _adjustment = 0;

                _rewardRate = stor_6;

                goto 0xbb5;

            }

        }

        goto 0xbb5;

    }

    _triggerRebase = 0;

}
