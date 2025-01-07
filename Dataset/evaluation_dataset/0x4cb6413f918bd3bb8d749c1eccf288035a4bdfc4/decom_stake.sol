function stake(uint256 amount) public payable { 

    require(msg.data.length - 4 >= 32);

    if (!_payout) {

        _payout = _firstStakeRewardsTime;

    }

    v0 = v1 = _totalStaked > 0;

    if (v1) {

        v0 = v2 = _firstStakeRewardsTime > 0;

    }

    if (v0) {

        v0 = v3 = _payout < _endRewardsTime;

    }

    if (v0) {

        v4 = _SafeSub(_payout, block.timestamp);

        if (0 == stor_a4) {

            v5 = _SafeSub(_firstStakeRewardsTime, _endRewardsTime);

            v6 = _SafeDiv(v5, _totalRewards);

            stor_a4 = v6;

        }

        if (block.timestamp >= _endRewardsTime) {

            v7 = _SafeSub(_endRewardsTime, block.timestamp);

            v8 = _SafeSub(v7, v4);

            v9 = v10 = _SafeMul(stor_a4, v8);

        } else {

            v9 = v11 = _SafeMul(stor_a4, v4);

        }

        v12 = _SafeMul(10 ** 18, v9);

        v13 = _SafeDiv(_totalStaked, v12);

        v14 = _SafeAdd(v13, stor_9f);

        stor_9f = v14;

        _payout = block.timestamp;

    }

    require(stor_68 != 2, Error('ReentrancyGuard: reentrant call'));

    stor_68 = 2;

    require(amount, Error('Governance::stake: missing stake'));

    require(bool(_botto.code.size));

    v15 = _botto.transferFrom(msg.sender, this, amount).gas(msg.gas);

    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v16 = v17 = bool(_startRewardsTime);

    if (_startRewardsTime) {

        v16 = v18 = block.timestamp >= _startRewardsTime;

    }

    if (v16) {

        v16 = v19 = !_firstStakeRewardsTime;

    }

    if (v16) {

        _firstStakeRewardsTime = block.timestamp;

    }

    0x1563(msg.sender, amount);

    emit Staked(msg.sender, amount);

    stor_68 = 1;

}
