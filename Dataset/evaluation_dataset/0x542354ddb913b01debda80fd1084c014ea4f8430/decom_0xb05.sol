function 0xb05(uint256 varg0, address varg1, address varg2) private { 

    require(varg2, Error('ERC20: transfer from the zero address'));

    require(varg1, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = _SafeSub(_balanceOf[varg2], varg0);

    _balanceOf[varg2] = v0;

    v1 = v2 = 0;

    v3 = v4 = !uint8(_isExcludedFromFee[address(varg2)]);

    if (!bool(uint8(_isExcludedFromFee[address(varg2)]))) {

        v3 = v5 = !uint8(_isExcludedFromFee[address(varg1)]);

    }

    if (v3) {

        v1 = v6 = 1;

    }

    v7 = v8 = _uniswapV2Pair == varg2;

    if (v8) {

        v7 = v9 = _liquidityReceiver == varg1;

    }

    if (v7) {

        _launchEpoch = block.timestamp;

        _launched = 1;

    }

    v10 = v11 = _launched;

    if (v11) {

        v12 = _SafeAdd(600, _launchEpoch);

        v10 = v13 = block.timestamp > v12;

    }

    if (v10) {

        v10 = v14 = !stor_13_0_0;

    }

    if (v10) {

        _buyFee = 1;

        stor_e = 1;

        _sellFee = 2;

        stor_10 = 4;

        stor_13_0_0 = 1;

    }

    v15 = v16 = _launched;

    if (v16) {

        v17 = _SafeAdd(2400, _launchEpoch);

        v15 = v18 = block.timestamp > v17;

    }

    if (v15) {

        v15 = v19 = !stor_13_1_1;

    }

    if (v15) {

        _buyFee = 0;

        stor_e = 0;

        _sellFee = 0;

        stor_10 = 0;

        stor_13_1_1 = 1;

    }

    if (v1) {

        if (_uniswapV2Pair != varg1) {

            if (varg0 <= __maxTxAmount) {

                v20 = _SafeAdd(_balanceOf[varg1], varg0);

                if (v20 <= __maxWalletAmount) {

                    v21 = _SafeMul(varg0, _buyFee);

                    require(100, Panic(18)); // division by zero

                    v22 = _SafeMul(varg0, stor_e);

                    require(100, Panic(18)); // division by zero

                    v23 = _SafeAdd(v21 / 100, v22 / 100);

                    v24 = _SafeAdd(_balanceOf[this], v23);

                    _balanceOf[this] = v24;

                    v25 = _SafeAdd(v22 / 100, v21 / 100);

                    emit Transfer(varg1, this, v25);

                    v26 = _SafeSub(varg0, v21 / 100);

                    varg0 = v27 = _SafeSub(v26, v22 / 100);

                } else {

                    goto 0x6c40xb05;

                }

            }

        }

        revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, 0x8c379a000000000000000000000000000000000000000000000000000000000, 0x8c379a000000000000000000000000000000000000000000000000000000000, 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer Amount exceeds the maxTxnsAmount', 'Transfer amount exceeds the maxWalletAmount.', 'Transfer Amount exceeds the maxTxnsAmount', 'Transfer Amount exceeds the maxTxnsAmount', 'Transfer amount exceeds the maxWalletAmount.'));

        if (_uniswapV2Pair != varg2) {

            v28 = 0x19b1(10, uint8(9));

            v29 = _SafeMul(1, v28);

            if (_balanceOf[_liquidityReceiver] > v29) {

                require(bool(_liquidityReceiver.code.size));

                v30 = _liquidityReceiver.call(bytes4(0x6a42d90600000000000000000000000000000000000000000000000000000000), address(this), _balanceOf[_liquidityReceiver]).gas(msg.gas);

                require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

            if (varg0 <= __maxTxAmount) {

                v31 = _SafeMul(varg0, _sellFee);

                require(100, Panic(18)); // division by zero

                v32 = _SafeMul(varg0, stor_10);

                require(100, Panic(18)); // division by zero

                v33 = _SafeAdd(v31 / 100, v32 / 100);

                v34 = _SafeAdd(_balanceOf[this], v33);

                _balanceOf[this] = v34;

                v35 = _SafeAdd(v32 / 100, v31 / 100);

                emit Transfer(varg2, this, v35);

                v36 = _SafeSub(varg0, v31 / 100);

                varg0 = v37 = _SafeSub(v36, v32 / 100);

                v38 = v39 = _swapTokenAtAmount <= _balanceOf[this];

                if (!bool(_swapTokenAtAmount > _balanceOf[this])) {

                    v38 = v40 = !stor_13_2_2;

                }

                if (v38) {

                    stor_13_2_2 = 1;

                    v41 = _SafeAdd(stor_e, _buyFee);

                    v42 = _SafeAdd(v41, stor_10);

                    v43 = _SafeAdd(v42, _sellFee);

                    v44 = _SafeAdd(_buyFee, _sellFee);

                    v45 = _SafeMul(_swapTokenAtAmount, v44);

                    require(v43, Panic(18)); // division by zero

                    v46 = _SafeAdd(stor_e, _buyFee);

                    v47 = _SafeAdd(v46, stor_10);

                    v48 = _SafeAdd(v47, _sellFee);

                    v49 = _SafeAdd(stor_e, stor_10);

                    v50 = _SafeMul(_swapTokenAtAmount, v49);

                    require(v48, Panic(18)); // division by zero

                    v51 = _SafeAdd(v45 / v43, v50 / v48);

                    v52 = _SafeDiv(2, v45 / v43);

                    v53 = 0x1360(v52, _swapTokenAtAmount);

                    v54 = new uint256[](2);

                    CALLDATACOPY(v54.data, msg.data.length, 64);

                    require(0 < v54.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v55 = v54.data;

                    v54[0][0] = address(this);

                    v56, /* address */ v57 = _uniswapV2Router.WETH().gas(msg.gas);

                    require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v57 == address(v57));

                    require(1 < v54.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v54[1][32][32] = address(v57);

                    0x9e1(v53, _uniswapV2Router, this);

                    v58 = new array[](v54.length);

                    v59 = v60 = v58.data;

                    v61 = v62 = v54.data;

                    v63 = v64 = 0;

                    while (v63 < v54.length) {

                        MEM[v59] = address(MEM[v61]);

                        v61 += 32;

                        v59 += 32;

                        v63 += 1;

                    }

                    require(bool(_uniswapV2Router.code.size));

                    v65 = _uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(v53, 0, v58, address(this), block.timestamp, v66, address(this)).gas(msg.gas);

                    require(bool(v65), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    v67 = 0x1360(this.balance, this.balance);

                    v68 = 0x14fc(v45 / v43, v67);

                    v69 = _SafeDiv(v51, v68);

                    0x9e1(v52, _uniswapV2Router, this);

                    v70, v71, v72, v73 = _uniswapV2Router.addLiquidityETH(this, v52, 0, 0, _liquidityReceiver, block.timestamp).value(v69).gas(msg.gas);

                    require(bool(v70), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    v74 = _marketingWallet.call().value(this.balance).gas(2300 * !this.balance);

                    require(bool(v74), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    stor_13_2_2 = 0;

                }

            } else {

                goto 0x6c40xb05;

            }

        }

        v75 = v76 = _uniswapV2Pair != varg1;

        if (_uniswapV2Pair != varg1) {

            v75 = v77 = _uniswapV2Pair != varg2;

        }

        if (v75) {

            if (varg0 <= __maxTxAmount) {

                v78 = _SafeAdd(_balanceOf[varg1], varg0);

                if (v78 > __maxWalletAmount) {

                    goto 0x6c40xb05;

                }

            } else {

                goto 0x6c40xb05;

            }

        }

    }

    v79 = _SafeAdd(_balanceOf[varg1], varg0);

    _balanceOf[varg1] = v79;

    emit Transfer(varg2, varg1, varg0);

    return ;

}
