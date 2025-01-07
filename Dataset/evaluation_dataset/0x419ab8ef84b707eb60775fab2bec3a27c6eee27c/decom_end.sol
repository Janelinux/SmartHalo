function end() public nonPayable { 

    require(!_ended, Error('end already called'));

    require(_lastBidTime != 0, Error('no bids'));

    v0 = _SafeAdd(_bidLength, _lastBidTime);

    v1 = v2 = block.timestamp >= v0;

    if (block.timestamp < v0) {

        v3 = _SafeAdd(_auctionLength, _startBidTime);

        v1 = v4 = block.timestamp >= v3;

    }

    require(v1, Error('Auction live'));

    require(0 <= uint64.max);

    v5 = new bytes[](0);

    if (0) {

        CALLDATACOPY(v5.data, msg.data.length, 0);

        v6 = v5.data;

    }

    v7 = new bytes[](v5.length);

    v8 = v9 = 0;

    while (v8 < v5.length) {

        v7[v8] = v5[v8];

        v8 = v8 + 32;

    }

    v10 = v11 = v7.data;

    if (0) {

        MEM[v7.data] = uint256(MEM[v7.data]);

    }

    require(bool(_token.code.size));

    v12 = _token.safeTransferFrom(address(this), _winning, _id, 1, v7).gas(msg.gas);

    require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    v13 = _SafeDiv(20, this.balance);

    v14 = 0x11fa(3, v13);

    v15 = _haus.call().value(v14).gas(!v14 * 2300);

    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    v16 = _seller.call().value(this.balance).gas(!this.balance * 2300);

    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    _ended = 1;

    emit Won(_winning, _lastBid);

}
