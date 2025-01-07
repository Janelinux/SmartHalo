function withdrawFeesWithBurn() public payable { 

    require(bool(_tokenAddress.code.size));

    v0, /* uint256 */ v1 = _tokenAddress.balanceOf(address(this)).gas(msg.gas);

    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    stor_4 = v1;

    v2 = 0x17d1(500, stor_4);

    v3 = _SafeDiv(1000, v2);

    stor_5 = v3;

    require(bool(_tokenAddress.code.size));

    v4, /* uint256 */ v5 = _tokenAddress.balanceOf(_burnAddress).gas(msg.gas);

    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(v5 < 0x1e7e4171bf4d3a00000, Error('Burn cap reached'));

    require(bool(_tokenAddress.code.size));

    v6, /* uint256 */ v7 = _tokenAddress.balanceOf(_burnAddress).gas(msg.gas);

    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(v7 + stor_5 >= v7, Error('SafeMath: addition overflow'));

    require(v7 + stor_5 <= 0x1e7e4171bf4d3a00000, Error('Additional burn will exceed cap'));

    require(bool(_tokenAddress.code.size));

    v8, /* uint256 */ v9 = _tokenAddress.transfer(_burnAddress, stor_5).gas(msg.gas);

    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v10 = 0x17d1(225, stor_4);

    v11 = _SafeDiv(1000, v10);

    require(bool(_tokenAddress.code.size));

    v12, /* uint256 */ v13 = _tokenAddress.transfer(address(0x856a4619fa7519d53e6f3a94260f55de62b83eeb), v11).gas(msg.gas);

    require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v14 = 0x17d1(150, stor_4);

    v15 = _SafeDiv(1000, v14);

    require(bool(_tokenAddress.code.size));

    v16, /* uint256 */ v17 = _tokenAddress.transfer(address(0x68b59573da735e4e75f8a687908b6f3bed7cb6fa), v15).gas(msg.gas);

    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v18 = 0x17d1(125, stor_4);

    v19 = _SafeDiv(1000, v18);

    require(bool(_tokenAddress.code.size));

    v20, /* uint256 */ v21 = _tokenAddress.transfer(address(0xe35e342cd9f2021518d2cd53068e183ffa69eeb2), v19).gas(msg.gas);

    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v22 = _SafeAdd(stor_4, _totalCollectedSinceStart);

    _totalCollectedSinceStart = v22;

}
