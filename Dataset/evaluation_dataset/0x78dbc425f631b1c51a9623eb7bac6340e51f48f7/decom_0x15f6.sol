function 0x15f6(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (v1) {

        if (!stor_15_20_20) {

            v4 = address(v0);

            require(0xff & _preTrader[v4], Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg0 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v5 = address(v0);

        v6 = v7 = !(0xff & _bots[v5]);

        if (v7) {

            v8 = address(varg1);

            v6 = v9 = !(0xff & _bots[v8]);

        }

        require(v6, Error('TOKEN: Your account is blacklisted!'));

        if (address(varg1) != _uniswapV2Pair) {

            v10 = 0xd68(varg1);

            v11 = _SafeAdd(v10, varg0);

            require(v11 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v12 = v13 = 0xd68(this);

        v14 = v15 = v13 >= __swapTokensAtAmount;

        if (v13 >= __maxTxAmount) {

            v12 = v16 = __maxTxAmount;

        }

        if (v15) {

            v14 = v17 = !stor_15_21_21;

        }

        if (v14) {

            v14 = v18 = address(v0) != _uniswapV2Pair;

        }

        if (v14) {

            v14 = v19 = stor_15_22_22;

        }

        if (v14) {

            0x1f24(v12);

            if (this.balance > 0) {

                v20 = _manualswap.call().value(this.balance).gas(!this.balance * 2300);

                require(v20); // checks call status, propagates error data on error

            }

        }

    }

    v21 = address(v0);

    v22 = v23 = 0xff & owner_5[v21];

    if (!v23) {

        v24 = address(varg1);

        v22 = v25 = 0xff & owner_5[v24];

    }

    if (!v22) {

        v22 = v26 = address(v0) != _uniswapV2Pair;

        if (v26) {

            v22 = v27 = address(varg1) != _uniswapV2Pair;

        }

    }

    if (!v22) {

        v28 = v29 = address(v0) == _uniswapV2Pair;

        if (v29) {

            v28 = v30 = address(varg1) != _uniswapV2Router;

        }

        if (v28) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v31 = v32 = address(varg1) == _uniswapV2Pair;

        if (v32) {

            v31 = v33 = address(v0) != _uniswapV2Router;

        }

        if (v31) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    }

    if (?) {

        goto 0x222aB0x1dd4;

    }

    v34 = v35 = stor_c == 0;

    if (v35) {

        v34 = stor_d == 0;

    }

    if (!v34) {

        stor_e = stor_c;

        stor_f = stor_d;

        stor_c = 0;

        stor_d = 0;

    }

    0x25a8();

    v36 = 0x2610(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v36;

    v37 = 0x265a(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v37;

    v38 = 0x2249();

    v39 = 0x28ce(v38, 8979);

    v40 = 0x265a(v39, map_2[address(this)]);

    map_2[address(this)] = v40;

    v41 = 0x2610(0, stor_6);

    stor_6 = v41;

    v42 = 0x265a(0, stor_7);

    stor_7 = v42;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    if (?) {

        goto 0x22430x221cB0x1dd4;

    }

    return ;

    stor_c = stor_e;

    stor_d = stor_f;

}
