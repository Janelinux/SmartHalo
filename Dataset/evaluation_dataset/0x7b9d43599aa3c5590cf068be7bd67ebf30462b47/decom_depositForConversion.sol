function depositForConversion(address varg0, uint256 varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(_depositForConversion, Error('ReentrancyGuard: reentrant call'));

    _depositForConversion = 0;

    require(varg1, Error('Amount cannot be 0'));

    require(varg1 <= _availableMxxAmt, Error('Amount exceeded'));

    require(varg0, Error('Invalid BSC address'));

    MEM[64] = MEM[64] + 132;

    v0 = v1 = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 != EXTCODEHASH(_mXX_ADDRESS);

    if (0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 != EXTCODEHASH(_mXX_ADDRESS)) {

        v0 = EXTCODEHASH(_mXX_ADDRESS);

    }

    require(v0, Error('SafeERC20: call to non-contract'));

    v2 = v3 = MEM[64];

    v4 = v5 = 32 + MEM[64];

    while (v6 >= 32) {

        MEM[v2] = MEM[v4];

        v6 = v6 + ~31;

        v2 += 32;

        v4 += 32;

    }

    MEM[v2] = MEM[v4] & ~(256 ** (32 - v6) - 1) | MEM[v2] & 256 ** (32 - v6) - 1;

    v7, v8, v9 = _mXX_ADDRESS.transferFrom(msg.sender, address(this), varg1).gas(msg.gas);

    if (RETURNDATASIZE() == 0) {

        v10 = v11 = 96;

    } else {

        v10 = v12 = new bytes[](RETURNDATASIZE());

        RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());

    }

    require(v7, Error('SafeERC20: low-level call failed'));

    if (MEM[v10]) {

        require(MEM[v10] >= 32);

        require(MEM[v9], Error('SafeERC20: ERC20 operation did not succeed'));

    }

    _allConversions[_index] = varg1;

    _allConversions[_index][1] = _feePcnt;

    _allConversions[_index][2] = ~0xffffffffffffffffffffffffffffffffffffffff & _allConversions[_index][0x2] | msg.sender;

    _allConversions[_index][3] = ((~0xffffffffffffffffffffffffffffffffffffffff & _allConversions[_index][0x3] | varg0) & ~0xffffffffffff0000000000000000000000000000000000000000 | (0xffffffffffff & (0xffffffffffff & block.timestamp)) << 160) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffff | 0x0;

    assert(1 <= 3);

    _allConversions[_index][4] = 0x1 | ~0xff & _allConversions[_index][0x4];

    emit NewConversion(msg.sender, varg0, _index, varg1, _feePcnt, block.timestamp);

    require(1 + _index >= _index, Error('SafeMath: addition overflow'));

    _index += 1;

    if (varg1 <= _availableMxxAmt) {

        _availableMxxAmt = _availableMxxAmt - varg1;

        _depositForConversion = 1;

        exit;

    } else {

        v13 = new array[](v14.length);

        MEM[4 + MEM[64]] = 32;

        v15 = v16 = 0;

        while (v15 < v14.length) {

            v13[v15] = v14[v15];

            v15 += 32;

        }

        if (30) {

            MEM[v13.data] = ~0xffff & 'SafeMath: subtraction overflow';

        }

        revert(Error(v13));

    }

}
