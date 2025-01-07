function 0x9e3(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = _owner == address(v0);

    v2 = v3 = _owner != address(v0);

    if (_owner != address(v0)) {

        v2 = v4 = _owner != address(varg1);

    }

    if (v2) {

        if (!stor_14_20_20) {

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

            v10 = 0x5fa(varg1);

            v11 = _SafeAdd(v10, varg0);

            require(v11 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v12 = v13 = 0x5fa(this);

        v14 = v15 = v13 >= __swapTokensAtAmount;

        v16 = _SafeMul(4, __swapTokensAtAmount);

        if (v13 >= v16) {

            v12 = v17 = _SafeMul(4, __swapTokensAtAmount);

        }

        if (v15) {

            v14 = v18 = !stor_14_21_21;

        }

        if (v14) {

            v14 = v19 = _uniswapV2Pair != address(v0);

        }

        if (v14) {

            v14 = v20 = stor_14_22_22;

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

            stor_14_21_21 = 1;

            v25 = new uint256[](2);

            CALLDATACOPY(v25.data, msg.data.length, 64);

            require(0 < v25.length, Panic(50));

            v26 = v25.data;

            v25[0] = address(this);

            require(_uniswapV2Router.code.size);

            v27, v28 = _uniswapV2Router.WETH().gas(msg.gas);

            require(v27); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v28 == address(v28));

            require(1 < v25.length, Panic(50));

            v25[32] = address(v28);

            0x8bf(v12, _uniswapV2Router, this);

            v29 = new array[](v25.length);

            v30 = v31 = v29.data;

            v32 = v33 = v25.data;

            v34 = v35 = 0;

            while (v34 < v25.length) {

                MEM[v30] = address(MEM[v32]);

                v32 += 32;

                v30 += 32;

                v34 += 1;

            }

            require(_uniswapV2Router.code.size);

            v36 = _uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(v12, 0, v29, address(this), block.timestamp).gas(msg.gas);

            require(v36); // checks call status, propagates error data on error

            stor_14_21_21 = 0;

            if (this.balance > 0xb1a2bc2ec50000) {

                v37 = _manualsend.call().value(this.balance).gas(2300 * !this.balance);

                require(v37); // checks call status, propagates error data on error

                goto 0xe30;

            }

        }

    }

    v38 = address(v0);

    v39 = v40 = 1;

    v41 = v42 = 0xff & owner_5[v38];

    if (!v42) {

        v43 = address(varg1);

        v41 = v44 = 0xff & owner_5[v43];

    }

    if (!v41) {

        v45 = _uniswapV2Pair == address(v0);

        v41 = v46 = _uniswapV2Pair != address(v0);

        if (_uniswapV2Pair != address(v0)) {

            v41 = v47 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v41) {

        v48 = v49 = _uniswapV2Pair == address(v0);

        if (v49) {

            v48 = v50 = _uniswapV2Router != address(varg1);

        }

        if (v48) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v51 = v52 = _uniswapV2Pair == address(varg1);

        if (v52) {

            v51 = v53 = _uniswapV2Router != address(v0);

        }

        if (v51) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v39 = v54 = 0;

    }

    if (!v39) {

        v55 = v56 = !stor_c;

        if (v56) {

            v55 = !stor_d;

        }

        if (!v55) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        } else {

            goto 0x11caB0xf30;

        }

    }

    v57, v58, v59 = 0x154f(stor_d, stor_c, varg0, 5120, 0, 0);

    v60, v61 = 0x1375();

    v62 = _SafeDiv(v60, v61);

    v63, v64, v65, v66 = 0x15a4(v62, v57, v58, v67);

    v68 = address(v0);

    v69 = 0x1440(v65, owner_2[v68]);

    v70 = address(v0);

    owner_2[v70] = v69;

    v71 = address(varg1);

    v72 = 0x1482(v64, owner_2[v71]);

    v73 = address(varg1);

    owner_2[v73] = v72;

    v74, v75 = 0x1375();

    v76 = _SafeDiv(v74, v75);

    v77 = 0x15f4(v76, v62);

    v78 = 0x1482(v77, owner_2[this]);

    owner_2[this] = v78;

    v79 = 0x1440(v63, stor_6);

    stor_6 = v79;

    v80 = 0x1482(v57, stor_7);

    stor_7 = v80;

    emit Transfer(address(v0), address(varg1), v58);

    if (!4565) {

        stor_c = stor_e;

        stor_d = stor_f;

        goto 0x74b0x11bdB0xf30;

    }

    return ;

}
