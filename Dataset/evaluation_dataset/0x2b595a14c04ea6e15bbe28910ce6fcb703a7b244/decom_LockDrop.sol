function LockDrop(uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(_staker.code.size);

    v0, v1 = _staker.status().gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(v1 == 1);

    require(_staker.code.size);

    v2, v3 = _staker.stakeNow(varg0, msg.sender).gas(msg.gas);

    require(v2); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(v3);

    require(_gifter.code.size);

    v4, v5 = _gifter.gift(0x801f90f81786dc72b4b9d51ab613fbe99e5e4ccd, varg0 * _multiplier / 100, msg.sender).gas(msg.gas);

    require(v4); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(v5);

    return 1;

}
