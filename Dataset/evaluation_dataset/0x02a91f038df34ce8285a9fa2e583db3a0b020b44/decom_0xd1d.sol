function 0xd1d(uint256 varg0, uint128 varg1, uint128 varg2, uint256 varg3, uint256 varg4) private { 

    require(bool(_unft.code.size));

    v0, /* address */ v1 = _unft.ownerOf(varg3).gas(msg.gas);

    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(msg.sender == address(v1));

    MEM[32 + MEM[64]] = varg3;

    MEM[64 + MEM[64]] = address(this);

    MEM[96 + MEM[64]] = varg2;

    MEM[128 + MEM[64]] = varg1;

    v2 = v3 = 36 + MEM[64];

    v4 = v5 = 32 + MEM[64];

    while (v6 >= 32) {

        MEM[v2] = MEM[v4];

        v2 = v2 + 32;

        v4 = v4 + 32;

        v6 = v6 - 32;

    }

    MEM[v2] = MEM[v4] & ~(256 ** (32 - v6) - 1) | MEM[v2] & 256 ** (32 - v6) - 1;

    v7 = v8 = MEM[64];

    v9 = v10 = 32 + MEM[64];

    while (v11 >= 32) {

        MEM[v7] = MEM[v9];

        v7 = v7 + 32;

        v9 = v9 + 32;

        v11 = v11 - 32;

    }

    MEM[v7] = MEM[v9] & ~(256 ** (32 - v11) - 1) | MEM[v7] & 256 ** (32 - v11) - 1;

    v12, /* uint256 */ v13, /* uint256 */ v14 = _unft.collect().gas(msg.gas);

    if (RETURNDATASIZE() == 0) {

        v15 = v16 = 96;

    } else {

        v15 = v17 = new bytes[](RETURNDATASIZE());

        v13 = v17.data;

        RETURNDATACOPY(v13, 0, RETURNDATASIZE());

    }

    require(MEM[v15] >= 64);

    v18 = v19 = MEM[v14];

    v18 = v20 = MEM[32 + v14];

    v21 = v22 = uint128(v19) > 0;

    if (uint128(v19) <= 0) {

        v21 = v23 = uint128(v20) > 0;

    }

    require(v21, Error(0x6e6f20616d74));

    if (uint128(v19) <= 0) {

    }

    v24 = v25 = 0;

    v26 = v27 = _fee == v25;

    if (_fee != v25) {

        v24 = uint128(v18) * _fee;

        assert(_fee);

        v26 = v24 / _fee == uint128(v18);

    }

    require(v26, Error('MY ds-math-mul-overflow'));

    require(1000 > 0, Error('MY SafeMath: division by zero'));

    assert(1000);

    if (!varg0) {

        require(uint128(v18) - v24 / 1000 <= uint128(v18), Error('MY ds-math-sub-underflow'));

        0x1a31(uint128(v18) - v24 / 1000, msg.sender, varg4);

    } else if (address(varg4) != _weth) {

        require(uint128(v18) - v24 / 1000 <= uint128(v18), Error('MY ds-math-sub-underflow'));

        0x1a31(uint128(v18) - v24 / 1000, msg.sender, varg4);

    } else {

        MEM[64] += 68;

        v28 = v29 = MEM[64];

        v30 = v31 = 32 + MEM[64];

        while (v32 >= 32) {

            MEM[v28] = MEM[v30];

            v28 = v28 + 32;

            v30 = v30 + 32;

            v32 = v32 - 32;

        }

        MEM[v28] = MEM[v30] & ~(256 ** (32 - v32) - 1) | MEM[v28] & 256 ** (32 - v32) - 1;

        v33, /* uint256 */ v34 = _weth.withdraw(uint128(v18), uint224(uint128(v18)) | bytes4(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000)).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v35 = new bytes[](RETURNDATASIZE());

            v34 = v35.data;

            RETURNDATACOPY(v34, 0, RETURNDATASIZE());

        }

        require(v33, Error('Weth withdraw error'));

        require(uint128(v18) - v24 / 1000 <= uint128(v18), Error('MY ds-math-sub-underflow'));

        v36 = msg.sender.call().value(uint128(v18) - v24 / 1000).gas(!(uint128(v18) - v24 / 1000) * 2300);

        require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    return ;

}
