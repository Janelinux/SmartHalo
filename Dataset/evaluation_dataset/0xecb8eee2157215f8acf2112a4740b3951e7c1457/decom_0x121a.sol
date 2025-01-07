function 0x121a(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = !uint8(_exemptFee[address(varg2)]);

    if (!bool(uint8(_exemptFee[address(varg2)]))) {

        v0 = v2 = !uint8(_exemptFee[address(varg1)]);

    }

    if (v0) {

        require(_tradingEnabled, Error('Trading not enabled'));

    }

    v3 = v4 = _pair == address(varg2);

    if (v4) {

        v3 = v5 = !uint8(_exemptFee[address(varg1)]);

    }

    if (v3) {

        v3 = v6 = !stor_7_20_20;

    }

    if (v3) {

        v7 = _SafeAdd(_balanceOf[address(varg1)], varg0);

        require(v7 <= _maxWalletLimit, Error('You are exceeding maxWalletLimit'));

    }

    v8 = v9 = _pair != address(varg2);

    if (_pair != address(varg2)) {

        v8 = v10 = !uint8(_exemptFee[address(varg1)]);

    }

    if (v8) {

        v8 = v11 = !uint8(_exemptFee[address(varg2)]);

    }

    if (v8) {

        v8 = v12 = !stor_7_20_20;

    }

    if (v8) {

        if (_pair != address(varg1)) {

            v13 = _SafeAdd(_balanceOf[address(varg1)], varg0);

            require(v13 <= _maxWalletLimit, Error('You are exceeding maxWalletLimit'));

        }

    }

    v14 = v15 = 0;

    v16 = v17 = MEM[64];

    MEM[v17] = 0;

    MEM[32 + v17] = 0;

    MEM[64 + v17] = 0;

    v18 = v19 = !uint8(_exemptFee[address(varg2)]);

    if (!bool(uint8(_exemptFee[address(varg2)]))) {

        v18 = v20 = !uint8(_exemptFee[address(varg1)]);

    }

    if (v18) {

        v21 = _SafeAdd(_genesis_block, stor_b);

        v18 = v22 = block.number < v21;

    }

    v23 = v24 = stor_7_20_20;

    if (!v24) {

        v23 = v25 = uint8(_exemptFee[address(varg2)]);

    }

    if (!v23) {

        v23 = v26 = uint8(_exemptFee[address(varg1)]);

    }

    if (!v23) {

        v27 = v28 = _pair == address(varg1);

        if (v28) {

            v27 = v29 = !v18;

        }

        if (!v27) {

            if (v18) {

                if (v18) {

                    v14 = v30 = stor_c;

                }

            } else {

                v31 = _SafeAdd(stor_10, _taxes);

                v14 = v32 = _SafeAdd(v31, stor_11);

                v16 = v33 = MEM[64];

                MEM[64] = v33 + 96;

                MEM[v33] = _taxes;

                MEM[v33 + 32] = stor_10;

                MEM[v33 + 64] = stor_11;

            }

        } else {

            v34 = _SafeAdd(stor_13, _sellTaxes);

            v14 = v35 = _SafeAdd(v34, stor_14);

            v16 = v36 = MEM[64];

            MEM[64] = v36 + 96;

            MEM[v36] = _sellTaxes;

            MEM[v36 + 32] = stor_13;

            MEM[v36 + 64] = stor_14;

        }

    }

    v37 = _SafeMul(varg0, v14);

    require(100, Panic(18)); // division by zero

    v38 = v39 = _providingLiquidity;

    if (v39) {

        v38 = v40 = _pair != address(varg2);

    }

    if (v38) {

        if (stor_7_20_20) {

            goto 0x16e7;

        } else {

            stor_7_20_20 = 1;

            if (v14) {

                v41 = v42 = _balanceOf[this];

                if (v42 >= _tokenLiquidityThreshold) {

                    if (_tokenLiquidityThreshold > 1) {

                        v41 = _tokenLiquidityThreshold;

                    }

                    v43 = _SafeMul(2, v14);

                    v44 = _SafeMul(v41, MEM[32 + v16]);

                    require(v43, Panic(18)); // division by zero

                    v45 = _SafeSub(v41, v44 / v43);

                    v46 = new uint256[](2);

                    CALLDATACOPY(v46.data, msg.data.length, 64);

                    require(0 < v46.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v47 = v46.data;

                    v46[0][0] = address(this);

                    v48, /* address */ v49 = _router.WETH().gas(msg.gas);

                    require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v49 == address(v49));

                    require(1 < v46.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v46[1][32][32] = address(v49);

                    0x10f6(v45, _router, this);

                    v50 = new array[](v46.length);

                    v51 = v52 = v50.data;

                    v53 = v54 = v46.data;

                    v55 = v56 = 0;

                    while (v55 < v46.length) {

                        MEM[v51] = address(MEM[v53]);

                        v53 += 32;

                        v51 += 32;

                        v55 += 1;

                    }

                    require(bool(_router.code.size));

                    v57 = _router.swapExactTokensForETHSupportingFeeOnTransferTokens(v45, 0, v50, address(this), block.timestamp, v58, address(this)).gas(msg.gas);

                    require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    v59 = _SafeSub(this.balance, this.balance);

                    v60 = _SafeSub(v43, MEM[32 + v16]);

                    require(v60, Panic(18)); // division by zero

                    v61 = _SafeMul(v59 / v60, MEM[32 + v16]);

                    if (v61) {

                        0x10f6(v44 / v43, _router, this);

                        v62, v63, v64, v65 = _router.addLiquidityETH(this, v44 / v43, 0, 0, _rescueETH, block.timestamp).value(v61).gas(msg.gas);

                        require(bool(v62), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                    }

                    v66 = _SafeMul(2, v59 / v60);

                    v67 = _SafeMul(v66, MEM[v16]);

                    if (v67) {

                        0x1ce9(v67, _marketingWallet);

                    }

                    v68 = _SafeMul(2, v59 / v60);

                    v69 = _SafeMul(v68, MEM[v16 + 64]);

                    if (v69) {

                        0x1ce9(v69, _rescueETH);

                    }

                }

            }

            stor_7_20_20 = 0;

        }

    }

    v70 = _SafeSub(varg0, v37 / 100);

    0x1903(v70, varg1, varg2);

    if (v37 / 100) {

        if (v14) {

            v71 = _SafeMul(varg0, v14);

            require(100, Panic(18)); // division by zero

            0x1903(v71 / 100, this, varg2);

        }

    }

    return ;

}
