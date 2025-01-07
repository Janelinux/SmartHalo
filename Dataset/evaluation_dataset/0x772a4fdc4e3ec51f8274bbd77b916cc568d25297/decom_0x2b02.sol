function 0x2b02(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    if (!stor_1d_20_20) {

        v0 = address(varg2);

        v1 = v2 = !(0xff & _checkTxLimitExcept[v0]);

        if (v2) {

            v3 = address(varg1);

            v1 = v4 = !(0xff & _checkTxLimitExcept[v3]);

        }

        if (v1) {

            require(varg0 <= __maxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

        }

        v5 = _balanceOf[address(this)];

        v6 = v7 = v5 >= stor_1b;

        if (v7) {

            v6 = v8 = !stor_1d_20_20;

        }

        if (v6) {

            v9 = address(varg2);

            v6 = v10 = !(0xff & _checkMarketPair[v9]);

        }

        if (v6) {

            v6 = v11 = _swapAndLiquifyEnabled;

        }

        if (v6) {

            if (_swapAndLiquifyByLimitOnly) {

                v5 = v12 = stor_1b;

            }

            0x3368(v5);

        }

        v13 = new struct(2);

        v13.word0 = 20;

        v14 = v13.data;

        v13.word1 = 'Insufficient Balance';

        v15 = address(varg2);

        v16 = _SafeSub(v13, varg0, _balanceOf[v15]);

        v17 = address(varg2);

        _balanceOf[v17] = v16;

        v18 = address(varg2);

        v19 = v20 = 0xff & _balanceOf[v18];

        if (!v20) {

            v21 = address(varg1);

            v19 = v22 = 0xff & _checkExcludedFromFees[v21];

        }

        if (!v19) {

            v23 = v24 = 0;

            v25 = address(varg2);

            if (!(0xff & _checkMarketPair[v25])) {

                v26 = address(varg1);

                if (0xff & _checkMarketPair[v26]) {

                    v27 = 0x3780(__totalTaxIfSelling, varg0);

                    v23 = v28 = 0x37fb(100, v27);

                }

            } else {

                v29 = 0x3780(__totalTaxIfBuying, varg0);

                v23 = v30 = 0x37fb(100, v29);

            }

            if (v23 > 0) {

                v31 = _SafeAdd(v23, _balanceOf[address(this)]);

                _balanceOf[address(this)] = v31;

                emit Transfer(address(varg2), address(this), v23);

            }

            v32 = new struct(2);

            v32.word0 = 30;

            v33 = v32.data;

            v32.word1 = 'SafeMath: subtraction overflow';

            varg0 = v34 = _SafeSub(v32, v23, varg0);

            goto 0x2f47;

        }

        v35 = v36 = _checkWalletLimit;

        if (v36) {

            v37 = address(varg1);

            v35 = v38 = !(0xff & _checkWalletLimitExcept[v37]);

        }

        if (v35) {

            v39 = address(varg1);

            v40 = _SafeAdd(varg0, _balanceOf[v39]);

            require(v40 <= __walletMax);

        }

        v41 = address(varg1);

        v42 = _SafeAdd(varg0, _balanceOf[v41]);

        v43 = address(varg1);

        _balanceOf[v43] = v42;

        emit Transfer(address(varg2), address(varg1), varg0);

        v44 = v45 = 1;

    } else {

        v46 = new struct(2);

        v46.word0 = 20;

        v47 = v46.data;

        v46.word1 = 'Insufficient Balance';

        v48 = address(varg2);

        v49 = _SafeSub(v46, varg0, _balanceOf[v48]);

        v50 = address(varg2);

        _balanceOf[v50] = v49;

        v51 = address(varg1);

        v52 = _SafeAdd(varg0, _balanceOf[v51]);

        v53 = address(varg1);

        _balanceOf[v53] = v52;

        emit Transfer(address(varg2), address(varg1), varg0);

        v44 = 1;

    }

    return v44;

}
