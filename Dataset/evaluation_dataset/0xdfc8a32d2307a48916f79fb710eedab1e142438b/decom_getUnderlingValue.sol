function getUnderlingValue(address _oracle, uint256 _timestamp, uint256[] _roundHints) public payable { 

    require(msg.data.length - 4 >= 96);

    require(_roundHints <= uint32.max + 1);

    require(_roundHints.data <= 4 + (msg.data.length - 4));

    require(!((_roundHints.length > uint32.max + 1) | (_roundHints.data + (_roundHints.length << 5) > 4 + (msg.data.length - 4))));

    v0 = new uint256[](_roundHints.length);

    CALLDATACOPY(v0.data, _roundHints.data, _roundHints.length << 5);

    v0[_roundHints.length] = 0;

    require(_timestamp > 0, Error('Zero timestamp'));

    require(_oracle, Error('Zero oracle'));

    require(1 == v0.length, Error('Wrong number of hints'));

    require(bool(_oracle.code.size));

    v1, /* uint80 */ v2 = _oracle.latestRoundData().gas(msg.gas);

    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 160);

    assert(0 < v0.length);

    v3 = v0.data;

    require(uint80(v0[0]) > 0, Error('Zero hint'));

    require(uint16(uint80(v0[0]) >> 64) == uint16(uint80(v2) >> 64), Error('Wrong hint phase'));

    require(bool(_oracle.code.size));

    v4, v5, v6, v5, /* uint256 */ v7 = _oracle.getRoundData(uint80(v0[0])).gas(msg.gas);

    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 160);

    v8 = v9 = !v7;

    if (v7) {

        v8 = v10 = v7 > _timestamp;

    }

    require(!v8, Error('Incorrect hint'));

    v11 = v12 = 0;

    if (uint80(1 + v0[0]) <= uint80(v2)) {

        require(bool(_oracle.code.size));

        v13, v5, v5, v5, v11 = _oracle.getRoundData(uint80(1 + v0[0])).gas(msg.gas);

        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 160);

        v14 = v15 = bool(v11);

        if (v11) {

            v14 = v16 = v11 <= _timestamp;

        }

        require(!v14, Error('Later round exists'));

    }

    v17 = v18 = !v11;

    if (v11) {

        v17 = v19 = v11 > 0;

        if (v19) {

            v17 = v20 = v11 > _timestamp;

        }

    }

    if (!v17) {

        v6 = v21 = int256.min;

    }

    return v6;

}
