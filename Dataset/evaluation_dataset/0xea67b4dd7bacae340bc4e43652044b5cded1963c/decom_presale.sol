function presale(uint256 num, uint256 _total, bool _presale, bytes sig) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 128);

    require(sig <= uint64.max);

    require(4 + sig + 31 < 4 + (msg.data.length - 4));

    require(sig.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](sig.length);

    require(!((v0 + ((sig.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((sig.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)

    require(sig.data + sig.length <= 4 + (msg.data.length - 4));

    CALLDATACOPY(v0.data, sig.data, sig.length);

    v0[sig.length] = 0;

    require(!_paused, Error('Pausable: paused'));

    require(!_presale, Error('Presale paused'));

    require(!_isPresaleClaimed[msg.sender], Error('Presale Address already used!'));

    require(40 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v1 = new bytes[](40);

    if (40) {

        CALLDATACOPY(v1.data, msg.data.length, 40);

    }

    v2 = v3 = 0;

    while (v2 < 20) {

        v4 = _SafeSub(19, v2);

        v5 = _SafeMul(8, v4);

        v6 = 0x4f61(2, v5);

        v7 = _SafeDiv(msg.sender, v6);

        require(uint8(16), Panic(18)); // division by zero

        require(!(bool(16) & (uint8(uint8(v7 << 248 >> 248) / uint8(16) << 248 >> 248) > 15)), Panic(17)); // arithmetic overflow or underflow

        require(uint8(v7 << 248 >> 248) >= uint8(uint8(16) * uint8(uint8(v7 << 248 >> 248) / uint8(16) << 248 >> 248)), Panic(17)); // arithmetic overflow or underflow

        v8 = 0x3207(uint8(v7 << 248 >> 248) / uint8(16) << 248);

        v9 = _SafeMul(2, v2);

        require(v9 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        MEM8[32 + v9 + v1] = (byte(bytes1(v8), 0x0)) & 0xFF;

        v10 = 0x3207(uint8(v7 << 248 >> 248) - uint8(uint8(16) * uint8(uint8(v7 << 248 >> 248) / uint8(16) << 248 >> 248)) << 248);

        v11 = _SafeMul(2, v2);

        v12 = _SafeAdd(v11, 1);

        require(v12 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        MEM8[32 + v12 + v1] = (byte(bytes1(v10), 0x0)) & 0xFF;

        v2 = 0x52ac(v2);

    }

    v13 = v14 = 0;

    while (v13 < v1.length) {

        MEM[32 + MEM[64] + 2 + v13] = v1[v13];

        v13 = v13 + 32;

    }

    if (v13 > v1.length) {

        MEM[32 + MEM[64] + 2 + v1.length] = 0;

    }

    MEM[64] = 32 + MEM[64] + 2 + v1.length;

    v15 = v16 = 0;

    while (v15 < 42) {

        MEM[32 + MEM[64] + v15] = MEM[MEM[64] + 32 + v15];

        v15 = v15 + 32;

    }

    if (v15 > 42) {

        MEM[32 + MEM[64] + 42] = 0;

    }

    require(v0.length == 65);

    MEM[MEM[64]] = 0;

    v17, /* address */ v18 = ecrecover(keccak256(0x3078000000000000000000000000000000000000000000000000000000000000, _total, _presale), uint8(byte(MEM[v0 + 96], 0x0)), MEM[v0.data], MEM[v0 + 64]);

    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(address(v18) == stor_f_0_19 == True, Error('Invalid signature!'));

    require(num <= _total, Error('Maximum reached!'));

    v19 = _SafeSub(9000, stor_16);

    v20 = _SafeAdd(_totalSupply.length, num);

    require(v20 <= v19, Error('Exceeds maximum Moonkys supply'));

    v21 = _SafeMul(_getPrice, num);

    require(msg.value >= v21, Error('Ether sent is not correct'));

    v22 = v23 = 0;

    while (v22 < num) {

        stor_15 = stor_15 + 1;

        0x27f4(stor_15, msg.sender);

        v22 = 0x52ac(v22);

    }

    _isPresaleClaimed[msg.sender] = 1;

}
