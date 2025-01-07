function deposit(uint256 varg0) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    0x1ace(varg0);

    require(varg0 > 0, Error('Deposit amount must be greater than 0'));

    require(varg0 < _deposit, Error('Deposit amount must be less than max'));

    require(varg0 > stor_c, Error('Deposit amount must be more than min'));

    require(stor_d < _maxPlayers, Error('Max Players'));

    v0, v1 = owner_8_0_19.balanceOf(msg.sender).gas(msg.gas);

    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    0x1ace(v1);

    require(v1 >= varg0, Error('You dont have enough tokens'));

    v2 = v3 = uint8(_setWhitelist[address(address(msg.sender))]);

    if (!v3) {

        v4, v5 = owner_9_0_19.balanceOf(msg.sender).gas(msg.gas);

        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x1ace(v5);

        v2 = v6 = v5 >= stor_f;

    }

    require(v2, Error('You dont have enough BXB'));

    v7 = _SafeAdd(_userBalances[msg.sender], varg0);

    _userBalances[msg.sender] = v7;

    v8, /* bool */ v9 = owner_8_0_19.transferFrom(msg.sender, address(this), varg0).gas(msg.gas);

    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    0x1b5d(v9);

    v10 = _SafeAdd(_totalBalance, varg0);

    _totalBalance = v10;

    _lastDepositTime[msg.sender] = block.timestamp;

    _userAddresses = _userAddresses.length + 1;

    _userAddresses[_userAddresses.length + 1 - 1] = msg.sender | bytes12(_userAddresses[_userAddresses.length + 1 - 1]);

    v11 = 0x2180(stor_d);

    stor_d = v11;

}
