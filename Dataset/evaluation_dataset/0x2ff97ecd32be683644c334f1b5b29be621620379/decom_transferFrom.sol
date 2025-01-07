function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 96);

    0x2ca9(varg0);

    0x2ca9(varg1);

    require(varg2 == varg2);

    require(varg0 != address(0x0), Error('ERC20: transfer from the zero address'));

    require(varg1 != address(0x0), Error('ERC20: transfer to the zero address'));

    require(varg2 > 0, Error('Transfer amount must be greater than zero'));

    v0 = varg0 != _owner;

    if (!bool(address(varg0) == _owner)) {

        v0 = v1 = varg1 != _owner;

    }

    if (v0) {

        if (!stor_15_20_20) {

            require(varg0 == _owner, Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg2 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v2 = !uint8(_bots[address(address(varg0))]);

        if (!bool(uint8(_bots[address(address(varg0))]))) {

            v2 = v3 = !uint8(_bots[address(address(varg1))]);

        }

        require(v2, Error('TOKEN: Your account is blacklisted!'));

        if (varg1 != _uniswapV2Pair) {

            v4 = 0xc50(varg1);

            v5 = _SafeAdd(v4, varg2);

            require(v5 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v6 = v7 = 0xc50(this);

        v8 = v7 >= __swapTokensAtAmount;

        if (v7 >= __maxTxAmount) {

            v6 = __maxTxAmount;

        }

        if (!bool(v7 < __swapTokensAtAmount)) {

            v8 = v9 = !stor_15_21_21;

        }

        if (v8) {

            v8 = v10 = varg0 != _uniswapV2Pair;

        }

        if (v8) {

            v8 = v11 = stor_15_22_22;

        }

        if (v8) {

            v8 = v12 = !uint8(owner_5[address(address(varg0))]);

        }

        if (v8) {

            v8 = v13 = !uint8(owner_5[address(address(varg1))]);

        }

        if (v8) {

            0x21f4(v6);

            if (this.balance > 0) {

                v14 = owner_13_0_19.call().value(this.balance).gas(!this.balance * 2300);

                require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

    }

    v15 = 1;

    v16 = uint8(owner_5[address(address(varg0))]);

    if (!v16) {

        v16 = v17 = uint8(owner_5[address(address(varg1))]);

    }

    if (!v16) {

        v16 = v18 = varg0 != _uniswapV2Pair;

        if (!bool(address(varg0) == _uniswapV2Pair)) {

            v16 = v19 = varg1 != _uniswapV2Pair;

        }

    }

    if (!v16) {

        v20 = varg0 == _uniswapV2Pair;

        if (v20) {

            v20 = v21 = varg1 != _uniswapV2Router;

        }

        if (v20) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v22 = varg1 == _uniswapV2Pair;

        if (v22) {

            v22 = v23 = varg0 != _uniswapV2Router;

        }

        if (v22) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v15 = v24 = 0;

    }

    if (!v15) {

        0x251c();

    }

    v25, v26, v27, v28, v29, v30 = 0x2800(varg2);

    v31 = _SafeSub(v30, owner_2[varg0]);

    owner_2[varg0] = v31;

    v32 = 0x28b2(v29, owner_2[varg1]);

    owner_2[varg1] = v32;

    v33 = 0x24a7();

    v34 = 0x2b26(v33, v25);

    v35 = 0x28b2(v34, owner_2[address(this)]);

    owner_2[address(this)] = v35;

    v36 = _SafeSub(v28, stor_6);

    stor_6 = v36;

    v37 = 0x28b2(v26, _transfer);

    _transfer = v37;

    emit Transfer(varg0, varg1, v27);

}
