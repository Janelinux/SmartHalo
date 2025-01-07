function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 96);

    0x2979(varg0);

    0x2979(varg1);

    require(varg2 == varg2);

    require(varg0 - address(0x0), Error('ERC20: transfer from the zero address'));

    require(varg1 - address(0x0), Error('ERC20: transfer to the zero address'));

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

        if (varg1 != _uniswapV2Pair) {

            v2 = 0x96b(varg1);

            v3 = _SafeAdd(v2, varg2);

            require(v3 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v4 = v5 = 0x96b(this);

        v6 = v5 >= __swapTokensAtAmount;

        if (v5 >= __maxTxAmount) {

            v4 = __maxTxAmount;

        }

        if (!bool(v5 < __swapTokensAtAmount)) {

            v6 = v7 = !stor_15_21_21;

        }

        if (v6) {

            v6 = v8 = varg0 != _uniswapV2Pair;

        }

        if (v6) {

            v6 = v9 = stor_15_22_22;

        }

        if (v6) {

            v6 = v10 = !uint8(owner_5[address(address(varg0))]);

        }

        if (v6) {

            v6 = v11 = !uint8(owner_5[address(address(varg1))]);

        }

        if (v6) {

            0x1ef4(v4);

            if (this.balance > 0) {

                0x1d8b(this.balance);

            }

        }

    }

    v12 = 1;

    v13 = uint8(owner_5[address(address(varg0))]);

    if (!v13) {

        v13 = v14 = uint8(owner_5[address(address(varg1))]);

    }

    if (!v13) {

        v13 = v15 = varg0 != _uniswapV2Pair;

        if (!bool(address(varg0) == _uniswapV2Pair)) {

            v13 = v16 = varg1 != _uniswapV2Pair;

        }

    }

    if (!v13) {

        v17 = varg0 == _uniswapV2Pair;

        if (v17) {

            v17 = v18 = varg1 != _uniswapV2Router;

        }

        if (v17) {

            stor_d = stor_8;

            stor_e = stor_9;

        }

        v19 = varg1 == _uniswapV2Pair;

        if (v19) {

            v19 = v20 = varg0 != _uniswapV2Router;

        }

        if (v19) {

            stor_d = stor_a;

            stor_e = stor_b;

        }

    } else {

        v12 = v21 = 0;

    }

    if (!v12) {

        0x220d();

    }

    v22, v23, v24, v25, v26, v27 = 0x24eb(varg2);

    v28 = _SafeSub(v27, owner_2[varg0]);

    owner_2[varg0] = v28;

    v29 = 0x259d(v26, owner_2[varg1]);

    owner_2[varg1] = v29;

    v30 = 0x21e2();

    v31 = 0x2811(v30, v22);

    v32 = 0x259d(v31, owner_2[address(this)]);

    owner_2[address(this)] = v32;

    v33 = _SafeSub(v25, stor_6);

    stor_6 = v33;

    v34 = 0x259d(v23, _transfer);

    _transfer = v34;

    emit Transfer(varg0, varg1, v24);

}
