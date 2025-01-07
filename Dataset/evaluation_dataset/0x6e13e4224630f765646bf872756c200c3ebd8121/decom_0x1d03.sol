function 0x1d03(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(!uint8(_isBot[address(varg1)]), Error('You have no power here!'));

    require(!uint8(_isBot[tx.origin]), Error('You have no power here!'));

    if (varg0) {

        if (!_tradingActive) {

            v0 = v1 = uint8(_isExcludedFromFees[address(varg2)]);

            if (!v1) {

                v0 = v2 = uint8(_isExcludedFromFees[address(varg1)]);

            }

            require(v0, Error('Trading is not active.'));

        }

        v3 = v4 = _owner != address(varg2);

        if (_owner != address(varg2)) {

            v3 = v5 = _owner != address(varg1);

        }

        if (v3) {

            v3 = v6 = bool(address(varg1));

        }

        if (v3) {

            v3 = v7 = 57005 != address(varg1);

        }

        if (v3) {

            v3 = v8 = !stor_7_20_20;

        }

        if (v3) {

            v3 = v9 = !uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v3) {

            v3 = v10 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v3) {

            if (_transferDelayEnabled) {

                v11 = v12 = _dexRouter != address(varg1);

                if (_dexRouter != address(varg1)) {

                    v11 = v13 = _lpPair != address(varg1);

                }

                if (v11) {

                    v14 = _SafeSub(block.number, 1);

                    v15 = v16 = owner_19[tx.origin] < v14;

                    if (v16) {

                        v17 = _SafeSub(block.number, 1);

                        v15 = v18 = owner_19[address(varg1)] < v17;

                    }

                    require(v15, Error('_transfer:: Transfer Delay enabled.  Try again later.'));

                    owner_19[tx.origin] = block.number;

                    owner_19[address(varg1)] = block.number;

                }

            }

            v19 = v20 = uint8(_automatedMarketMakerPairs[address(varg2)]);

            if (v20) {

                v19 = v21 = !uint8(__isExcludedmaxTxnAmount[address(varg1)]);

            }

            if (!v19) {

                v22 = v23 = uint8(_automatedMarketMakerPairs[address(varg1)]);

                if (v23) {

                    v22 = v24 = !uint8(__isExcludedmaxTxnAmount[address(varg2)]);

                }

                if (!v22) {

                    if (!uint8(__isExcludedmaxTxnAmount[address(varg1)])) {

                        v25 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                        require(v25 <= _maxWallet, Error('Max wallet exceeded'));

                    }

                } else {

                    require(varg0 <= _maxTxnAmount, Error('Sell transfer amount exceeds the maxTxnAmount.'));

                }

            } else {

                require(varg0 <= _maxTxnAmount, Error('Buy transfer amount exceeds the maxTxnAmount.'));

                v26 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                require(v26 <= _maxWallet, Error('Max wallet exceeded'));

            }

            goto 0x22d1;

        }

        v27 = v28 = _balanceOf[this] >= _swapTokensAtAmount;

        if (_balanceOf[this] >= _swapTokensAtAmount) {

            v27 = v29 = _swapEnabled;

        }

        if (v27) {

            v27 = v30 = !stor_7_20_20;

        }

        if (v27) {

            v27 = v31 = !uint8(_automatedMarketMakerPairs[address(varg2)]);

        }

        if (v27) {

            v27 = v32 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v27) {

            v27 = v33 = !uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v27) {

            stor_7_20_20 = 1;

            0x2824();

            stor_7_20_20 = 0;

        }

        v34 = v35 = !stor_7_20_20;

        if (!stor_7_20_20) {

            v34 = v36 = uint8(_automatedMarketMakerPairs[address(varg1)]);

        }

        if (v34) {

            v34 = v37 = _lpMarketingEnabled;

        }

        if (v34) {

            v38 = _SafeAdd(_lastLpMarketingTime, _lpMarketingFrequency);

            v34 = v39 = block.timestamp >= v38;

        }

        if (v34) {

            v34 = v40 = !uint8(_isExcludedFromFees[address(varg2)]);

        }

        if (v34) {

            _lastLpMarketingTime = block.timestamp;

            v41, v42 = this.balanceOf(_lpPair).gas(msg.gas);

            require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v43 = _SafeMul(v42, _percentForLPMarketing);

            require(10000, Panic(18)); // division by zero

            if (v43 / 10000) {

                0x26cf(v43 / 10000, 57005, _lpPair);

            }

            require(bool(_lpPair.code.size));

            v44 = _lpPair.sync().gas(msg.gas);

            require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            emit AutoNukeLP(v43 / 10000);

        }

        v45 = v46 = !stor_7_20_20;

        v47 = v48 = uint8(_isExcludedFromFees[address(varg2)]);

        if (!v48) {

            v47 = v49 = uint8(_isExcludedFromFees[address(varg1)]);

        }

        if (v47) {

            v45 = v50 = 0;

        }

        v51 = v52 = 0;

        if (v45) {

            v53 = _SafeSub(block.number, stor_16);

            v54 = v55 = _tradingActiveBlock >= v53;

            if (!bool(_tradingActiveBlock < v53)) {

                v54 = v56 = uint8(_automatedMarketMakerPairs[address(varg2)]);

            }

            if (!v54) {

                v57 = v58 = uint8(_automatedMarketMakerPairs[address(varg1)]);

                if (v58) {

                    v57 = v59 = _totalsellFees > 0;

                }

                if (!v57) {

                    v60 = v61 = uint8(_automatedMarketMakerPairs[address(varg2)]);

                    if (v61) {

                        v60 = v62 = _totalbuyFees > 0;

                    }

                    if (v60) {

                        v63 = _SafeMul(varg0, _totalbuyFees);

                        require(100, Panic(18)); // division by zero

                        v51 = v63 / 100;

                        v64 = _SafeMul(v51, _buyLiquidityFee);

                        require(_totalbuyFees, Panic(18)); // division by zero

                        v65 = _SafeAdd(_tokensForLiquidity, v64 / _totalbuyFees);

                        _tokensForLiquidity = v65;

                        v66 = _SafeMul(v51, _buyMarketingFee);

                        require(_totalbuyFees, Panic(18)); // division by zero

                        v67 = _SafeAdd(_tokensForMarketing, v66 / _totalbuyFees);

                        _tokensForMarketing = v67;

                        v68 = _SafeMul(v51, _buyDevFee);

                        require(_totalbuyFees, Panic(18)); // division by zero

                        v69 = _SafeAdd(_tokensForDev, v68 / _totalbuyFees);

                        _tokensForDev = v69;

                    }

                } else {

                    v70 = _SafeMul(varg0, _totalsellFees);

                    require(100, Panic(18)); // division by zero

                    v51 = v71 = v70 / 100;

                    goto 0x24e8;

                }

            } else {

                v72 = _SafeMul(99, varg0);

                require(100, Panic(18)); // division by zero

                v51 = v73 = v72 / 100;

            }

            v74 = _SafeMul(v51, _sellLiquidityFee);

            require(_totalsellFees, Panic(18)); // division by zero

            v75 = _SafeAdd(_tokensForLiquidity, v74 / _totalsellFees);

            _tokensForLiquidity = v75;

            v76 = _SafeMul(v51, _sellMarketingFee);

            require(_totalsellFees, Panic(18)); // division by zero

            v77 = _SafeAdd(_tokensForMarketing, v76 / _totalsellFees);

            _tokensForMarketing = v77;

            v78 = _SafeMul(v51, _sellDevFee);

            require(_totalsellFees, Panic(18)); // division by zero

            v79 = _SafeAdd(_tokensForDev, v78 / _totalsellFees);

            _tokensForDev = v79;

            if (v51) {

                0x26cf(v51, this, varg2);

            }

            varg0 = v80 = _SafeSub(varg0, v51);

        }

        0x26cf(varg0, varg1, varg2);

        return ;

    } else {

        0x26cf(0, varg1, varg2);

        return ;

    }

}
