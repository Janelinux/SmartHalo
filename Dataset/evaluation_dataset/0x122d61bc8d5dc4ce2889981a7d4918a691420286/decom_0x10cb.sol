function 0x10cb(uint256 varg0, address varg1, address varg2) private { 

    require(varg2 != address(0x0), Error('ERC20: transfer from the zero address'));

    require(!uint8(__previous[address(address(varg2))]));

    require(varg1 != address(0x0), Error('ERC20: transfer to the zero address'));

    if (!stor_e_20_20) {

        v0 = v1 = !stor_e_20_20;

        if (!stor_e_20_20) {

            v0 = v2 = !uint8(_isMarketPair[address(address(varg2))]);

        }

        if (v0) {

            stor_e_20_20 = 1;

            v3 = new uint256[](2);

            if (2) {

                CALLDATACOPY(v3.data, msg.data.length, 64);

            }

            require(0 < v3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v4 = v3.data;

            v3[0] = address(this);

            require(bool(_uniswapV2Router.code.size));

            v5, /* address */ v6 = _uniswapV2Router.WETH().gas(msg.gas);

            require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            0x2c06(v6);

            require(1 < v3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v3[1] = address(v6);

            0xf00(_balanceOf[address(this)], _uniswapV2Router, this);

            v7 = new array[](v3.length);

            v8 = v9 = v7.data;

            v10 = v11 = v3.data;

            v12 = v13 = 0;

            while (v12 < v3.length) {

                MEM[v8] = address(MEM[v10]);

                v8 = v8 + 32;

                v10 = v10 + 32;

                v12 = v12 + 1;

            }

            require(bool(_uniswapV2Router.code.size));

            v14 = v15 = _uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(_balanceOf[address(this)], 0, v7, address(this), block.timestamp, v16, address(this)).gas(msg.gas);

            if (v15) {

                v14 = v17 = 1;

            }

            if (!v14) {

            }

            if (this.balance > 0) {

                v18 = _out.call().value(this.balance).gas(!this.balance * 2300);

                require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

            stor_e_20_20 = 0;

        }

        v19 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[varg2]);

        _balanceOf[varg2] = v19;

        v20 = v21 = uint8(__isExcludefromFee[address(address(varg2))]);

        if (!v21) {

            v20 = v22 = uint8(__isExcludefromFee[address(address(varg1))]);

        }

        if (!v20) {

            v23 = v24 = 0;

            if (!uint8(_isMarketPair[address(address(varg2))])) {

                if (uint8(_isMarketPair[address(address(varg1))])) {

                    v25 = 0x1e39(__sellMarketingFee, varg0);

                    v23 = v26 = 0x1eb4(100, v25);

                }

            } else {

                v27 = 0x1e39(__buyMarketingFee, varg0);

                v23 = v28 = 0x1eb4(100, v27);

            }

            if (v23 > 0) {

                v29 = 0x1efe(v23, _balanceOf[address(this)]);

                _balanceOf[address(this)] = v29;

                emit Transfer(varg2, address(this), v23);

            }

            varg0 = v30 = _SafeSub('SafeMath: subtraction overflow', v23, varg0);

        }

        v31 = 0x1efe(varg0, _balanceOf[varg1]);

        _balanceOf[varg1] = v31;

        emit Transfer(varg2, varg1, varg0);

        v32 = v33 = 1;

    } else {

        v34 = _SafeSub('Inufficient Balance', varg0, _balanceOf[varg2]);

        _balanceOf[varg2] = v34;

        v35 = 0x1efe(varg0, _balanceOf[varg1]);

        _balanceOf[varg1] = v35;

        emit Transfer(varg2, varg1, varg0);

        v32 = v36 = 1;

    }

    return v32;

}
