function 0xe6b(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = address(v0);

    v2 = v3 = !(0xff & _bots[v1]);

    if (v3) {

        v4 = address(varg1);

        v2 = v5 = !(0xff & _bots[v4]);

    }

    require(v2);

    v6 = _owner == address(v0);

    v7 = v8 = _owner != address(v0);

    if (_owner != address(v0)) {

        v7 = v9 = _owner != address(varg1);

    }

    if (v7) {

        if (!stor_15_20_20) {

            require(_owner == address(v0), Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg0 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v10 = address(v0);

        v11 = v12 = !(0xff & _bots[v10]);

        if (v12) {

            v13 = address(varg1);

            v11 = v14 = !(0xff & _bots[v13]);

        }

        require(v11, Error('TOKEN: Your account is blacklisted!'));

        if (_uniswapV2Pair != address(varg1)) {

            v15 = 0xad9(varg1);

            v16 = _SafeAdd(v15, varg0);

            require(v16 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v17 = v18 = 0xad9(this);

        v19 = v20 = v18 >= __swapTokensAtAmount;

        if (v18 >= __maxTxAmount) {

            v17 = v21 = __maxTxAmount;

        }

        if (v20) {

            v19 = v22 = !stor_15_21_21;

        }

        if (v19) {

            v19 = v23 = _uniswapV2Pair != address(v0);

        }

        if (v19) {

            v19 = v24 = stor_15_22_22;

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

            0x14ea(v17);

            if (this.balance) {

                v29 = owner_13_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(v29); // checks call status, propagates error data on error

                goto 0x12e6;

            }

        }

    }

    v30 = address(v0);

    v31 = v32 = 1;

    v33 = v34 = 0xff & owner_5[v30];

    if (!v34) {

        v35 = address(varg1);

        v33 = v36 = 0xff & owner_5[v35];

    }

    if (!v33) {

        v37 = _uniswapV2Pair == address(v0);

        v33 = v38 = _uniswapV2Pair != address(v0);

        if (_uniswapV2Pair != address(v0)) {

            v33 = v39 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v33) {

        v40 = v41 = _uniswapV2Pair == address(v0);

        if (v41) {

            v40 = v42 = _uniswapV2Router != address(varg1);

        }

        if (v40) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v43 = v44 = _uniswapV2Pair == address(varg1);

        if (v44) {

            v43 = v45 = _uniswapV2Router != address(v0);

        }

        if (v43) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v31 = v46 = 0;

    }

    if (!v31) {

        v47 = v48 = !stor_c;

        if (v48) {

            v47 = !stor_d;

        }

        if (!v47) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        } else {

            goto 0x1671B0x13e6;

        }

    }

    v49, v50, v51 = 0x19f6(stor_d, stor_c, varg0, 6311, 0, 0);

    v52, v53 = 0x181c();

    v54 = _SafeDiv(v52, v53);

    v55, v56, v57, v58 = 0x1a4b(v54, v49, v50, v59);

    v60 = address(v0);

    v61 = 0x18e7(v57, owner_2[v60]);

    v62 = address(v0);

    owner_2[v62] = v61;

    v63 = address(varg1);

    v64 = 0x1929(v56, owner_2[v63]);

    v65 = address(varg1);

    owner_2[v65] = v64;

    v66, v67 = 0x181c();

    v68 = _SafeDiv(v66, v67);

    v69 = _SafeMul(v68, v54);

    v70 = 0x1929(v69, owner_2[this]);

    owner_2[this] = v70;

    v71 = 0x18e7(v55, stor_6);

    stor_6 = v71;

    v72 = 0x1929(v49, stor_7);

    stor_7 = v72;

    emit Transfer(address(v0), address(varg1), v50);

    if (!5756) {

        stor_c = stor_e;

        stor_d = stor_f;

        goto 0xa400x1664B0x13e6;

    }

    return ;

}
