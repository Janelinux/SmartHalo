function 0x11d6(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = v1 = 0;

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v2 = address(varg2);

    require(!(0xff & _isSniper[v2]), Error('Account is a Sniper'));

    if (!stor_1b_20_20) {

        v3 = address(varg2);

        v4 = v5 = !(0xff & _isTXNoLimit[v3]);

        if (v5) {

            v6 = address(varg1);

            v4 = v7 = !(0xff & _isTXNoLimit[v6]);

        }

        if (v4) {

            require(varg0 <= __maxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

        }

        varg2 = v8 = _balanceOf[this];

        varg1 = v9 = v8 >= _minimumTokensBeforeSwapAmount;

        if (v8 >= _minimumTokensBeforeSwapAmount) {

            varg1 = v10 = !stor_1b_20_20;

        }

        if (varg1) {

            v11 = address(varg2);

            varg1 = v12 = !(0xff & _isMarketPair[v11]);

        }

        if (varg1) {

            varg1 = v13 = _swapAndLiquifyEnabled;

        }

        if (varg1) {

            if (_swapAndLiquifyByLimitOnly) {

                varg2 = v14 = _minimumTokensBeforeSwapAmount;

            }

            varg0 = v15 = 5209;

            stor_1b_20_20 = 1;

            varg2 = v16 = __totalDistributionShares;

            varg2 = v17 = 0;

            varg2 = v18 = 5984;

            varg2 = v19 = 2;

            varg2 = v20 = 10764;

            varg2 = v21 = _SafeMul(__lratio, v22);

            while (1) {

                varg2 = _SafeDiv(varg2, varg2);

            }

            v23 = new struct(2);

            v23.word0 = 30;

            v24 = v23.data;

            v23.word1 = 'SafeMath: subtraction overflow';

            varg2 = v25 = _SafeSub(v23, varg2, varg2);

            0xcc9(v25);

            varg2 = v26 = this.balance;

            v27 = _SafeDiv(2, __lratio);

            v28 = new struct(2);

            v28.word0 = 30;

            v29 = v28.data;

            v28.word1 = 'SafeMath: subtraction overflow';

            varg2 = v30 = _SafeSub(v28, v27, __totalDistributionShares);

            varg2 = v31 = 0;

            varg2 = v32 = 6075;

            varg2 = v33 = 2;

            varg2 = v34 = 10801;

            v35 = v36 = _SafeMul(__lratio, v26);

            while (1) {

                v35 = _SafeDiv(varg2, v35);

            }

            v37 = _SafeMul(__mratio, varg2);

            v38 = _SafeDiv(varg2, v37);

            v39 = new struct(2);

            v39.word0 = 30;

            v40 = v39.data;

            v39.word1 = 'SafeMath: subtraction overflow';

            v41 = _SafeSub(v39, v35, varg2);

            v42 = new struct(2);

            v42.word0 = 30;

            v43 = v42.data;

            v42.word1 = 'SafeMath: subtraction overflow';

            v44 = _SafeSub(v42, v38, v41);

            if (v44) {

                v45 = _marketingaddress.call().value(v44).gas(2300 * !v44);

                require(v45); // checks call status, propagates error data on error

            }

            if (v38) {

                v46 = _marketingaddress.call().value(v38).gas(2300 * !v38);

                require(v46); // checks call status, propagates error data on error

            }

            v47 = v48 = v35 > 0;

            if (v48) {

                v47 = varg2 > 0;

            }

            if (v47) {

                0x10b2(varg2, _uniswapV2Router, this);

                MEM[MEM[64] + 4] = address(this);

                v49, v50, v51, v52 = _uniswapV2Router.addLiquidityETH(address(this), varg2, 0, 0, _owner, block.timestamp).value(v35).gas(msg.gas);

                require(v49); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                goto 0x18490x172aB0x1450;

            }

            stor_1b_20_20 = 0;

            goto 0x1459;

        }

        v53 = new struct(2);

        v53.word0 = 20;

        v54 = v53.data;

        v53.word1 = 'Insufficient Balance';

        v55 = address(varg2);

        v56 = _SafeSub(v53, varg0, _balanceOf[v55]);

        v57 = address(varg2);

        _balanceOf[v57] = v56;

        v58 = v59 = 0xff & _isExcludedFromFee[v57];

        if (!v59) {

            v60 = address(varg1);

            v58 = v61 = 0xff & _isExcludedFromFee[v60];

        }

        if (!v58) {

            v62 = v63 = 0;

            if (!(0xff & _isMarketPair[address(varg2)])) {

                v64 = address(varg1);

                if (0xff & _isMarketPair[v64]) {

                    v65 = _SafeMul(__finalSellTax, varg0);

                    v62 = v66 = _SafeDiv(100, v65);

                }

            } else {

                v67 = _SafeMul(__finalBuyTax, varg0);

                v62 = v68 = _SafeDiv(100, v67);

                goto 0x18e2B0x14fd;

            }

            if (v62) {

                v69 = _SafeAdd(v62, _balanceOf[this]);

                _balanceOf[this] = v69;

                emit Transfer(address(varg2), this, v62);

            }

            v70 = new struct(2);

            v70.word0 = 30;

            v71 = v70.data;

            v70.word1 = 'SafeMath: subtraction overflow';

            varg0 = v72 = _SafeSub(v70, v62, varg0);

            goto 0x150e;

        }

        v73 = v74 = _checkWalletLimit;

        if (v74) {

            v75 = address(varg1);

            v73 = v76 = !(0xff & _isWalletNoLimit[v75]);

        }

        if (v73) {

            v77 = address(varg1);

            require(_balanceOf[v77] <= ~varg0, Panic(17));

            require(_balanceOf[v77] + varg0 >= _balanceOf[v77], Error('SafeMath: addition overflow'));

            require(_balanceOf[v77] + varg0 <= __walletMax);

        }

        v78 = address(varg1);

        v79 = _SafeAdd(varg0, _balanceOf[v78]);

        v80 = address(varg1);

        _balanceOf[v80] = v79;

        emit Transfer(address(varg2), v80, varg0);

        return 1;

    } else {

        v81 = new struct(2);

        v81.word0 = 20;

        v82 = v81.data;

        v81.word1 = 'Insufficient Balance';

        v83 = address(varg2);

        v84 = _SafeSub(v81, varg0, _balanceOf[v83]);

        v85 = address(varg2);

        _balanceOf[v85] = v84;

        v86 = address(varg1);

        v87 = _SafeAdd(varg0, _balanceOf[v86]);

        v88 = address(varg1);

        _balanceOf[v88] = v87;

        emit Transfer(address(varg2), v88, varg0);

        return 1;

    }

}
