function 0x1949(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v0 = address(varg1);

    v1 = v2 = !(0xff & owner_e[v0]);

    if (v2) {

        v3 = address(varg2);

        v1 = v4 = !(0xff & owner_e[v3]);

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

                        v18 = v21 = address(varg1) != 0xf73e594802314eec09ac13df27a8085e87f01cda;

                    }

                    if (v18) {

                        require(block.number > owner_c[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_c[tx.origin] = block.number;

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

        v37 = _SafeAdd(1, stor_1e);

        v38 = v39 = block.number <= v37;

        if (v39) {

            v38 = v40 = address(varg1) != 0xf73e594802314eec09ac13df27a8085e87f01cda;

        }

        if (v38) {

            v38 = v41 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d != address(varg1);

        }

        if (v38) {

            v42 = address(varg1);

            owner_e[v42] = 0x1 | ~0xff & owner_e[v42];

        }

        v43 = address(varg2) == 0xf73e594802314eec09ac13df27a8085e87f01cda;

        v44 = v45 = address(varg2) != 0xf73e594802314eec09ac13df27a8085e87f01cda;

        if (address(varg2) != 0xf73e594802314eec09ac13df27a8085e87f01cda) {

            v44 = v46 = _enableEarlySellTax;

        }

        if (!v44) {

            v47 = address(varg1);

            if (!owner_d[v47]) {

                v48 = address(varg1);

                owner_d[v48] = block.timestamp;

            }

            if (!_enableEarlySellTax) {

                _sellLiquidityFee = 0;

                _sellMarketingFee = 4;

                _sellDevFee = 4;

                v49 = _SafeAdd(4, 0);

                v50 = _SafeAdd(v49, 4);

                _sellTotalFees = v50;

            }

        } else {

            v51 = address(varg2);

            v52 = v53 = owner_d[v51];

            if (owner_d[v51]) {

                v54 = address(varg2);

                v55 = _SafeAdd(7200, owner_d[v54]);

                v52 = v56 = v55 >= block.timestamp;

            }

            if (!v52) {

                _sellLiquidityFee = 0;

                _sellMarketingFee = 4;

                v57 = _SafeAdd(4, 0);

                v58 = v59 = _SafeAdd(v57, _sellDevFee);

            } else {

                _sellLiquidityFee = _earlySellLiquidityFee;

                _sellMarketingFee = _earlySellMarketingFee;

                _sellDevFee = _earlySellDevFee;

                v60 = _SafeAdd(_earlySellMarketingFee, _earlySellLiquidityFee);

                v58 = v61 = _SafeAdd(v60, _earlySellDevFee);

            }

            _sellTotalFees = v58;

            goto 0x210a;

        }

        v62 = v63 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v62 = v64 = _swapEnabled;

        }

        if (v62) {

            v62 = v65 = !stor_5_20_20;

        }

        if (v62) {

            v66 = address(varg2);

            v62 = v67 = !(0xff & _automatedMarketMakerPairs[v66]);

        }

        if (v62) {

            v68 = address(varg2);

            v62 = v69 = !(0xff & _isExcludedFromFees[v68]);

        }

        if (v62) {

            v70 = address(varg1);

            v62 = v71 = !(0xff & _isExcludedFromFees[v70]);

        }

        if (v62) {

            stor_5_20_20 = 1;

            v72 = v73 = _balanceOf[this];

            v74 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v75 = _SafeAdd(v74, _tokensForDev);

            v76 = v77 = !v73;

            if (v73) {

                v76 = !v75;

            }

            if (!v76) {

                v78 = _SafeMul(20, _swapTokensAtAmount);

                if (v73 > v78) {

                    v72 = v79 = _SafeMul(20, _swapTokensAtAmount);

                }

                v80 = _SafeMul(v72, _tokensForLiquidity);

                require(v75, Panic(18));

                require(2, Panic(18));

                v81 = new struct(2);

                v81.word0 = 30;

                v82 = v81.data;

                v81.word1 = 'SafeMath: subtraction overflow';

                v83 = 0x2440(v81, v80 / v75 >> 1, v72);

                v84 = new uint256[](2);

                CALLDATACOPY(v84.data, msg.data.length, 64);

                require(0 < v84.length, Panic(50));

                v85 = v84.data;

                v84[0] = address(this);

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v86, v87 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v86); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v87 == address(v87));

                require(1 < v84.length, Panic(50));

                v84[1] = address(v87);

                0x1824(v83, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v88 = new array[](v84.length);

                v89 = v90 = v88.data;

                v91 = v92 = v84.data;

                v93 = v94 = 0;

                while (v93 < v84.length) {

                    MEM[v89] = address(MEM[v91]);

                    v91 += 32;

                    v89 += 32;

                    v93 += 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v95 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v83, 0, v88, address(this), block.timestamp).gas(msg.gas);

                require(v95); // checks call status, propagates error data on error

                v96 = new struct(2);

                v96.word0 = 30;

                v97 = v96.data;

                v96.word1 = 'SafeMath: subtraction overflow';

                v98 = 0x2440(v96, this.balance, this.balance);

                v99 = 0x2811(_tokensForMarketing, v98);

                v100 = _SafeDiv(v75, v99);

                v101 = 0x2811(_tokensForDev, v98);

                v102 = _SafeDiv(v75, v101);

                v103 = _SafeSub(v98, v100);

                v104 = _SafeSub(v103, v102);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v105, v106 = _devWallet.call().value(v102).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v107 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v107.data, 0, RETURNDATASIZE());

                }

                v108 = v109 = v80 / v75 >> 1;

                if (v80 / v75 >> 1) {

                    v108 = v104 > 0;

                }

                if (v108) {

                    0x1824(v80 / v75 >> 1, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                    v110, v111, v112, v113 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(this, v80 / v75 >> 1, 0, 0, this, block.timestamp).value(v104).gas(msg.gas);

                    require(v110); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    emit SwapAndLiquify(v83, v104, _tokensForLiquidity);

                }

                v114, v115 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v116 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v116.data, 0, RETURNDATASIZE());

                }

                goto 0x21db;

            }

            stor_5_20_20 = 0;

        }

        v117 = address(varg2);

        v118 = v119 = !stor_5_20_20;

        v120 = v121 = 0xff & _isExcludedFromFees[v117];

        if (!v121) {

            v122 = address(varg1);

            v120 = v123 = 0xff & _isExcludedFromFees[v122];

        }

        if (v120) {

            v118 = v124 = 0;

        }

        v125 = v126 = 0;

        if (v118) {

            v127 = address(varg1);

            v128 = v129 = 0xff & _automatedMarketMakerPairs[v127];

            if (v129) {

                v128 = v130 = _sellTotalFees > 0;

            }

            if (!v128) {

                v131 = address(varg2);

                v132 = v133 = 0xff & _automatedMarketMakerPairs[v131];

                if (v133) {

                    v132 = v134 = _buyTotalFees > 0;

                }

                if (v132) {

                    v135 = 0x2811(_buyTotalFees, varg0);

                    v125 = v136 = _SafeDiv(100, v135);

                    v137 = _SafeMul(v136, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18));

                    v138 = _SafeAdd(_tokensForLiquidity, v137 / _buyTotalFees);

                    _tokensForLiquidity = v138;

                    v139 = _SafeMul(v136, _buyDevFee);

                    require(_buyTotalFees, Panic(18));

                    v140 = _SafeAdd(_tokensForDev, v139 / _buyTotalFees);

                    _tokensForDev = v140;

                    v141 = _SafeMul(v136, _buyMarketingFee);

                    require(_buyTotalFees, Panic(18));

                    v142 = _SafeAdd(_tokensForMarketing, v141 / _buyTotalFees);

                    _tokensForMarketing = v142;

                }

            } else {

                v143 = 0x2811(_sellTotalFees, varg0);

                v125 = v144 = _SafeDiv(100, v143);

                v145 = _SafeMul(v144, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18));

                v146 = _SafeAdd(_tokensForLiquidity, v145 / _sellTotalFees);

                _tokensForLiquidity = v146;

                v147 = _SafeMul(v144, _sellDevFee);

                require(_sellTotalFees, Panic(18));

                v148 = _SafeAdd(_tokensForDev, v147 / _sellTotalFees);

                _tokensForDev = v148;

                v149 = _SafeMul(v144, _sellMarketingFee);

                require(_sellTotalFees, Panic(18));

                v150 = _SafeAdd(_tokensForMarketing, v149 / _sellTotalFees);

                _tokensForMarketing = v150;

            }

            if (v125) {

                0x24ce(v125, this, varg2);

            }

            varg0 = v151 = _SafeSub(varg0, v125);

        }

        0x24ce(varg0, varg1, varg2);

        return ;

    } else {

        0x24ce(0, varg1, varg2);

        return ;

    }

}
