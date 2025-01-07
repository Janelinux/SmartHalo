function 0x174d(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    if (varg0) {

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

                v1 = v6 = !stor_5_20_20;

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

                if (_transferDelayEnabled) {

                    v12 = _owner == address(varg1);

                    v13 = v14 = _owner != address(varg1);

                    if (_owner != address(varg1)) {

                        v13 = v15 = address(varg1) != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d;

                    }

                    if (v13) {

                        v13 = v16 = address(varg1) != 0x9248b47b0722c131f7f5193fe8db4ad04cd0f50e;

                    }

                    if (v13) {

                        require(block.number > owner_d[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_d[tx.origin] = block.number;

                    }

                }

                v17 = address(varg2);

                v18 = v19 = 0xff & _automatedMarketMakerPairs[v17];

                if (v19) {

                    v20 = address(varg1);

                    v18 = v21 = !(0xff & __isExcludedMaxTransactionAmount[v20]);

                }

                if (!v18) {

                    v22 = address(varg1);

                    v23 = v24 = 0xff & _automatedMarketMakerPairs[v22];

                    if (v24) {

                        v25 = address(varg2);

                        v23 = v26 = !(0xff & __isExcludedMaxTransactionAmount[v25]);

                    }

                    if (!v23) {

                        v27 = address(varg1);

                        if (!(0xff & __isExcludedMaxTransactionAmount[v27])) {

                            v28 = address(varg1);

                            v29 = _SafeAdd(varg0, _balanceOf[v28]);

                            require(v29 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v30 = address(varg1);

                    v31 = _SafeAdd(varg0, _balanceOf[v30]);

                    require(v31 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v32 = v33 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v32 = v34 = _swapEnabled;

        }

        if (v32) {

            v32 = v35 = !stor_5_20_20;

        }

        if (v32) {

            v36 = address(varg2);

            v32 = v37 = !(0xff & _automatedMarketMakerPairs[v36]);

        }

        if (v32) {

            v38 = address(varg2);

            v32 = v39 = !(0xff & _isExcludedFromFees[v38]);

        }

        if (v32) {

            v40 = address(varg1);

            v32 = v41 = !(0xff & _isExcludedFromFees[v40]);

        }

        if (v32) {

            stor_5_20_20 = 1;

            v42 = v43 = _balanceOf[this];

            v44 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v45 = _SafeAdd(v44, _tokensForDev);

            v46 = v47 = !v43;

            if (v43) {

                v46 = !v45;

            }

            if (!v46) {

                v48 = _SafeMul(20, _swapTokensAtAmount);

                if (v43 > v48) {

                    v42 = v49 = _SafeMul(20, _swapTokensAtAmount);

                }

                v50 = _SafeMul(v42, _tokensForLiquidity);

                require(v45, Panic(18));

                require(2, Panic(18));

                v51 = _SafeSub(v42, v50 / v45 >> 1);

                v52 = new uint256[](2);

                CALLDATACOPY(v52.data, msg.data.length, 64);

                require(0 < v52.length, Panic(50));

                v53 = v52.data;

                v52[0] = address(this);

                v54, v55 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v54); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v55 == address(v55));

                require(1 < v52.length, Panic(50));

                v52[1] = address(v55);

                0x1629(v51, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v56 = new array[](v52.length);

                v57 = v58 = v56.data;

                v59 = v60 = v52.data;

                v61 = v62 = 0;

                while (v61 < v52.length) {

                    MEM[v57] = address(MEM[v59]);

                    v59 += 32;

                    v57 += 32;

                    v61 += 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v63 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v51, 0, v56, address(this), block.timestamp).gas(msg.gas);

                require(v63); // checks call status, propagates error data on error

                v64 = _SafeSub(this.balance, this.balance);

                v65 = _SafeMul(v64, _tokensForMarketing);

                v66 = _SafeDiv(v45, v65);

                v67 = _SafeMul(v64, _tokensForDev);

                v68 = _SafeDiv(v45, v67);

                v69 = _SafeSub(v64, v66);

                v70 = _SafeSub(v69, v68);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v71, v72 = _devWallet.call().value(v68).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v73 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v73.data, 0, RETURNDATASIZE());

                }

                v74 = v75 = v50 / v45 >> 1;

                if (v50 / v45 >> 1) {

                    v74 = v70 > 0;

                }

                if (v74) {

                    0x1629(v50 / v45 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v76, v77, v78, v79 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(this, v50 / v45 >> 1, 0, 0, _liqWallet, block.timestamp).value(v70).gas(msg.gas);

                    require(v76); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v51, v70, _tokensForLiquidity);

                }

                v80, v81 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v82 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v82.data, 0, RETURNDATASIZE());

                }

                goto 0x1d38;

            }

            stor_5_20_20 = 0;

        }

        v83 = address(varg2);

        v84 = v85 = !stor_5_20_20;

        v86 = v87 = 0xff & _isExcludedFromFees[v83];

        if (!v87) {

            v88 = address(varg1);

            v86 = v89 = 0xff & _isExcludedFromFees[v88];

        }

        if (v86) {

            v84 = v90 = 0;

        }

        v91 = v92 = 0;

        if (v84) {

            v93 = address(varg1);

            v94 = v95 = 0xff & _automatedMarketMakerPairs[v93];

            if (v95) {

                v94 = v96 = _sellTotalFees > 0;

            }

            if (!v94) {

                v97 = address(varg2);

                v98 = v99 = 0xff & _automatedMarketMakerPairs[v97];

                if (v99) {

                    v98 = v100 = _buyTotalFees > 0;

                }

                if (v98) {

                    v101 = _SafeMul(varg0, _buyTotalFees);

                    v91 = v102 = _SafeDiv(100, v101);

                    v103 = _SafeMul(v102, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18));

                    v104 = _SafeAdd(_tokensForLiquidity, v103 / _buyTotalFees);

                    _tokensForLiquidity = v104;

                    v105 = _SafeMul(v102, _buyDevFee);

                    require(_buyTotalFees, Panic(18));

                    v106 = _SafeAdd(_tokensForDev, v105 / _buyTotalFees);

                    _tokensForDev = v106;

                    v107 = _SafeMul(v102, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18));

                    v108 = _SafeAdd(_tokensForMarketing, v107 / _buyTotalFees);

                    _tokensForMarketing = v108;

                }

            } else {

                v109 = _SafeMul(varg0, _sellTotalFees);

                v91 = v110 = _SafeDiv(100, v109);

                v111 = _SafeMul(v110, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18));

                v112 = _SafeAdd(_tokensForLiquidity, v111 / _sellTotalFees);

                _tokensForLiquidity = v112;

                v113 = _SafeMul(v110, _sellDevFee);

                require(_sellTotalFees, Panic(18));

                v114 = _SafeAdd(_tokensForDev, v113 / _sellTotalFees);

                _tokensForDev = v114;

                v115 = _SafeMul(v110, _sellMarketingFee);

                require(_sellTotalFees, Panic(18));

                v116 = _SafeAdd(_tokensForMarketing, v115 / _sellTotalFees);

                _tokensForMarketing = v116;

            }

            if (v91) {

                0x2042(v91, this, varg2);

            }

            varg0 = v117 = _SafeSub(varg0, v91);

        }

        0x2042(varg0, varg1, varg2);

        return ;

    } else {

        0x2042(0, varg1, varg2);

        return ;

    }

}
