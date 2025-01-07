function 0x1b35(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    if (varg0) {

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

                        v9 = v12 = address(varg1) != address(0x4777ce0aa9e333c059923051f705e79dce7880fb);

                    }

                    if (v9) {

                        require(block.number > owner_12[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_12[tx.origin] = block.number;

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

                v37 = _SafeSub(v28, v36 / v31 >> 1);

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

                0x1a11(v37, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

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

                v51 = _SafeSub(this.balance, this.balance);

                v52 = _SafeMul(v51, _tokensForMarketing);

                v53 = _SafeDiv(v31, v52);

                v54 = _SafeMul(v51, _tokensForDev);

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

                    0x1a11(v36 / v31 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

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

                goto 0x211d;

            }

            stor_5_20_20 = 0;

        }

        v70 = v71 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v70 = v72 = uint8(_automatedMarketMakerPairs[address(varg1)]);

        }

        if (v70) {

            v70 = v73 = _lpBurnEnabled;

        }

        if (v70) {

            v74 = _SafeAdd(_lastLpBurnTime, _lpBurnFrequency);

            v70 = v75 = block.timestamp >= v74;

        }

        if (v70) {

            v70 = v76 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v70) {

            _lastLpBurnTime = block.timestamp;

            v77, v78 = this.balanceOf(address(0x4777ce0aa9e333c059923051f705e79dce7880fb)).gas(msg.gas);

            require(bool(v77), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v79 = _SafeMul(v78, _percentForLPBurn);

            v80 = _SafeDiv(10000, v79);

            if (v80) {

                0x24cf(v80, 57005, 0x4777ce0aa9e333c059923051f705e79dce7880fb);

            }

            require(bool((address(0x4777ce0aa9e333c059923051f705e79dce7880fb)).code.size));

            v81 = address(0x4777ce0aa9e333c059923051f705e79dce7880fb).sync().gas(msg.gas);

            require(bool(v81), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            emit AutoNukeLP();

        }

        v82 = v83 = !stor_5_20_20;

        v84 = v85 = uint8(_isExcludedFromFees[address(varg2)]);

        if (!v85) {

            v84 = v86 = uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v84) {

            v82 = v87 = 0;

        }

        v88 = v89 = 0;

        if (v82) {

            v90 = v91 = uint8(_automatedMarketMakerPairs[address(varg1)]);

            if (v91) {

                v90 = v92 = _sellTotalFees > 0;

            }

            if (!v90) {

                v93 = v94 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                if (v94) {

                    v93 = v95 = _buyTotalFees > 0;

                }

                if (v93) {

                    v96 = _SafeMul(varg0, _buyTotalFees);

                    v88 = v97 = _SafeDiv(100, v96);

                    v98 = _SafeMul(v97, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v99 = _SafeAdd(_tokensForLiquidity, v98 / _buyTotalFees);

                    _tokensForLiquidity = v99;

                    v100 = _SafeMul(v97, _buyDevFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v101 = _SafeAdd(_tokensForDev, v100 / _buyTotalFees);

                    _tokensForDev = v101;

                    v102 = _SafeMul(v97, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18)); // division by zero

                    v103 = _SafeAdd(_tokensForMarketing, v102 / _buyTotalFees);

                    _tokensForMarketing = v103;

                }

            } else {

                v104 = _SafeMul(varg0, _sellTotalFees);

                v88 = v105 = _SafeDiv(100, v104);

                v106 = _SafeMul(v105, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18)); // division by zero

                v107 = _SafeAdd(_tokensForLiquidity, v106 / _sellTotalFees);

                _tokensForLiquidity = v107;

                v108 = _SafeMul(v105, _sellDevFee);

                require(_sellTotalFees, Panic(18)); // division by zero

                v109 = _SafeAdd(_tokensForDev, v108 / _sellTotalFees);

                _tokensForDev = v109;

                v110 = _SafeMul(v105, _sellMarketingFee);

                require(_sellTotalFees, Panic(18)); // division by zero

                v111 = _SafeAdd(_tokensForMarketing, v110 / _sellTotalFees);

                _tokensForMarketing = v111;

            }

            if (v88) {

                0x24cf(v88, this, varg2);

            }

            varg0 = v112 = _SafeSub(varg0, v88);

        }

        0x24cf(varg0, varg1, varg2);

        return ;

    } else {

        0x24cf(0, varg1, varg2);

        return ;

    }

}
