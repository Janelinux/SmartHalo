function massHarvest() public payable { 

    v0 = v1 = 0;

    v2 = 0x67f();

    v3 = v4 = _SafeSub(1, uint128(v2));

    if (v4 > 100) {

        v3 = 100;

    }

    v5 = v6 = 1 + _userLastEpochIdHarvested[msg.sender];

    while (uint128(v5) <= v3) {

        if (_lastInitializedEpoch < uint128(v5)) {

            v7 = _SafeAdd(1, _lastInitializedEpoch);

            require(v7 == uint128(v5), Error('Epoch can be init only in order'));

            _lastInitializedEpoch = v5;

            v8 = 0x8d1(v5);

            assert(uint128(v5) < array_4.length);

            array_4[uint128(v5)] = v8;

        }

        _userLastEpochIdHarvested[msg.sender] = v5;

        assert(uint128(v5) < array_4.length);

        if (0 != array_4[uint128(v5)]) {

            assert(uint128(v5) < array_4.length);

            v9 = 0x7c0(v5, msg.sender);

            v10 = _SafeMul(v9, stor_5);

            if (array_4[uint128(v5)]) {

                assert(array_4[uint128(v5)]);

                v11 = v10 / array_4[uint128(v5)];

            } else {

                v12 = new bytes[](v13.length);

                v14 = v15 = 0;

                while (v14 < v13.length) {

                    v12[v14] = v13[v14];

                    v14 += 32;

                }

                if (26) {

                    MEM[v12.data] = bytes26('SafeMath: division by zero');

                }

                revert(Error(v12));

            }

        } else {

            v11 = v16 = 0;

        }

        v0 = v0 + v11;

        v5 += 1;

    }

    emit MassHarvest(msg.sender, v3 - _userLastEpochIdHarvested[msg.sender], v0);

    if (v0) {

        require(bool(stor_2_0_19.code.size));

        v17 = stor_2_0_19.transferFrom(_massHarvest, msg.sender, v0).gas(msg.gas);

        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

    }

    return v0;

}
