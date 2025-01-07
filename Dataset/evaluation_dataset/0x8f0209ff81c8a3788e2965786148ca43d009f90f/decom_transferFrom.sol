function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 

    require(msg.data.length - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg0, Error('ERC20: transfer from the zero address'));

    require(varg1, Error('ERC20: transfer to the zero address'));

    require(varg2 > 0, Error('Transfer amount must be greater than zero'));

    v0 = _owner != varg0;

    if (_owner != varg0) {

        v0 = v1 = _owner != varg1;

    }

    if (v0) {

        if (!stor_15_20_20) {

            require(_owner == varg0, Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg2 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v2 = !uint8(_bots[address(varg0)]);

        if (!bool(uint8(_bots[address(varg0)]))) {

            v2 = v3 = !uint8(_bots[address(varg1)]);

        }

        require(v2, Error('TOKEN: Your account is blacklisted!'));

        if (_uniswapV2Pair != varg1) {

            v4 = 0x7f3(varg1);

            v5 = _SafeAdd(v4, varg2);

            require(v5 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v6 = v7 = 0x7f3(this);

        v8 = v7 >= __swapTokensAtAmount;

        if (v7 >= __maxTxAmount) {

            v6 = __maxTxAmount;

        }

        if (!bool(v7 < __swapTokensAtAmount)) {

            v8 = v9 = !stor_15_21_21;

        }

        if (v8) {

            v8 = v10 = _uniswapV2Pair != varg0;

        }

        if (v8) {

            v8 = v11 = stor_15_22_22;

        }

        if (v8) {

            v8 = v12 = !uint8(owner_5[address(varg0)]);

        }

        if (v8) {

            v8 = v13 = !uint8(owner_5[address(varg1)]);

        }

        if (v8) {

            0x1458(v6);

            if (this.balance) {

                v14 = owner_13_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

    }

    v15 = 1;

    v16 = uint8(owner_5[address(varg0)]);

    if (!v16) {

        v16 = v17 = uint8(owner_5[address(varg1)]);

    }

    if (!v16) {

        v16 = v18 = _uniswapV2Pair != varg0;

        if (_uniswapV2Pair != varg0) {

            v16 = v19 = _uniswapV2Pair != varg1;

        }

    }

    if (!v16) {

        v20 = _uniswapV2Pair == varg0;

        if (v20) {

            v20 = v21 = _uniswapV2Router != varg1;

        }

        if (v20) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v22 = _uniswapV2Pair == varg1;

        if (v22) {

            v22 = v23 = _uniswapV2Router != varg0;

        }

        if (v22) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v15 = v24 = 0;

    }

    if (!v15) {

        0x1665();

    }

    v25, v26, v27, v28, v29, v30 = 0x17f6(varg2);

    v31 = _SafeSub(v30, owner_2[varg0]);

    owner_2[varg0] = v31;

    v32 = 0x1895(v29, owner_2[varg1]);

    owner_2[varg1] = v32;

    v33, v34 = 0x178a();

    v35 = _SafeDiv(v33, v34);

    v36 = _SafeMul(v35, v25);

    v37 = 0x1895(v36, owner_2[this]);

    owner_2[this] = v37;

    v38 = _SafeSub(v28, stor_6);

    stor_6 = v38;

    v39 = 0x1895(v26, _transfer);

    _transfer = v39;

    emit Transfer(varg0, varg1, v27);

}
