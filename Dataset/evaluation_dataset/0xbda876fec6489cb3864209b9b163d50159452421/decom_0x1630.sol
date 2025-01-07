function 0x1630(uint256 varg0, uint256 varg1) private { 

    require(address(v0) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (v1) {

        if (!stor_15_20_20) {

            require(address(v0) == _owner, Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg0 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v4 = address(v0);

        v5 = v6 = !(0xff & _bots[v4]);

        if (v6) {

            v7 = address(varg1);

            v5 = v8 = !(0xff & _bots[v7]);

        }

        require(v5, Error('TOKEN: Your account is blacklisted!'));

        if (address(varg1) != _uniswapV2Pair) {

            v9 = 0xabe(varg1);

            v10 = _SafeAdd(v9, varg0);

            require(v10 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v11 = v12 = 0xabe(this);

        v13 = v14 = v12 >= __swapTokensAtAmount;

        if (v12 >= __maxTxAmount) {

            v11 = v15 = __maxTxAmount;

        }

        if (v14) {

            v13 = v16 = !stor_15_21_21;

        }

        if (v13) {

            v13 = v17 = address(v0) != _uniswapV2Pair;

        }

        if (v13) {

            v13 = v18 = stor_15_22_22;

        }

        if (v13) {

            v19 = address(v0);

            v13 = v20 = !(0xff & owner_5[v19]);

        }

        if (v13) {

            v21 = address(varg1);

            v13 = v22 = !(0xff & owner_5[v21]);

        }

        if (v13) {

            0x1ff1(v11);

            if (this.balance > 0) {

                v23 = owner_13_0_19.call().value(this.balance).gas(!this.balance * 2300);

                require(v23); // checks call status, propagates error data on error

            }

        }

    }

    v24 = address(v0);

    v25 = v26 = 0xff & owner_5[v24];

    if (!v26) {

        v27 = address(varg1);

        v25 = v28 = 0xff & owner_5[v27];

    }

    if (!v25) {

        v25 = v29 = address(v0) != _uniswapV2Pair;

        if (v29) {

            v25 = v30 = address(varg1) != _uniswapV2Pair;

        }

    }

    if (!v25) {

        v31 = v32 = address(v0) == _uniswapV2Pair;

        if (v32) {

            v31 = v33 = address(varg1) != _uniswapV2Router;

        }

        if (v31) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v34 = v35 = address(varg1) == _uniswapV2Pair;

        if (v35) {

            v34 = v36 = address(v0) != _uniswapV2Router;

        }

        if (v34) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    }

    if (?) {

        goto 0x2276B0x1ea1;

    }

    v37 = v38 = stor_c == 0;

    if (v38) {

        v37 = stor_d == 0;

    }

    if (!v37) {

        stor_e = stor_c;

        stor_f = stor_d;

        stor_c = 0;

        stor_d = 0;

    }

    0x25e5();

    v39 = 0x264d(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v39;

    v40 = 0x2697(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v40;

    v41 = 0x2295();

    v42 = 0x290b(v41, 9049);

    v43 = 0x2697(v42, map_2[address(this)]);

    map_2[address(this)] = v43;

    v44 = 0x264d(0, stor_6);

    stor_6 = v44;

    v45 = 0x2697(0, stor_7);

    stor_7 = v45;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    if (?) {

        goto 0x228f0x2268B0x1ea1;

    }

    return ;

    stor_c = stor_e;

    stor_d = stor_f;

}
