function 0x1a1e(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) - address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) - address(0x0), Error('ERC20: transfer to the zero address'));

    if (varg0 - 0) {

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

            v9 = v10 = uint8(owner_16[address(address(varg2))]);

            if (v10) {

                v9 = v11 = !uint8(owner_15[address(address(varg1))]);

            }

            if (!v9) {

                v12 = v13 = uint8(owner_16[address(address(varg1))]);

                if (v13) {

                    v12 = v14 = !uint8(owner_15[address(address(varg2))]);

                }

                if (!v12) {

                    if (!uint8(owner_15[address(address(varg1))])) {

                        v15 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                        require(v15 <= _maxWallet, Error('Max wallet exceeded'));

                    }

                } else {

                    require(varg0 <= _maxTransactionAmount, Error('Sell transfer amount exceeds the maxTransactionAmount.'));

                }

            } else {

                require(varg0 <= _maxTransactionAmount, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

                v16 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                require(v16 <= _maxWallet, Error('Max wallet exceeded'));

            }

        }

        v17 = v18 = _balanceOf[address(this)] >= _swapTokensAtAmount;

        if (!bool(_balanceOf[address(this)] < _swapTokensAtAmount)) {

            v17 = v19 = _swapEnabled;

        }

        if (v17) {

            v17 = v20 = !stor_5_20_20;

        }

        if (v17) {

            v17 = v21 = !uint8(owner_16[address(address(varg2))]);

        }

        if (v17) {

            v17 = v22 = !uint8(_isExcludedFromFees[address(address(varg2))]);

        }

        if (v17) {

            v17 = v23 = !uint8(_isExcludedFromFees[address(address(varg1))]);

        }

        if (v17) {

            stor_5_20_20 = 1;

            v24 = _balanceOf[address(this)];

            v25 = _SafeAdd(stor_12, stor_11);

            v26 = v27 = v24 == 0;

            if (v24 != 0) {

                v26 = v25 == 0;

            }

            if (!v26) {

                v28 = _SafeMul(_swapTokensAtAmount, 20);

                if (v24 > v28) {

                    v24 = v29 = _SafeMul(_swapTokensAtAmount, 20);

                }

                v30 = _SafeMul(v24, stor_12);

                v31 = _SafeDiv(v30, v25);

                v32 = _SafeDiv(v31, 2);

                v33 = _SafeSub(v24, v32);

                v34 = new uint256[](2);

                if (2) {

                    CALLDATACOPY(v34.data, msg.data.length, 64);

                }

                require(0 < v34.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v35 = v34.data;

                v34[0] = address(this);

                v36, /* address */ v37 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).WETH().gas(msg.gas);

                require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                0x2f31(v37);

                require(1 < v34.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v34[1] = address(v37);

                0x1855(v33, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v38 = new array[](v34.length);

                v39 = v40 = v38.data;

                v41 = v42 = v34.data;

                v43 = v44 = 0;

                while (v43 < v34.length) {

                    MEM[v39] = address(MEM[v41]);

                    v39 = v39 + 32;

                    v41 = v41 + 32;

                    v43 = v43 + 1;

                }

                require(bool((address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)).code.size));

                v45 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).swapExactTokensForETHSupportingFeeOnTransferTokens(v33, 0, v38, address(this), block.timestamp, v46, address(this)).gas(msg.gas);

                require(bool(v45), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v47 = _SafeSub(this.balance, this.balance);

                v48 = _SafeMul(v47, stor_11);

                v49 = _SafeDiv(v48, v25);

                v50 = _SafeSub(v47, v49);

                stor_12 = 0;

                stor_11 = 0;

                v51 = v52 = v32 > 0;

                if (v52) {

                    v51 = v50 > 0;

                }

                if (v51) {

                    0x1855(v32, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                    v53, v54, v55, v56 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(address(this), v32, 0, 0, address(0xdead), block.timestamp).value(v50).gas(msg.gas);

                    require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    0x2de1(v54);

                    0x2de1(v55);

                    0x2de1(v56);

                    emit SwapAndLiquify(v33, v50, stor_12);

                }

                v57, v58 = _marketingWallet.call().value(this.balance).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v59 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v59.data, 0, RETURNDATASIZE());

                }

            }

            stor_5_20_20 = 0;

        }

        v60 = v61 = !stor_5_20_20;

        v62 = v63 = uint8(_isExcludedFromFees[address(address(varg2))]);

        if (!v63) {

            v62 = v64 = uint8(_isExcludedFromFees[address(address(varg1))]);

        }

        if (v62) {

            v60 = v65 = 0;

        }

        v66 = v67 = 0;

        if (v60) {

            v68 = v69 = uint8(owner_16[address(address(varg1))]);

            if (v69) {

                v68 = v70 = _sellTotalFees > 0;

            }

            if (!v68) {

                v71 = v72 = uint8(owner_16[address(address(varg2))]);

                if (v72) {

                    v71 = v73 = _buyTotalFees > 0;

                }

                if (v71) {

                    v74 = _SafeMul(varg0, _buyTotalFees);

                    v66 = _SafeDiv(v74, 100);

                    v75 = _SafeMul(v66, stor_d);

                    v76 = _SafeDiv(v75, _buyTotalFees);

                    v77 = _SafeAdd(stor_12, v76);

                    stor_12 = v77;

                    v78 = _SafeMul(v66, stor_c);

                    v79 = _SafeDiv(v78, _buyTotalFees);

                    v80 = _SafeAdd(stor_11, v79);

                    stor_11 = v80;

                }

            } else {

                v81 = _SafeMul(varg0, _sellTotalFees);

                v66 = v82 = _SafeDiv(v81, 100);

                v83 = _SafeMul(v82, stor_10);

                v84 = _SafeDiv(v83, _sellTotalFees);

                v85 = _SafeAdd(stor_12, v84);

                stor_12 = v85;

                v86 = _SafeMul(v82, stor_f);

                v87 = _SafeDiv(v86, _sellTotalFees);

                v88 = _SafeAdd(stor_11, v87);

                stor_11 = v88;

                goto 0x2438;

            }

            if (v66 > 0) {

                0x25e1(v66, this, varg2);

            }

            varg0 = v89 = _SafeSub(varg0, v66);

        }

        0x25e1(varg0, varg1, varg2);

        _sellTotalFees = stor_13;

    } else {

        0x25e1(0, varg1, varg2);

    }

    return ;

}
