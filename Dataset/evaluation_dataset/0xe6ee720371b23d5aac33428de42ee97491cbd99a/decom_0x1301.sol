function 0x1301(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = address(varg2);

    require(varg0 <= _balanceOf[v0], Error('You are trying to transfer more than your balance'));

    v1 = v2 = stor_11_20_20;

    if (!v2) {

        v3 = address(varg2);

        v1 = v4 = 0xff & owner_3[v3];

    }

    if (!v1) {

        v5 = address(varg1);

        v1 = v6 = 0xff & owner_3[v5];

    }

    require(v1, Error('Trading not enabled yet'));

    v7 = v8 = address(varg2) == owner_11_0_19;

    if (v8) {

        v7 = v9 = address(varg1) != stor_10_0_19;

    }

    if (v7) {

        v10 = address(varg1);

        v7 = v11 = !(0xff & owner_3[v10]);

    }

    if (v7) {

        require(varg0 <= stor_14, Error('Exceeds the _maxTxAmount.'));

        v12 = address(varg1);

        v13 = _SafeAdd(_balanceOf[v12], varg0);

        require(v13 <= stor_13, Error('Exceeds the maxWalletSize.'));

    }

    v14 = v15 = !stor_11_21_21;

    if (!stor_11_21_21) {

        v14 = v16 = address(varg2) != owner_11_0_19;

    }

    if (v14) {

        v14 = v17 = stor_11_22_22;

    }

    if (v14) {

        v14 = v18 = _balanceOf[address(this)] > 0;

    }

    if (v14) {

        stor_11_21_21 = 1;

        v19 = new uint256[](2);

        if (2) {

            CALLDATACOPY(v19.data, msg.data.length, 64);

        }

        require(0 < v19.length, Panic(50));

        v20 = v19.data;

        v19[0] = address(this);

        require(stor_10_0_19.code.size);

        v21, v22 = stor_10_0_19.WETH().gas(msg.gas);

        require(v21); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x318f(v22);

        require(1 < v19.length, Panic(50));

        v19[1] = address(v22);

        0x1136(_balanceOf[address(this)], stor_10_0_19, this);

        v23 = new array[](v19.length);

        v24 = v25 = v23.data;

        v26 = v27 = v19.data;

        v28 = v29 = 0;

        while (v28 < v19.length) {

            MEM[v24] = address(MEM[v26]);

            v24 = v24 + 32;

            v26 = v26 + 32;

            v28 = v28 + 1;

        }

        require(stor_10_0_19.code.size);

        v30 = stor_10_0_19.swapExactTokensForETHSupportingFeeOnTransferTokens(_balanceOf[address(this)], 0, v23, address(this), block.timestamp).gas(msg.gas);

        require(v30); // checks call status, propagates error data on error

        stor_11_21_21 = 0;

        if (this.balance > 0) {

            v31 = stor_15_0_19.call().value(this.balance).gas(!this.balance * 2300);

            require(v31); // checks call status, propagates error data on error

        }

    }

    v32 = address(varg2);

    v33 = v34 = 0xff & owner_3[v32];

    if (!v34) {

        v35 = address(varg1);

        v33 = v36 = 0xff & owner_3[v35];

    }

    v37 = address(varg2);

    v38 = _SafeSub(_balanceOf[v37], varg0);

    _balanceOf[v37] = v38;

    if (!v33) {

        v39 = v40 = address(varg2) == owner_11_0_19;

        if (v40) {

            v39 = _totalBuyFees > 0;

        }

        if (!v39) {

            v41 = v42 = address(varg1) == owner_11_0_19;

            if (v42) {

                v41 = _totalSellFees > 0;

            }

            if (v41) {

                v43 = _SafeMul(varg0, _sellAutoLiquidityFee);

                v44 = _SafeDiv(v43, _masterTaxDivisor);

                _tokensForAutoLiquidity = v44;

                v45 = _SafeMul(varg0, _sellAutoBurnFee);

                v46 = _SafeDiv(v45, _masterTaxDivisor);

                _tokensForAutoBurn = v46;

                v47 = _SafeMul(varg0, _sellMarketingFee);

                v48 = _SafeDiv(v47, _masterTaxDivisor);

                _tokensForMarketing = v48;

            }

        } else {

            v49 = _SafeMul(varg0, _buyAutoLiquidityFee);

            v50 = _SafeDiv(v49, _masterTaxDivisor);

            _tokensForAutoLiquidity = v50;

            v51 = _SafeMul(varg0, _buyAutoBurnFee);

            v52 = _SafeDiv(v51, _masterTaxDivisor);

            _tokensForAutoBurn = v52;

            v53 = _SafeMul(varg0, _buyMarketingFee);

            v54 = _SafeDiv(v53, _masterTaxDivisor);

            _tokensForMarketing = v54;

            goto 0x1f6fB0x1c9c;

        }

        v55 = _SafeAdd(_balanceOf[_pairAddress], _tokensForAutoLiquidity);

        _balanceOf[_pairAddress] = v55;

        emit Transfer(address(varg2), _pairAddress, _tokensForAutoLiquidity);

        v56 = _SafeAdd(_balanceOf[57005], _tokensForAutoBurn);

        _balanceOf[57005] = v56;

        v57 = _SafeSub(_totalSupply, _tokensForAutoBurn);

        _totalSupply = v57;

        _totalSupply = _totalSupply;

        emit Transfer(address(varg2), 57005, _tokensForAutoBurn);

        v58 = _SafeAdd(_balanceOf[address(this)], _tokensForMarketing);

        _balanceOf[address(this)] = v58;

        emit Transfer(address(varg2), address(this), _tokensForMarketing);

        v59 = _SafeAdd(_tokensForAutoLiquidity, _tokensForAutoBurn);

        v60 = _SafeAdd(v59, _tokensForMarketing);

        varg0 = v61 = _SafeSub(varg0, v60);

    }

    v62 = address(varg1);

    v63 = _SafeAdd(_balanceOf[v62], varg0);

    _balanceOf[v62] = v63;

    emit Transfer(address(varg2), address(varg1), varg0);

    return ;

}
