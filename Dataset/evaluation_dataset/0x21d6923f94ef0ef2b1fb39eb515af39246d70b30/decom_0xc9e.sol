function 0xc9e(uint256 varg0, address varg1, address varg2) private { 

    require(varg2, Error('ERC20: transfer from the zero address'));

    require(varg1, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = 0;

    v2 = v3 = _owner != varg2;

    if (_owner != varg2) {

        v2 = v4 = _owner != varg1;

    }

    if (v2) {

        v5 = v6 = !uint8(_isBot[address(varg2)]);

        if (!bool(uint8(_isBot[address(varg2)]))) {

            v5 = v7 = !uint8(_isBot[address(varg1)]);

        }

        require(v5);

        v8 = v9 = 3695;

        v10 = v11 = 100;

        v12 = v13 = 9352;

        if (stor_e > stor_b) {

            v14 = v15 = stor_9;

        } else {

            v14 = v16 = stor_7;

        }

        while (1) {

            while (1) {

                if (0 - varg0) {

                    goto 0x14c7;

                }

                v17 = v18 = 0;

                goto {'0x2488', '0x24ad'};

                if (v10) {

                    require(v10, Panic(18)); // division by zero

                    v0 = v17 / v10;

                    goto {'0xe6f', '0x10df'};

                    if (_transferDelayEnabled) {

                        v19 = v20 = stor_13_0_19 != varg1;

                        if (stor_13_0_19 != varg1) {

                            v19 = v21 = address(owner_14) != varg1;

                        }

                        if (v19) {

                            require(block.number > owner_5[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                            owner_5[tx.origin] = block.number;

                        }

                    }

                    v22 = v23 = address(owner_14) == varg2;

                    if (v23) {

                        v22 = v24 = stor_13_0_19 != varg1;

                    }

                    if (v22) {

                        v22 = v25 = !uint8(map_3[address(varg1)]);

                    }

                    if (v22) {

                        require(varg0 <= __maxTxAmount, Error('Exceeds the _maxTxAmount.'));

                        v26 = _SafeAdd(_balanceOf[varg1], varg0);

                        require(v26 <= __maxWalletSize, Error('Exceeds the maxWalletSize.'));

                        v27 = 0x19e3(stor_e);

                        stor_e = v27;

                    }

                    v28 = v29 = address(owner_14) == varg1;

                    if (v29) {

                        v28 = v30 = this != varg2;

                    }

                    if (v28) {

                        v8 = v31 = 4319;

                        v10 = v32 = 100;

                        v12 = v33 = 9389;

                        if (stor_e > stor_c) {

                            v14 = v34 = stor_a;

                        } else {

                            v14 = v35 = stor_8;

                            continue;

                        }

                    }

                    v36 = v37 = !uint8(owner_14 >> 168);

                    if (!bool(uint8(owner_14 >> 168))) {

                        v36 = v38 = address(owner_14) == varg1;

                    }

                    if (v36) {

                        v36 = v39 = uint8(owner_14 >> 176);

                    }

                    if (v36) {

                        v36 = v40 = _balanceOf[this] > __taxSwapThreshold;

                    }

                    if (v36) {

                        v36 = v41 = stor_e > stor_d;

                    }

                    if (v36) {

                        v42 = 0x1580(__maxTaxSwap, _balanceOf[this]);

                        v43 = 0x1580(v42, varg0);

                        0x12fd(v43);

                        if (this.balance) {

                            v44 = _manualSwap.call().value(this.balance).gas(!this.balance * 2300);

                            require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                        }

                    }

                } else {

                    v45 = new array[](v46.length);

                    v47 = v48 = 0;

                    while (v47 < v46.length) {

                        v45[v47] = v46[v47];

                        v47 += 32;

                    }

                    v45[v46.length] = 0;

                    revert(Error(v45));

                }

                goto 0x153e;

                v17 = v49 = _SafeMul(varg0, v14);

                require(varg0, Panic(18)); // division by zero

                require(v49 / varg0 == v14, Error('SafeMath: multiplication overflow'));

                goto {'0x2488', '0x24ad'};

            }

        }

    }

    if (v0) {

        v50 = 0x1595(v0, _balanceOf[this]);

        _balanceOf[this] = v50;

        emit Transfer(varg2, this, v0);

    }

    v51 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[varg2]);

    _balanceOf[varg2] = v51;

    v52 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v0, varg0);

    v53 = 0x1595(v52, _balanceOf[varg1]);

    _balanceOf[varg1] = v53;

    v54 = _SafeSub('SafeMath: subtraction overflow', v0, varg0);

    MEM[MEM[64]] = v54;

    emit Transfer(varg2, varg1, v54);

    return ;

}
