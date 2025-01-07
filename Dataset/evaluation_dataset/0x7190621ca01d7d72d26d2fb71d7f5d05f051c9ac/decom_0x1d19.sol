function 0x1d19(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v0 = address(varg1);

    v1 = v2 = !(0xff & owner_14[v0]);

    if (v2) {

        v3 = address(varg2);

        v1 = v4 = !(0xff & owner_14[v3]);

    }

    require(v1, Error('You have been blacklisted from transfering tokens'));

    if (0 - varg0) {

        if (_limitsInEffect) {

            v5 = _owner == address(varg2);

            v6 = v7 = _owner != address(varg2);

            if (_owner != address(varg2)) {

                v6 = v8 = _owner != address(varg1);

            }

            if (v6) {

                v6 = v9 = _marketingWallet != address(varg2);

            }

            if (v6) {

                v6 = v10 = _marketingWallet != address(varg1);

            }

            if (v6) {

                v6 = v11 = _devWallet != address(varg2);

            }

            if (v6) {

                v6 = v12 = _devWallet != address(varg1);

            }

            if (v6) {

                v6 = v13 = address(varg1);

            }

            if (v6) {

                v6 = v14 = 57005 != address(varg1);

            }

            if (v6) {

                v6 = v15 = !stor_5_20_20;

            }

            if (v6) {

                if (!_tradingActive) {

                    v16 = address(varg2);

                    v17 = v18 = 0xff & _isExcludedFromFees[v16];

                    if (!v18) {

                        v19 = address(varg1);

                        v17 = v20 = 0xff & _isExcludedFromFees[v19];

                    }

                    require(v17, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v21 = _owner == address(varg1);

                    v22 = v23 = _owner != address(varg1);

                    if (_owner != address(varg1)) {

                        v22 = v24 = address(varg1) != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d;

                    }

                    if (v22) {

                        v22 = v25 = address(varg1) != 0x4036a2ebbe3210f13926ad445b05be547bfc235a;

                    }

                    if (v22) {

                        require(block.number > owner_12[tx.origin], Error('_transfer:: Transfer Delay enabled. Only one purchase per block allowed.'));

                        owner_12[tx.origin] = block.number;

                    }

                }

                v26 = address(varg2);

                v27 = v28 = 0xff & _automatedMarketMakerPairs[v26];

                if (v28) {

                    v29 = address(varg1);

                    v27 = v30 = !(0xff & __isExcludedMaxTransactionAmount[v29]);

                }

                if (!v27) {

                    v31 = address(varg1);

                    v32 = v33 = 0xff & _automatedMarketMakerPairs[v31];

                    if (v33) {

                        v34 = address(varg2);

                        v32 = v35 = !(0xff & __isExcludedMaxTransactionAmount[v34]);

                    }

                    if (!v32) {

                        v36 = address(varg1);

                        if (!(0xff & __isExcludedMaxTransactionAmount[v36])) {

                            v37 = address(varg1);

                            v38 = _SafeAdd(varg0, _balanceOf[v37]);

                            require(v38 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v39 = address(varg1);

                    v40 = _SafeAdd(varg0, _balanceOf[v39]);

                    require(v40 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v41 = _SafeAdd(1, stor_21);

        v42 = v43 = block.number <= v41;

        if (v43) {

            v42 = v44 = address(varg1) != 0x4036a2ebbe3210f13926ad445b05be547bfc235a;

        }

        if (v42) {

            v42 = v45 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d != address(varg1);

        }

        if (v42) {

            v46 = address(varg1);

            owner_14[v46] = 0x1 | ~0xff & owner_14[v46];

        }

        v47 = v48 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v47 = v49 = _swapEnabled;

        }

        if (v47) {

            v47 = v50 = !stor_5_20_20;

        }

        if (v47) {

            v51 = address(varg2);

            v47 = v52 = !(0xff & _automatedMarketMakerPairs[v51]);

        }

        if (v47) {

            v53 = address(varg2);

            v47 = v54 = !(0xff & _isExcludedFromFees[v53]);

        }

        if (v47) {

            v55 = address(varg1);

            v47 = v56 = !(0xff & _isExcludedFromFees[v55]);

        }

        if (v47) {

            stor_5_20_20 = 1;

            v57 = v58 = _balanceOf[this];

            v59 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v60 = _SafeAdd(v59, _tokensForDev);

            v61 = v62 = !v58;

            if (v58) {

                v61 = !v60;

            }

            if (!v61) {

                v63 = _SafeMul(20, _swapTokensAtAmount);

                if (v58 > v63) {

                    v57 = v64 = _SafeMul(20, _swapTokensAtAmount);

                }

                v65 = _SafeMul(v57, _tokensForLiquidity);

                require(v60, Panic(18));

                require(2, Panic(18));

                v66 = new struct(2);

                v66.word0 = 30;

                v67 = v66.data;

                v66.word1 = 'SafeMath: subtraction overflow';

                v68 = 0x27a4(v66, v65 / v60 >> 1, v57);

                v69 = new uint256[](2);

                CALLDATACOPY(v69.data, msg.data.length, 64);

                require(0 < v69.length, Panic(50));

                v70 = v69.data;

                v69[0] = address(this);

                v71, v72 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v71); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v72 == address(v72));

                require(1 < v69.length, Panic(50));

                v69[1] = address(v72);

                0x1bf4(v68, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v73 = new array[](v69.length);

                v74 = v75 = v73.data;

                v76 = v77 = v69.data;

                v78 = v79 = 0;

                while (v78 < v69.length) {

                    MEM[v74] = address(MEM[v76]);

                    v76 += 32;

                    v74 += 32;

                    v78 += 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v80 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v68, 0, v73, address(this), block.timestamp).gas(msg.gas);

                require(v80); // checks call status, propagates error data on error

                v81 = new struct(2);

                v81.word0 = 30;

                v82 = v81.data;

                v81.word1 = 'SafeMath: subtraction overflow';

                v83 = 0x27a4(v81, this.balance, this.balance);

                v84 = 0x2832(_tokensForMarketing, v83);

                v85 = _SafeDiv(v60, v84);

                v86 = 0x2832(_tokensForDev, v83);

                v87 = _SafeDiv(v60, v86);

                v88 = _SafeSub(v83, v85);

                v89 = _SafeSub(v88, v87);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v90, v91 = _devWallet.call().value(v87).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v92 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v92.data, 0, RETURNDATASIZE());

                }

                v93 = v94 = v65 / v60 >> 1;

                if (v65 / v60 >> 1) {

                    v93 = v89 > 0;

                }

                if (v93) {

                    0x1bf4(v65 / v60 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v95, v96, v97, v98 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(this, v65 / v60 >> 1, 0, 0, 57005, block.timestamp).value(v89).gas(msg.gas);

                    require(v95); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v68, v89, _tokensForLiquidity);

                }

                v99, v100 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v101 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v101.data, 0, RETURNDATASIZE());

                }

                goto 0x24b7;

            }

            stor_5_20_20 = 0;

        }

        v102 = v103 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v104 = address(varg1);

            v102 = v105 = 0xff & _automatedMarketMakerPairs[v104];

        }

        if (v102) {

            v102 = v106 = _lpBurnEnabled;

        }

        if (v102) {

            v107 = _SafeAdd(_lastLpBurnTime, _lpBurnFrequency);

            v102 = v108 = block.timestamp >= v107;

        }

        if (v102) {

            v109 = address(varg2);

            v102 = v110 = !(0xff & _isExcludedFromFees[v109]);

        }

        if (v102) {

            _lastLpBurnTime = block.timestamp;

            v111, v112 = this.balanceOf(0x4036a2ebbe3210f13926ad445b05be547bfc235a).gas(msg.gas);

            require(v111); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v113 = 0x2832(_percentForLPBurn, v112);

            v114 = _SafeDiv(10000, v113);

            if (v114) {

                0x28f6(v114, 57005, 0x4036a2ebbe3210f13926ad445b05be547bfc235a);

            }

            require(0x4036a2ebbe3210f13926ad445b05be547bfc235a.code.size);

            v115 = 0x4036a2ebbe3210f13926ad445b05be547bfc235a.sync().gas(msg.gas);

            require(v115); // checks call status, propagates error data on error

            emit AutoNukeLP();

        }

        v116 = address(varg2);

        v117 = v118 = !stor_5_20_20;

        v119 = v120 = 0xff & _isExcludedFromFees[v116];

        if (!v120) {

            v121 = address(varg1);

            v119 = v122 = 0xff & _isExcludedFromFees[v121];

        }

        if (v119) {

            v117 = v123 = 0;

        }

        v124 = v125 = 0;

        if (v117) {

            v126 = address(varg1);

            v127 = v128 = 0xff & _automatedMarketMakerPairs[v126];

            if (v128) {

                v127 = v129 = _sellTotalFees > 0;

            }

            if (!v127) {

                v130 = address(varg2);

                v131 = v132 = 0xff & _automatedMarketMakerPairs[v130];

                if (v132) {

                    v131 = v133 = _buyTotalFees > 0;

                }

                if (v131) {

                    v134 = 0x2832(_buyTotalFees, varg0);

                    v124 = v135 = _SafeDiv(100, v134);

                    v136 = _SafeMul(v135, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18));

                    v137 = _SafeAdd(_tokensForLiquidity, v136 / _buyTotalFees);

                    _tokensForLiquidity = v137;

                    v138 = _SafeMul(v135, _buyDevFee);

                    require(_buyTotalFees, Panic(18));

                    v139 = _SafeAdd(_tokensForDev, v138 / _buyTotalFees);

                    _tokensForDev = v139;

                    v140 = _SafeMul(v135, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18));

                    v141 = _SafeAdd(_tokensForMarketing, v140 / _buyTotalFees);

                    _tokensForMarketing = v141;

                }

            } else {

                v142 = 0x2832(_sellTotalFees, varg0);

                v124 = v143 = _SafeDiv(100, v142);

                v144 = _SafeMul(v143, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18));

                v145 = _SafeAdd(_tokensForLiquidity, v144 / _sellTotalFees);

                _tokensForLiquidity = v145;

                v146 = _SafeMul(v143, _sellDevFee);

                require(_sellTotalFees, Panic(18));

                v147 = _SafeAdd(_tokensForDev, v146 / _sellTotalFees);

                _tokensForDev = v147;

                v148 = _SafeMul(v143, _sellMarketingFee);

                require(_sellTotalFees, Panic(18));

                v149 = _SafeAdd(_tokensForMarketing, v148 / _sellTotalFees);

                _tokensForMarketing = v149;

            }

            if (v124) {

                0x28f6(v124, this, varg2);

            }

            varg0 = v150 = _SafeSub(varg0, v124);

        }

        0x28f6(varg0, varg1, varg2);

        return ;

    } else {

        0x28f6(0, varg1, varg2);

        return ;

    }

}
