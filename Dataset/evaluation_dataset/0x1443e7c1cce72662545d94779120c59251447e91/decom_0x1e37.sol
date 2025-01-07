function 0x1e37(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    if (address(varg2) != _owner) {

        require(varg0 <= stor_8, Error('ERC20: transfer amount exceeds limit'));

    }

    v0 = v1 = _balanceOf[address(this)] >= stor_7_0_15;

    if (_balanceOf[address(this)] >= stor_7_0_15) {

        v0 = v2 = !stor_e_0_0;

    }

    if (v0) {

        v0 = v3 = msg.sender != address(0xec5a5bc94100ebdf75812eefe56fe0f8c3c5efd4);

    }

    if (v0) {

        v0 = v4 = stor_e_1_1;

    }

    if (v0) {

        stor_e_0_0 = 1;

        v5 = _SafeDiv(2, _balanceOf[address(this)]);

        v6 = _SafeSub('SafeMath: subtraction overflow', v5, _balanceOf[address(this)]);

        0x2854(v5);

        v7 = _SafeSub('SafeMath: subtraction overflow', this.balance, this.balance);

        0x1c40(v6, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

        require(bool((address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)).code.size));

        v8, /* uint256 */ v9, /* uint256 */ v10, /* uint256 */ v11 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(address(this), v6, 0, 0, address(this), block.timestamp).value(v7).gas(msg.gas);

        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 96);

        emit SwapAndLiquify(v5, v7, v6);

        stor_e_0_0 = 0;

    }

    v12 = 0x167e(_feePercentage, _feeDecimals, varg0);

    v13 = 0x167e(10, _feeDecimals, varg0);

    v14 = _SafeSub('SafeMath: subtraction overflow', v12, varg0);

    v15 = _SafeSub('SafeMath: subtraction overflow', v13, v14);

    0x2309(v12, this, varg2);

    0x2309(v15, varg1, varg2);

    require(address(varg2) != address(0x0), Error('ERC20: burn from the zero address'));

    v16 = _SafeSub('ERC20: burn amount exceeds balance', v13, _balanceOf[address(varg2)]);

    _balanceOf[address(varg2)] = v16;

    v17 = _SafeSub('SafeMath: subtraction overflow', v13, _totalSupply);

    _totalSupply = v17;

    MEM[MEM[64]] = v13;

    emit Transfer(address(varg2), address(0x0), v13);

    return ;

}
