function 0x1480(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = 0;

    v2 = v3 = address(varg2) != _owner;

    if (v3) {

        v2 = v4 = address(varg1) != _owner;

    }

    if (v2) {

        v5 = address(varg2);

        v6 = v7 = !(0xff & _isBot[v5]);

        if (v7) {

            v8 = address(varg1);

            v6 = v9 = !(0xff & _isBot[v8]);

        }

        require(v6);

        if (!stor_11_21_21) {

            if (stor_b > stor_9) {

                v10 = v11 = stor_8;

            } else {

                v10 = v12 = stor_7;

            }

            if (varg0 - 0) {

                v13 = v14 = _SafeMul(varg0, v10);

                v15 = _SafeDiv(v14, varg0);

                require(v15 == v10, Error('SafeMath: multiplication overflow'));

            } else {

                v13 = v16 = 0;

            }

            if (100 > 0) {

                v0 = _SafeDiv(v13, 100);

            } else {

                v17 = new array[](v18.length);

                v19 = v20 = 0;

                while (v19 < v18.length) {

                    v17[v19] = v18[v19];

                    v19 = v19 + 32;

                }

                v17[v18.length] = 0;

                revert(Error(v17, v21, 'SafeMath: division by zero'));

            }

        }

        if (_transferDelayEnabled) {

            v22 = v23 = address(varg1) != stor_10_0_19;

            if (v23) {

                v22 = v24 = address(varg1) != owner_11_0_19;

            }

            if (v22) {

                require(owner_5[address(tx.origin)] < block.number, Error('_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.'));

                owner_5[address(tx.origin)] = block.number;

            }

        }

        v25 = v26 = address(varg2) == owner_11_0_19;

        if (v26) {

            v25 = v27 = address(varg1) != stor_10_0_19;

        }

        if (v25) {

            v28 = address(varg1);

            v25 = v29 = !(0xff & map_3[v28]);

        }

        if (v25) {

            require(varg0 <= __maxTxAmount, Error('Exceeds the _maxTxAmount.'));

            v30 = address(varg1);

            v31 = _SafeAdd(_manualSwap[v30], varg0);

            require(v31 <= __maxWalletSize, Error('Exceeds the maxWalletSize.'));

            v32 = 0x2a75(stor_b);

            stor_b = v32;

        }

        v33 = v34 = !stor_11_21_21;

        if (!stor_11_21_21) {

            v33 = v35 = address(varg2) != owner_11_0_19;

        }

        if (v33) {

            v33 = v36 = stor_11_22_22;

        }

        if (v33) {

            v33 = v37 = _manualSwap[address(this)] > __taxSwapThreshold;

        }

        if (v33) {

            v33 = v38 = stor_b > stor_a;

        }

        if (v33) {

            v39 = 0x221b(__maxTaxSwap, _manualSwap[address(this)]);

            v40 = 0x221b(v39, varg0);

            0x1e72(v40);

            if (this.balance > 0) {

                v41 = _manualSend.call().value(this.balance).gas(!this.balance * 2300);

                require(v41); // checks call status, propagates error data on error

            }

        }

    }

    v42 = address(varg2);

    v43 = _SafeSub('SafeMath: subtraction overflow', varg0, _manualSwap[v42]);

    v44 = address(varg2);

    _manualSwap[v44] = v43;

    v45 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v0, varg0);

    v46 = address(varg1);

    v47 = 0x227e(v45, _manualSwap[v46]);

    v48 = address(varg1);

    _manualSwap[v48] = v47;

    v49 = _SafeSub('SafeMath: subtraction overflow', v0, varg0);

    MEM[MEM[64] + 0] = v49;

    emit Transfer(address(varg2), address(varg1), v49);

    if (v0 > 0) {

        v50 = 0x227e(v0, _manualSwap[address(this)]);

        _manualSwap[address(this)] = v50;

        MEM[MEM[64] + 0] = v0;

        emit Transfer(address(varg2), address(this), v0);

    }

    return ;

}
