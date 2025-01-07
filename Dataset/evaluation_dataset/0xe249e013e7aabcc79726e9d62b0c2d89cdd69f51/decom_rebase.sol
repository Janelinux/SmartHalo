function rebase(uint256 profit_, uint256 epoch_) public payable { 

    require(msg.data.length - 4 >= 64);

    require(msg.sender == _stakingContract, Error('UNAUTHORIZED'));

    v0 = 0x1159();

    if (profit_) {

        if (v0) {

            v1 = _SafeMul(_totalSupply, profit_);

            v2 = v3 = _SafeDiv(v0, v1);

        }

        v4 = _SafeAdd(v2, _totalSupply);

        _totalSupply = v4;

        if (uint128.max < v4) {

            _totalSupply = uint128.max;

        }

        v5 = _SafeDiv(_totalSupply, 0xfffffffffffffffffffffffffffffffffffffffffffffffffff1c2d3019e0000);

        _gonsForBalance = v5;

        if (v0 > 0) {

            v6 = _SafeMul(10 ** 18, profit_);

            v7 = v8 = _SafeDiv(v0, v6);

        } else {

            v7 = v9 = 0;

        }

        v10 = 0x1159();

        v11 = 0xa45();

        _rebases.length += 1;

        _rebases[_rebases.length].field0 = epoch_;

        _rebases[_rebases.length].field1 = v7;

        _rebases[_rebases.length].field2 = v0;

        _rebases[_rebases.length].field3 = v10;

        _rebases[_rebases.length].field4 = profit_;

        _rebases[_rebases.length].field5 = v11;

        _rebases[_rebases.length].field6 = block.number;

        emit LogSupply(epoch_, block.timestamp, _totalSupply);

        v12 = 0xa45();

        emit LogRebase(epoch_, v7, v12);

        v13 = v14 = _totalSupply;

    } else {

        emit LogSupply(epoch_, block.timestamp, _totalSupply);

        v15 = 0xa45();

        emit LogRebase(epoch_, 0, v15);

        v13 = v16 = _totalSupply;

    }

    return v13;

}
