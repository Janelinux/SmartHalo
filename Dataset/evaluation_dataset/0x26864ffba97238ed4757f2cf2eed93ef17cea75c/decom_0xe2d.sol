function 0xe2d(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    v0 = address(varg2);

    require(_balanceOf[v0] >= varg0, Error('ERC20: transfer amount exceeds balance'));

    v1 = v2 = address(varg2) == 0x494299ceda3fbc948a45a1bcf5dc6be5a12f4378;

    if (address(varg2) != 0x494299ceda3fbc948a45a1bcf5dc6be5a12f4378) {

        v1 = v3 = address(varg1) == 0x494299ceda3fbc948a45a1bcf5dc6be5a12f4378;

    }

    if (v1) {

        v1 = v4 = !stor_13_0_0;

    }

    if (!v1) {

        0x183a(varg0, varg1, varg2);

    } else {

        if (address(varg2) != 0x494299ceda3fbc948a45a1bcf5dc6be5a12f4378) {

            v5 = _SafeSub(_balanceOf[address(this)], stor_f);

            if (v5 >= stor_11) {

                stor_13_0_0 = 1;

                v6 = _SafeDiv(stor_11, 2);

                v7 = _SafeSub(stor_11, v6);

                0x15ba(v6);

                v8 = _SafeSub(this.balance, this.balance);

                stor_13_0_0 = 1;

                0xbd8(v7, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                v9, v10, v11, v12 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.addLiquidityETH(address(this), v7, 0, 0, _owner, block.timestamp).value(v8).gas(msg.gas);

                require(v9); // checks call status, propagates error data on error

                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                0x1cd0(v10);

                0x1cd0(v11);

                0x1cd0(v12);

                stor_13_0_0 = 0;

                emit SwapAndLiquify(v6, v8, v7);

                stor_13_0_0 = 0;

            }

            if (stor_f >= stor_12) {

                0x15ba(stor_12);

                v13 = _SafeSub(stor_f, stor_12);

                stor_f = v13;

                v14 = _marketingWallet.call().value(this.balance).gas(!this.balance * 2300);

                require(v14, Error('Failed to send ETH'));

            }

        }

        v15 = address(varg2);

        v16 = v17 = 0xff & owner_10[v15];

        if (!v17) {

            v18 = address(varg1);

            v16 = v19 = 0xff & owner_10[v18];

        }

        if (!v16) {

            require(varg0 <= _maxTxAmount, Error('ERC20: transfer amount exceeds the max transaction amount'));

            if (!(address(varg2) - 0x494299ceda3fbc948a45a1bcf5dc6be5a12f4378)) {

                v20 = address(varg1);

                v21 = _SafeAdd(varg0, _balanceOf[v20]);

                require(v21 <= _maxWalletAmount, Error('ERC20: balance amount exceeded max wallet amount limit'));

            }

            v22 = _SafeMul(varg0, _taxForMarketing);

            v23 = _SafeDiv(v22, 100);

            v24 = _SafeMul(varg0, _taxForLiquidity);

            v25 = _SafeDiv(v24, 100);

            v26 = _SafeAdd(v23, v25);

            varg0 = v27 = _SafeSub(varg0, v26);

            v28 = _SafeAdd(stor_f, v23);

            stor_f = v28;

            v29 = _SafeAdd(v23, v25);

            0x183a(v29, this, varg2);

        }

        0x183a(varg0, varg1, varg2);

        goto 0x13b00xe2d;

    }

    return ;

}
