function 0xe67(uint256 varg0, uint256 varg1) private { 

    require(address(v0) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (v1) {

        if (!stor_13_20_20) {

            v4 = address(v0);

            v5 = v6 = 0xff & owner_5[v4];

            if (!v6) {

                v7 = address(varg1);

                v5 = v8 = 0xff & owner_5[v7];

            }

            require(v5, Error('Trading is not active.'));

        }

        if (address(varg1) != _uniswapV2Pair) {

            v9 = address(varg1);

            if (!(0xff & owner_5[v9])) {

                v10 = 0x638(varg1);

                v11 = _SafeAdd(v10, varg0);

                require(v11 < __maxWalletSize, Error('Balance exceeds max wallet size!'));

            }

        }

        v12 = v13 = 0x638(this);

        v14 = v15 = v13 >= __swapTokensAtAmount;

        v16 = _SafeMul(__swapTokensAtAmount, 20);

        if (v13 >= v16) {

            v12 = v17 = _SafeMul(__swapTokensAtAmount, 20);

        }

        if (v15) {

            v14 = v18 = !stor_13_21_21;

        }

        if (v14) {

            v14 = v19 = address(v0) != _uniswapV2Pair;

        }

        if (v14) {

            v14 = v20 = stor_13_22_22;

        }

        if (v14) {

            v21 = address(v0);

            v14 = v22 = !(0xff & owner_5[v21]);

        }

        if (v14) {

            v23 = address(varg1);

            v14 = v24 = !(0xff & owner_5[v23]);

        }

        if (v14) {

            0x176b(v12);

            if (this.balance > 0) {

                stor_13_21_21 = 1;

                v25 = _updateFees.call().value(this.balance).gas(!this.balance * 2300);

                require(v25); // checks call status, propagates error data on error

                stor_13_21_21 = 0;

            }

        }

    }

    v26 = address(v0);

    v27 = v28 = 0xff & owner_5[v26];

    if (!v28) {

        v29 = address(varg1);

        v27 = v30 = 0xff & owner_5[v29];

    }

    if (!v27) {

        v27 = v31 = address(v0) != _uniswapV2Pair;

        if (v31) {

            v27 = v32 = address(varg1) != _uniswapV2Pair;

        }

    }

    if (!v27) {

        v33 = v34 = address(v0) == _uniswapV2Pair;

        if (v34) {

            v33 = v35 = address(varg1) != _uniswapV2Router;

        }

        if (v33) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v36 = v37 = address(varg1) == _uniswapV2Pair;

        if (v37) {

            v36 = v38 = address(v0) != _uniswapV2Router;

        }

        if (v36) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    }

    if (?) {

        goto 0x1a94B0x1687;

    }

    v39 = v40 = stor_c == 0;

    if (v40) {

        v39 = stor_d == 0;

    }

    if (!v39) {

        stor_e = stor_c;

        stor_f = stor_d;

        stor_c = 0;

        stor_d = 0;

    }

    0x1e12();

    v41 = 0x1e7a(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v41;

    v42 = 0x1ec4(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v42;

    v43 = 0x1ab3();

    v44 = 0x2138(v43, 7031);

    v45 = 0x1ec4(v44, map_2[address(this)]);

    map_2[address(this)] = v45;

    v46 = 0x1e7a(0, stor_6);

    stor_6 = v46;

    v47 = 0x1ec4(0, stor_7);

    stor_7 = v47;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    if (?) {

        goto 0x1aad0x1a86B0x1687;

    }

    return ;

    stor_c = stor_e;

    stor_d = stor_f;

}
