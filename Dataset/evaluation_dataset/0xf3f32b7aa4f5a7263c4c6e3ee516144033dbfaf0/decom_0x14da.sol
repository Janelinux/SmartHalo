function 0x14da(uint256 varg0, address varg1, address varg2) private { 

    require(varg2 - address(0x0), Error('ERC20: transfer from the zero address'));

    require(varg1 - address(0x0), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = 0;

    v2 = v3 = varg2 != _owner;

    if (!bool(address(varg2) == _owner)) {

        v2 = v4 = varg1 != _owner;

    }

    if (v2) {

        v5 = v6 = !uint8(_isBot[address(address(varg2))]);

        if (!bool(uint8(_isBot[address(address(varg2))]))) {

            v5 = v7 = !uint8(_isBot[address(address(varg1))]);

        }

        require(v5);

        v8 = v9 = stor_14_20_20;

        if (v9) {

            v8 = v10 = _transferDelayEnabled;

        }

        if (v8) {

            require(owner_5[address(tx.origin)] < block.number, Error('Only one transfer per block allowed.'));

            owner_5[address(tx.origin)] = block.number;

        }

        v11 = v12 = varg2 == owner_14_0_19;

        if (v12) {

            v11 = v13 = varg1 != stor_13_0_19;

        }

        if (v11) {

            v11 = v14 = !uint8(map_3[address(address(varg1))]);

        }

        if (v11) {

            require(varg0 <= __maxTxAmount, Error('Exceeds the _maxTxAmount.'));

            v15 = _SafeAdd(_balanceOf[varg1], varg0);

            require(v15 <= __maxWalletSize, Error('Exceeds the maxWalletSize.'));

            v16 = 0x2b1c(stor_e);

            stor_e = v16;

        }

        if (!stor_14_21_21) {

            v17 = v18 = 6690;

            v19 = v20 = 100;

            v21 = v22 = 6676;

            if (stor_e > stor_b) {

                v23 = v24 = stor_9;

            } else {

                v23 = v25 = stor_7;

            }

            while (1) {

                if (varg0 - 0) {

                    goto 0x2210;

                }

                v26 = v27 = 0;

                goto {'0x1a14', '0x1ae0'};

                if (v19 > 0) {

                    v0 = _SafeDiv(v26, v19);

                    goto {'0x1aee', '0x1a22'};

                    v28 = v29 = varg1 == owner_14_0_19;

                    if (v29) {

                        v28 = v30 = varg2 != address(this);

                    }

                    if (v28) {

                        v17 = v31 = 6894;

                        v19 = v32 = 100;

                        v21 = v33 = 6880;

                        if (stor_e > stor_c) {

                            v23 = v34 = stor_a;

                        } else {

                            v23 = v35 = stor_8;

                        }

                    }

                } else {

                    v36 = new bytes[](v37.length);

                    v38 = v39 = 0;

                    while (v38 < v37.length) {

                        v36[v38] = v37[v38];

                        v38 = v38 + 32;

                    }

                    v36[v37.length] = 0;

                    revert(Error(v36, v40, 'SafeMath: division by zero'));

                }

                goto 0x2278;

                v26 = v41 = _SafeMul(varg0, v23);

                v42 = _SafeDiv(v41, varg0);

                require(v42 == v23, Error('SafeMath: multiplication overflow'));

            }

        }

        v43 = v44 = !stor_14_21_21;

        if (!stor_14_21_21) {

            v43 = v45 = varg1 == owner_14_0_19;

        }

        if (v43) {

            v43 = v46 = stor_14_22_22;

        }

        if (v43) {

            v43 = v47 = _balanceOf[address(this)] > __taxSwapThreshold;

        }

        if (v43) {

            v43 = v48 = stor_e > stor_d;

        }

        if (v43) {

            v49 = 0x22c2(__maxTaxSwap, _balanceOf[address(this)]);

            v50 = 0x22c2(v49, varg0);

            0x1efc(v50);

            if (this.balance > 0) {

                v51 = _manualSwap.call().value(this.balance).gas(!this.balance * 2300);

                require(bool(v51), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

    }

    if (v0 > 0) {

        v52 = 0x22db(v0, _balanceOf[address(this)]);

        _balanceOf[address(this)] = v52;

        emit Transfer(varg2, address(this), v0);

    }

    v53 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[varg2]);

    _balanceOf[varg2] = v53;

    v54 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v0, varg0);

    v55 = 0x22db(v54, _balanceOf[varg1]);

    _balanceOf[varg1] = v55;

    v56 = _SafeSub('SafeMath: subtraction overflow', v0, varg0);

    MEM[MEM[64] + 0] = v56;

    emit Transfer(varg2, varg1, v56);

    return ;

}
