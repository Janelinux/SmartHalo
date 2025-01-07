function 0xcbb(uint256 varg0, address varg1, address varg2) private { 

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

        if (_reduceFee > stor_a) {

            v8 = v9 = stor_9;

        } else {

            v8 = v10 = stor_7;

        }

        if (0 - varg0) {

            v11 = v12 = _SafeMul(varg0, v8);

            require(varg0, Panic(18)); // division by zero

            require(v12 / varg0 == v8, Error('SafeMath: multiplication overflow'));

        } else {

            v11 = 0;

        }

        v0 = v13 = _SafeDiv('SafeMath: division by zero', 100, v11);

        if (_transferDelayEnabled) {

            v14 = owner_11_0_19 != varg1;

            if (owner_11_0_19 != varg1) {

                v14 = v15 = address(owner_12) != varg1;

            }

            if (v14) {

                require(block.number > owner_5[tx.origin], Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                owner_5[tx.origin] = block.number;

            }

        }

        v16 = address(owner_12) == varg2;

        if (v16) {

            v16 = v17 = owner_11_0_19 != varg1;

        }

        if (v16) {

            v16 = v18 = !uint8(map_3[address(varg1)]);

        }

        if (v16) {

            require(varg0 <= __maxTxAmount, Error('Exceeds the _maxTxAmount.'));

            v19 = _SafeAdd(_manualSwap[varg1], varg0);

            require(v19 <= __maxWalletSize, Error('Exceeds the maxWalletSize.'));

            v20 = 0x1a1f(_reduceFee);

            _reduceFee = v20;

        }

        v21 = address(owner_12) == varg1;

        if (v21) {

            v21 = v22 = owner_11_0_19 != varg2;

        }

        if (v21) {

            v21 = v23 = _reduceFee < stor_a;

        }

        if (v21) {

            v24 = 0x14db(stor_8, varg0);

            v0 = _SafeDiv('SafeMath: division by zero', 100, v24);

        }

        v25 = !uint8(owner_12 >> 168);

        if (!bool(uint8(owner_12 >> 168))) {

            v25 = v26 = address(owner_12) == varg1;

        }

        if (v25) {

            v25 = v27 = uint8(owner_12 >> 176);

        }

        if (v25) {

            v25 = v28 = _manualSwap[this] > __taxSwapThreshold;

        }

        if (v25) {

            v25 = v29 = _reduceFee > stor_b;

        }

        if (v25) {

            v30 = 0x15a6(__maxTaxSwap, _manualSwap[this]);

            v31 = 0x15a6(v30, varg0);

            0x1323(v31);

            if (this.balance) {

                v32 = stor_6_1_20.call().value(this.balance).gas(!this.balance * 2300);

                require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

    }

    v33 = _SafeSub('SafeMath: subtraction overflow', varg0, _manualSwap[varg2]);

    _manualSwap[varg2] = v33;

    v34 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v0, varg0);

    v35 = 0x15fd(v34, _manualSwap[varg1]);

    _manualSwap[varg1] = v35;

    v36 = _SafeSub('SafeMath: subtraction overflow', v0, varg0);

    MEM[MEM[64]] = v36;

    emit Transfer(varg2, varg1, v36);

    if (v0) {

        v37 = 0x15fd(v0, _manualSwap[this]);

        _manualSwap[this] = v37;

        MEM[MEM[64]] = v0;

        emit Transfer(varg2, this, v0);

    }

    return ;

}
