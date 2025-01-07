function newContract(uint256 varg0, address varg1, uint256 varg2) public payable { 

    require(msg.data.length - 4 >= 96);

    require(varg1 == varg1);

    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));

    require(varg2 > 0, Error('token amount must be > 0'));

    require(varg1.code.size);

    v0, v1 = varg1.allowance(msg.sender, this).gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v1 >= varg2, Error('token allowance must be >= amount'));

    require(varg0 > block.timestamp, Error('timelock time must be in the future'));

    MEM[MEM[64] + 32] = ~0xffffffffffffffffffffffff & msg.sender << 96;

    MEM[MEM[64] + 52] = varg1 << 96 & ~0xffffffffffffffffffffffff;

    MEM[MEM[64] + 72] = varg2;

    MEM[MEM[64] + 104] = varg0;

    v2 = v3 = 0;

    while (v2 < 104) {

        MEM[v2 + (136 + MEM[64])] = MEM[32 + (MEM[64] + v2)];

        v2 += 32;

    }

    if (v2 > 104) {

    }

    v4, v5 = sha256hash(v6, v6, v6, v6, 0);

    require(v4); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(!address(_getContract[v5]), Error('Contract already exists'));

    require(varg1.code.size);

    v7, v8 = varg1.transferFrom(msg.sender, this, varg2).gas(msg.gas);

    require(v7); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v8 == v8);

    require(v8, Error('transferFrom sender to this failed'));

    _getContract[v5] = ~0xffffffffffffffffffffffffffffffffffffffff & _getContract[v5] | msg.sender;

    _getContract[v5][1] = ~0xffffffffffffffffffffffffffffffffffffffff & _getContract[v5][0x1] | varg1;

    _getContract[v5][2] = varg2;

    _getContract[v5][3] = varg0;

    _getContract[v5][4] = _getContract[v5][0x4] & ~0xff | 0x0;

    emit TLCERC20New(v5, msg.sender, varg1, varg2, varg0);

    return v5;

}
