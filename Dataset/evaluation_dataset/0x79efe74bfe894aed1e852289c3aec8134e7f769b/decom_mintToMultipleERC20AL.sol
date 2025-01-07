function mintToMultipleERC20AL(address varg0, uint256 varg1, bytes32[] varg2, address varg3) public payable { 

    require(msg.data.length - 4 >= 128);

    require(varg0 == varg0);

    require(varg2 <= 0xffffffffffffffff);

    require(4 + varg2 + 31 < msg.data.length);

    require(varg2.length <= 0xffffffffffffffff);

    require(4 + varg2 + (varg2.length << 5) + 32 <= msg.data.length);

    require(varg3 == varg3);

    v0 = v1 = 1 == _onlyAllowlistMode;

    if (v1) {

        v0 = 1 == _mintingOpen;

    }

    require(v0, Error('Allowlist minting is closed'));

    require(_merkleRoot, Error('Merkle root is not set!'));

    MEM[64] += 52;

    v2 = v3 = keccak256(varg0 << 96 & ~0xffffffffffffffffffffffff);

    v4 = new uint256[](varg2.length);

    CALLDATACOPY(v4.data, 4 + varg2 + 32, varg2.length << 5);

    v4[varg2.length << 5] = 0;

    v5 = v6 = 0;

    while (v5 < v4.length) {

        if (v5 < v4.length) {

            break;

        }

        require(v5 < v4.length, Panic(50));

        if (v2 <= v4[v5]) {

        }

        v5 = 0x572f(v5);

    }

    require(v2 == _merkleRoot, Error('Address is not in Allowlist!'));

    require(varg1 >= 1, Error('Must mint at least 1 token'));

    require(varg1 <= _maxBatchSize, Error('Cannot mint more than max mint per transaction'));

    v7 = 0x3e57(varg1, varg0);

    require(v7, Error('Wallet address is over the maximum allowed mints'));

    v8 = _SafeAdd(~0 + _totalSupply, varg1);

    require(v8 <= 1000, Error('Cannot mint over supply cap of 1000'));

    v9 = 0x3792();

    require(1 == v9, Error('Allowlist drop time has not passed!'));

    require(1 == 0xff & _isApprovedForERC20Payments[varg3], Error('ERC-20 Token is not approved for minting!'));

    v10 = 0x3663(varg3);

    v11 = _SafeMul(v10, varg1);

    require(varg3.code.size);

    v12, v13 = varg3.balanceOf(varg0).gas(msg.gas);

    require(v12); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v13 >= v11, Error('Buyer does not own enough of token to complete purchase'));

    require(varg3.code.size);

    v14, v15 = varg3.allowance(varg0, this).gas(msg.gas);

    require(v14); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v15 >= v11, Error('Buyer did not approve enough of ERC-20 token to complete purchase'));

    require(msg.value == _ramppSurchargeFee, Error('Fee for ERC-20 payment not provided!'));

    require(varg3.code.size);

    v16, v17 = varg3.transferFrom(varg0, this, v11).gas(msg.gas);

    require(v16); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v17 == v17);

    require(v17, Error('ERC-20 token was unable to be transferred'));

    0x3edc(0, varg1, varg0);

    v18 = _SafeAdd(_ramppSurchargeBalance, _ramppSurchargeFee);

    _ramppSurchargeBalance = v18;

}
