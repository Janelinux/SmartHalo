function release() public payable { 

    v0 = @percentageVestingReleased_965();

    require(v0 >= _totalPercentageWithdrawn[msg.sender], Panic(17)); // arithmetic overflow or underflow

    require(v0 - _totalPercentageWithdrawn[msg.sender] > 0, Error('TokenTimelock: current time is before release time'));

    require(100 > _totalPercentageWithdrawn[msg.sender], Error('TokenTimelock: no tokens to release'));

    require(!(bool(_tokenAmounts[msg.sender]) & (v0 - _totalPercentageWithdrawn[msg.sender] > uint256.max / _tokenAmounts[msg.sender])), Panic(17)); // arithmetic overflow or underflow

    require(100, Panic(18)); // division by zero

    require(_tokenAmounts[msg.sender] * (v0 - _totalPercentageWithdrawn[msg.sender]) / 100 > 0, Error('TokenTimelock: no tokens to release'));

    v1 = _SafeAdd(_totalPercentageWithdrawn[msg.sender], v0 - _totalPercentageWithdrawn[msg.sender]);

    _totalPercentageWithdrawn[msg.sender] = v1;

    v2, /* bool */ v3 = address(0x3f2378d635b8e2178e6699e822c1ac8f28f3cf56).transfer(msg.sender, _tokenAmounts[msg.sender] * (v0 - _totalPercentageWithdrawn[msg.sender]) / 100).gas(msg.gas);

    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v3 == bool(v3));

}
