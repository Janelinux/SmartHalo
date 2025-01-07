function 0xa8e(uint256 varg0, address varg1, address varg2) private { 

    require(1 < array_c.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

    v0 = v1 = owner_e[varg2] == 0;

    if (v1) {

        v0 = v2 = owner_d[varg2] > 0;

    }

    if (v0) {

        v0 = v3 = _uniswapV2Pair != varg2;

    }

    if (v0) {

        v4 = _SafeSub(owner_e[varg2], __fee);

        owner_e[varg2] = v4;

        require(uint8(13) <= uint8.max - _decimals, Panic(17)); // arithmetic overflow or underflow

        v5 = _SafeExp(10, uint8(uint8(13) + _decimals), uint256.max);

        v6 = _SafeMul(2, v5);

        if (varg0 > v6) {

            v7 = _SafeSub(__fee, 1);

            v8 = _SafeSub(owner_e[varg2], v7);

            owner_e[varg2] = v8;

        }

    }

    require(1 < array_c.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

    array_c[1] = varg1 | bytes12(array_c[1]);

    v9 = v10 = owner_e[varg2] > 0;

    if (v10) {

        v9 = v11 = varg0 == 0;

    }

    if (v9) {

        v12 = _SafeAdd(owner_e[varg1], __fee);

        owner_e[varg1] = v12;

    }

    v13 = _SafeAdd(__fee, 1);

    v14 = _SafeAdd(owner_d[address(array_c[1])], v13);

    owner_d[address(array_c[1])] = v14;

    require(100, Panic(18)); // division by zero

    v15 = _SafeMul(varg0 / 100, __fee);

    v16 = _SafeSub(varg0, v15);

    v17 = _SafeSub(_balanceOf[varg2], v15);

    _balanceOf[varg2] = v17;

    v18 = _SafeAdd(_balanceOf[address(this)], v15);

    _balanceOf[address(this)] = v18;

    v19 = _SafeSub(_balanceOf[varg2], v16);

    _balanceOf[varg2] = v19;

    v20 = _SafeAdd(_balanceOf[varg1], v16);

    _balanceOf[varg1] = v20;

    return ;

}
