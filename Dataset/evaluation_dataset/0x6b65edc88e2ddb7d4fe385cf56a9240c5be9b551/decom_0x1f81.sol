function 0x1f81(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    v0 = address(varg2);

    require(!(0xff & _isSniper[v0]), Error('Account is a Sniper'));

    if (!stor_1b_20_20) {

        v1 = address(varg2);

        v2 = v3 = !(0xff & _isTXNoLimit[v1]);

        if (v3) {

            v4 = address(varg1);

            v2 = v5 = !(0xff & _isTXNoLimit[v4]);

        }

        if (v2) {

            require(varg0 <= __maxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

        }

        v6 = _balanceOf[address(this)];

        v7 = v8 = v6 >= _minimumTokensBeforeSwapAmount;

        if (v8) {

            v7 = v9 = !stor_1b_20_20;

        }

        if (v7) {

            v10 = address(varg2);

            v7 = v11 = !(0xff & _isMarketPair[v10]);

        }

        if (v7) {

            v7 = v12 = _swapAndLiquifyEnabled;

        }

        if (v7) {

            if (_swapAndLiquifyByLimitOnly) {

                v6 = v13 = _minimumTokensBeforeSwapAmount;

            }

            0x2828(v6);

        }

        v14 = new struct(2);

        v14.word0 = 20;

        v15 = v14.data;

        v14.word1 = 'Insufficient Balance';

        v16 = address(varg2);

        v17 = _SafeSub(v14, varg0, _balanceOf[v16]);

        v18 = address(varg2);

        _balanceOf[v18] = v17;

        v19 = address(varg2);

        v20 = v21 = 0xff & _isExcludedFromFee[v19];

        if (!v21) {

            v22 = address(varg1);

            v20 = v23 = 0xff & _isExcludedFromFee[v22];

        }

        if (!v20) {

            v24 = v25 = 0;

            v26 = address(varg2);

            if (!(0xff & _isMarketPair[v26])) {

                v27 = address(varg1);

                if (0xff & _isMarketPair[v27]) {

                    v28 = 0x2c40(__finalSellTax, varg0);

                    v24 = v29 = 0x2cba(100, v28);

                }

            } else {

                v30 = 0x2c40(__finalBuyTax, varg0);

                v24 = v31 = 0x2cba(100, v30);

            }

            if (v24 > 0) {

                v32 = _SafeAdd(v24, _balanceOf[address(this)]);

                _balanceOf[address(this)] = v32;

                emit Transfer(address(varg2), address(this), v24);

            }

            v33 = new struct(2);

            v33.word0 = 30;

            v34 = v33.data;

            v33.word1 = 'SafeMath: subtraction overflow';

            varg0 = v35 = _SafeSub(v33, v24, varg0);

            goto 0x2451;

        }

        v36 = v37 = _checkWalletLimit;

        if (v37) {

            v38 = address(varg1);

            v36 = v39 = !(0xff & _isWalletNoLimit[v38]);

        }

        if (v36) {

            v40 = address(varg1);

            v41 = _SafeAdd(varg0, _balanceOf[v40]);

            require(v41 <= __walletMax);

        }

        v42 = address(varg1);

        v43 = _SafeAdd(varg0, _balanceOf[v42]);

        v44 = address(varg1);

        _balanceOf[v44] = v43;

        emit Transfer(address(varg2), address(varg1), varg0);

        v45 = v46 = 1;

    } else {

        v47 = new struct(2);

        v47.word0 = 20;

        v48 = v47.data;

        v47.word1 = 'Insufficient Balance';

        v49 = address(varg2);

        v50 = _SafeSub(v47, varg0, _balanceOf[v49]);

        v51 = address(varg2);

        _balanceOf[v51] = v50;

        v52 = address(varg1);

        v53 = _SafeAdd(varg0, _balanceOf[v52]);

        v54 = address(varg1);

        _balanceOf[v54] = v53;

        emit Transfer(address(varg2), address(varg1), varg0);

        v45 = 1;

    }

    return v45;

}
