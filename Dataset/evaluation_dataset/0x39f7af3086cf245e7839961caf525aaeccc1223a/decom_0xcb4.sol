function 0xcb4(uint256 varg0, uint256 varg1) private { 

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

            v10 = 0x7fb(varg1);

            v11 = _SafeAdd(v10, varg0);

            require(v11 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v12 = v13 = 0x7fb(this);

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

            0x12f1(v12);

            if (this.balance > 0x9fdf42f6e48000) {

                v24 = owner_13_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(v24); // checks call status, propagates error data on error

                goto 0x10ed;

            }

        }

    }

    v25 = address(v0);

    v26 = v27 = 1;

    v28 = v29 = 0xff & owner_5[v25];

    if (!v29) {

        v30 = address(varg1);

        v28 = v31 = 0xff & owner_5[v30];

    }

    if (!v28) {

        v32 = _uniswapV2Pair == address(v0);

        v28 = v33 = _uniswapV2Pair != address(v0);

        if (_uniswapV2Pair != address(v0)) {

            v28 = v34 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v28) {

        v35 = v36 = _uniswapV2Pair == address(v0);

        if (v36) {

            v35 = v37 = _uniswapV2Router != address(varg1);

        }

        if (v35) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v38 = v39 = _uniswapV2Pair == address(varg1);

        if (v39) {

            v38 = v40 = _uniswapV2Router != address(v0);

        }

        if (v38) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v26 = v41 = 0;

    }

    if (!v26) {

        v42 = v43 = !stor_c;

        if (v43) {

            v42 = !stor_d;

        }

        if (!v42) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        } else {

            goto 0x1487B0x11ed;

        }

    }

    v44, v45, v46 = 0x180c(stor_d, stor_c, varg0, 5821, 0, 0);

    v47, v48 = 0x1632();

    v49 = _SafeDiv(v47, v48);

    v50, v51, v52, v53 = 0x1861(v49, v44, v45, v54);

    v55 = address(v0);

    v56 = 0x16fd(v52, owner_2[v55]);

    v57 = address(v0);

    owner_2[v57] = v56;

    v58 = address(varg1);

    v59 = 0x173f(v51, owner_2[v58]);

    v60 = address(varg1);

    owner_2[v60] = v59;

    v61, v62 = 0x1632();

    v63 = _SafeDiv(v61, v62);

    v64 = _SafeMul(v63, v49);

    v65 = 0x173f(v64, owner_2[this]);

    owner_2[this] = v65;

    v66 = 0x16fd(v50, stor_6);

    stor_6 = v66;

    v67 = 0x173f(v44, stor_7);

    stor_7 = v67;

    emit Transfer(address(v0), address(varg1), v45);

    if (!5266) {

        stor_c = stor_e;

        stor_d = stor_f;

        goto 0xa710x147aB0x11ed;

    }

    return ;

}
