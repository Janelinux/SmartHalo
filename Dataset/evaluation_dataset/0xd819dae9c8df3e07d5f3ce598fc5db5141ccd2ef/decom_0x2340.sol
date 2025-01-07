function 0x2340(uint256 varg0, uint256 varg1, uint256 varg2) private { 

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

                        v9 = v12 = address(varg1) != address(0x1cfd44183cf37d702f96452c4d182481dd256e5b);

                    }

                    if (v9) {

                        require(owner_d[address(tx.origin)] < block.number, Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_d[address(tx.origin)] = block.number;

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

            v29 = _SafeAdd(_tokensForCharity, _tokensForLiquidity);

            v30 = _SafeAdd(v29, _tokensForMarketing);

            v31 = _SafeAdd(v30, _tokensForDev);

            v32 = v33 = v28 == 0;

            if (v28 != 0) {

                v32 = v31 == 0;

            }

            if (!v32) {

                v34 = _SafeMul(_swapTokensAtAmount, 20);

                if (v28 > v34) {

                    v28 = v35 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v36 = _SafeMul(v28, _tokensForLiquidity);

                v37 = _SafeDiv(v36, v31);

                v38 = _SafeDiv(v37, 2);

                v39 = _SafeSub(v28, v38);

                v40 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v40.data, msg.data.length, 64);

                }

                require(0 < v40.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v41 = v40.data;

                v40[0] = address(this);

                v42, /* address */ v43 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).WETH().gas(msg.gas);

                require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                0x3c60(v43);

                require(1 < v40.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v40[1] = address(v43);

                0x2175(v39, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v44 = new array[](v40.length);

                v45 = v46 = v44.data;

                v47 = v48 = v40.data;

                v49 = v50 = 0;

                while (v49 < v40.length) {

                    MEM[v45] = address(MEM[v47]);

                    v45 = v45 + 32;

                    v47 = v47 + 32;

                    v49 = v49 + 1;

                }

                require(bool((address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)).code.size));

                v51 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).swapExactTokensForETHSupportingFeeOnTransferTokens(v39, 0, v44, address(this), block.timestamp, v52, address(this)).gas(msg.gas);

                require(bool(v51), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v53 = _SafeSub(this.balance, this.balance);

                v54 = _SafeMul(v53, _tokensForCharity);

                v55 = _SafeDiv(v54, v31);

                v56 = _SafeMul(v53, _tokensForMarketing);

                v57 = _SafeDiv(v56, v31);

                v58 = _SafeMul(v53, _tokensForDev);

                v59 = _SafeDiv(v58, v31);

                v60 = _SafeSub(v53, v55);

                v61 = _SafeSub(v60, v57);

                v62 = _SafeSub(v61, v59);

                _tokensForLiquidity = 0;

                _tokensForCharity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v63 = 0x4d91(MEM[64]);

                v64, v65 = _devWallet.call(MEM[(MEM[64]) len (v63 - MEM[64])], MEM[(MEM[64]) len 0]).value(v59).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v66 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v66.data, 0, RETURNDATASIZE());

                }

                v67 = 0x4d91(MEM[64]);

                v68, v69 = _marketingWallet.call(MEM[(MEM[64]) len (v67 - MEM[64])], MEM[(MEM[64]) len 0]).value(v57).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v70 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v70.data, 0, RETURNDATASIZE());

                }

                v71 = v72 = v38 > 0;

                if (v72) {

                    v71 = v62 > 0;

                }

                if (v71) {

                    0x2175(v38, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v73, v74, v75, v76 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(address(this), v38, 0, 0, _devWallet, block.timestamp).value(v62).gas(msg.gas);

                    require(bool(v73), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    0x3c96(v74);

                    0x3c96(v75);

                    0x3c96(v76);

                    emit SwapAndLiquify(v39, v62, _tokensForLiquidity);

                }

                v77 = 0x4d91(MEM[64]);

                v78, v79 = _charityWallet.call(MEM[(MEM[64]) len (v77 - MEM[64])], MEM[(MEM[64]) len 0]).value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v80 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v80.data, 0, RETURNDATASIZE());

                }

            }

            stor_5_20_20 = 0;

        }

        v81 = v82 = !stor_5_20_20;

        v83 = v84 = uint8(_isExcludedFromFees[address(address(varg2))]);

        if (!v84) {

            v83 = v85 = uint8(_isExcludedFromFees[address(address(varg1))]);

        }

        if (v83) {

            v81 = v86 = 0;

        }

        v87 = v88 = 0;

        if (v81) {

            v89 = v90 = uint8(_automatedMarketMakerPairs[address(address(varg1))]);

            if (v90) {

                v89 = v91 = _sellTotalFees > 0;

            }

            if (!v89) {

                v92 = v93 = uint8(_automatedMarketMakerPairs[address(address(varg2))]);

                if (v93) {

                    v92 = v94 = _buyTotalFees > 0;

                }

                if (v92) {

                    v95 = _SafeMul(varg0, _buyTotalFees);

                    v87 = _SafeDiv(v95, 100);

                    v96 = _SafeMul(v87, _buyCharityFee);

                    v97 = _SafeDiv(v96, _buyTotalFees);

                    v98 = _SafeAdd(_tokensForCharity, v97);

                    _tokensForCharity = v98;

                    v99 = _SafeMul(v87, _buyLiquidityFee);

                    v100 = _SafeDiv(v99, _buyTotalFees);

                    v101 = _SafeAdd(_tokensForLiquidity, v100);

                    _tokensForLiquidity = v101;

                    v102 = _SafeMul(v87, _buyDevFee);

                    v103 = _SafeDiv(v102, _buyTotalFees);

                    v104 = _SafeAdd(_tokensForDev, v103);

                    _tokensForDev = v104;

                    v105 = _SafeMul(v87, _buyMarketingFee);

                    v106 = _SafeDiv(v105, _buyTotalFees);

                    v107 = _SafeAdd(_tokensForMarketing, v106);

                    _tokensForMarketing = v107;

                }

            } else {

                v108 = _SafeMul(varg0, _sellTotalFees);

                v87 = v109 = _SafeDiv(v108, 100);

                v110 = _SafeMul(v109, _sellCharityFee);

                v111 = _SafeDiv(v110, _sellTotalFees);

                v112 = _SafeAdd(_tokensForCharity, v111);

                _tokensForCharity = v112;

                v113 = _SafeMul(v109, _sellLiquidityFee);

                v114 = _SafeDiv(v113, _sellTotalFees);

                v115 = _SafeAdd(_tokensForLiquidity, v114);

                _tokensForLiquidity = v115;

                v116 = _SafeMul(v109, _sellDevFee);

                v117 = _SafeDiv(v116, _sellTotalFees);

                v118 = _SafeAdd(_tokensForDev, v117);

                _tokensForDev = v118;

                v119 = _SafeMul(v109, _sellMarketingFee);

                v120 = _SafeDiv(v119, _sellTotalFees);

                v121 = _SafeAdd(_tokensForMarketing, v120);

                _tokensForMarketing = v121;

                goto 0x3007;

            }

            if (v87 > 0) {

                0x31a7(v87, this, varg2);

            }

            varg0 = v122 = _SafeSub(varg0, v87);

        }

        0x31a7(varg0, varg1, varg2);

    } else {

        0x31a7(0, varg1, varg2);

    }

    return ;

}
