function 0x2a03(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('amount must be greater than 0'));

    if (!_tradingActive) {

        v0 = address(varg2);

        v1 = v2 = 0xff & owner_27[v0];

        if (!v2) {

            v3 = address(varg1);

            v1 = v4 = 0xff & owner_27[v3];

        }

        require(v1, Error('Trading is not active.'));

    }

    v5 = v6 = block.number >= _blockForPenaltyEnd;

    if (v6) {

        v5 = v7 = _tradingActive;

    }

    if (v5) {

        v8 = address(varg2);

        v9 = v10 = !(0xff & _boughtEarly[v8]);

        if (0xff & _boughtEarly[v8]) {

            v9 = v11 = _owner == address(varg1);

        }

        if (!v9) {

            v9 = v12 = 57005 == address(varg1);

        }

        require(v9, Error('Bots cannot transfer tokens in or out except to owner or dead address.'));

    }

    if (_limitsInEffect) {

        v13 = _owner == address(varg2);

        v14 = v15 = _owner != address(varg2);

        if (_owner != address(varg2)) {

            v14 = v16 = _owner != address(varg1);

        }

        if (v14) {

            v14 = v17 = 57005 != address(varg1);

        }

        if (v14) {

            v18 = address(varg2);

            v14 = v19 = !(0xff & owner_27[v18]);

        }

        if (v14) {

            v20 = address(varg1);

            v14 = v21 = !(0xff & owner_27[v20]);

        }

        if (v14) {

            if (_transferDelayEnabled) {

                v22 = _dexRouter == address(varg1);

                v23 = v24 = _dexRouter != address(varg1);

                if (_dexRouter != address(varg1)) {

                    v23 = v25 = _lpPair != address(varg1);

                }

                if (v23) {

                    v26 = _SafeSub(block.number, 2);

                    v27 = v28 = owner_17[tx.origin] < v26;

                    if (v28) {

                        v29 = _SafeSub(block.number, 2);

                        v30 = address(varg1);

                        v27 = v31 = owner_17[v30] < v29;

                    }

                    require(v27, Error('_transfer:: Transfer Delay enabled.  Try again later.'));

                    owner_17[tx.origin] = block.number;

                    v32 = address(varg1);

                    owner_17[v32] = block.number;

                }

            }

            v33 = address(varg2);

            v34 = v35 = 0xff & _automatedMarketMakerPairs[v33];

            if (v35) {

                v36 = address(varg1);

                v34 = v37 = !(0xff & __isExcludedMaxTransactionAmount[v36]);

            }

            if (!v34) {

                v38 = address(varg1);

                v39 = v40 = 0xff & _automatedMarketMakerPairs[v38];

                if (v40) {

                    v41 = address(varg2);

                    v39 = v42 = !(0xff & __isExcludedMaxTransactionAmount[v41]);

                }

                if (!v39) {

                    v43 = address(varg1);

                    if (!(0xff & __isExcludedMaxTransactionAmount[v43])) {

                        v44 = address(varg1);

                        v45 = _SafeAdd(varg0, _balanceOf[v44]);

                        require(v45 <= _maxWallet, Error('Max Wallet Exceeded'));

                    }

                } else {

                    require(varg0 <= _maxSellAmount, Error('Sell transfer amount exceeds the max sell.'));

                }

            } else {

                require(varg0 <= _maxBuyAmount, Error('Buy transfer amount exceeds the max buy.'));

                v46 = address(varg1);

                v47 = _SafeAdd(varg0, _balanceOf[v46]);

                require(v47 <= _maxWallet, Error('Max Wallet Exceeded'));

            }

        }

    }

    v48 = v49 = _balanceOf[address(this)] >= _swapTokensAtAmount;

    if (_balanceOf[address(this)] >= _swapTokensAtAmount) {

        v48 = v50 = _swapEnabled;

    }

    if (v48) {

        v48 = v51 = !stor_a_20_20;

    }

    if (v48) {

        v52 = address(varg1);

        v48 = v53 = 0xff & _automatedMarketMakerPairs[v52];

    }

    if (v48) {

        stor_a_20_20 = 1;

        0x351a();

        stor_a_20_20 = 0;

    }

    v54 = address(varg2);

    v55 = v56 = 1;

    v57 = v58 = 0xff & owner_27[v54];

    if (!v58) {

        v59 = address(varg1);

        v57 = v60 = 0xff & owner_27[v59];

    }

    if (v57) {

        v55 = v61 = 0;

    }

    v62 = v63 = 0;

    if (v55) {

        v64 = v65 = block.number < _blockForPenaltyEnd;

        if (block.number >= _blockForPenaltyEnd) {

            v66 = _SafeSub(_maxBuyAmount, 0xc7d713b49da0000);

            v64 = v67 = varg0 >= v66;

            if (v67) {

                v68 = _SafeAdd(8, _blockForPenaltyEnd);

                v64 = v69 = v68 >= block.number;

            }

        }

        if (v64) {

            v70 = address(varg2);

            v64 = v71 = 0xff & _automatedMarketMakerPairs[v70];

        }

        if (v64) {

            v72 = address(varg1);

            v64 = v73 = !(0xff & _automatedMarketMakerPairs[v72]);

        }

        if (v64) {

            v74 = address(varg1);

            v64 = v75 = !(0xff & owner_27[v74]);

        }

        if (v64) {

            v64 = v76 = _buyTotalFees > 0;

        }

        if (!v64) {

            v77 = address(varg1);

            v78 = v79 = 0xff & _automatedMarketMakerPairs[v77];

            if (v79) {

                v78 = v80 = _sellTotalFees > 0;

            }

            if (!v78) {

                v81 = address(varg2);

                v82 = v83 = 0xff & _automatedMarketMakerPairs[v81];

                if (v83) {

                    v82 = v84 = _buyTotalFees > 0;

                }

                if (v82) {

                    v85 = _SafeMul(varg0, _buyTotalFees);

                    require(100, Panic(18));

                    v62 = v85 / 100;

                    v86 = _SafeMul(v62, _buyLiquidityFee);

                    require(_buyTotalFees, Panic(18));

                    v87 = _SafeAdd(_tokensForLiquidity, v86 / _buyTotalFees);

                    _tokensForLiquidity = v87;

                    v88 = _SafeMul(v62, _buyflOOrFee);

                    require(_buyTotalFees, Panic(18));

                    v89 = _SafeAdd(_tokensForTheflOOr, v88 / _buyTotalFees);

                    _tokensForTheflOOr = v89;

                    v90 = _SafeMul(v62, _buyTreasuryFee);

                    require(_buyTotalFees, Panic(18));

                    v91 = _SafeAdd(_tokensForTreasury, v90 / _buyTotalFees);

                    _tokensForTreasury = v91;

                }

            } else {

                v92 = _SafeMul(varg0, _sellTotalFees);

                require(100, Panic(18));

                v62 = v93 = v92 / 100;

                v94 = _SafeMul(v93, _sellLiquidityFee);

                require(_sellTotalFees, Panic(18));

                v95 = _SafeAdd(_tokensForLiquidity, v94 / _sellTotalFees);

                _tokensForLiquidity = v95;

                v96 = _SafeMul(v93, _sellflOOrFee);

                require(_sellTotalFees, Panic(18));

                v97 = _SafeAdd(_tokensForTheflOOr, v96 / _sellTotalFees);

                _tokensForTheflOOr = v97;

                v98 = v99 = _sellTotalFees;

                v100 = v101 = _SafeMul(v93, _sellTreasuryFee);

            }

        } else {

            if (block.number >= _blockForPenaltyEnd) {

                v102 = _SafeSub(_maxBuyAmount, 1);

                _maxBuyAmount = v102;

            }

            v103 = address(varg1);

            if (!(0xff & _boughtEarly[v103])) {

                v104 = address(varg1);

                _boughtEarly[v104] = 0x1 | ~0xff & _boughtEarly[v104];

                v105 = _SafeAdd(_botsCaught, 1);

                _botsCaught = v105;

                _earlyBuyers.length = _earlyBuyers.length + 1;

                MEM[0] = 17;

                v106 = address(varg1);

                STORAGE[0x31ecc21a745e3968a04e9570e4425bc18fa8019c68028196b546d1669c200c68 + _earlyBuyers.length] = v106 | ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[0x31ecc21a745e3968a04e9570e4425bc18fa8019c68028196b546d1669c200c68 + _earlyBuyers.length];

                emit CaughtEarlyBuyer(v106);

            }

            v107 = _SafeMul(99, varg0);

            require(100, Panic(18));

            v62 = v108 = v107 / 100;

            v109 = _SafeMul(v108, _buyLiquidityFee);

            require(_buyTotalFees, Panic(18));

            v110 = _SafeAdd(_tokensForLiquidity, v109 / _buyTotalFees);

            _tokensForLiquidity = v110;

            v111 = _SafeMul(v108, _buyflOOrFee);

            require(_buyTotalFees, Panic(18));

            v112 = _SafeAdd(_tokensForTheflOOr, v111 / _buyTotalFees);

            _tokensForTheflOOr = v112;

            v98 = v113 = _buyTotalFees;

            v100 = v114 = _SafeMul(v108, _buyTreasuryFee);

        }

        require(v98, Panic(18));

        v115 = _SafeAdd(_tokensForTreasury, v100 / v98);

        _tokensForTreasury = v115;

        goto 0x34e8;

        if (v62) {

            0x28ae(v62, this, varg2);

        }

        varg0 = v116 = _SafeSub(varg0, v62);

    }

    0x28ae(varg0, varg1, varg2);

    return ;

}
