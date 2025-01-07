function 0xcae(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = _owner != address(v0);

    if (_owner != address(v0)) {

        v1 = v3 = _owner != address(varg1);

    }

    if (v1) {

        if (!stor_15_20_20) {

            require(_owner == address(v0), Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg0 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v4 = v5 = !uint8(_bots[address(v0)]);

        if (!bool(uint8(_bots[address(v0)]))) {

            v4 = v6 = !uint8(_bots[address(varg1)]);

        }

        require(v4, Error('TOKEN: Your account is blacklisted!'));

        if (_uniswapV2Pair != address(varg1)) {

            v7 = 0x7f5(varg1);

            v8 = _SafeAdd(v7, varg0);

            require(v8 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v9 = v10 = 0x7f5(this);

        v11 = v12 = v10 >= __swapTokensAtAmount;

        if (v10 >= __maxTxAmount) {

            v9 = v13 = __maxTxAmount;

        }

        if (!bool(v10 < __swapTokensAtAmount)) {

            v11 = v14 = !stor_15_21_21;

        }

        if (v11) {

            v11 = v15 = _uniswapV2Pair != address(v0);

        }

        if (v11) {

            v11 = v16 = stor_15_22_22;

        }

        if (v11) {

            v11 = v17 = !uint8(owner_5[address(v0)]);

        }

        if (v11) {

            v11 = v18 = !uint8(owner_5[address(varg1)]);

        }

        if (v11) {

            0x12e2(v9);

            if (this.balance) {

                v19 = owner_13_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                goto 0x10de;

            }

        }

    }

    v20 = v21 = 1;

    v22 = v23 = uint8(owner_5[address(v0)]);

    if (!v23) {

        v22 = v24 = uint8(owner_5[address(varg1)]);

    }

    if (!v22) {

        v22 = v25 = _uniswapV2Pair != address(v0);

        if (_uniswapV2Pair != address(v0)) {

            v22 = v26 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v22) {

        v27 = v28 = _uniswapV2Pair == address(v0);

        if (v28) {

            v27 = v29 = _uniswapV2Router != address(varg1);

        }

        if (v27) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v30 = v31 = _uniswapV2Pair == address(varg1);

        if (v31) {

            v30 = v32 = _uniswapV2Router != address(v0);

        }

        if (v30) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v20 = v33 = 0;

    }

    if (!v20) {

        v34 = v35 = !stor_c;

        if (!bool(stor_c)) {

            v34 = !stor_d;

        }

        if (!v34) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        } else {

            goto 0x1469B0x11de;

        }

    }

    v36, v37, v38 = 0x17f0(stor_d, stor_c, varg0, 5793, 0, 0);

    v39, v40 = 0x1614();

    v41 = _SafeDiv(v39, v40);

    v42, v43, v44, v45 = 0x1845(v41, v36, v37, v46);

    v47 = 0x16e1(v44, owner_2[address(v0)]);

    owner_2[address(v0)] = v47;

    v48 = 0x1723(v43, owner_2[address(varg1)]);

    owner_2[address(varg1)] = v48;

    v49, v50 = 0x1614();

    v51 = _SafeDiv(v49, v50);

    v52 = _SafeMul(v51, v41);

    v53 = 0x1723(v52, owner_2[this]);

    owner_2[this] = v53;

    v54 = 0x16e1(v42, stor_6);

    stor_6 = v54;

    v55 = 0x1723(v36, stor_7);

    stor_7 = v55;

    emit Transfer(address(v0), address(varg1), v37);

    if (!5236) {

        stor_c = stor_e;

        stor_d = stor_f;

        goto 0xa6b0x145cB0x11de;

    }

    return ;

}
