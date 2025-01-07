function STAKE(uint256 tokens) public payable { 

    require(msg.data.length - 4 >= 32);

    require(block.timestamp <= _subscriptionEnds, Error('subscription time expires'));

    v0 = _SafeAdd(tokens, _stakers[msg.sender].field0);

    v1 = v2 = v0 >= stor_6;

    if (v0 >= stor_6) {

        v3 = _SafeAdd(tokens, _stakers[msg.sender].field0);

        v1 = v4 = v3 <= stor_7;

    }

    require(v1, Error('exceeds allowed ranges'));

    v5 = 0xcda(tokens);

    v6 = 0xd05(5, v5);

    v7 = _SafeSub(v6, tokens);

    v8 = _SafeAdd(v7, _totalStaked);

    _totalStaked = v8;

    require(stor_5 >= v8, Error('no free slots'));

    require(bool(stor_1_0_19.code.size));

    v9 = stor_1_0_19.transferFrom(msg.sender, this, tokens).gas(msg.gas);

    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v10 = _SafeSub(v6, tokens);

    v11 = _SafeAdd(v10, _stakers[msg.sender].field0);

    _stakers[msg.sender].field0 = v11;

    v12 = _SafeSub(v6, tokens);

    emit Staked(msg.sender, v12);

}
