function 0x185e(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (v1) {

        if (!stor_16_20_20) {

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

        v9 = v10 = block.number <= _launchBlock;

        if (v10) {

            v9 = v11 = address(v0) == _uniswapV2Pair;

        }

        if (v9) {

            v9 = v12 = address(varg1) != _uniswapV2Router;

        }

        if (v9) {

            v9 = v13 = address(varg1) != address(this);

        }

        if (v9) {

            v14 = address(varg1);

            _bots[v14] = 0x1 | ~0xff & _bots[v14];

        }

        if (address(varg1) != _uniswapV2Pair) {

            v15 = 0xc62(varg1);

            v16 = _SafeAdd(v15, varg0);

            require(v16 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v17 = v18 = 0xc62(this);

        v19 = v20 = v18 >= __swapTokensAtAmount;

        if (v18 >= __maxTxAmount) {

            v17 = v21 = __maxTxAmount;

        }

        if (v20) {

            v19 = v22 = !stor_16_21_21;

        }

        if (v19) {

            v19 = v23 = address(v0) != _uniswapV2Pair;

        }

        if (v19) {

            v19 = v24 = stor_16_22_22;

        }

        if (v19) {

            v25 = address(v0);

            v19 = v26 = !(0xff & owner_5[v25]);

        }

        if (v19) {

            v27 = address(varg1);

            v19 = v28 = !(0xff & owner_5[v27]);

        }

        if (v19) {

            0x23ff(v17);

            if (this.balance > 0) {

                0x2296(this.balance);

            }

        }

    }

    v29 = address(v0);

    v30 = v31 = 0xff & owner_5[v29];

    if (!v31) {

        v32 = address(varg1);

        v30 = v33 = 0xff & owner_5[v32];

    }

    if (!v30) {

        v30 = v34 = address(v0) != _uniswapV2Pair;

        if (v34) {

            v30 = v35 = address(varg1) != _uniswapV2Pair;

        }

    }

    if (!v30) {

        v36 = v37 = address(v0) == _uniswapV2Pair;

        if (v37) {

            v36 = v38 = address(varg1) != _uniswapV2Router;

        }

        if (v36) {

            stor_d = stor_9;

            stor_e = stor_a;

        }

        v39 = v40 = address(varg1) == _uniswapV2Pair;

        if (v40) {

            v39 = v41 = address(v0) != _uniswapV2Router;

        }

        if (v39) {

            stor_d = stor_b;

            stor_e = stor_c;

        }

    }

    if (?) {

        goto 0x2707B0x2220;

    }

    v42 = v43 = stor_d == 0;

    if (v43) {

        v42 = stor_e == 0;

    }

    if (!v42) {

        stor_f = stor_d;

        stor_10 = stor_e;

        stor_d = 0;

        stor_e = 0;

    }

    0x2a7c();

    v44 = 0x2ae4(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v44;

    v45 = 0x2b2e(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v45;

    v46 = 0x2770();

    v47 = 0x2da2(v46, 10224);

    v48 = 0x2b2e(v47, map_2[address(this)]);

    map_2[address(this)] = v48;

    v49 = 0x2ae4(0, stor_6);

    stor_6 = v49;

    v50 = 0x2b2e(0, stor_7);

    stor_7 = v50;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    if (?) {

        goto 0x27200x26f9B0x2220;

    }

    return ;

    stor_d = stor_f;

    stor_e = stor_10;

}
