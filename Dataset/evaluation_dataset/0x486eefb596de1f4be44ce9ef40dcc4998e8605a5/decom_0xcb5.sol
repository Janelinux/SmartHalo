function 0xcb5(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = _owner != address(varg2);

    if (_owner != address(varg2)) {

        v0 = v2 = _owner != address(varg1);

    }

    if (v0) {

        if (!stor_15_20_20) {

            require(_owner == address(varg2), Error('TOKEN: This account cannot send tokens until trading is enabled'));

        }

        require(varg0 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

        v3 = v4 = !uint8(_bots[address(varg2)]);

        if (!bool(uint8(_bots[address(varg2)]))) {

            v3 = v5 = !uint8(_bots[address(varg1)]);

        }

        require(v3, Error('TOKEN: Your account is blacklisted!'));

        if (_uniswapV2Pair != address(varg1)) {

            v6 = 0x7fc(varg1);

            v7 = _SafeAdd(v6, varg0);

            require(v7 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v8 = v9 = 0x7fc(this);

        v10 = v11 = v9 >= __swapTokensAtAmount;

        if (v9 >= __maxTxAmount) {

            v8 = v12 = __maxTxAmount;

        }

        if (!bool(v9 < __swapTokensAtAmount)) {

            v10 = v13 = !stor_15_21_21;

        }

        if (v10) {

            v10 = v14 = _uniswapV2Pair != address(varg2);

        }

        if (v10) {

            v10 = v15 = stor_15_22_22;

        }

        if (v10) {

            v10 = v16 = !uint8(owner_5[address(varg2)]);

        }

        if (v10) {

            v10 = v17 = !uint8(owner_5[address(varg1)]);

        }

        if (v10) {

            0x12e9(v8);

            if (this.balance) {

                v18 = owner_13_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

    }

    v19 = v20 = 1;

    v21 = v22 = uint8(owner_5[address(varg2)]);

    if (!v22) {

        v21 = v23 = uint8(owner_5[address(varg1)]);

    }

    if (!v21) {

        v21 = v24 = _uniswapV2Pair != address(varg2);

        if (_uniswapV2Pair != address(varg2)) {

            v21 = v25 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v21) {

        v26 = v27 = _uniswapV2Pair == address(varg2);

        if (v27) {

            v26 = v28 = _uniswapV2Router != address(varg1);

        }

        if (v26) {

            stor_c = stor_8;

            stor_d = stor_9;

        }

        v29 = v30 = _uniswapV2Pair == address(varg1);

        if (v30) {

            v29 = v31 = _uniswapV2Router != address(varg2);

        }

        if (v29) {

            stor_c = stor_a;

            stor_d = stor_b;

        }

    } else {

        v19 = v32 = 0;

    }

    if (!v19) {

        v33 = v34 = !stor_c;

        if (!bool(stor_c)) {

            v33 = !stor_d;

        }

        if (!v33) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        } else {

            goto 0x147fB0x11e5;

        }

    }

    v35 = _SafeMul(stor_c, varg0);

    v36 = _SafeDiv(100, v35);

    v37 = _SafeMul(stor_d, varg0);

    v38 = _SafeDiv(100, v37);

    v39 = _SafeSub('SafeMath: subtraction overflow', v36, varg0);

    v40 = _SafeSub('SafeMath: subtraction overflow', v38, v39);

    v41, v42 = 0x162a();

    v43 = _SafeDiv(v41, v42);

    v44 = _SafeMul(v43, varg0);

    v45 = _SafeMul(v43, v36);

    v46 = _SafeMul(v43, v38);

    v47 = _SafeSub('SafeMath: subtraction overflow', v45, v44);

    v48 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v46, v47);

    v49 = _SafeSub('SafeMath: subtraction overflow', v44, owner_2[address(varg2)]);

    owner_2[address(varg2)] = v49;

    v50 = 0x173f(v48, owner_2[address(varg1)]);

    owner_2[address(varg1)] = v50;

    v51, v52 = 0x162a();

    v53 = _SafeDiv(v51, v52);

    v54 = _SafeMul(v53, v38);

    v55 = 0x173f(v54, owner_2[this]);

    owner_2[this] = v55;

    v56 = _SafeSub('SafeMath: subtraction overflow', v45, stor_6);

    stor_6 = v56;

    v57 = 0x173f(v36, stor_7);

    stor_7 = v57;

    emit Transfer(address(varg2), address(varg1), v40);

    if (v19) {

        goto 0x2833;

    } else {

        stor_c = stor_e;

        stor_d = stor_f;

    }

    return ;

}
