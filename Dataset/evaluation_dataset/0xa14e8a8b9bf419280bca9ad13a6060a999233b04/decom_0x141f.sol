function 0x141f(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    if (0 - varg0) {

        if (_limitsInEffect) {

            v0 = v1 = _owner != address(varg2);

            if (_owner != address(varg2)) {

                v0 = v2 = _owner != address(varg1);

            }

            if (v0) {

                v0 = v3 = bool(address(varg1));

            }

            if (v0) {

                v0 = v4 = 57005 != address(varg1);

            }

            if (v0) {

                v0 = v5 = !stor_5_20_20;

            }

            if (v0) {

                if (!_tradingActive) {

                    v6 = v7 = uint8(_isExcludedFromFees[address(varg2)]);

                    if (!v7) {

                        v6 = v8 = uint8(_isExcludedFromFees[address(varg1)]);

                    }

                    require(v6, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v9 = v10 = _owner != address(varg1);

                    if (_owner != address(varg1)) {

                        v9 = v11 = address(varg1) != address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d);

                    }

                    if (v9) {

                        v9 = v12 = address(varg1) != address(0x5f34cdf1e5b05dac438f409067436c6ca74902c8);

                    }

                    if (v9) {

                        require(block.number > owner_c[tx.origin], Error('_transfer:: Transfer Delay enabled. Only one purchase per block allowed.'));

                        owner_c[tx.origin] = block.number;

                    }

                }

                v13 = v14 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                if (v14) {

                    v13 = v15 = !uint8(__isExcludedMaxTransactionAmount[address(varg1)]);

                }

                if (!v13) {

                    v16 = v17 = uint8(_automatedMarketMakerPairs[address(varg1)]);

                    if (v17) {

                        v16 = v18 = !uint8(__isExcludedMaxTransactionAmount[address(varg2)]);

                    }

                    if (!v16) {

                        if (!uint8(__isExcludedMaxTransactionAmount[address(varg1)])) {

                            v19 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                            require(v19 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v20 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                    require(v20 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v21 = v22 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v21 = v23 = _swapEnabled;

        }

        if (v21) {

            v21 = v24 = !stor_5_20_20;

        }

        if (v21) {

            v21 = v25 = !uint8(_automatedMarketMakerPairs[address(varg2)]);

        }

        if (v21) {

            v21 = v26 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v21) {

            v21 = v27 = !uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v21) {

            stor_5_20_20 = 1;

            v28 = v29 = _balanceOf[this];

            v30 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v31 = _SafeAdd(v30, _tokensForDev);

            v32 = v33 = !v29;

            if (v29) {

                v32 = !v31;

            }

            if (!v32) {

                v34 = _SafeMul(20, _swapTokensAtAmount);

                if (v29 > v34) {

                    v28 = v35 = _SafeMul(20, _swapTokensAtAmount);

                }

                v36 = _SafeMul(v28, _tokensForLiquidity);

                require(v31, Panic(18)); // division by zero

                require(2, Panic(18)); // division by zero

                v37 = 0x1c71('SafeMath: subtraction overflow', v36 / v31 >> 1, v28);

                v38 = new uint256[](2);

                CALLDATACOPY(v38.data, msg.data.length, 64);

                require(0 < v38.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v39 = v38.data;

                v38[0] = address(this);

                v40, /* address */ v41 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).WETH().gas(msg.gas);

                require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v41 == address(v41));

                require(1 < v38.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v38[1] = address(v41);

                0x12fa(v37, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v42 = new array[](v38.length);

                v43 = v44 = v42.data;

                v45 = v46 = v38.data;

                v47 = v48 = 0;

                while (v47 < v38.length) {

                    MEM[v43] = address(MEM[v45]);

                    v45 += 32;

                    v43 += 32;

                    v47 += 1;

                }

                require(bool((address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)).code.size));

                v49 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).swapExactTokensForETHSupportingFeeOnTransferTokens(v37, 0, v42, address(this), block.timestamp, v50, address(this)).gas(msg.gas);

                require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v51 = 0x1c71('SafeMath: subtraction overflow', this.balance, this.balance);

                v52 = 0x2042(_tokensForMarketing, v51);

                v53 = _SafeDiv(v31, v52);

                v54 = 0x2042(_tokensForDev, v51);

                v55 = _SafeDiv(v31, v54);

                v56 = _SafeSub(v51, v53);

                v57 = _SafeSub(v56, v55);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v58, v59 = _devWallet.call().value(v55).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v60 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v60.data, 0, RETURNDATASIZE());

                }

                v61 = v62 = bool(v36 / v31 >> 1);

                if (v36 / v31 >> 1) {

                    v61 = v57 > 0;

                }

                if (v61) {

                    0x12fa(v36 / v31 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v63, v64, v65, v66 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(this, v36 / v31 >> 1, 0, 0, 57005, block.timestamp).value(v57).gas(msg.gas);

                    require(bool(v63), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v37, v57, _tokensForLiquidity);

                }

                v67, v68 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v69 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v69.data, 0, RETURNDATASIZE());

                }

                goto 0x1a0d;

            }

            stor_5_20_20 = 0;

        }

        v70 = v71 = !stor_5_20_20;

        v72 = v73 = uint8(_isExcludedFromFees[address(varg2)]);

        if (!v73) {

            v72 = v74 = uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v72) {

            v70 = v75 = 0;

        }

        v76 = v77 = 0;

        if (v70) {

            v78 = v79 = uint8(_automatedMarketMakerPairs[address(varg1)]);

            if (v79) {

                v78 = v80 = _timestampOne > 0;

            }

            if (!v78) {

                v81 = v82 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                if (v82) {

                    v81 = v83 = _buyTotalFees > 0;

                }

                if (v81) {

                    v84 = 0x2042(_buyTotalFees, varg0);

                    v76 = v85 = _SafeDiv(_feeDenominator, v84);

                    v86 = _SafeMul(v85, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v87 = _SafeAdd(_tokensForLiquidity, v86 / _buyTotalFees);

                    _tokensForLiquidity = v87;

                    v88 = _SafeMul(v85, _buyDevFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v89 = _SafeAdd(_tokensForDev, v88 / _buyTotalFees);

                    _tokensForDev = v89;

                    v90 = _SafeMul(v85, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v91 = _SafeAdd(_tokensForMarketing, v90 / _buyTotalFees);

                    _tokensForMarketing = v91;

                }

            } else {

                v92 = 0x2042(_timestampOne, varg0);

                v76 = v93 = _SafeDiv(_feeDenominator, v92);

                v94 = _SafeMul(v93, _sellLiquidityFee);

                require(_timestampOne, Panic(18)); // division by zero

                v95 = _SafeAdd(_tokensForLiquidity, v94 / _timestampOne);

                _tokensForLiquidity = v95;

                v96 = _SafeMul(v93, _sellDevFee);

                require(_timestampOne, Panic(18)); // division by zero

                v97 = _SafeAdd(_tokensForDev, v96 / _timestampOne);

                _tokensForDev = v97;

                v98 = _SafeMul(v93, _timeStampInitial);

                require(_timestampOne, Panic(18)); // division by zero

                v99 = _SafeAdd(_tokensForMarketing, v98 / _timestampOne);

                _tokensForMarketing = v99;

            }

            if (v76) {

                0x1cff(v76, this, varg2);

            }

            varg0 = v100 = _SafeSub(varg0, v76);

        }

        0x1cff(varg0, varg1, varg2);

        return ;

    } else {

        0x1cff(0, varg1, varg2);

        return ;

    }

}
