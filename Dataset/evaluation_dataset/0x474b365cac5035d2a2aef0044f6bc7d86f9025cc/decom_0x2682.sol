function 0x2682(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    v0 = address(varg1);

    v1 = v2 = !(0xff & owner_e[v0]);

    if (v2) {

        v3 = address(varg2);

        v1 = v4 = !(0xff & owner_e[v3]);

    }

    require(v1, Error('You have been blacklisted from transfering tokens'));

    if (varg0 - 0) {

        if (_limitsInEffect) {

            v5 = v6 = address(varg2) != _owner;

            if (v6) {

                v5 = v7 = address(varg1) != _owner;

            }

            if (v5) {

                v5 = v8 = address(varg1) != 0;

            }

            if (v5) {

                v5 = v9 = address(varg1) != 57005;

            }

            if (v5) {

                v5 = v10 = !stor_5_20_20;

            }

            if (v5) {

                if (!_tradingActive) {

                    v11 = address(varg2);

                    v12 = v13 = 0xff & _isExcludedFromFees[v11];

                    if (!v13) {

                        v14 = address(varg1);

                        v12 = v15 = 0xff & _isExcludedFromFees[v14];

                    }

                    require(v12, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v16 = v17 = address(varg1) != _owner;

                    if (v17) {

                        v16 = v18 = address(varg1) != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d;

                    }

                    if (v16) {

                        v16 = v19 = address(varg1) != 0x3b76538473b6627c5f2358a5a29e1bf6078831e1;

                    }

                    if (v16) {

                        require(owner_c[address(tx.origin)] <= block.number, Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_c[address(tx.origin)] = block.number;

                    }

                }

                v20 = address(varg2);

                v21 = v22 = 0xff & _automatedMarketMakerPairs[v20];

                if (v22) {

                    v23 = address(varg1);

                    v21 = v24 = !(0xff & __isExcludedMaxTransactionAmount[v23]);

                }

                if (!v21) {

                    v25 = address(varg1);

                    v26 = v27 = 0xff & _automatedMarketMakerPairs[v25];

                    if (v27) {

                        v28 = address(varg2);

                        v26 = v29 = !(0xff & __isExcludedMaxTransactionAmount[v28]);

                    }

                    if (!v26) {

                        v30 = address(varg1);

                        if (!(0xff & __isExcludedMaxTransactionAmount[v30])) {

                            v31 = address(varg1);

                            v32 = _SafeAdd(varg0, _balanceOf[v31]);

                            require(v32 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v33 = address(varg1);

                    v34 = _SafeAdd(varg0, _balanceOf[v33]);

                    require(v34 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v35 = v36 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        if (v36) {

            v35 = v37 = _swapEnabled;

        }

        if (v35) {

            v35 = v38 = !stor_5_20_20;

        }

        if (v35) {

            v39 = address(varg2);

            v35 = v40 = !(0xff & _automatedMarketMakerPairs[v39]);

        }

        if (v35) {

            v41 = address(varg2);

            v35 = v42 = !(0xff & _isExcludedFromFees[v41]);

        }

        if (v35) {

            v43 = address(varg1);

            v35 = v44 = !(0xff & _isExcludedFromFees[v43]);

        }

        if (v35) {

            stor_5_20_20 = 1;

            v45 = _balanceOf[address(this)];

            v46 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v47 = _SafeAdd(v46, _tokensForDev);

            v48 = v49 = v45 == 0;

            if (v45 != 0) {

                v48 = v47 == 0;

            }

            if (!v48) {

                v50 = _SafeMul(_swapTokensAtAmount, 20);

                if (v45 > v50) {

                    v45 = v51 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v52 = _SafeMul(v45, _tokensForLiquidity);

                v53 = _SafeDiv(v52, v47);

                v54 = _SafeDiv(v53, 2);

                v55 = new struct(2);

                v55.word0 = 30;

                v56 = v55.data;

                v55.word1 = 'SafeMath: subtraction overflow';

                v57 = 0x33fd(v55, v54, v45);

                v58 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v58.data, msg.data.length, 64);

                }

                require(0 < v58.length, Panic(50));

                v59 = v58.data;

                v58[0] = address(this);

                v60, v61 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v60); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                0x3ffb(v61);

                require(1 < v58.length, Panic(50));

                v58[1] = address(v61);

                0x24b9(v57, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v62 = new array[](v58.length);

                v63 = v64 = v62.data;

                v65 = v66 = v58.data;

                v67 = v68 = 0;

                while (v67 < v58.length) {

                    MEM[v63] = address(MEM[v65]);

                    v63 = v63 + 32;

                    v65 = v65 + 32;

                    v67 = v67 + 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v69 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v57, 0, v62, address(this), block.timestamp).gas(msg.gas);

                require(v69); // checks call status, propagates error data on error

                v70 = new struct(2);

                v70.word0 = 30;

                v71 = v70.data;

                v70.word1 = 'SafeMath: subtraction overflow';

                v72 = 0x33fd(v70, this.balance, this.balance);

                v73 = 0x3a7c(_tokensForMarketing, v72);

                v74 = 0x3af6(v47, v73);

                v75 = 0x3a7c(_tokensForDev, v72);

                v76 = 0x3af6(v47, v75);

                v77 = _SafeSub(v72, v74);

                v78 = _SafeSub(v77, v76);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v79 = 0x4ff3(MEM[64]);

                v80, v81 = stor_7_0_19.call(MEM[(MEM[64]) len (v79 - MEM[64])], MEM[(MEM[64]) len 0]).value(v76).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v82 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v82.data, 0, RETURNDATASIZE());

                }

                v83 = v84 = v54 > 0;

                if (v84) {

                    v83 = v78 > 0;

                }

                if (v83) {

                    0x24b9(v54, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v85, v86, v87, v88 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(address(this), v54, 0, 0, address(this), block.timestamp).value(v78).gas(msg.gas);

                    require(v85); // checks call status, propagates error data on error

                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    0x4031(v86);

                    0x4031(v87);

                    0x4031(v88);

                    emit SwapAndLiquify(v57, v78, _tokensForLiquidity);

                }

                v89 = 0x4ff3(MEM[64]);

                v90, v91 = stor_6_0_19.call(MEM[(MEM[64]) len (v89 - MEM[64])], MEM[(MEM[64]) len 0]).value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v92 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v92.data, 0, RETURNDATASIZE());

                }

            }

            stor_5_20_20 = 0;

        }

        v93 = v94 = !stor_5_20_20;

        v95 = address(varg2);

        v96 = v97 = 0xff & _isExcludedFromFees[v95];

        if (!v97) {

            v98 = address(varg1);

            v96 = v99 = 0xff & _isExcludedFromFees[v98];

        }

        if (v96) {

            v93 = v100 = 0;

        }

        v101 = v102 = 0;

        if (v93) {

            v103 = address(varg1);

            v104 = v105 = 0xff & _automatedMarketMakerPairs[v103];

            if (v105) {

                v104 = v106 = _sellTotalFees > 0;

            }

            if (!v104) {

                v107 = address(varg2);

                v108 = v109 = 0xff & _automatedMarketMakerPairs[v107];

                if (v109) {

                    v108 = v110 = _buyTotalFees > 0;

                }

                if (v108) {

                    v111 = 0x3a7c(_buyTotalFees, varg0);

                    v101 = v112 = 0x3af6(100, v111);

                    v113 = _SafeMul(v112, _buyLiquidityFee);

                    v114 = _SafeDiv(v113, _buyTotalFees);

                    v115 = _SafeAdd(_tokensForLiquidity, v114);

                    _tokensForLiquidity = v115;

                    v116 = _SafeMul(v112, _buyDevFee);

                    v117 = _SafeDiv(v116, _buyTotalFees);

                    v118 = _SafeAdd(_tokensForDev, v117);

                    _tokensForDev = v118;

                    v119 = _SafeMul(v112, stor_11);

                    v120 = _SafeDiv(v119, _buyTotalFees);

                    v121 = _SafeAdd(_tokensForMarketing, v120);

                    _tokensForMarketing = v121;

                }

            } else {

                v122 = 0x3a7c(_sellTotalFees, varg0);

                v101 = v123 = 0x3af6(100, v122);

                v124 = _SafeMul(v123, _sellLiquidityFee);

                v125 = _SafeDiv(v124, _sellTotalFees);

                v126 = _SafeAdd(_tokensForLiquidity, v125);

                _tokensForLiquidity = v126;

                v127 = _SafeMul(v123, _sellDevFee);

                v128 = _SafeDiv(v127, _sellTotalFees);

                v129 = _SafeAdd(_tokensForDev, v128);

                _tokensForDev = v129;

                v130 = _SafeMul(v123, stor_15);

                v131 = _SafeDiv(v130, _sellTotalFees);

                v132 = _SafeAdd(_tokensForMarketing, v131);

                _tokensForMarketing = v132;

                goto 0x33c4;

            }

            if (v101 > 0) {

                0x3502(v101, this, varg2);

            }

            varg0 = v133 = _SafeSub(varg0, v101);

        }

        0x3502(varg0, varg1, varg2);

    } else {

        0x3502(0, varg1, varg2);

    }

    return ;

}
