function 0x22af(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v0 = address(varg1);

    v1 = v2 = !(0xff & __isBlacklisted[v0]);

    if (v2) {

        v3 = address(varg2);

        v1 = v4 = !(0xff & __isBlacklisted[v3]);

    }

    require(v1, Error('Your address or recipient address is blacklisted'));

    if (varg0) {

        v5 = v6 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        v7 = v8 = 0;

        if (v6) {

            v5 = v9 = !(0xff & _profitBaseFeeOn >> 160);

        }

        if (v5) {

            v10 = address(varg2);

            v5 = v11 = !(0xff & _automatedMarketMakerPairs[v10]);

        }

        if (v5) {

            v5 = v12 = address(varg2) != _owner;

        }

        if (v5) {

            v5 = v13 = address(varg1) != _owner;

        }

        if (v5) {

            _profitBaseFeeOn = 0x10000000000000000000000000000000000000000 | ~0xff0000000000000000000000000000000000000000 & _profitBaseFeeOn;

            v14 = _SafeMul(_marketingFee, _balanceOf[address(this)]);

            v15 = _SafeDiv(_totalFees, v14);

            0x3400(v15);

            v16 = _marketingFeeWallet.call().value(this.balance).gas(2300 * !this.balance);

            require(v16); // checks call status, propagates error data on error

            emit swapTokenForMarketing(v15, _marketingFeeWallet);

            v17 = _SafeMul(_liquidityFee, _balanceOf[address(this)]);

            v18 = _SafeDiv(_totalFees, v17);

            v19 = _SafeDiv(2, v18);

            v20 = new struct(2);

            v20.word0 = 30;

            v21 = v20.data;

            v20.word1 = 'SafeMath: subtraction overflow';

            v22 = _SafeSub(v20, v19, v18);

            0x3400(v19);

            v23 = new struct(2);

            v23.word0 = 30;

            v24 = v23.data;

            v23.word1 = 'SafeMath: subtraction overflow';

            v25 = _SafeSub(v23, this.balance, this.balance);

            0x21c3(v22, address(_profitBaseFeeOn), this);

            require((address(_profitBaseFeeOn)).code.size);

            v26 = address(_profitBaseFeeOn).addLiquidityETH(this, v22, 0, 0, _liquidityReceiver, block.timestamp).value(v25).gas(msg.gas);

            require(v26); // checks call status, propagates error data on error

            require(RETURNDATASIZE() >= 96);

            emit SwapAndLiquify(v19, v25, v22);

            emit swapTokenForLiquify(v18);

            _profitBaseFeeOn = ~0xff0000000000000000000000000000000000000000 & _profitBaseFeeOn;

            v7 = v27 = 1;

        }

        v28 = address(varg2);

        v29 = v30 = !(0xff & _profitBaseFeeOn >> 160);

        v31 = v32 = 0xff & _isExcludedFromFees[v28];

        if (!v32) {

            v33 = address(varg1);

            v31 = v34 = 0xff & _isExcludedFromFees[v33];

        }

        if (v31) {

            v29 = v35 = 0;

        }

        if (v29) {

            v36 = address(varg2);

            if (!(0xff & _automatedMarketMakerPairs[v36])) {

                v37 = address(varg1);

                if (!(0xff & _automatedMarketMakerPairs[v37])) {

                    v38 = address(varg2);

                    v39 = v40 = !(0xff & _isExcludedFromFees[v38]);

                    if (v40) {

                        v41 = address(varg1);

                        v39 = v42 = !(0xff & _isExcludedFromFees[v41]);

                    }

                    if (v39) {

                        if (1 == 0xff & _profitBaseFeeOn >> 192) {

                            v43 = 0x319b(varg0, varg1);

                            v44 = address(varg1);

                            __account[v44][2] = v43;

                        }

                        v45 = address(varg2);

                        v46 = new struct(2);

                        v46.word0 = 30;

                        v47 = v46.data;

                        v46.word1 = 'SafeMath: subtraction overflow';

                        v48 = _SafeSub(v46, varg0, _balanceOf[v45]);

                        if (!v48) {

                            v49 = address(varg2);

                            __account[v49][2] = 0;

                        }

                        v50 = address(varg2);

                        v51 = address(varg1);

                        emit TokensTransfer(v50, v51, varg0);

                    }

                } else {

                    v52 = address(varg2);

                    require(!(0xff & __isSniper[v52]), Error('You are sniper'));

                    require(varg0 <= _maxSellTransactionAmount, Error('Sell transfer amount exceeds the maxSellTransactionAmount.', v53, v53, 0));

                    v54 = v55 = 1 == 0xff & _profitBaseFeeOn >> 200;

                    if (v55) {

                        v56 = address(varg2);

                        v54 = v57 = !(0xff & __account[v56][0x4]);

                    }

                    if (v54) {

                        v58 = address(varg2);

                        if (_balanceOf[v58] > 2) {

                            v59 = _SafeDiv(2, _balanceOf[v58]);

                            require(varg0 <= v59);

                            v60 = address(varg2);

                            __account[v60][3] += varg0;

                            v61 = _SafeDiv(3, _balanceOf[v58]);

                            v62 = address(varg2);

                            if (__account[v62][3] >= v61) {

                                v63 = address(varg2);

                                __account[v63][4] = 0x1 | ~0xff & __account[v63][0x4];

                            }

                        }

                    }

                    v64 = address(varg2);

                    v65 = new struct(2);

                    v65.word0 = 30;

                    v66 = v65.data;

                    v65.word1 = 'SafeMath: subtraction overflow';

                    v67 = _SafeSub(v65, varg0, _balanceOf[v64]);

                    if (!v67) {

                        v68 = address(varg2);

                        __account[v68][2] = 0;

                    }

                    v69 = address(varg2);

                    emit DEXSell(varg0, v69);

                }

            } else {

                require(0xff & _profitBaseFeeOn >> 176, Error("Token isn't launched yet"));

                require(varg0 <= _maxBuyTransactionAmount, Error('Transfer amount exceeds the maxTxAmount.', v53, v53, 0));

                v70 = address(varg1);

                require(_balanceOf[v70] + varg0 <= _maxWalletToken, Error('Exceeds maximum wallet token amount.', v53, v53, 0));

                v71 = v72 = block.timestamp <= _launchedAt;

                if (block.timestamp <= _launchedAt) {

                    v73 = address(varg1);

                    v71 = v74 = !(0xff & __isSniper[v73]);

                }

                if (v71) {

                    _isSniper.length = _isSniper.length + 1;

                    MEM[0] = 25;

                    STORAGE[0x944998273e477b495144fb8794c914197f3ccb46be2900f4698fd0ef743c9695 + _isSniper.length] = address(varg1) | ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[0x944998273e477b495144fb8794c914197f3ccb46be2900f4698fd0ef743c9695 + _isSniper.length];

                }

                v75 = v76 = 0xff & _profitBaseFeeOn >> 168;

                if (v76) {

                    v77 = address(varg1);

                    v75 = v78 = !(0xff & __isSniper[v77]);

                }

                if (v75) {

                    _isSniper.length = _isSniper.length + 1;

                    MEM[0] = 25;

                    STORAGE[0x944998273e477b495144fb8794c914197f3ccb46be2900f4698fd0ef743c9695 + _isSniper.length] = address(varg1) | ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[0x944998273e477b495144fb8794c914197f3ccb46be2900f4698fd0ef743c9695 + _isSniper.length];

                }

                if (1 == 0xff & _profitBaseFeeOn >> 192) {

                    v79 = 0x319b(varg0, varg1);

                    v80 = address(varg1);

                    __account[v80][2] = v79;

                }

                v81 = address(varg1);

                emit DEXBuy(varg0, v81);

            }

            v82 = _SafeMul(_totalFees, varg0);

            v83 = v84 = _SafeDiv(100, v82);

            v85 = address(varg1);

            if (0xff & _automatedMarketMakerPairs[v85]) {

                v86 = _SafeMul(1, varg0);

                v87 = _SafeDiv(100, v86);

                v83 = v88 = v87 + v84;

            }

            v89 = v90 = 0;

            v91 = v92 = 1 == 0xff & _profitBaseFeeOn >> 184;

            if (v92) {

                v93 = address(varg2);

                v91 = v94 = !(0xff & _isExcludedFromFees[v93]);

            }

            if (v91) {

                v95 = address(varg1);

                v91 = v96 = 0xff & _automatedMarketMakerPairs[v95];

            }

            if (v91) {

                v97 = v98 = 0;

                if (v7 == 1) {

                    if (_balanceOf[address(this)] > stor_f) {

                        v97 = v99 = _SafeDiv(stor_f, _balanceOf[address(this)]);

                    } else {

                        v97 = v100 = 1;

                    }

                }

                v101 = address(varg2);

                v102 = 0x3255(v97, varg0, __account[v101][2]);

                if (v102 > v83) {

                    v89 = v103 = v102 - v83;

                } else {

                    v89 = v104 = 0;

                }

            }

            v105 = new struct(2);

            v105.word0 = 30;

            v106 = v105.data;

            v105.word1 = 'SafeMath: subtraction overflow';

            varg0 = v107 = _SafeSub(v105, v89 + v83, varg0);

            0x2f78(v83 + v89, this, varg2);

        }

        0x2f78(varg0, varg1, varg2);

        return ;

    } else {

        0x2f78(0, varg1, varg2);

        return ;

    }

}
