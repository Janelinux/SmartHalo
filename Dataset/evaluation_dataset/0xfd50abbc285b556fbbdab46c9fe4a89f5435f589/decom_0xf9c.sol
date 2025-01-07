function 0xf9c(uint256 varg0, uint256 varg1) private { 

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

            v7 = 0x819(varg1);

            v8 = _SafeAdd(v7, varg0);

            require(v8 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v9 = v10 = 0x819(this);

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

            0x1624(v9);

            if (this.balance) {

                v19, v20, v21 = 0x1512(this.balance, 5068, this.balance, v12, v9, varg0, varg1, v0);

            }

        }

    }

    v22 = v23 = 1;

    v24 = v25 = uint8(owner_5[address(v0)]);

    if (!v25) {

        v24 = v26 = uint8(owner_5[address(varg1)]);

    }

    if (!v24) {

        v24 = v27 = _uniswapV2Pair != address(v0);

        if (_uniswapV2Pair != address(v0)) {

            v24 = v28 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v24) {

        v29 = v30 = _uniswapV2Pair == address(v0);

        if (v30) {

            v29 = v31 = _uniswapV2Router != address(varg1);

        }

        if (v29) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v32 = v33 = _uniswapV2Pair == address(varg1);

        if (v33) {

            v32 = v34 = _uniswapV2Router != address(v0);

        }

        if (v32) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v22 = v35 = 0;

    }

    if (!v22) {

        v36 = v37 = !stor_c;

        if (!bool(stor_c)) {

            v36 = !stor_d;

        }

        if (!v36) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        } else {

            goto 0x17e8B0x14cc;

        }

    }

    v38, v39, v40 = 0x1afb(stor_d, stor_c, varg0, 6572, 0, 0);

    v41, v42 = 0x1951();

    v43 = _SafeDiv(v41, v42);

    v44, v45, v46, v47 = 0x1b4a(v43, v38, v39, v48);

    v49 = 0x19ec(v46, map_2[v48 & 0xffffffffffffffffffffffffffffffffffffffff]);

    map_2[v48 & 0xffffffffffffffffffffffffffffffffffffffff] = v49;

    v50 = 0x1a2e(v45, map_2[address(varg0)]);

    map_2[address(varg0)] = v50;

    v51, v52 = 0x1951();

    v53 = _SafeDiv(v51, v52);

    v54 = 0xdb0(v53, v43);

    v55 = 0x1a2e(v54, map_2[this]);

    map_2[this] = v55;

    v56 = 0x19ec(v44, stor_6);

    stor_6 = v56;

    v57 = 0x1a2e(v38, stor_7);

    stor_7 = v57;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), address(varg0), v39);

    if (!varg1) {

        stor_c = stor_e;

        stor_d = stor_f;

        goto 0xc660x17dbB0x14cc;

    }

    return ;

}
