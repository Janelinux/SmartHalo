function mint(uint256 varg0, uint256 varg1, bytes32[] varg2) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 <= uint64.max);

    require(4 + varg2 + 31 < 4 + (msg.data.length - 4));

    require(varg2.length <= uint64.max);

    require(varg2.data + (varg2.length << 5) <= 4 + (msg.data.length - 4));

    require(varg1 >= 1, Error('Amount must be >= 1'));

    v0 = new uint256[](varg2.length);

    CALLDATACOPY(v0.data, varg2.data, varg2.length << 5);

    v0[varg2.length] = 0;

    v1 = v2 = keccak256(msg.sender, varg1);

    v3 = v4 = 0;

    while (v3 < v0.length) {

        require(v3 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        if (v1 >= v0[v3]) {

        }

        require(v3 - uint256.max, Panic(17)); // arithmetic overflow or underflow

        v3 = v3 + 1;

    }

    require(v1 == _root, Error('Invalid merkle proof'));

    v5 = _SafeAdd(_claimedNFTs[msg.sender], varg0);

    require(v5 <= varg1, Error('Wallet already claimed'));

    v6 = _SafeMul(_mintTokenPriceHolders, varg0);

    require(msg.value >= v6, Error('Not enough eth'));

    v7 = new uint256[](0);

    require(bool(_editionsByDennisSchmelz.code.size));

    v8 = _editionsByDennisSchmelz.mint(msg.sender, _mintTokenId, varg0, v7).gas(msg.gas);

    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    v9 = _SafeAdd(_claimedNFTs[msg.sender], varg0);

    _claimedNFTs[msg.sender] = v9;

}
