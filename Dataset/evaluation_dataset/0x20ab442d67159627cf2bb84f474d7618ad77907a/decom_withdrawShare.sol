function withdrawShare() public payable { 

    require(_getOutstandingShares[msg.sender][1] < _endBlock, Error('All shares have already been claimed.'));

    if (block.number <= _endBlock) {

        v0 = v1 = block.number;

    } else {

        v0 = v2 = _endBlock;

    }

    _getOutstandingShares[msg.sender][1] = v0;

    v3 = _SafeSub(v0, _getOutstandingShares[msg.sender][1]);

    v4 = _SafeMul(_getOutstandingShares[msg.sender][0], v3);

    require(_dINO.code.size);

    v5, v6 = _dINO.transfer(msg.sender, v4).gas(msg.gas);

    require(v5); // checks call status, propagates error data on error

    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v6 == v6);

}
