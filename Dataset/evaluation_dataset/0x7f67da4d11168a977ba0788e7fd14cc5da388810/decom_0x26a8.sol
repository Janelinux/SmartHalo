function 0x26a8(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) - address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) - address(0x0), Error('ERC20: transfer to the zero address'));

    v0 = v1 = !uint8(owner_e[address(address(varg1))]);

    if (!bool(uint8(owner_e[address(address(varg1))]))) {

        v0 = v2 = !uint8(owner_e[address(address(varg2))]);

    }

    require(v0, Error('You have been blacklisted from transfering tokens'));

    if (varg0 - 0) {

        if (_limitsInEffect) {

            v3 = v4 = address(varg2) != _owner;

            if (!bool(address(varg2) == _owner)) {

                v3 = v5 = address(varg1) != _owner;

            }

            if (v3) {

                v3 = v6 = address(varg1) != address(0x0);

            }

            if (v3) {

                v3 = v7 = address(varg1) != address(0xdead);

            }

            if (v3) {

                v3 = v8 = !stor_5_20_20;

            }

            if (v3) {

                if (!_tradingActive) {

                    v9 = v10 = uint8(_isExcludedFromFees[address(address(varg2))]);

                    if (!v10) {

                        v9 = v11 = uint8(_isExcludedFromFees[address(address(varg1))]);

                    }

                    require(v9, Error('Trading is not active.'));

                }

                if (_transferDelayEnabled) {

                    v12 = v13 = address(varg1) != _owner;

                    if (!bool(address(varg1) == _owner)) {

                        v12 = v14 = address(varg1) != address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d);

                    }

                    if (v12) {

                        v12 = v15 = address(varg1) != address(0xba1660b94abcd6b0a990061b75ada8ca32901eb6);

                    }

                    if (v12) {

                        require(owner_c[address(tx.origin)] <= block.number, Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                        owner_c[address(tx.origin)] = block.number;

                    }

                }

                v16 = v17 = uint8(_automatedMarketMakerPairs[address(address(varg2))]);

                if (v17) {

                    v16 = v18 = !uint8(__isExcludedMaxTransactionAmount[address(address(varg1))]);

                }

                if (!v16) {

                    v19 = v20 = uint8(_automatedMarketMakerPairs[address(address(varg1))]);

                    if (v20) {

                        v19 = v21 = !uint8(__isExcludedMaxTransactionAmount[address(address(varg2))]);

                    }

                    if (!v19) {

                        if (!uint8(__isExcludedMaxTransactionAmount[address(address(varg1))])) {

                            v22 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                            require(v22 <= _maxWallet, Error('Max wallet exceeded'));

                        }

                    } else {

                        require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                    v23 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                    require(v23 <= _maxWallet, Error('Max wallet exceeded'));

                }

            }

        }

        v24 = v25 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        if (!bool(_balanceOf[address(this)] < _swapTokensAtAmount)) {

            v24 = v26 = _swapEnabled;

        }

        if (v24) {

            v24 = v27 = !stor_5_20_20;

        }

        if (v24) {

            v24 = v28 = !uint8(_automatedMarketMakerPairs[address(address(varg2))]);

        }

        if (v24) {

            v24 = v29 = !uint8(_isExcludedFromFees[address(address(varg2))]);

        }

        if (v24) {

            v24 = v30 = !uint8(_isExcludedFromFees[address(address(varg1))]);

        }

        if (v24) {

            stor_5_20_20 = 1;

            v31 = _balanceOf[address(this)];

            v32 = _SafeAdd(_tokensForLiquidity, _tokensForMarketing);

            v33 = _SafeAdd(v32, _tokensForDev);

            v34 = v35 = v31 == 0;

            if (v31 != 0) {

                v34 = v33 == 0;

            }

            if (!v34) {

                v36 = _SafeMul(_swapTokensAtAmount, 20);

                if (v31 > v36) {

                    v31 = v37 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v38 = _SafeMul(v31, _tokensForLiquidity);

                v39 = _SafeDiv(v38, v33);

                v40 = _SafeDiv(v39, 2);

                v41 = 0x3423('SafeMath: subtraction overflow', v40, v31);

                v42 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v42.data, msg.data.length, 64);

                }

                require(0 < v42.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v43 = v42.data;

                v42[0] = address(this);

                v44, /* address */ v45 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).WETH().gas(msg.gas);

                require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                0x4018(v45);

                require(1 < v42.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v42[1] = address(v45);

                0x24df(v41, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v46 = new array[](v42.length);

                v47 = v48 = v46.data;

                v49 = v50 = v42.data;

                v51 = v52 = 0;

                while (v51 < v42.length) {

                    MEM[v47] = address(MEM[v49]);

                    v47 = v47 + 32;

                    v49 = v49 + 32;

                    v51 = v51 + 1;

                }

                require(bool((address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)).code.size));

                v53 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).swapExactTokensForETHSupportingFeeOnTransferTokens(v41, 0, v46, address(this), block.timestamp, v54, address(this)).gas(msg.gas);

                require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v55 = 0x3423('SafeMath: subtraction overflow', this.balance, this.balance);

                v56 = 0x3aa2(_tokensForMarketing, v55);

                v57 = 0x3b1c(v33, v56);

                v58 = 0x3aa2(_tokensForDev, v55);

                v59 = 0x3b1c(v33, v58);

                v60 = _SafeSub(v55, v57);

                v61 = _SafeSub(v60, v59);

                _tokensForLiquidity = 0;

                _tokensForMarketing = 0;

                _tokensForDev = 0;

                v62 = 0x5042(MEM[64]);

                v63, v64 = stor_7_0_19.call(MEM[(MEM[64]) len (v62 - MEM[64])], MEM[(MEM[64]) len 0]).value(v59).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v65 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v65.data, 0, RETURNDATASIZE());

                }

                v66 = v67 = v40 > 0;

                if (v67) {

                    v66 = v61 > 0;

                }

                if (v66) {

                    0x24df(v40, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v68, v69, v70, v71 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(address(this), v40, 0, 0, address(this), block.timestamp).value(v61).gas(msg.gas);

                    require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    0x404e(v69);

                    0x404e(v70);

                    0x404e(v71);

                    emit SwapAndLiquify(v41, v61, _tokensForLiquidity);

                }

                v72 = 0x5042(MEM[64]);

                v73, v74 = stor_6_0_19.call(MEM[(MEM[64]) len (v72 - MEM[64])], MEM[(MEM[64]) len 0]).value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v75 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v75.data, 0, RETURNDATASIZE());

                }

            }

            stor_5_20_20 = 0;

        }

        v76 = v77 = !stor_5_20_20;

        v78 = v79 = uint8(_isExcludedFromFees[address(address(varg2))]);

        if (!v79) {

            v78 = v80 = uint8(_isExcludedFromFees[address(address(varg1))]);

        }

        if (v78) {

            v76 = v81 = 0;

        }

        v82 = v83 = 0;

        if (v76) {

            v84 = v85 = uint8(_automatedMarketMakerPairs[address(address(varg1))]);

            if (v85) {

                v84 = v86 = _sellTotalFees > 0;

            }

            if (!v84) {

                v87 = v88 = uint8(_automatedMarketMakerPairs[address(address(varg2))]);

                if (v88) {

                    v87 = v89 = _buyTotalFees > 0;

                }

                if (v87) {

                    v90 = 0x3aa2(_buyTotalFees, varg0);

                    v82 = v91 = 0x3b1c(100, v90);

                    v92 = _SafeMul(v91, _buyLiquidityFee);

                    v93 = _SafeDiv(v92, _buyTotalFees);

                    v94 = _SafeAdd(_tokensForLiquidity, v93);

                    _tokensForLiquidity = v94;

                    v95 = _SafeMul(v91, _buyDevFee);

                    v96 = _SafeDiv(v95, _buyTotalFees);

                    v97 = _SafeAdd(_tokensForDev, v96);

                    _tokensForDev = v97;

                    v98 = _SafeMul(v91, _buyMarketing);

                    v99 = _SafeDiv(v98, _buyTotalFees);

                    v100 = _SafeAdd(_tokensForMarketing, v99);

                    _tokensForMarketing = v100;

                }

            } else {

                v101 = 0x3aa2(_sellTotalFees, varg0);

                v82 = v102 = 0x3b1c(100, v101);

                v103 = _SafeMul(v102, _sellLiquidityFee);

                v104 = _SafeDiv(v103, _sellTotalFees);

                v105 = _SafeAdd(_tokensForLiquidity, v104);

                _tokensForLiquidity = v105;

                v106 = _SafeMul(v102, _sellDevFee);

                v107 = _SafeDiv(v106, _sellTotalFees);

                v108 = _SafeAdd(_tokensForDev, v107);

                _tokensForDev = v108;

                v109 = _SafeMul(v102, _sellMarketing);

                v110 = _SafeDiv(v109, _sellTotalFees);

                v111 = _SafeAdd(_tokensForMarketing, v110);

                _tokensForMarketing = v111;

                goto 0x33ea;

            }

            if (v82 > 0) {

                0x3528(v82, this, varg2);

            }

            varg0 = v112 = _SafeSub(varg0, v82);

        }

        0x3528(varg0, varg1, varg2);

    } else {

        0x3528(0, varg1, varg2);

    }

    return ;

}
