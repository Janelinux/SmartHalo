function 0x1d11(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v0 = v1 = !uint8(owner_14[address(varg1)]);

    if (!bool(uint8(owner_14[address(varg1)]))) {

        v0 = v2 = !uint8(owner_14[address(varg2)]);

    }

    require(v0, Error('You have been blacklisted from transfering tokens'));

    if (0 - varg0) {

        if (_limitsInEffect) {

            v3 = v4 = _owner != address(varg2);

            if (_owner != address(varg2)) {

                v3 = v5 = _owner != address(varg1);

            }

            if (v3) {

                v3 = v6 = bool(address(varg1));

            }

            if (v3) {

                v3 = v7 = 57005 != address(varg1);

            }

            if (v3) {

                v3 = v8 = !stor_5_20_20;

            }

            if (v3) {

                if (!_tradingActive) {

                    v9 = v10 = uint8(_isExcludedFromFees[address(varg2)]);

                    if (!v10) {

                        v9 = v11 = uint8(_isExcludedFromFees[address(varg1)]);

                    }

                    require(v9, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v12 = v13 = _owner != address(varg1);

                    if (_owner != address(varg1)) {

                        v12 = v14 = address(varg1) != address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d);

                    }

                    if (v12) {

                        v12 = v15 = address(varg1) != address(0xdfcfc0c901bf21270148dec3ed894926030ba3d8);

                    }

                    if (v12) {

                        require(block.number > owner_12[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_12[tx.origin] = block.number;

                    }

                }

                v16 = v17 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                if (v17) {

                    v16 = v18 = !uint8(__isExcludedMaxTransactionAmount[address(varg1)]);

                }

                if (!v16) {

                    v19 = v20 = uint8(_automatedMarketMakerPairs[address(varg1)]);

                    if (v20) {

                        v19 = v21 = !uint8(__isExcludedMaxTransactionAmount[address(varg2)]);

                    }

                    if (!v19) {

                        if (!uint8(__isExcludedMaxTransactionAmount[address(varg1)])) {

                            v22 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                            require(v22 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v23 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                    require(v23 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v24 = _SafeAdd(0, stor_23);

        v25 = v26 = block.number <= v24;

        if (!bool(block.number > v24)) {

            v25 = v27 = address(varg1) != address(0xdfcfc0c901bf21270148dec3ed894926030ba3d8);

        }

        if (v25) {

            v25 = v28 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d != address(varg1);

        }

        if (v25) {

            owner_14[address(varg1)] = bytes31(owner_14[address(varg1)]);

        }

        v29 = v30 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v29 = v31 = _swapEnabled;

        }

        if (v29) {

            v29 = v32 = !stor_5_20_20;

        }

        if (v29) {

            v29 = v33 = !uint8(_automatedMarketMakerPairs[address(varg2)]);

        }

        if (v29) {

            v29 = v34 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v29) {

            v29 = v35 = !uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v29) {

            stor_5_20_20 = 1;

            v36 = v37 = _balanceOf[this];

            v38 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v39 = _SafeAdd(v38, _tokensForDev);

            v40 = v41 = !v37;

            if (v37) {

                v40 = !v39;

            }

            if (!v40) {

                v42 = _SafeMul(20, _swapTokensAtAmount);

                if (v37 > v42) {

                    v36 = v43 = _SafeMul(20, _swapTokensAtAmount);

                }

                v44 = _SafeMul(v36, _tokensForLiquidity);

                require(v39, Panic(18)); // division by zero

                require(2, Panic(18)); // division by zero

                v45 = 0x2732('SafeMath: subtraction overflow', v44 / v39 >> 1, v36);

                v46 = new address[](2);

                CALLDATACOPY(v46.data, msg.data.length, 64);

                require(0 < v46.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v47 = v46.data;

                v46[0] = address(this);

                v48, /* address */ v49 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).WETH().gas(msg.gas);

                require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v49 == address(v49));

                require(1 < v46.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v46[1] = address(v49);

                0x1bec(v45, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v50 = new address[](v46.length);

                v51 = v52 = v50.data;

                v53 = v54 = v46.data;

                v55 = v56 = 0;

                while (v55 < v46.length) {

                    MEM[v51] = address(MEM[v53]);

                    v53 += 32;

                    v51 += 32;

                    v55 += 1;

                }

                require(bool((address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)).code.size));

                v57 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).swapExactTokensForETHSupportingFeeOnTransferTokens(v45, 0, v50, address(this), block.timestamp, v58, address(this)).gas(msg.gas);

                require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v59 = 0x2732('SafeMath: subtraction overflow', this.balance, this.balance);

                v60 = 0x27c0(_tokensForMarketing, v59);

                v61 = _SafeDiv(v39, v60);

                v62 = 0x27c0(_tokensForDev, v59);

                v63 = _SafeDiv(v39, v62);

                v64 = _SafeSub(v59, v61);

                v65 = _SafeSub(v64, v63);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v66, /* uint256 */ v67 = _devWallet.call().value(v63).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v68 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v68.data, 0, RETURNDATASIZE());

                }

                v69 = v70 = bool(v44 / v39 >> 1);

                if (v44 / v39 >> 1) {

                    v69 = v65 > 0;

                }

                if (v69) {

                    0x1bec(v44 / v39 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v71, /* uint256 */ v72, /* uint256 */ v73, /* uint256 */ v74 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(this, v44 / v39 >> 1, 0, 0, 57005, block.timestamp).value(v65).gas(msg.gas);

                    require(bool(v71), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v45, v65, _tokensForLiquidity);

                }

                v75, /* uint256 */ v76 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v77 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v77.data, 0, RETURNDATASIZE());

                }

                goto 0x2445;

            }

            stor_5_20_20 = 0;

        }

        v78 = v79 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v78 = v80 = uint8(_automatedMarketMakerPairs[address(varg1)]);

        }

        if (v78) {

            v78 = v81 = _lpBurnEnabled;

        }

        if (v78) {

            v82 = _SafeAdd(_lastLpBurnTime, _lpBurnFrequency);

            v78 = v83 = block.timestamp >= v82;

        }

        if (v78) {

            v78 = v84 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v78) {

            _lastLpBurnTime = block.timestamp;

            v85, /* uint256 */ v86 = this.balanceOf(address(0xdfcfc0c901bf21270148dec3ed894926030ba3d8)).gas(msg.gas);

            require(bool(v85), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v87 = 0x27c0(_percentForLPBurn, v86);

            v88 = _SafeDiv(10000, v87);

            if (v88) {

                0x2884(v88, 57005, 0xdfcfc0c901bf21270148dec3ed894926030ba3d8);

            }

            require(bool((address(0xdfcfc0c901bf21270148dec3ed894926030ba3d8)).code.size));

            v89 = address(0xdfcfc0c901bf21270148dec3ed894926030ba3d8).sync().gas(msg.gas);

            require(bool(v89), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            emit AutoNukeLP();

        }

        v90 = v91 = !stor_5_20_20;

        v92 = v93 = uint8(_isExcludedFromFees[address(varg2)]);

        if (!v93) {

            v92 = v94 = uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v92) {

            v90 = v95 = 0;

        }

        v96 = v97 = 0;

        if (v90) {

            v98 = v99 = uint8(_automatedMarketMakerPairs[address(varg1)]);

            if (v99) {

                v98 = v100 = _sellTotalFees > 0;

            }

            if (!v98) {

                v101 = v102 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                if (v102) {

                    v101 = v103 = _buyTotalFees > 0;

                }

                if (v101) {

                    v104 = 0x27c0(_buyTotalFees, varg0);

                    v96 = v105 = _SafeDiv(100, v104);

                    v106 = _SafeMul(v105, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v107 = _SafeAdd(_tokensForLiquidity, v106 / _buyTotalFees);

                    _tokensForLiquidity = v107;

                    v108 = _SafeMul(v105, _buyDevFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v109 = _SafeAdd(_tokensForDev, v108 / _buyTotalFees);

                    _tokensForDev = v109;

                    v110 = _SafeMul(v105, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v111 = _SafeAdd(_tokensForMarketing, v110 / _buyTotalFees);

                    _tokensForMarketing = v111;

                }

            } else {

                v112 = 0x27c0(_sellTotalFees, varg0);

                v96 = v113 = _SafeDiv(100, v112);

                v114 = _SafeMul(v113, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18)); // division by zero

                v115 = _SafeAdd(_tokensForLiquidity, v114 / _sellTotalFees);

                _tokensForLiquidity = v115;

                v116 = _SafeMul(v113, _sellDevFee);

                require(_sellTotalFees, Panic(18)); // division by zero

                v117 = _SafeAdd(_tokensForDev, v116 / _sellTotalFees);

                _tokensForDev = v117;

                v118 = _SafeMul(v113, _sellMarketingFee);

                require(_sellTotalFees, Panic(18)); // division by zero

                v119 = _SafeAdd(_tokensForMarketing, v118 / _sellTotalFees);

                _tokensForMarketing = v119;

            }

            if (v96) {

                0x2884(v96, this, varg2);

            }

            varg0 = v120 = _SafeSub(varg0, v96);

        }

        0x2884(varg0, varg1, varg2);

        return ;

    } else {

        0x2884(0, varg1, varg2);

        return ;

    }

}
