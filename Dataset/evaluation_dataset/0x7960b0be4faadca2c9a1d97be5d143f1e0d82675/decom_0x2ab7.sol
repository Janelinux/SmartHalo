function 0x2ab7(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    if (varg0 != 0) {

        if (_limitsInEffect) {

            v0 = v1 = address(varg2) != _owner;

            if (v1) {

                v0 = v2 = address(varg1) != _owner;

            }

            if (v0) {

                v0 = v3 = address(varg1) != 0;

            }

            if (v0) {

                v0 = v4 = address(varg1) != 57005;

            }

            if (v0) {

                v0 = v5 = !stor_5_20_20;

            }

            if (v0) {

                if (!_tradingActive) {

                    v6 = address(varg2);

                    v7 = v8 = 0xff & _isExcludedFromFees[v6];

                    if (!v8) {

                        v9 = address(varg1);

                        v7 = v10 = 0xff & _isExcludedFromFees[v9];

                    }

                    require(v7, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v11 = v12 = address(varg1) != _owner;

                    if (v12) {

                        v11 = v13 = address(varg1) != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d;

                    }

                    if (v11) {

                        v11 = v14 = address(varg1) != 0x2628eb04cf9da6b3546fd7ad0f2979d8e38cc8a1;

                    }

                    if (v11) {

                        require(owner_12[address(tx.origin)] < block.number, Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_12[address(tx.origin)] = block.number;

                    }

                }

                v15 = address(varg2);

                v16 = v17 = 0xff & _automatedMarketMakerPairs[v15];

                if (v17) {

                    v18 = address(varg1);

                    v16 = v19 = !(0xff & __isExcludedMaxTransactionAmount[v18]);

                }

                if (!v16) {

                    v20 = address(varg1);

                    v21 = v22 = 0xff & _automatedMarketMakerPairs[v20];

                    if (v22) {

                        v23 = address(varg2);

                        v21 = v24 = !(0xff & __isExcludedMaxTransactionAmount[v23]);

                    }

                    if (!v21) {

                        v25 = address(varg1);

                        if (!(0xff & __isExcludedMaxTransactionAmount[v25])) {

                            v26 = address(varg1);

                            v27 = _SafeAdd(varg0, _balanceOf[v26]);

                            require(v27 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v28 = address(varg1);

                    v29 = _SafeAdd(varg0, _balanceOf[v28]);

                    require(v29 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v30 = v31 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        if (v31) {

            v30 = v32 = _swapEnabled;

        }

        if (v30) {

            v30 = v33 = !stor_5_20_20;

        }

        if (v30) {

            v34 = address(varg2);

            v30 = v35 = !(0xff & _automatedMarketMakerPairs[v34]);

        }

        if (v30) {

            v36 = address(varg2);

            v30 = v37 = !(0xff & _isExcludedFromFees[v36]);

        }

        if (v30) {

            v38 = address(varg1);

            v30 = v39 = !(0xff & _isExcludedFromFees[v38]);

        }

        if (v30) {

            stor_5_20_20 = 1;

            v40 = _balanceOf[address(this)];

            v41 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v42 = _SafeAdd(v41, _tokensForDev);

            v43 = v44 = v40 == 0;

            if (v40 != 0) {

                v43 = v42 == 0;

            }

            if (!v43) {

                v45 = _SafeMul(_swapTokensAtAmount, 20);

                if (v40 > v45) {

                    v40 = v46 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v47 = _SafeMul(v40, _tokensForLiquidity);

                v48 = _SafeDiv(v47, v42);

                v49 = _SafeDiv(v48, 2);

                v50 = _SafeSub(v40, v49);

                v51 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v51.data, msg.data.length, 64);

                }

                require(0 < v51.length, Panic(50));

                v52 = v51.data;

                v51[0] = address(this);

                v53, v54 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v53); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                0x453b(v54);

                require(1 < v51.length, Panic(50));

                v51[1] = address(v54);

                0x28ec(v50, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v55 = new array[](v51.length);

                v56 = v57 = v55.data;

                v58 = v59 = v51.data;

                v60 = v61 = 0;

                while (v60 < v51.length) {

                    MEM[v56] = address(MEM[v58]);

                    v56 = v56 + 32;

                    v58 = v58 + 32;

                    v60 = v60 + 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v62 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v50, 0, v55, address(this), block.timestamp).gas(msg.gas);

                require(v62); // checks call status, propagates error data on error

                v63 = _SafeSub(this.balance, this.balance);

                v64 = _SafeMul(v63, _tokensForMarketing);

                v65 = _SafeDiv(v64, v42);

                v66 = _SafeMul(v63, _tokensForDev);

                v67 = _SafeDiv(v66, v42);

                v68 = _SafeSub(v63, v65);

                v69 = _SafeSub(v68, v67);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v70 = 0x58a3(MEM[64]);

                v71, v72 = _devWallet.call(MEM[(MEM[64]) len (v70 - MEM[64])], MEM[(MEM[64]) len 0]).value(v67).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v73 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v73.data, 0, RETURNDATASIZE());

                }

                v74 = v75 = v49 > 0;

                if (v75) {

                    v74 = v69 > 0;

                }

                if (v74) {

                    0x28ec(v49, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v76, v77, v78, v79 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(address(this), v49, 0, 0, 57005, block.timestamp).value(v69).gas(msg.gas);

                    require(v76); // checks call status, propagates error data on error

                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    0x4571(v77);

                    0x4571(v78);

                    0x4571(v79);

                    emit SwapAndLiquify(v50, v69, _tokensForLiquidity);

                }

                v80 = 0x58a3(MEM[64]);

                v81, v82 = _marketingWallet.call(MEM[(MEM[64]) len (v80 - MEM[64])], MEM[(MEM[64]) len 0]).value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v83 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v83.data, 0, RETURNDATASIZE());

                }

            }

            stor_5_20_20 = 0;

        }

        v84 = v85 = !stor_5_20_20;

        if (!stor_5_20_20) {

            v86 = address(varg1);

            v84 = v87 = 0xff & _automatedMarketMakerPairs[v86];

        }

        if (v84) {

            v84 = v88 = _lpBurnEnabled;

        }

        if (v84) {

            v89 = _SafeAdd(_lastLpBurnTime, _lpBurnFrequency);

            v84 = v90 = block.timestamp >= v89;

        }

        if (v84) {

            v91 = address(varg2);

            v84 = v92 = !(0xff & _isExcludedFromFees[v91]);

        }

        if (v84) {

            _lastLpBurnTime = block.timestamp;

            v93, v94 = address(this).balanceOf(0x2628eb04cf9da6b3546fd7ad0f2979d8e38cc8a1).gas(msg.gas);

            require(v93); // checks call status, propagates error data on error

            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            0x4571(v94);

            v95 = _SafeMul(v94, _percentForLPBurn);

            v96 = _SafeDiv(v95, 10000);

            if (v96 > 0) {

                0x39e2(v96, 57005, 0x2628eb04cf9da6b3546fd7ad0f2979d8e38cc8a1);

            }

            require(0x2628eb04cf9da6b3546fd7ad0f2979d8e38cc8a1.code.size);

            v97 = 0x2628eb04cf9da6b3546fd7ad0f2979d8e38cc8a1.sync().gas(msg.gas);

            require(v97); // checks call status, propagates error data on error

            emit AutoNukeLP();

        }

        v98 = v99 = !stor_5_20_20;

        v100 = address(varg2);

        v101 = v102 = 0xff & _isExcludedFromFees[v100];

        if (!v102) {

            v103 = address(varg1);

            v101 = v104 = 0xff & _isExcludedFromFees[v103];

        }

        if (v101) {

            v98 = v105 = 0;

        }

        v106 = v107 = 0;

        if (v98) {

            v108 = address(varg1);

            v109 = v110 = 0xff & _automatedMarketMakerPairs[v108];

            if (v110) {

                v109 = v111 = _sellTotalFees > 0;

            }

            if (!v109) {

                v112 = address(varg2);

                v113 = v114 = 0xff & _automatedMarketMakerPairs[v112];

                if (v114) {

                    v113 = v115 = _buyTotalFees > 0;

                }

                if (v113) {

                    v116 = _SafeMul(varg0, _buyTotalFees);

                    v106 = _SafeDiv(v116, 100);

                    v117 = _SafeMul(v106, _buyLiquidityFee);

                    v118 = _SafeDiv(v117, _buyTotalFees);

                    v119 = _SafeAdd(_tokensForLiquidity, v118);

                    _tokensForLiquidity = v119;

                    v120 = _SafeMul(v106, _buyDevFee);

                    v121 = _SafeDiv(v120, _buyTotalFees);

                    v122 = _SafeAdd(_tokensForDev, v121);

                    _tokensForDev = v122;

                    v123 = _SafeMul(v106, _buyMarketingFee);

                    v124 = _SafeDiv(v123, _buyTotalFees);

                    v125 = _SafeAdd(_tokensForMarketing, v124);

                    _tokensForMarketing = v125;

                }

            } else {

                v126 = _SafeMul(varg0, _sellTotalFees);

                v106 = v127 = _SafeDiv(v126, 100);

                v128 = _SafeMul(v127, _sellLiquidityFee);

                v129 = _SafeDiv(v128, _sellTotalFees);

                v130 = _SafeAdd(_tokensForLiquidity, v129);

                _tokensForLiquidity = v130;

                v131 = _SafeMul(v127, _sellDevFee);

                v132 = _SafeDiv(v131, _sellTotalFees);

                v133 = _SafeAdd(_tokensForDev, v132);

                _tokensForDev = v133;

                v134 = _SafeMul(v127, _sellMarketingFee);

                v135 = _SafeDiv(v134, _sellTotalFees);

                v136 = _SafeAdd(_tokensForMarketing, v135);

                _tokensForMarketing = v136;

                goto 0x3816;

            }

            if (v106 > 0) {

                0x39e2(v106, this, varg2);

            }

            varg0 = v137 = _SafeSub(varg0, v106);

        }

        0x39e2(varg0, varg1, varg2);

    } else {

        0x39e2(0, varg1, varg2);

    }

    return ;

}
