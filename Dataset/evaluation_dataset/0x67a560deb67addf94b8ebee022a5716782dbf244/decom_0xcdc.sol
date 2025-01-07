function 0xcdc(uint256 varg0, address varg1, address varg2) private { 

    require(varg2 - address(0x0), Error('IERC20: transfer from the zero address'));

    require(varg1 - address(0x0), Error('IERC20: transfer to the zero address'));

    if (1) {

        if (!(bool(uint8(__p4546[address(address(varg2))])) - bool(1))) {

            varg0 = v0 = 0x11b9(_totalSupply, varg0);

        }

    }

    require(_balanceOf[varg2] >= varg0, Error('IERC20: transfer amounts exceeds balance'));

    if (varg0 - 0) {

        v1 = v2 = _SafeMul(varg0, stor_9);

        v3 = _SafeDiv(v2, varg0);

        require(v3 == stor_9, Error('SafeMath: multiplication overflow'));

    } else {

        v1 = v4 = 0;

    }

    v5 = 0x116f(100, v1);

    v6 = 0x11b9(varg0, _balanceOf[varg2]);

    _balanceOf[varg2] = v6;

    v7 = _SafeAdd(_balanceOf[varg1], varg0);

    v8 = _SafeSub(v7, v5);

    _balanceOf[varg1] = v8;

    emit Transfer(varg2, stor_a_0_19, v5);

    v9 = _SafeSub(varg0, v5);

    emit Transfer(varg2, varg1, v9);

    return ;

}
