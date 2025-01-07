function 0x2340(uint256 varg0, uint256 varg1, uint256 varg2) private { 

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

                        v11 = v14 = address(varg1) != 0x36cdbfb648dc3bc4c2ee212247e2a608361335e5;

                    }

                    if (v11) {

                        require(owner_d[address(tx.origin)] < block.number, Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_d[address(tx.origin)] = block.number;

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

            v41 = _SafeAdd(_tokensForCharity, _tokensForLiquidity);

            v42 = _SafeAdd(v41, _tokensForMarketing);

            v43 = _SafeAdd(v42, _tokensForDev);

            v44 = v45 = v40 == 0;

            if (v40 != 0) {

                v44 = v43 == 0;

            }

            if (!v44) {

                v46 = _SafeMul(_swapTokensAtAmount, 20);

                if (v40 > v46) {

                    v40 = v47 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v48 = _SafeMul(v40, _tokensForLiquidity);

                v49 = _SafeDiv(v48, v43);

                v50 = _SafeDiv(v49, 2);

                v51 = _SafeSub(v40, v50);

                v52 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v52.data, msg.data.length, 64);

                }

                require(0 < v52.length, Panic(50));

                v53 = v52.data;

                v52[0] = address(this);

                v54, v55 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH().gas(msg.gas);

                require(v54); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                0x3c60(v55);

                require(1 < v52.length, Panic(50));

                v52[1] = address(v55);

                0x2175(v51, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v56 = new array[](v52.length);

                v57 = v58 = v56.data;

                v59 = v60 = v52.data;

                v61 = v62 = 0;

                while (v61 < v52.length) {

                    MEM[v57] = address(MEM[v59]);

                    v57 = v57 + 32;

                    v59 = v59 + 32;

                    v61 = v61 + 1;

                }

                require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

                v63 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETHSupportingFeeOnTransferTokens(v51, 0, v56, address(this), block.timestamp).gas(msg.gas);

                require(v63); // checks call status, propagates error data on error

                v64 = _SafeSub(this.balance, this.balance);

                v65 = _SafeMul(v64, _tokensForCharity);

                v66 = _SafeDiv(v65, v43);

                v67 = _SafeMul(v64, _tokensForMarketing);

                v68 = _SafeDiv(v67, v43);

                v69 = _SafeMul(v64, _tokensForDev);

                v70 = _SafeDiv(v69, v43);

                v71 = _SafeSub(v64, v66);

                v72 = _SafeSub(v71, v68);

                v73 = _SafeSub(v72, v70);

                _tokensForLiquidity = 0;

                _tokensForCharity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v74 = 0x4d91(MEM[64]);

                v75, v76 = _devWallet.call(MEM[(MEM[64]) len (v74 - MEM[64])], MEM[(MEM[64]) len 0]).value(v70).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v77 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v77.data, 0, RETURNDATASIZE());

                }

                v78 = 0x4d91(MEM[64]);

                v79, v80 = _marketingWallet.call(MEM[(MEM[64]) len (v78 - MEM[64])], MEM[(MEM[64]) len 0]).value(v68).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v81 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v81.data, 0, RETURNDATASIZE());

                }

                v82 = v83 = v50 > 0;

                if (v83) {

                    v82 = v73 > 0;

                }

                if (v82) {

                    0x2175(v50, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v84, v85, v86, v87 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(address(this), v50, 0, 0, _devWallet, block.timestamp).value(v73).gas(msg.gas);

                    require(v84); // checks call status, propagates error data on error

                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    0x3c96(v85);

                    0x3c96(v86);

                    0x3c96(v87);

                    emit SwapAndLiquify(v51, v73, _tokensForLiquidity);

                }

                v88 = 0x4d91(MEM[64]);

                v89, v90 = _charityWallet.call(MEM[(MEM[64]) len (v88 - MEM[64])], MEM[(MEM[64]) len 0]).value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v91 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v91.data, 0, RETURNDATASIZE());

                }

            }

            stor_5_20_20 = 0;

        }

        v92 = v93 = !stor_5_20_20;

        v94 = address(varg2);

        v95 = v96 = 0xff & _isExcludedFromFees[v94];

        if (!v96) {

            v97 = address(varg1);

            v95 = v98 = 0xff & _isExcludedFromFees[v97];

        }

        if (v95) {

            v92 = v99 = 0;

        }

        v100 = v101 = 0;

        if (v92) {

            v102 = address(varg1);

            v103 = v104 = 0xff & _automatedMarketMakerPairs[v102];

            if (v104) {

                v103 = v105 = _sellTotalFees > 0;

            }

            if (!v103) {

                v106 = address(varg2);

                v107 = v108 = 0xff & _automatedMarketMakerPairs[v106];

                if (v108) {

                    v107 = v109 = _buyTotalFees > 0;

                }

                if (v107) {

                    v110 = _SafeMul(varg0, _buyTotalFees);

                    v100 = _SafeDiv(v110, 100);

                    v111 = _SafeMul(v100, _buyCharityFee);

                    v112 = _SafeDiv(v111, _buyTotalFees);

                    v113 = _SafeAdd(_tokensForCharity, v112);

                    _tokensForCharity = v113;

                    v114 = _SafeMul(v100, _buyLiquidityFee);

                    v115 = _SafeDiv(v114, _buyTotalFees);

                    v116 = _SafeAdd(_tokensForLiquidity, v115);

                    _tokensForLiquidity = v116;

                    v117 = _SafeMul(v100, _buyDevFee);

                    v118 = _SafeDiv(v117, _buyTotalFees);

                    v119 = _SafeAdd(_tokensForDev, v118);

                    _tokensForDev = v119;

                    v120 = _SafeMul(v100, _buyMarketingFee);

                    v121 = _SafeDiv(v120, _buyTotalFees);

                    v122 = _SafeAdd(_tokensForMarketing, v121);

                    _tokensForMarketing = v122;

                }

            } else {

                v123 = _SafeMul(varg0, _sellTotalFees);

                v100 = v124 = _SafeDiv(v123, 100);

                v125 = _SafeMul(v124, _sellCharityFee);

                v126 = _SafeDiv(v125, _sellTotalFees);

                v127 = _SafeAdd(_tokensForCharity, v126);

                _tokensForCharity = v127;

                v128 = _SafeMul(v124, _sellLiquidityFee);

                v129 = _SafeDiv(v128, _sellTotalFees);

                v130 = _SafeAdd(_tokensForLiquidity, v129);

                _tokensForLiquidity = v130;

                v131 = _SafeMul(v124, _sellDevFee);

                v132 = _SafeDiv(v131, _sellTotalFees);

                v133 = _SafeAdd(_tokensForDev, v132);

                _tokensForDev = v133;

                v134 = _SafeMul(v124, _sellMarketingFee);

                v135 = _SafeDiv(v134, _sellTotalFees);

                v136 = _SafeAdd(_tokensForMarketing, v135);

                _tokensForMarketing = v136;

                goto 0x3007;

            }

            if (v100 > 0) {

                0x31a7(v100, this, varg2);

            }

            varg0 = v137 = _SafeSub(varg0, v100);

        }

        0x31a7(varg0, varg1, varg2);

    } else {

        0x31a7(0, varg1, varg2);

    }

    return ;

}
