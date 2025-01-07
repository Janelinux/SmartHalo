function 0x1185(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    if (0 - varg0) {

        if (_limitsInEffect) {

            v0 = _owner == address(varg2);

            v1 = v2 = _owner != address(varg2);

            if (_owner != address(varg2)) {

                v1 = v3 = _owner != address(varg1);

            }

            if (v1) {

                v1 = v4 = address(varg1);

            }

            if (v1) {

                v1 = v5 = 57005 != address(varg1);

            }

            if (v1) {

                v1 = v6 = !stor_6_20_20;

            }

            if (v1) {

                if (!_tradingActive) {

                    v7 = address(varg2);

                    v8 = v9 = 0xff & _isExcludedFromFees[v7];

                    if (!v9) {

                        v10 = address(varg1);

                        v8 = v11 = 0xff & _isExcludedFromFees[v10];

                    }

                    require(v8, Error('Trading is not active.'));

                }

                v12 = v13 = address(varg2) == 0x8ebe45672cb7ab0564ac2606723ff29d815bbdb;

                if (v13) {

                    v14 = address(varg1);

                    v12 = v15 = !(0xff & __isExcludedMaxTransactionAmount[v14]);

                }

                if (!v12) {

                    v16 = address(varg1);

                    if (!(0xff & __isExcludedMaxTransactionAmount[v16])) {

                        v17 = address(varg1);

                        v18 = _SafeAdd(varg0, _balanceOf[v17]);

                        require(v18 <= _maxWallet, Error('Max wallet exceeded'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v19 = address(varg1);

                    v20 = _SafeAdd(varg0, _balanceOf[v19]);

                    require(v20 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v21 = v22 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v21 = v23 = _swapEnabled;

        }

        if (v21) {

            v21 = v24 = !stor_6_20_20;

        }

        if (v21) {

            v21 = v25 = address(varg1) == 0x8ebe45672cb7ab0564ac2606723ff29d815bbdb;

        }

        if (v21) {

            v26 = address(varg2);

            v21 = v27 = !(0xff & _isExcludedFromFees[v26]);

        }

        if (v21) {

            v28 = address(varg1);

            v21 = v29 = !(0xff & _isExcludedFromFees[v28]);

        }

        if (v21) {

            stor_6_20_20 = 1;

            v30 = v31 = _balanceOf[this];

            if (0 - v31) {

                v32 = _SafeMul(20, _swapTokensAtAmount);

                if (v31 > v32) {

                    v30 = v33 = _SafeMul(20, _swapTokensAtAmount);

                }

                v34 = new uint256[](2);

                CALLDATACOPY(v34.data, msg.data.length, 64);

                require(0 < v34.length, Panic(50));

                v35 = v34.data;

                v34[0] = address(this);

                require(1 < v34.length, Panic(50));

                v34[1] = _uSDC;

                0x1061(v30, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v36 = new array[](v34.length);

                v37 = v38 = v36.data;

                v39 = v40 = v34.data;

                v41 = v42 = 0;

                while (v41 < v34.length) {

                    MEM[v37] = address(MEM[v39]);

                    v39 += 32;

                    v37 += 32;

                    v41 += 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v43 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokensSupportingFeeOnTransferTokens(v30, 0, v36, _devWallet, block.timestamp).gas(msg.gas);

                require(v43); // checks call status, propagates error data on error

                goto 0x15ab;

            }

            stor_6_20_20 = 0;

        }

        v44 = address(varg2);

        v45 = v46 = !stor_6_20_20;

        v47 = v48 = 0xff & _isExcludedFromFees[v44];

        if (!v48) {

            v49 = address(varg1);

            v47 = v50 = 0xff & _isExcludedFromFees[v49];

        }

        if (v47) {

            v45 = v51 = 0;

        }

        v52 = v53 = 0;

        if (v45) {

            v54 = v55 = address(varg1) == 0x8ebe45672cb7ab0564ac2606723ff29d815bbdb;

            if (v55) {

                v54 = v56 = _sellTotalFees > 0;

            }

            if (!v54) {

                v57 = v58 = address(varg2) == 0x8ebe45672cb7ab0564ac2606723ff29d815bbdb;

                if (v58) {

                    v57 = v59 = _buyTotalFees > 0;

                }

                if (v57) {

                    v60 = _SafeMul(varg0, _buyTotalFees);

                    v52 = v61 = _SafeDiv(100, v60);

                    v62 = _SafeMul(v61, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18));

                    v52 = v62 / _buyTotalFees;

                    v63 = _SafeMul(v61, _buyDevFee);

                    require(_buyTotalFees, Panic(18));

                }

            } else {

                v64 = _SafeMul(varg0, _sellTotalFees);

                v52 = v65 = _SafeDiv(100, v64);

                v66 = _SafeMul(v65, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18));

                v52 = v67 = v66 / _sellTotalFees;

                v68 = _SafeMul(v65, _sellDevFee);

                require(_sellTotalFees, Panic(18));

            }

            if (v52) {

                0x181a(v52, this, varg2);

            }

            if (v52) {

                0x181a(v52, 0x8ebe45672cb7ab0564ac2606723ff29d815bbdb, this);

            }

            require(varg0 >= v52, Panic(17));

            varg0 = v69 = varg0 - v52;

        }

        0x181a(varg0, varg1, varg2);

        return ;

    } else {

        0x181a(0, varg1, varg2);

        return ;

    }

}
