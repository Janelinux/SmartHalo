function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 

    require(msg.data.length - 4 >= 96);

    if (_special == 1) {

        v0 = v1 = varg0 != 0;

        if (v1) {

            v0 = v2 = _lottery == 0;

        }

        if (!v0) {

            require(varg1 != _lottery, Error('Lottery Winner'));

        } else {

            _lottery = varg1;

        }

        goto 0x35620x434;

    }

    require(varg0 != 0, Error('ERC20: transfer from the zero address'));

    require(varg1 != 0, Error('ERC20: transfer to the zero address'));

    require(varg2 > 0, Error('Transfer amount must be greater than zero'));

    v3 = varg0 != _owner;

    if (v3) {

        v3 = v4 = varg1 != _owner;

    }

    if (v3) {

        require(varg2 <= __maxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

    }

    v5 = v6 = 0x1f92(this);

    if (v6 >= __maxTxAmount) {

        v5 = __maxTxAmount;

    }

    v7 = v5 >= stor_16;

    if (v7) {

        v7 = v8 = !stor_14_20_20;

    }

    if (v7) {

        v7 = v9 = varg0 != 0xd92386c1aea7e9a5c5544f109b600833ca6808da;

    }

    if (v7) {

        v7 = v10 = _swapAndLiquifyEnabled;

    }

    if (v7) {

        stor_14_20_20 = 1;

        v11 = _SafeDiv(2, stor_16);

        v12 = 0x3b3e(v11, stor_16);

        0x4439(v11);

        v13 = 0x3b3e(this.balance, this.balance);

        0x336b(v12, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

        require(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size);

        v14, v15, v16, v17 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(address(this), v12, 0, 0, _owner, block.timestamp).value(v13).gas(msg.gas);

        require(v14); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 96);

        emit SwapAndLiquify(v11, v13, v12);

        stor_14_20_20 = 1;

    }

    v18 = v19 = 1;

    v20 = 0xff & _isExcludedFromFee[varg0];

    if (!v20) {

        v20 = v21 = 0xff & _isExcludedFromFee[varg1];

    }

    if (v20) {

        v18 = v22 = 0;

    }

    if (!v18) {

        0x4838();

    }

    v23 = 0xff & _isExcludedFromReward[varg0];

    if (v23) {

        v23 = v24 = !(0xff & _isExcludedFromReward[varg1]);

    }

    if (!v23) {

        v25 = !(0xff & _isExcludedFromReward[varg0]);

        if (v25) {

            v25 = v26 = 0xff & _isExcludedFromReward[varg1];

        }

        if (!v25) {

            v27 = !(0xff & _isExcludedFromReward[varg0]);

            if (v27) {

                v27 = v28 = !(0xff & _isExcludedFromReward[varg1]);

            }

            if (!v27) {

                v29 = 0xff & _isExcludedFromReward[varg0];

                if (v29) {

                    v29 = v30 = 0xff & _isExcludedFromReward[varg1];

                }

                if (!v29) {

                    0x4d3b(varg2, varg1, varg0);

                } else {

                    0x4f06(varg2, varg1, varg0);

                }

            } else {

                0x4d3b(varg2, varg1, varg0);

            }

        } else {

            0x4adb(varg2, varg1, varg0);

        }

    } else {

        0x487b(varg2, varg1, varg0);

    }

    if (!v18) {

        __taxFee = stor_11;

        __liquidityFee = stor_13;

    }

}
