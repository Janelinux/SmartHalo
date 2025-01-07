function 0x26ad(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    if (0 - varg0) {

        if (!_tradingActive) {

            v0 = v1 = uint8(_isExcludedFromFees[address(varg2)]);

            if (!v1) {

                v0 = v2 = uint8(_isExcludedFromFees[address(varg1)]);

            }

            require(v0, Error('Trading is not active yet.'));

        }

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

                if (_transferDelayEnabled) {

                    v9 = v10 = address(varg1) != address(0x3f7724180aa6b939894b5ca4314783b0b36b329);

                    if (!bool(address(varg1) == address(0x3f7724180aa6b939894b5ca4314783b0b36b329))) {

                        v9 = v11 = address(varg1) != address(0x82d5ab594c2e0f69f65d6cbcf083d784970806f0);

                    }

                    if (v9) {

                        require(block.number > owner_f[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_f[tx.origin] = block.number;

                    }

                }

                v12 = v13 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                if (v13) {

                    v12 = v14 = !uint8(__isExcludedMaxTransactionAmount[address(varg1)]);

                }

                if (!v12) {

                    v15 = v16 = uint8(_automatedMarketMakerPairs[address(varg1)]);

                    if (v16) {

                        v15 = v17 = !uint8(__isExcludedMaxTransactionAmount[address(varg2)]);

                    }

                    if (!v15) {

                        if (!uint8(__isExcludedMaxTransactionAmount[address(varg1)])) {

                            v18 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                            require(v18 <= _maxWallet, Error('Unable to exceed Max Wallet'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v19 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                    require(v19 <= _maxWallet, Error('Unable to exceed Max Wallet'));

                }

            }

        }

        v20 = v21 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        if (_balanceOf[address(this)] >= _swapTokensAtAmount) {

            v20 = v22 = _swapEnabled;

        }

        if (v20) {

            v20 = v23 = !stor_5_20_20;

        }

        if (v20) {

            v20 = v24 = !uint8(_automatedMarketMakerPairs[address(varg2)]);

        }

        if (v20) {

            v20 = v25 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v20) {

            v20 = v26 = !uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v20) {

            stor_5_20_20 = 1;

            v27 = _SafeAdd(_tokensForLiquidity, _tokensForOperations);

            v28 = _SafeAdd(v27, _tokensForRewards);

            v29 = v30 = !_balanceOf[address(this)];

            if (_balanceOf[address(this)]) {

                v29 = !v28;

            }

            if (!v29) {

                v31 = _SafeMul(_balanceOf[address(this)], _tokensForLiquidity);

                require(v28, Panic(18)); // division by zero

                require(2, Panic(18)); // division by zero

                v32 = 0x369b(v31 / v28 >> 1, _balanceOf[address(this)]);

                v33 = new uint256[](2);

                CALLDATACOPY(v33.data, msg.data.length, 64);

                require(0 < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v34 = v33.data;

                v33[0] = address(this);

                v35, /* address */ v36 = address(0x3f7724180aa6b939894b5ca4314783b0b36b329).WETH().gas(msg.gas);

                require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v36 == address(v36));

                require(1 < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v33[1] = address(v36);

                0x2589(v32, 0x3f7724180aa6b939894b5ca4314783b0b36b329, this);

                v37 = new array[](v33.length);

                v38 = v39 = v37.data;

                v40 = v41 = v33.data;

                v42 = v43 = 0;

                while (v42 < v33.length) {

                    MEM[v38] = address(MEM[v40]);

                    v40 += 32;

                    v38 += 32;

                    v42 += 1;

                }

                require(bool((address(0x3f7724180aa6b939894b5ca4314783b0b36b329)).code.size));

                v44 = address(0x3f7724180aa6b939894b5ca4314783b0b36b329).swapExactTokensForETHSupportingFeeOnTransferTokens(v32, 0, v37, address(this), block.timestamp, v45, address(this)).gas(msg.gas);

                require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v46 = 0x369b(this.balance, this.balance);

                require(2, Panic(18)); // division by zero

                v47 = _SafeSub(v28, _tokensForLiquidity >> 1);

                v48 = 0x35d7(_tokensForOperations, v46);

                v49 = _SafeDiv(v47, v48);

                require(2, Panic(18)); // division by zero

                v50 = _SafeSub(v28, _tokensForLiquidity >> 1);

                v51 = 0x35d7(_tokensForRewards, v46);

                v52 = _SafeDiv(v50, v51);

                v53 = _SafeSub(v46, v49);

                v54 = _SafeSub(v53, v52);

                _tokensForLiquidity = 0;

                _tokensForOperations = 0;

                _tokensForRewards = 0;

                v55 = v56 = bool(v31 / v28 >> 1);

                if (v31 / v28 >> 1) {

                    v55 = v54 > 0;

                }

                if (v55) {

                    0x2589(v31 / v28 >> 1, 0x3f7724180aa6b939894b5ca4314783b0b36b329, this);

                    v57, v58, v59, v60 = address(0x3f7724180aa6b939894b5ca4314783b0b36b329).addLiquidityETH(this, v31 / v28 >> 1, 0, 0, 57005, block.timestamp).value(v54).gas(msg.gas);

                    require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v32, v54, _tokensForLiquidity);

                }

                v61, v62 = _dividendTracker.call().value(v52).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v63 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v63.data, 0, RETURNDATASIZE());

                }

                v64, v65 = _operationsWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v66 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v66.data, 0, RETURNDATASIZE());

                }

                goto 0x2c7a;

            }

            stor_5_20_20 = 0;

        }

        v67 = v68 = !stor_5_20_20;

        v69 = v70 = uint8(_isExcludedFromFees[address(varg2)]);

        if (!v70) {

            v69 = v71 = uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v69) {

            v67 = v72 = 0;

        }

        v73 = v74 = 0;

        if (v67) {

            v75 = _SafeAdd(1, _tradingActiveBlock);

            v76 = v77 = v75 >= block.number;

            if (!bool(v75 < block.number)) {

                v76 = v78 = uint8(_automatedMarketMakerPairs[address(varg1)]);

                if (!v78) {

                    v76 = v79 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                }

            }

            if (!v76) {

                v80 = v81 = uint8(_automatedMarketMakerPairs[address(varg1)]);

                if (v81) {

                    v80 = v82 = _totalSellFees > 0;

                }

                if (!v80) {

                    v83 = v84 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                    if (v84) {

                        v83 = v85 = _totalBuyFees > 0;

                    }

                    if (v83) {

                        v86 = 0x35d7(_totalBuyFees, varg0);

                        v73 = v87 = _SafeDiv(1000, v86);

                        v88 = _SafeMul(v87, _rewardsBuyFee);

                        require(_totalBuyFees, Panic(18)); // division by zero

                        v89 = _SafeAdd(_tokensForRewards, v88 / _totalBuyFees);

                        _tokensForRewards = v89;

                        v90 = _SafeMul(v87, _liquidityBuyFee);

                        require(_totalBuyFees, Panic(18)); // division by zero

                        v91 = _SafeAdd(_tokensForLiquidity, v90 / _totalBuyFees);

                        _tokensForLiquidity = v91;

                        v92 = _SafeMul(v87, _operationsBuyFee);

                        require(_totalBuyFees, Panic(18)); // division by zero

                        v93 = _SafeAdd(_tokensForOperations, v92 / _totalBuyFees);

                        _tokensForOperations = v93;

                    }

                } else {

                    v94 = 0x35d7(_totalSellFees, varg0);

                    v73 = v95 = _SafeDiv(1000, v94);

                    v96 = _SafeMul(v95, _rewardsSellFee);

                    require(_totalSellFees, Panic(18)); // division by zero

                    v97 = _SafeAdd(_tokensForRewards, v96 / _totalSellFees);

                    _tokensForRewards = v97;

                    v98 = _SafeMul(v95, _liquiditySellFee);

                    require(_totalSellFees, Panic(18)); // division by zero

                    v99 = _SafeAdd(_tokensForLiquidity, v98 / _totalSellFees);

                    _tokensForLiquidity = v99;

                    v100 = _SafeMul(v95, _operationsSellFee);

                    require(_totalSellFees, Panic(18)); // division by zero

                    v101 = v100 / _totalSellFees;

                    goto 0x2dcf;

                }

            } else {

                v102 = 0x35d7(99, varg0);

                v73 = v103 = _SafeDiv(100, v102);

                v104 = _SafeMul(33, v103);

                require(99, Panic(18)); // division by zero

                v105 = _SafeAdd(_tokensForLiquidity, v104 / 99);

                _tokensForLiquidity = v105;

                v106 = _SafeMul(33, v103);

                require(99, Panic(18)); // division by zero

                v107 = _SafeAdd(_tokensForRewards, v106 / 99);

                _tokensForRewards = v107;

                v108 = _SafeMul(33, v103);

                require(99, Panic(18)); // division by zero

                v101 = v109 = v108 / 99;

            }

            v110 = _SafeAdd(_tokensForOperations, v101);

            _tokensForOperations = v110;

            goto 0x2f86;

            if (v73) {

                0x3263(v73, this, varg2);

            }

            v111 = v112 = _SafeSub(varg0, v73);

        }

        0x3263(v111, varg1, varg2);

        require(bool(_dividendTracker.code.size));

        v113 = _dividendTracker.setBalance(address(varg2), _balanceOf[address(varg2)]).gas(msg.gas);

        require(bool(v113), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(bool(_dividendTracker.code.size));

        v114 = _dividendTracker.setBalance(address(varg1), _balanceOf[address(varg1)]).gas(msg.gas);

        require(bool(v114), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v115 = v116 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v115 = v117 = _gasForProcessing > 0;

        }

        if (v115) {

            v20 = v118 = _gasForProcessing;

            v119 = v120, v67, v73, v20 = _dividendTracker.process(v118).gas(msg.gas);

            if (v120) {

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                v119 = v121 = 1;

            }

            if (v119) {

                emit ProcessedDividendTracker(1, tx.origin, v67, v73, v20, v20);

            }

        }

        return ;

    } else {

        0x3263(0, varg1, varg2);

        return ;

    }

}
