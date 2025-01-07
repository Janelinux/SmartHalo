function 0xede(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = _owner == address(v0);

    v2 = v3 = _owner != address(v0);

    if (_owner != address(v0)) {

        v2 = v4 = _owner != address(varg1);

    }

    if (v2) {

        if (!stor_15_20_20) {

            require(_owner == address(v0), Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg0 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v5 = address(v0);

        v6 = v7 = !(0xff & _bots[v5]);

        if (v7) {

            v8 = address(varg1);

            v6 = v9 = !(0xff & _bots[v8]);

        }

        require(v6, Error('TOKEN: Your account is blacklisted!'));

        if (_uniswapV2Pair != address(varg1)) {

            v10 = 0x78a(varg1);

            v11 = _SafeAdd(v10, varg0);

            require(v11 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v12 = v13 = 0x78a(this);

        v14 = v15 = v13 >= __swapTokensAtAmount;

        if (v13 >= __maxTxAmount) {

            v12 = v16 = __maxTxAmount;

        }

        if (v15) {

            v14 = v17 = !stor_15_21_21;

        }

        if (v14) {

            v14 = v18 = _uniswapV2Pair != address(v0);

        }

        if (v14) {

            v14 = v19 = stor_15_22_22;

        }

        if (v14) {

            v20 = address(v0);

            v14 = v21 = !(0xff & owner_5[v20]);

        }

        if (v14) {

            v22 = address(varg1);

            v14 = v23 = !(0xff & owner_5[v22]);

        }

        if (v14) {

            0x156d(v12);

            if (this.balance) {

                v24, v25, v26 = 0x1454(this.balance, 4878, this.balance, v15, v12, varg0, varg1, v0);

            }

        }

    }

    v27 = address(v0);

    v28 = v29 = 1;

    v30 = v31 = 0xff & owner_5[v27];

    if (!v31) {

        v32 = address(varg1);

        v30 = v33 = 0xff & owner_5[v32];

    }

    if (!v30) {

        v34 = _uniswapV2Pair == address(v0);

        v30 = v35 = _uniswapV2Pair != address(v0);

        if (_uniswapV2Pair != address(v0)) {

            v30 = v36 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v30) {

        v37 = v38 = _uniswapV2Pair == address(v0);

        if (v38) {

            v37 = v39 = _uniswapV2Router != address(varg1);

        }

        if (v37) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v40 = v41 = _uniswapV2Pair == address(varg1);

        if (v41) {

            v40 = v42 = _uniswapV2Router != address(v0);

        }

        if (v40) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v28 = v43 = 0;

    }

    if (!v28) {

        v44 = v45 = !stor_c;

        if (v45) {

            v44 = !stor_d;

        }

        if (!v44) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        } else {

            goto 0x1703B0x140e;

        }

    }

    v46, v47, v48 = 0x1b07(stor_d, stor_c, varg0, 6584, 0, 0);

    v49, v50 = 0x195b();

    v51 = _SafeDiv(v49, v50);

    v52, v53, v54, v55 = 0x1b56(v51, v46, v47, v56);

    v57 = v56 & 0xffffffffffffffffffffffffffffffffffffffff;

    v58 = 0x19f8(v54, map_2[v57]);

    v59 = v56 & 0xffffffffffffffffffffffffffffffffffffffff;

    map_2[v59] = v58;

    v60 = address(varg0);

    v61 = 0x1a3a(v53, map_2[v60]);

    v62 = address(varg0);

    map_2[v62] = v61;

    v63, v64 = 0x195b();

    v65 = _SafeDiv(v63, v64);

    v66 = 0x1724(v65, v51);

    v67 = 0x1a3a(v66, map_2[this]);

    map_2[this] = v67;

    v68 = 0x19f8(v52, stor_6);

    stor_6 = v68;

    v69 = 0x1a3a(v46, stor_7);

    stor_7 = v69;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), address(varg0), v47);

    if (!varg1) {

        stor_c = stor_e;

        stor_d = stor_f;

        goto 0xbd90x16f6B0x140e;

    }

    return ;

}
