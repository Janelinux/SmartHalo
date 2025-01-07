function executeLimitOrder(address varg0, uint256 varg1, address varg2, uint256 varg3, address varg4, address varg5, uint256 varg6, uint256 varg7, uint8 varg8, bytes32 varg9, bytes32 varg10) public payable { 

    require(msg.data.length - 4 >= 352);

    require(uint8(_operators[msg.sender]));

    require(_tradeEnabled);

    MEM[MEM[64]] = 0;

    MEM[MEM[64] + 32] = 0;

    MEM[MEM[64] + 64] = 0;

    MEM[MEM[64] + 96] = 0;

    MEM[MEM[64] + 128] = 0;

    MEM[MEM[64] + 160] = 0;

    MEM[MEM[64] + 192] = 0;

    require(this >> 32 == varg1 >> 128);

    require(_nonces[varg0][uint128(address(varg4) >> 32) + bytes16(address(varg2) << 96)] < varg1);

    v0 = 32 + MEM[64];

    v1 = v2.length;

    v3 = v2.data;

    while (v1 >= 32) {

        MEM[v0] = MEM[v3];

        v1 = v1 + ~31;

        v0 += 32;

        v3 += 32;

    }

    MEM[v0] = ~0 + 256 ** (32 - v1) & MEM[v0] | MEM[v3] & ~(~0 + 256 ** (32 - v1));

    MEM[32 + (v0 + v1)] = 0;

    MEM[v0 + v1 + 64] = keccak256('\x19Ethereum Signed Message:\n32', v4);

    MEM[v0 + v1 + 96] = varg8;

    MEM[v0 + v1 + 128] = varg9;

    MEM[v0 + v1 + 160] = varg10;

    v5 = ecrecover(MEM[(MEM[64]) len (v0 + v1 - MEM[64] + 192)], MEM[(MEM[64] + ~31) len 32]);

    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(address(MEM[MEM[64] - 32]) == varg0);

    require(1);

    MEM[MEM[64]] = address(0x0);

    MEM[32 + MEM[64]] = 0;

    MEM[64 + MEM[64]] = address(0x0);

    MEM[96 + MEM[64]] = address(0x0);

    MEM[128 + MEM[64]] = 0;

    MEM[160 + MEM[64]] = 0;

    require(bool((address(address(address(address(varg2))))).code.size), Error('SafeERC20: call to non-contract'));

    v6 = v7 = MEM[64];

    v8 = v9 = 32 + MEM[64];

    while (v10 >= 32) {

        MEM[v6] = MEM[v8];

        v10 = v10 + ~31;

        v6 += 32;

        v8 += 32;

    }

    MEM[v6] = MEM[v8] & ~(256 ** (32 - v10) - 1) | MEM[v6] & 256 ** (32 - v10) - 1;

    v11, v12, v13 = varg2.transferFrom(varg0, address(this), varg3).gas(msg.gas);

    if (RETURNDATASIZE() == 0) {

        v14 = v15 = 96;

    } else {

        v14 = v16 = new bytes[](RETURNDATASIZE());

        RETURNDATACOPY(v16.data, 0, RETURNDATASIZE());

    }

    require(v11, Error('SafeERC20: low-level call failed'));

    if (MEM[v14]) {

        require(MEM[v14] >= 32);

        require(MEM[v13], Error('SafeERC20: ERC20 operation did not succeed'));

        goto 0x1f7dB0x13c5;

    }

    require(varg7 <= 0xf4240);

    v17 = _SafeMul(varg7, varg3);

    require(0xf4240 > 0, Error('SafeMath: division by zero'));

    assert(0xf4240);

    require(v17 / 0xf4240 <= varg3, Error('SafeMath: subtraction overflow'));

    _nonces[varg0][uint128(address(varg4) >> 32) + bytes16(address(varg2) << 96)] = varg1;

    emit NonceUpdated(varg0, uint128(address(varg4) >> 32) + bytes16(address(varg2) << 96), varg1);

    require(bool(_lyfeblocNetworkProxy.code.size));

    v18, v19 = _lyfeblocNetworkProxy.tradeWithHint(varg2, varg3 - v17 / 0xf4240, varg4, varg5, ~0, varg6, this, 0x5045524d00000000000000000000000000000000000000000000000000000000).gas(msg.gas);

    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    emit LimitOrderExecute(varg0, varg2, varg4, varg1, varg3 - v17 / 0xf4240, v19, varg5, v17 / 0xf4240);

}
