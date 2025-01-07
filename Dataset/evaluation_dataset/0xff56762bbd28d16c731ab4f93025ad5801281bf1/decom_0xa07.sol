function 0xa07(uint256 varg0, uint256 varg1, uint256 varg2) private { 

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

        if (_uniswapV2Pair != address(varg1)) {

            v3 = 0x5ee(varg1);

            v4 = _SafeAdd(v3, varg0);

            require(v4 < __maxWalletSize, Error('TOKEN: Balance exceeds wallet size!'));

        }

        v5 = v6 = 0x5ee(this);

        v7 = v8 = v6 >= __swapTokensAtAmount;

        if (v6 >= __maxTxAmount) {

            v5 = v9 = __maxTxAmount;

        }

        if (!bool(v6 < __swapTokensAtAmount)) {

            v7 = v10 = !stor_15_21_21;

        }

        if (v7) {

            v7 = v11 = _uniswapV2Pair != address(varg2);

        }

        if (v7) {

            v7 = v12 = stor_15_22_22;

        }

        if (v7) {

            v7 = v13 = !uint8(owner_5[address(varg2)]);

        }

        if (v7) {

            v7 = v14 = !uint8(owner_5[address(varg1)]);

        }

        if (v7) {

            stor_15_21_21 = 1;

            v15 = new address[](2);

            CALLDATACOPY(v15.data, msg.data.length, 64);

            require(0 < v15.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v16 = v15.data;

            v15[0] = address(this);

            v17, /* address */ v18 = _uniswapV2Router.WETH().gas(msg.gas);

            require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v18 == address(v18));

            require(1 < v15.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v15[1] = address(v18);

            0x8e3(v5, _uniswapV2Router, this);

            v19 = new address[](v15.length);

            v20 = v21 = v19.data;

            v22 = v23 = v15.data;

            v24 = v25 = 0;

            while (v24 < v15.length) {

                MEM[v20] = address(MEM[v22]);

                v22 += 32;

                v20 += 32;

                v24 += 1;

            }

            require(bool(_uniswapV2Router.code.size));

            v26 = _uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(v5, 0, v19, address(this), block.timestamp, v27, address(this)).gas(msg.gas);

            require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            stor_15_21_21 = 0;

            if (this.balance) {

                v28 = stor_13_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

    }

    v29 = v30 = 1;

    v31 = v32 = uint8(owner_5[address(varg2)]);

    if (!v32) {

        v31 = v33 = uint8(owner_5[address(varg1)]);

    }

    if (!v31) {

        v31 = v34 = _uniswapV2Pair != address(varg2);

        if (_uniswapV2Pair != address(varg2)) {

            v31 = v35 = _uniswapV2Pair != address(varg1);

        }

    }

    if (!v31) {

        v36 = v37 = _uniswapV2Pair == address(varg2);

        if (v37) {

            v36 = v38 = _uniswapV2Router != address(varg1);

        }

        if (v36) {

            stor_d = stor_8;

            stor_e = stor_9;

        }

        v39 = v40 = _uniswapV2Pair == address(varg1);

        if (v40) {

            v39 = v41 = _uniswapV2Router != address(varg2);

        }

        if (v39) {

            stor_d = stor_a;

            stor_e = stor_b;

        }

    } else {

        v29 = v42 = 0;

    }

    if (!v29) {

        v43 = v44 = !stor_d;

        if (!bool(stor_d)) {

            v43 = !stor_e;

        }

        if (!v43) {

            stor_f = stor_d;

            stor_10 = stor_e;

            stor_d = 0;

            stor_e = 0;

        } else {

            goto 0x112cB0xe9d;

        }

    }

    v45 = _SafeMul(stor_d, varg0);

    v46 = _SafeDiv(100, v45);

    v47 = _SafeMul(stor_e, varg0);

    v48 = _SafeDiv(100, v47);

    v49 = _SafeSub('SafeMath: subtraction overflow', v46, varg0);

    v50 = _SafeSub('SafeMath: subtraction overflow', v48, v49);

    v51, v52 = 0x12d7();

    v53 = _SafeDiv(v51, v52);

    v54 = _SafeMul(v53, varg0);

    v55 = _SafeMul(v53, v46);

    v56 = _SafeMul(v53, v48);

    v57 = _SafeSub('SafeMath: subtraction overflow', v55, v54);

    v58 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v56, v57);

    v59 = _SafeSub('SafeMath: subtraction overflow', v54, owner_2[address(varg2)]);

    owner_2[address(varg2)] = v59;

    v60 = 0x13e4(v58, owner_2[address(varg1)]);

    owner_2[address(varg1)] = v60;

    v61, v62 = 0x12d7();

    v63 = _SafeDiv(v61, v62);

    v64 = _SafeMul(v63, v48);

    v65 = 0x13e4(v64, owner_2[this]);

    owner_2[this] = v65;

    v66 = _SafeSub('SafeMath: subtraction overflow', v55, stor_6);

    stor_6 = v66;

    v67 = 0x13e4(v46, stor_7);

    stor_7 = v67;

    emit Transfer(address(varg2), address(varg1), v50);

    if (v29) {

        goto 0x2105;

    } else {

        stor_d = stor_f;

        stor_e = stor_10;

    }

    return ;

}
