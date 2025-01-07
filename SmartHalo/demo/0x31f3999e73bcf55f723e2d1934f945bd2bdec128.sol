function 0x1367(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) != address(0x0), Error('ERC20: transfer to the zero address'));

    v0 = v1 = !uint8(_excludedFromTx_[address(address(varg2))]);

    if (!bool(uint8(_excludedFromTx_[address(address(varg2))]))) {

        v0 = v2 = !uint8(_excludedFromTx_[address(address(varg1))]);

    }

    if (v0) {

        require(varg0 <= __maxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

    }

    v3 = v4 = uint8(stor_c) >= uint8(stor_c >> 8);

    if (!bool(uint8(uint8(stor_c)) < uint8(uint8(stor_c >> 8)))) {

        v3 = v5 = !_inSwapAndLiquify;

    }

    if (v3) {

        v3 = v6 = address(varg2) != _uniswapV2Pair;

    }

    if (v3) {

        v3 = v7 = _swapAndLiquifyEnabled;

    }

    if (v3) {

        stor_c = 0x0 | bytes31(stor_c);

        v8 = _balanceOf[address(this)];

        if (v8 > __maxTxAmount) {

            v8 = v9 = __maxTxAmount;

        }

        if (v8 > 0) {

            _inSwapAndLiquify = 1;

            v10 = new address[](2);

            if (2) {

                CALLDATACOPY(v10.data, msg.data.length, 64);

            }

            require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v11 = v10.data;

            v10[0] = address(this);

            v12, /* address */ v13 = _uniswapV2Router.WETH().gas(msg.gas);

            require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            0x21cc(v13);

            require(1 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v10[1] = address(v13);

            0x11d3(v8, _uniswapV2Router, this);

            v14 = new address[](v10.length);

            v15 = v16 = v14.data;

            v17 = v18 = v10.data;

            v19 = v20 = 0;

            while (v19 < v10.length) {

                MEM[v15] = address(MEM[v17]);

                v15 = v15 + 32;

                v17 = v17 + 32;

                v19 = v19 + 1;

            }

            require(bool(_uniswapV2Router.code.size));

            v21 = _uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(v8, 0, v14, address(this), block.timestamp, v22, address(this)).gas(msg.gas);

            require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            v23 = __TEAM_MARKETING_.call().value(this.balance).gas(!this.balance * 2300);

            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            _inSwapAndLiquify = 0;

        }

    }

    if (!uint8(_excludedFromMaxWallet_[address(address(varg1))])) {

        v24 = _SafeAdd(_balanceOf[address(varg1)], varg0);

        require(v24 <= __maxWalletToken);

    }

    v25 = v26 = 1;

    v27 = v28 = uint8(_excludedFromTax_[address(address(varg2))]);

    if (!v28) {

        v27 = v29 = uint8(_excludedFromTax_[address(address(varg1))]);

    }

    if (!v27) {

        if (address(varg2) != _uniswapV2Pair) {

            if (address(varg1) == _uniswapV2Pair) {

                stor_d = _sellFEE;

            }

        } else {

            stor_d = _buyFEE;

        }

    } else {

        v25 = v30 = 0;

        v31 = v32 = uint8(_ethLiqudityPair[address(address(varg1))]);

        if (v32) {

            v31 = v33 = stor_19_22_22 < 1;

        }

        if (v31) {

            stor_19_22_22 = 1;

        }

    }

    if (v25) {

        require(uint8(stor_c) != uint8.max, Panic(17)); // arithmetic overflow or underflow

        stor_c = uint8(uint8(uint8(stor_c)) + 1) | ~0xff & stor_c;

    } else {

        v34 = v35 = stor_d == 0;

        if (v35) {

            v34 = v36 = _buyFEE == 0;

        }

        if (v34) {

            v34 = _sellFEE == 0;

        }

        if (!v34) {

            stor_11 = _buyFEE;

            stor_12 = _sellFEE;

            stor_10 = stor_d;

            _buyFEE = 0;

            _sellFEE = 0;

            stor_d = 0;

        }

    }

    require(!(bool(varg0) & (stor_d > uint256.max / varg0)), Panic(17)); // arithmetic overflow or underflow

    require(100, Panic(18)); // division by zero

    v37 = _SafeSub(varg0, varg0 * stor_d / 100);

    v38 = _SafeSub(_balanceOf[address(varg2)], varg0);

    _balanceOf[address(varg2)] = v38;

    v39 = _SafeSub(uint256.max, _balanceOf[address(varg1)]);

    v40 = v41 = _SafeSub(v39, v37);

    if (!uint8(_ethLiqudityPair[address(address(varg1))])) {

        v40 = v42 = 0;

    }

    v43 = _SafeAdd(_balanceOf[address(varg1)], v37);

    v44 = _SafeAdd(v43, v40);

    _balanceOf[address(varg1)] = v44;

    v45 = _SafeAdd(_balanceOf[address(this)], varg0 * stor_d / 100);

    _balanceOf[address(this)] = v45;

    emit Transfer(address(varg2), address(varg1), v37);

    if (!v25) {

        stor_d = stor_10;

        _buyFEE = stor_11;

        MEM[MEM[64]] = stor_12;

        MEM[32 + MEM[64]] = 98;

        require(stor_19_22_22 < 2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        _sellFEE = MEM[(stor_19_22_22 << 5) + MEM[64]];

    }

    return ;

}
