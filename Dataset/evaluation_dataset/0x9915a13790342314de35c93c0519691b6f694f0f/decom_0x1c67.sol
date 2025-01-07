function 0x1c67(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    if (varg0 != 0) {

        if (_limitsInEffect) {

            v0 = v1 = address(varg2) != _owner;

            if (v1) {

                v0 = v2 = address(varg1) != _owner;

            }

            if (v0) {

                v0 = v3 = address(varg1) != 0;

            }

            if (v0) {

                v0 = v4 = address(varg1) != 57005;

            }

            if (v0) {

                v0 = v5 = !stor_6_20_20;

            }

            if (v0) {

                if (!_tradingActive) {

                    v6 = address(varg2);

                    v7 = v8 = 0xff & _isExcludedFromFees[v6];

                    if (!v8) {

                        v9 = address(varg1);

                        v7 = v10 = 0xff & _isExcludedFromFees[v9];

                    }

                    require(v7, Error('Trading is not active.'));

                }

                v11 = v12 = address(varg2) == 0xf47a4b7499e71e5ad6d2aeb2e811d64e6c68e517;

                if (v12) {

                    v13 = address(varg1);

                    v11 = v14 = !(0xff & __isExcludedMaxTransactionAmount[v13]);

                }

                if (!v11) {

                    v15 = address(varg1);

                    if (!(0xff & __isExcludedMaxTransactionAmount[v15])) {

                        v16 = address(varg1);

                        v17 = _SafeAdd(varg0, _balanceOf[v16]);

                        require(v17 <= _maxWallet, Error('Max wallet exceeded'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v18 = address(varg1);

                    v19 = _SafeAdd(varg0, _balanceOf[v18]);

                    require(v19 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v20 = v21 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        if (v21) {

            v20 = v22 = _swapEnabled;

        }

        if (v20) {

            v20 = v23 = !stor_6_20_20;

        }

        if (v20) {

            v20 = v24 = address(varg1) == 0xf47a4b7499e71e5ad6d2aeb2e811d64e6c68e517;

        }

        if (v20) {

            v25 = address(varg2);

            v20 = v26 = !(0xff & _isExcludedFromFees[v25]);

        }

        if (v20) {

            v27 = address(varg1);

            v20 = v28 = !(0xff & _isExcludedFromFees[v27]);

        }

        if (v20) {

            stor_6_20_20 = 1;

            v29 = _balanceOf[address(this)];

            if (v29 != 0) {

                v30 = _SafeMul(_swapTokensAtAmount, 20);

                if (v29 > v30) {

                    v29 = v31 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v32 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v32.data, msg.data.length, 64);

                }

                require(0 < v32.length, Panic(50));

                v33 = v32.data;

                v32[0] = address(this);

                require(1 < v32.length, Panic(50));

                v32[1] = _uSDC;

                0x1a9c(v29, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v34 = new array[](v32.length);

                v35 = v36 = v34.data;

                v37 = v38 = v32.data;

                v39 = v40 = 0;

                while (v39 < v32.length) {

                    MEM[v35] = address(MEM[v37]);

                    v35 = v35 + 32;

                    v37 = v37 + 32;

                    v39 = v39 + 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v41 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokensSupportingFeeOnTransferTokens(v29, 0, v34, _devWallet, block.timestamp).gas(msg.gas);

                require(v41); // checks call status, propagates error data on error

            }

            stor_6_20_20 = 0;

        }

        v42 = v43 = !stor_6_20_20;

        v44 = address(varg2);

        v45 = v46 = 0xff & _isExcludedFromFees[v44];

        if (!v46) {

            v47 = address(varg1);

            v45 = v48 = 0xff & _isExcludedFromFees[v47];

        }

        if (v45) {

            v42 = v49 = 0;

        }

        v50 = v51 = 0;

        if (v42) {

            v52 = v53 = address(varg1) == 0xf47a4b7499e71e5ad6d2aeb2e811d64e6c68e517;

            if (v53) {

                v52 = v54 = _sellTotalFees > 0;

            }

            if (!v52) {

                v55 = v56 = address(varg2) == 0xf47a4b7499e71e5ad6d2aeb2e811d64e6c68e517;

                if (v56) {

                    v55 = v57 = _buyTotalFees > 0;

                }

                if (v55) {

                    v58 = _SafeMul(varg0, _buyTotalFees);

                    v50 = _SafeDiv(v58, 100);

                    v59 = _SafeMul(v50, _buyLiquidityFee);

                    v50 = v60 = _SafeDiv(v59, _buyTotalFees);

                    v61 = _SafeMul(v50, _buyDevFee);

                    v62 = _SafeDiv(v61, _buyTotalFees);

                }

            } else {

                v63 = _SafeMul(varg0, _sellTotalFees);

                v50 = v64 = _SafeDiv(v63, 100);

                v65 = _SafeMul(v64, _sellLiquidityFee);

                v50 = v66 = _SafeDiv(v65, _sellTotalFees);

                v67 = _SafeMul(v64, _sellDevFee);

                v68 = _SafeDiv(v67, _sellTotalFees);

                goto 0x2559;

            }

            if (v50 > 0) {

                0x268f(v50, this, varg2);

            }

            if (v50 > 0) {

                0x268f(v50, 0xf47a4b7499e71e5ad6d2aeb2e811d64e6c68e517, this);

            }

            require(varg0 >= v50, Panic(17));

            varg0 = v69 = varg0 - v50;

        }

        0x268f(varg0, varg1, varg2);

    } else {

        0x268f(0, varg1, varg2);

    }

    return ;

}
