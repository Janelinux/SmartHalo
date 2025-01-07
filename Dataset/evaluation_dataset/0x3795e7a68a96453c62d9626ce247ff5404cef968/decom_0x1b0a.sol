function 0x1b0a(uint256 varg0, uint256 varg1, uint256 varg2) private { 

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

                        v13 = v16 = address(varg1) != 0xcc3b0012018dced007b3a7b4b368533df9b1875d;

                    }

                    if (v13) {

                        require(block.number > owner_12[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_12[tx.origin] = block.number;

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

                v51 = new struct(2);

                v51.word0 = 30;

                v52 = v51.data;

                v51.word1 = 'SafeMath: subtraction overflow';

                v53 = 0x23e4(v51, v50 / v45 >> 1, v42);

                v54 = new uint256[](2);

                CALLDATACOPY(v54.data, msg.data.length, 64);

                require(0 < v54.length, Panic(50));

                v55 = v54.data;

                v54[0] = address(this);

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v56, v57 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v56); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v57 == address(v57));

                require(1 < v54.length, Panic(50));

                v54[1] = address(v57);

                0x19e5(v53, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v58 = new array[](v54.length);

                v59 = v60 = v58.data;

                v61 = v62 = v54.data;

                v63 = v64 = 0;

                while (v63 < v54.length) {

                    MEM[v59] = address(MEM[v61]);

                    v61 += 32;

                    v59 += 32;

                    v63 += 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v65 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v53, 0, v58, address(this), block.timestamp).gas(msg.gas);

                require(v65); // checks call status, propagates error data on error

                v66 = new struct(2);

                v66.word0 = 30;

                v67 = v66.data;

                v66.word1 = 'SafeMath: subtraction overflow';

                v68 = 0x23e4(v66, this.balance, this.balance);

                v69 = 0x2472(_tokensForMarketing, v68);

                v70 = _SafeDiv(v45, v69);

                v71 = 0x2472(_tokensForDev, v68);

                v72 = _SafeDiv(v45, v71);

                v73 = _SafeSub(v68, v70);

                v74 = _SafeSub(v73, v72);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v75, v76 = _devWallet.call().value(v72).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v77 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v77.data, 0, RETURNDATASIZE());

                }

                v78 = v79 = v50 / v45 >> 1;

                if (v50 / v45 >> 1) {

                    v78 = v74 > 0;

                }

                if (v78) {

                    0x19e5(v50 / v45 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                    v80, v81, v82, v83 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(this, v50 / v45 >> 1, 0, 0, 57005, block.timestamp).value(v74).gas(msg.gas);

                    require(v80); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v53, v74, _tokensForLiquidity);

                }

                v84, v85 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v86 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v86.data, 0, RETURNDATASIZE());

                }

                goto 0x20f7;

            }

            stor_5_20_20 = 0;

        }

        v87 = v88 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v89 = address(varg1);

            v87 = v90 = 0xff & _automatedMarketMakerPairs[v89];

        }

        if (v87) {

            v87 = v91 = _lpBurnEnabled;

        }

        if (v87) {

            v92 = _SafeAdd(_lastLpBurnTime, _lpBurnFrequency);

            v87 = v93 = block.timestamp >= v92;

        }

        if (v87) {

            v94 = address(varg2);

            v87 = v95 = !(0xff & _isExcludedFromFees[v94]);

        }

        if (v87) {

            _lastLpBurnTime = block.timestamp;

            require(this.code.size);

            v96, v97 = this.balanceOf(0xcc3b0012018dced007b3a7b4b368533df9b1875d).gas(msg.gas);

            require(v96); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v98 = 0x2472(_percentForLPBurn, v97);

            v99 = _SafeDiv(10000, v98);

            if (v99) {

                0x2533(v99, 57005, 0xcc3b0012018dced007b3a7b4b368533df9b1875d);

            }

            require(0xcc3b0012018dced007b3a7b4b368533df9b1875d.code.size);

            v100 = 0xcc3b0012018dced007b3a7b4b368533df9b1875d.sync().gas(msg.gas);

            require(v100); // checks call status, propagates error data on error

            emit AutoNukeLP();

        }

        v101 = address(varg2);

        v102 = v103 = !stor_5_20_20;

        v104 = v105 = 0xff & _isExcludedFromFees[v101];

        if (!v105) {

            v106 = address(varg1);

            v104 = v107 = 0xff & _isExcludedFromFees[v106];

        }

        if (v104) {

            v102 = v108 = 0;

        }

        v109 = v110 = 0;

        if (v102) {

            v111 = address(varg1);

            v112 = v113 = 0xff & _automatedMarketMakerPairs[v111];

            if (v113) {

                v112 = v114 = _sellTotalFees > 0;

            }

            if (!v112) {

                v115 = address(varg2);

                v116 = v117 = 0xff & _automatedMarketMakerPairs[v115];

                if (v117) {

                    v116 = v118 = _buyTotalFees > 0;

                }

                if (v116) {

                    v119 = 0x2472(_buyTotalFees, varg0);

                    v109 = v120 = _SafeDiv(100, v119);

                    v121 = _SafeMul(v120, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18));

                    v122 = _SafeAdd(_tokensForLiquidity, v121 / _buyTotalFees);

                    _tokensForLiquidity = v122;

                    v123 = _SafeMul(v120, _buyDevFee);

                    require(_buyTotalFees, Panic(18));

                    v124 = _SafeAdd(_tokensForDev, v123 / _buyTotalFees);

                    _tokensForDev = v124;

                    v125 = _SafeMul(v120, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18));

                    v126 = _SafeAdd(_tokensForMarketing, v125 / _buyTotalFees);

                    _tokensForMarketing = v126;

                }

            } else {

                v127 = 0x2472(_sellTotalFees, varg0);

                v109 = v128 = _SafeDiv(100, v127);

                v129 = _SafeMul(v128, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18));

                v130 = _SafeAdd(_tokensForLiquidity, v129 / _sellTotalFees);

                _tokensForLiquidity = v130;

                v131 = _SafeMul(v128, _sellDevFee);

                require(_sellTotalFees, Panic(18));

                v132 = _SafeAdd(_tokensForDev, v131 / _sellTotalFees);

                _tokensForDev = v132;

                v133 = _SafeMul(v128, _sellMarketingFee);

                require(_sellTotalFees, Panic(18));

                v134 = _SafeAdd(_tokensForMarketing, v133 / _sellTotalFees);

                _tokensForMarketing = v134;

            }

            if (v109) {

                0x2533(v109, this, varg2);

            }

            varg0 = v135 = _SafeSub(varg0, v109);

        }

        0x2533(varg0, varg1, varg2);

        return ;

    } else {

        0x2533(0, varg1, varg2);

        return ;

    }

}
