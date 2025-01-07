function 0x2ab7(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) != address(0x0), Error('ERC20: transfer to the zero address'));

    if (varg0 != 0) {

        if (_limitsInEffect) {

            v0 = v1 = address(varg2) != _owner;

            if (!bool(address(varg2) == _owner)) {

                v0 = v2 = address(varg1) != _owner;

            }

            if (v0) {

                v0 = v3 = address(varg1) != address(0x0);

            }

            if (v0) {

                v0 = v4 = address(varg1) != address(0xdead);

            }

            if (v0) {

                v0 = v5 = !stor_5_20_20;

            }

            if (v0) {

                if (!_tradingActive) {

                    v6 = v7 = uint8(_isExcludedFromFees[address(address(varg2))]);

                    if (!v7) {

                        v6 = v8 = uint8(_isExcludedFromFees[address(address(varg1))]);

                    }

                    require(v6, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v9 = v10 = address(varg1) != _owner;

                    if (!bool(address(varg1) == _owner)) {

                        v9 = v11 = address(varg1) != address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d);

                    }

                    if (v9) {

                        v9 = v12 = address(varg1) != address(0x3690ed908116c69ea9d5b00ba53afdd58e82e56);

                    }

                    if (v9) {

                        require(owner_12[address(tx.origin)] < block.number, Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_12[address(tx.origin)] = block.number;

                    }

                }

                v13 = v14 = uint8(_automatedMarketMakerPairs[address(address(varg2))]);

                if (v14) {

                    v13 = v15 = !uint8(__isExcludedMaxTransactionAmount[address(address(varg1))]);

                }

                if (!v13) {

                    v16 = v17 = uint8(_automatedMarketMakerPairs[address(address(varg1))]);

                    if (v17) {

                        v16 = v18 = !uint8(__isExcludedMaxTransactionAmount[address(address(varg2))]);

                    }

                    if (!v16) {

                        if (!uint8(__isExcludedMaxTransactionAmount[address(address(varg1))])) {

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

        v21 = v22 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        if (!bool(_balanceOf[address(this)] < _swapTokensAtAmount)) {

            v21 = v23 = _swapEnabled;

        }

        if (v21) {

            v21 = v24 = !stor_5_20_20;

        }

        if (v21) {

            v21 = v25 = !uint8(_automatedMarketMakerPairs[address(address(varg2))]);

        }

        if (v21) {

            v21 = v26 = !uint8(_isExcludedFromFees[address(address(varg2))]);

        }

        if (v21) {

            v21 = v27 = !uint8(_isExcludedFromFees[address(address(varg1))]);

        }

        if (v21) {

            stor_5_20_20 = 1;

            v28 = _balanceOf[address(this)];

            v29 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v30 = _SafeAdd(v29, _tokensForDev);

            v31 = v32 = v28 == 0;

            if (v28 != 0) {

                v31 = v30 == 0;

            }

            if (!v31) {

                v33 = _SafeMul(_swapTokensAtAmount, 20);

                if (v28 > v33) {

                    v28 = v34 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v35 = _SafeMul(v28, _tokensForLiquidity);

                v36 = _SafeDiv(v35, v30);

                v37 = _SafeDiv(v36, 2);

                v38 = _SafeSub(v28, v37);

                v39 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v39.data, msg.data.length, 64);

                }

                require(0 < v39.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v40 = v39.data;

                v39[0] = address(this);

                v41, /* address */ v42 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).WETH().gas(msg.gas);

                require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                0x453b(v42);

                require(1 < v39.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v39[1] = address(v42);

                0x28ec(v38, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v43 = new array[](v39.length);

                v44 = v45 = v43.data;

                v46 = v47 = v39.data;

                v48 = v49 = 0;

                while (v48 < v39.length) {

                    MEM[v44] = address(MEM[v46]);

                    v44 = v44 + 32;

                    v46 = v46 + 32;

                    v48 = v48 + 1;

                }

                require(bool((address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)).code.size));

                v50 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).swapExactTokensForETHSupportingFeeOnTransferTokens(v38, 0, v43, address(this), block.timestamp, v51, address(this)).gas(msg.gas);

                require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v52 = _SafeSub(this.balance, this.balance);

                v53 = _SafeMul(v52, _tokensForMarketing);

                v54 = _SafeDiv(v53, v30);

                v55 = _SafeMul(v52, _tokensForDev);

                v56 = _SafeDiv(v55, v30);

                v57 = _SafeSub(v52, v54);

                v58 = _SafeSub(v57, v56);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v59 = 0x58a3(MEM[64]);

                v60, v61 = _devWallet.call(MEM[(MEM[64]) len (v59 - MEM[64])], MEM[(MEM[64]) len 0]).value(v56).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v62 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v62.data, 0, RETURNDATASIZE());

                }

                v63 = v64 = v37 > 0;

                if (v64) {

                    v63 = v58 > 0;

                }

                if (v63) {

                    0x28ec(v37, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v65, v66, v67, v68 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(address(this), v37, 0, 0, address(0xdead), block.timestamp).value(v58).gas(msg.gas);

                    require(bool(v65), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    0x4571(v66);

                    0x4571(v67);

                    0x4571(v68);

                    emit SwapAndLiquify(v38, v58, _tokensForLiquidity);

                }

                v69 = 0x58a3(MEM[64]);

                v70, v71 = _marketingWallet.call(MEM[(MEM[64]) len (v69 - MEM[64])], MEM[(MEM[64]) len 0]).value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v72 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v72.data, 0, RETURNDATASIZE());

                }

            }

            stor_5_20_20 = 0;

        }

        v73 = v74 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v73 = v75 = uint8(_automatedMarketMakerPairs[address(address(varg1))]);

        }

        if (v73) {

            v73 = v76 = _lpBurnEnabled;

        }

        if (v73) {

            v77 = _SafeAdd(_lastLpBurnTime, _lpBurnFrequency);

            v73 = v78 = block.timestamp >= v77;

        }

        if (v73) {

            v73 = v79 = !uint8(_isExcludedFromFees[address(address(varg2))]);

        }

        if (v73) {

            _lastLpBurnTime = block.timestamp;

            v80, v81 = address(this).balanceOf(address(0x3690ed908116c69ea9d5b00ba53afdd58e82e56)).gas(msg.gas);

            require(bool(v80), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            0x4571(v81);

            v82 = _SafeMul(v81, _percentForLPBurn);

            v83 = _SafeDiv(v82, 10000);

            if (v83 > 0) {

                0x39e2(v83, 57005, 0x3690ed908116c69ea9d5b00ba53afdd58e82e56);

            }

            require(bool((address(0x3690ed908116c69ea9d5b00ba53afdd58e82e56)).code.size));

            v84 = address(0x3690ed908116c69ea9d5b00ba53afdd58e82e56).sync().gas(msg.gas);

            require(bool(v84), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            emit AutoNukeLP();

        }

        v85 = v86 = !stor_5_20_20;

        v87 = v88 = uint8(_isExcludedFromFees[address(address(varg2))]);

        if (!v88) {

            v87 = v89 = uint8(_isExcludedFromFees[address(address(varg1))]);

        }

        if (v87) {

            v85 = v90 = 0;

        }

        v91 = v92 = 0;

        if (v85) {

            v93 = v94 = uint8(_automatedMarketMakerPairs[address(address(varg1))]);

            if (v94) {

                v93 = v95 = _sellTotalFees > 0;

            }

            if (!v93) {

                v96 = v97 = uint8(_automatedMarketMakerPairs[address(address(varg2))]);

                if (v97) {

                    v96 = v98 = _buyTotalFees > 0;

                }

                if (v96) {

                    v99 = _SafeMul(varg0, _buyTotalFees);

                    v91 = _SafeDiv(v99, 100);

                    v100 = _SafeMul(v91, _buyLiquidityFee);

                    v101 = _SafeDiv(v100, _buyTotalFees);

                    v102 = _SafeAdd(_tokensForLiquidity, v101);

                    _tokensForLiquidity = v102;

                    v103 = _SafeMul(v91, _buyheistvault);

                    v104 = _SafeDiv(v103, _buyTotalFees);

                    v105 = _SafeAdd(_tokensForDev, v104);

                    _tokensForDev = v105;

                    v106 = _SafeMul(v91, _buyMarketingFee);

                    v107 = _SafeDiv(v106, _buyTotalFees);

                    v108 = _SafeAdd(_tokensForMarketing, v107);

                    _tokensForMarketing = v108;

                }

            } else {

                v109 = _SafeMul(varg0, _sellTotalFees);

                v91 = v110 = _SafeDiv(v109, 100);

                v111 = _SafeMul(v110, _sellLiquidityFee);

                v112 = _SafeDiv(v111, _sellTotalFees);

                v113 = _SafeAdd(_tokensForLiquidity, v112);

                _tokensForLiquidity = v113;

                v114 = _SafeMul(v110, _sellheistvault);

                v115 = _SafeDiv(v114, _sellTotalFees);

                v116 = _SafeAdd(_tokensForDev, v115);

                _tokensForDev = v116;

                v117 = _SafeMul(v110, _sellMarketingFee);

                v118 = _SafeDiv(v117, _sellTotalFees);

                v119 = _SafeAdd(_tokensForMarketing, v118);

                _tokensForMarketing = v119;

                goto 0x3816;

            }

            if (v91 > 0) {

                0x39e2(v91, this, varg2);

            }

            varg0 = v120 = _SafeSub(varg0, v91);

        }

        0x39e2(varg0, varg1, varg2);

    } else {

        0x39e2(0, varg1, varg2);

    }

    return ;

}
