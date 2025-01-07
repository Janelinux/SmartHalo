function 0x1e17(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v0 = address(varg1);

    v1 = v2 = !(0xff & owner_14[v0]);

    if (v2) {

        v3 = address(varg2);

        v1 = v4 = !(0xff & owner_14[v3]);

    }

    require(v1, Error('You have been blacklisted from transfering tokens'));

    if (varg0) {

        if (_limitsInEffect) {

            v5 = _owner == address(varg2);

            v6 = v7 = _owner != address(varg2);

            if (_owner != address(varg2)) {

                v6 = v8 = _owner != address(varg1);

            }

            if (v6) {

                v6 = v9 = address(varg1);

            }

            if (v6) {

                v6 = v10 = 57005 != address(varg1);

            }

            if (v6) {

                v6 = v11 = !stor_5_20_20;

            }

            if (v6) {

                if (!_tradingActive) {

                    v12 = address(varg2);

                    v13 = v14 = 0xff & _isExcludedFromFees[v12];

                    if (!v14) {

                        v15 = address(varg1);

                        v13 = v16 = 0xff & _isExcludedFromFees[v15];

                    }

                    require(v13, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v17 = _owner == address(varg1);

                    v18 = v19 = _owner != address(varg1);

                    if (_owner != address(varg1)) {

                        v18 = v20 = address(varg1) != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d;

                    }

                    if (v18) {

                        v18 = v21 = address(varg1) != 0xe3704545117b82ff9ee6b2462e79efb2efc8d806;

                    }

                    if (v18) {

                        require(block.number > owner_12[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_12[tx.origin] = block.number;

                    }

                }

                v22 = address(varg2);

                v23 = v24 = 0xff & _automatedMarketMakerPairs[v22];

                if (v24) {

                    v25 = address(varg1);

                    v23 = v26 = !(0xff & __isExcludedMaxTransactionAmount[v25]);

                }

                if (!v23) {

                    v27 = address(varg1);

                    v28 = v29 = 0xff & _automatedMarketMakerPairs[v27];

                    if (v29) {

                        v30 = address(varg2);

                        v28 = v31 = !(0xff & __isExcludedMaxTransactionAmount[v30]);

                    }

                    if (!v28) {

                        v32 = address(varg1);

                        if (!(0xff & __isExcludedMaxTransactionAmount[v32])) {

                            v33 = address(varg1);

                            v34 = _SafeAdd(varg0, _balanceOf[v33]);

                            require(v34 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v35 = address(varg1);

                    v36 = _SafeAdd(varg0, _balanceOf[v35]);

                    require(v36 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v37 = _SafeAdd(1, stor_23);

        v38 = v39 = block.number <= v37;

        if (v39) {

            v38 = v40 = address(varg1) != 0xe3704545117b82ff9ee6b2462e79efb2efc8d806;

        }

        if (v38) {

            v38 = v41 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d != address(varg1);

        }

        if (v38) {

            v42 = address(varg1);

            owner_14[v42] = 0x1 | ~0xff & owner_14[v42];

        }

        v43 = v44 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v43 = v45 = _swapEnabled;

        }

        if (v43) {

            v43 = v46 = !stor_5_20_20;

        }

        if (v43) {

            v47 = address(varg2);

            v43 = v48 = !(0xff & _automatedMarketMakerPairs[v47]);

        }

        if (v43) {

            v49 = address(varg2);

            v43 = v50 = !(0xff & _isExcludedFromFees[v49]);

        }

        if (v43) {

            v51 = address(varg1);

            v43 = v52 = !(0xff & _isExcludedFromFees[v51]);

        }

        if (v43) {

            stor_5_20_20 = 1;

            v53 = v54 = _balanceOf[this];

            v55 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v56 = _SafeAdd(v55, _tokensForDev);

            v57 = v58 = !v54;

            if (v54) {

                v57 = !v56;

            }

            if (!v57) {

                v59 = _SafeMul(20, _swapTokensAtAmount);

                if (v54 > v59) {

                    v53 = v60 = _SafeMul(20, _swapTokensAtAmount);

                }

                v61 = _SafeMul(v53, _tokensForLiquidity);

                require(v56, Panic(18));

                require(2, Panic(18));

                v62 = new struct(2);

                v62.word0 = 30;

                v63 = v62.data;

                v62.word1 = 'SafeMath: subtraction overflow';

                v64 = 0x2838(v62, v61 / v56 >> 1, v53);

                v65 = new uint256[](2);

                CALLDATACOPY(v65.data, msg.data.length, 64);

                require(0 < v65.length, Panic(50));

                v66 = v65.data;

                v65[0] = address(this);

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v67, v68 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v67); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v68 == address(v68));

                require(1 < v65.length, Panic(50));

                v65[1] = address(v68);

                0x1cf2(v64, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v69 = new array[](v65.length);

                v70 = v71 = v69.data;

                v72 = v73 = v65.data;

                v74 = v75 = 0;

                while (v74 < v65.length) {

                    MEM[v70] = address(MEM[v72]);

                    v72 += 32;

                    v70 += 32;

                    v74 += 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v76 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v64, 0, v69, address(this), block.timestamp).gas(msg.gas);

                require(v76); // checks call status, propagates error data on error

                v77 = new struct(2);

                v77.word0 = 30;

                v78 = v77.data;

                v77.word1 = 'SafeMath: subtraction overflow';

                v79 = 0x2838(v77, this.balance, this.balance);

                v80 = 0x28c6(_tokensForMarketing, v79);

                v81 = _SafeDiv(v56, v80);

                v82 = 0x28c6(_tokensForDev, v79);

                v83 = _SafeDiv(v56, v82);

                v84 = _SafeSub(v79, v81);

                v85 = _SafeSub(v84, v83);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v86, v87 = _devWallet.call().value(v83).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v88 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v88.data, 0, RETURNDATASIZE());

                }

                v89 = v90 = v61 / v56 >> 1;

                if (v61 / v56 >> 1) {

                    v89 = v85 > 0;

                }

                if (v89) {

                    0x1cf2(v61 / v56 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                    v91, v92, v93, v94 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(this, v61 / v56 >> 1, 0, 0, 57005, block.timestamp).value(v85).gas(msg.gas);

                    require(v91); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v64, v85, _tokensForLiquidity);

                }

                v95, v96 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v97 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v97.data, 0, RETURNDATASIZE());

                }

                goto 0x254b;

            }

            stor_5_20_20 = 0;

        }

        v98 = v99 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v100 = address(varg1);

            v98 = v101 = 0xff & _automatedMarketMakerPairs[v100];

        }

        if (v98) {

            v98 = v102 = _lpBurnEnabled;

        }

        if (v98) {

            v103 = _SafeAdd(_lastLpBurnTime, _lpBurnFrequency);

            v98 = v104 = block.timestamp >= v103;

        }

        if (v98) {

            v105 = address(varg2);

            v98 = v106 = !(0xff & _isExcludedFromFees[v105]);

        }

        if (v98) {

            _lastLpBurnTime = block.timestamp;

            require(this.code.size);

            v107, v108 = this.balanceOf(0xe3704545117b82ff9ee6b2462e79efb2efc8d806).gas(msg.gas);

            require(v107); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v109 = 0x28c6(_percentForLPBurn, v108);

            v110 = _SafeDiv(10000, v109);

            if (v110) {

                0x2987(v110, 57005, 0xe3704545117b82ff9ee6b2462e79efb2efc8d806);

            }

            require(0xe3704545117b82ff9ee6b2462e79efb2efc8d806.code.size);

            v111 = 0xe3704545117b82ff9ee6b2462e79efb2efc8d806.sync().gas(msg.gas);

            require(v111); // checks call status, propagates error data on error

            emit AutoNukeLP();

        }

        v112 = address(varg2);

        v113 = v114 = !stor_5_20_20;

        v115 = v116 = 0xff & _isExcludedFromFees[v112];

        if (!v116) {

            v117 = address(varg1);

            v115 = v118 = 0xff & _isExcludedFromFees[v117];

        }

        if (v115) {

            v113 = v119 = 0;

        }

        v120 = v121 = 0;

        if (v113) {

            v122 = address(varg1);

            v123 = v124 = 0xff & _automatedMarketMakerPairs[v122];

            if (v124) {

                v123 = v125 = _sellTotalFees > 0;

            }

            if (!v123) {

                v126 = address(varg2);

                v127 = v128 = 0xff & _automatedMarketMakerPairs[v126];

                if (v128) {

                    v127 = v129 = _buyTotalFees > 0;

                }

                if (v127) {

                    v130 = 0x28c6(_buyTotalFees, varg0);

                    v120 = v131 = _SafeDiv(100, v130);

                    v132 = _SafeMul(v131, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18));

                    v133 = _SafeAdd(_tokensForLiquidity, v132 / _buyTotalFees);

                    _tokensForLiquidity = v133;

                    v134 = _SafeMul(v131, _buyDevFee);

                    require(_buyTotalFees, Panic(18));

                    v135 = _SafeAdd(_tokensForDev, v134 / _buyTotalFees);

                    _tokensForDev = v135;

                    v136 = _SafeMul(v131, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18));

                    v137 = _SafeAdd(_tokensForMarketing, v136 / _buyTotalFees);

                    _tokensForMarketing = v137;

                }

            } else {

                v138 = 0x28c6(_sellTotalFees, varg0);

                v120 = v139 = _SafeDiv(100, v138);

                v140 = _SafeMul(v139, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18));

                v141 = _SafeAdd(_tokensForLiquidity, v140 / _sellTotalFees);

                _tokensForLiquidity = v141;

                v142 = _SafeMul(v139, _sellDevFee);

                require(_sellTotalFees, Panic(18));

                v143 = _SafeAdd(_tokensForDev, v142 / _sellTotalFees);

                _tokensForDev = v143;

                v144 = _SafeMul(v139, _sellMarketingFee);

                require(_sellTotalFees, Panic(18));

                v145 = _SafeAdd(_tokensForMarketing, v144 / _sellTotalFees);

                _tokensForMarketing = v145;

            }

            if (v120) {

                0x2987(v120, this, varg2);

            }

            varg0 = v146 = _SafeSub(varg0, v120);

        }

        0x2987(varg0, varg1, varg2);

        return ;

    } else {

        0x2987(0, varg1, varg2);

        return ;

    }

}
