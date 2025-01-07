function end() public nonPayable { 

    require(!_ended, Error('end already called'));

    require(_winning != address(0x0), Error('no bids'));

    require(block.timestamp >= _endTime, Error('Auction live'));

    require(0 <= uint64.max);

    v0 = new bytes[](0);

    if (0) {

        CALLDATACOPY(v0.data, msg.data.length, 0);

        v1 = v0.data;

    }

    v2 = new bytes[](v0.length);

    v3 = v4 = 0;

    while (v3 < v0.length) {

        v2[v3] = v0[v3];

        v3 = v3 + 32;

    }

    v5 = v6 = v2.data;

    if (0) {

        MEM[v2.data] = uint256(MEM[v2.data]);

    }

    require(bool(_token.code.size));

    v7 = _token.safeTransferFrom(address(this), _winning, _id, 1, v2).gas(msg.gas);

    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    v8 = _SafeDiv(20, this.balance);

    v9 = 0x11aa(3, v8);

    v10 = _haus.call().value(v9).gas(!v9 * 2300);

    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    v11 = _seller.call().value(this.balance).gas(!this.balance * 2300);

    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    _ended = 1;

    emit Won(_winning, _lastBid);

}
