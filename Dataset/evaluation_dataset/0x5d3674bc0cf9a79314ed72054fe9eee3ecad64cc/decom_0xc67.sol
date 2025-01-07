function 0xc67(uint256 varg0, address varg1, address varg2) private { 

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

        if (!uint8(owner_11 >> 168)) {

            if (stor_b > stor_9) {

                v8 = v9 = stor_8;

            } else {

                v8 = v10 = stor_7;

            }

            if (0 - varg0) {

                v11 = v12 = _SafeMul(varg0, v8);

                require(varg0, Panic(18)); // division by zero

                require(v12 / varg0 == v8, Error('SafeMath: multiplication overflow'));

            } else {

                v11 = v13 = 0;

            }

            if (100) {

                require(100, Panic(18)); // division by zero

                v0 = v11 / 100;

            } else {

                v14 = new array[](v15.length);

                v16 = v17 = 0;

                while (v16 < v15.length) {

                    v14[v16] = v15[v16];

                    v16 += 32;

                }

                v14[v15.length] = 0;

                revert(Error(v14));

            }

        }

        if (_transferDelayEnabled) {

            v18 = v19 = stor_10_0_19 != varg1;

            if (stor_10_0_19 != varg1) {

                v18 = v20 = address(owner_11) != varg1;

            }

            if (v18) {

                require(block.number > owner_5[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                owner_5[tx.origin] = block.number;

            }

        }

        v21 = v22 = address(owner_11) == varg2;

        if (v22) {

            v21 = v23 = stor_10_0_19 != varg1;

        }

        if (v21) {

            v21 = v24 = !uint8(map_3[address(varg1)]);

        }

        if (v21) {

            require(varg0 <= __maxTxAmount, Error('Exceeds the _maxTxAmount.'));

            v25 = _SafeAdd(_manualSwap[varg1], varg0);

            require(v25 <= __maxWalletSize, Error('Exceeds the maxWalletSize.'));

            v26 = 0x1968(stor_b);

            stor_b = v26;

        }

        v27 = v28 = !uint8(owner_11 >> 168);

        if (!bool(uint8(owner_11 >> 168))) {

            v27 = v29 = address(owner_11) != varg2;

        }

        if (v27) {

            v27 = v30 = uint8(owner_11 >> 176);

        }

        if (v27) {

            v27 = v31 = _manualSwap[this] > __taxSwapThreshold;

        }

        if (v27) {

            v27 = v32 = stor_b > stor_a;

        }

        if (v27) {

            v33 = 0x1508(__maxTaxSwap, _manualSwap[this]);

            v34 = 0x1508(v33, varg0);

            0x1285(v34);

            if (this.balance) {

                v35 = stor_6_1_20.call().value(this.balance).gas(!this.balance * 2300);

                require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

    }

    v36 = _SafeSub('SafeMath: subtraction overflow', varg0, _manualSwap[varg2]);

    _manualSwap[varg2] = v36;

    v37 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v0, varg0);

    v38 = 0x155f(v37, _manualSwap[varg1]);

    _manualSwap[varg1] = v38;

    v39 = _SafeSub('SafeMath: subtraction overflow', v0, varg0);

    MEM[MEM[64]] = v39;

    emit Transfer(varg2, varg1, v39);

    if (v0) {

        v40 = 0x155f(v0, _manualSwap[this]);

        _manualSwap[this] = v40;

        MEM[MEM[64]] = v0;

        emit Transfer(varg2, this, v0);

    }

    return ;

}
