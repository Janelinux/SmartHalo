function 0x1d75(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    if (!_tradingActive) {

        v1 = address(v0);

        v2 = v3 = 0xff & _isExcludedFromFee[v1];

        if (!v3) {

            v4 = address(varg1);

            v2 = v5 = 0xff & _isExcludedFromFee[v4];

        }

        require(v2, Error('Trading is not active yet.'));

    }

    if (_limitsInEffect) {

        v6 = _owner == address(v0);

        v7 = v8 = _owner != address(v0);

        if (_owner != address(v0)) {

            v7 = v9 = _owner != address(varg1);

        }

        if (v7) {

            v7 = v10 = address(varg1);

        }

        if (v7) {

            v7 = v11 = 57005 != address(varg1);

        }

        if (v7) {

            v7 = v12 = !stor_27_20_20;

        }

        if (v7) {

            v13 = v14 = stor_20_0_0;

            if (v14) {

                v15 = address(v0);

                v13 = v16 = 0xff & _automatedMarketMakerPairs[v15];

            }

            if (v13) {

                require(msg.gas <= stor_21, Error('Gas price exceeds limit.'));

            }

            if (_transferDelayEnabled) {

                v17 = _owner == address(varg1);

                v18 = v19 = _owner != address(varg1);

                if (_owner != address(varg1)) {

                    v18 = v20 = _uniswapV2Router != address(varg1);

                }

                if (v18) {

                    v18 = v21 = _uniswapV2Pair != address(varg1);

                }

                if (v18) {

                    require(block.number > owner_1c[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                    owner_1c[tx.origin] = block.number;

                }

            }

            v22 = address(v0);

            v23 = v24 = 0xff & _automatedMarketMakerPairs[v22];

            if (v24) {

                v25 = address(varg1);

                v23 = v26 = !(0xff & __isExcludedMaxTransactionAmount[v25]);

            }

            if (!v23) {

                v27 = address(varg1);

                v28 = v29 = 0xff & _automatedMarketMakerPairs[v27];

                if (v29) {

                    v30 = address(v0);

                    v28 = v31 = !(0xff & __isExcludedMaxTransactionAmount[v30]);

                }

                if (!v28) {

                    v32 = address(varg1);

                    if (!(0xff & __isExcludedMaxTransactionAmount[v32])) {

                        v33 = 0x1311(varg1);

                        v34 = _SafeAdd(varg0, v33);

                        require(v34 <= _maxWallet, Error('Cannot exceed max wallet'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                }

            } else {

                require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                v35 = 0x1311(varg1);

                v36 = _SafeAdd(varg0, v35);

                require(v36 <= _maxWallet, Error('Cannot exceed max wallet'));

            }

        }

    }

    v37 = 0x1311(this);

    v38 = v39 = v37 >= _minimumTokensBeforeSwapAmount;

    v38 = v40 = !stor_27_20_20;

    if (!stor_27_20_20) {

        v38 = v41 = _swapAndLiquifyEnabled;

    }

    if (v38) {

        v42 = 0x1311(_uniswapV2Pair);

        v38 = v43 = v42 > 0;

    }

    if (v38) {

        v44 = address(varg1);

        v38 = v45 = 0xff & _automatedMarketMakerPairs[v44];

    }

    if (v38) {

        v46, v47, varg0 = v48, varg1 = v49, v0 = v50, v51 = 0x26a5();

    }

    v52 = v53 = !stor_e;

    if (v53) {

        v52 = !stor_10;

    }

    if (!v52) {

        stor_f = stor_e;

        stor_11 = stor_10;

        stor_e = 0;

        stor_10 = 0;

        goto 0x241f;

    }

    stor_d = 3;

    v54 = address(v0);

    v55 = v56 = !(0xff & _isExcludedFromFee[v54]);

    if (v56) {

        v57 = address(varg1);

        v55 = v58 = !(0xff & _isExcludedFromFee[v57]);

    }

    if (v55) {

        v59 = address(v0);

        if (!(0xff & _automatedMarketMakerPairs[v59])) {

            v60 = address(varg1);

            if (0xff & _automatedMarketMakerPairs[v60]) {

                stor_e = __sellTaxFee;

                v61 = _SafeAdd(__sellLiquidityFee, __sellMarketingFee);

                stor_10 = v61;

                if (v61) {

                    stor_d = 2;

                }

            }

        } else {

            stor_e = __buyTaxFee;

            v62 = _SafeAdd(__buyLiquidityFee, __buyMarketingFee);

            stor_10 = v62;

            if (v62) {

                stor_d = 1;

            }

        }

    }

    v63 = v64 = 0xff & _isExcludedFromReward[address(v0)];

    if (v64) {

        v63 = !(0xff & _isExcludedFromReward[address(varg1)]);

    }

    if (!v63) {

        v65 = v66 = !(0xff & _isExcludedFromReward[address(v0)]);

        if (v66) {

            v65 = 0xff & _isExcludedFromReward[address(varg1)];

        }

        if (!v65) {

            v67 = v68 = 0xff & _isExcludedFromReward[address(v0)];

            if (v68) {

                v67 = 0xff & _isExcludedFromReward[address(varg1)];

            }

            if (!v67) {

                v69, v70, v71, v72, v73, v74 = 0x25dd();

                v75 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

                v77 = 0x1c0f(v74, map_5[v75]);

                v78 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

                map_5[v78] = v77;

                v79 = 0x257e(v73, map_5[v78]);

                map_5[address(varg0)] = v79;

                0x3119();

                0x327e(12063, v70);

                emit Transfer(0, address(v74), v69);

                goto 0xc5e0x2878B0x24fe;

            } else {

                v80, v81, v82, v83, v84, v85 = 0x25dd();

                v86 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

                v87 = 0x1c0f(0, map_6[v86]);

                v88 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

                map_6[v88] = v87;

                v89 = 0x1c0f(v85, map_6[v88]);

                v90 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

                map_5[v90] = v89;

                v91 = 0x257e(v82, map_6[v90]);

                map_6[address(varg0)] = v91;

                v92 = 0x257e(v84, map_6[address(varg0)]);

                map_5[address(varg0)] = v92;

                0x3119();

                0x327e(12063, v81);

                emit Transfer(0, address(v85), v80);

                goto 0xc5e0x2878B0x24fe;

            }

        } else {

            v93, v94, v95, v96, v97, v98 = 0x25dd();

            v99 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

            v100 = 0x1c0f(v98, map_5[v99]);

            v101 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

            map_5[v101] = v100;

            v102 = 0x257e(v95, map_6[v101]);

            map_6[address(varg0)] = v102;

            v103 = 0x257e(v97, map_6[address(varg0)]);

            map_5[address(varg0)] = v103;

            0x3119();

            0x327e(12063, v94);

            emit Transfer(0, address(v98), v93);

            goto 0xc5e0x2878B0x24fe;

        }

    } else {

        v104, v105, v106, v107, v108, v109 = 0x25dd();

        v110 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

        v111 = 0x1c0f(0, map_6[v110]);

        v112 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

        map_6[v112] = v111;

        v113 = 0x1c0f(v109, map_6[v112]);

        v114 = v76 & 0xffffffffffffffffffffffffffffffffffffffff;

        map_5[v114] = v113;

        v115 = 0x257e(v108, map_5[v114]);

        map_5[address(varg0)] = v115;

        0x3119();

        0x327e(12063, v105);

        emit Transfer(0, address(v109), v104);

    }

    stor_e = stor_f;

    stor_10 = stor_11;

    return ;

}
