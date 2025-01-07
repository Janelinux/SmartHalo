function 0xae4(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = v1 = 0;

    if (!stor_12_0_0) {

        v2 = v3 = _pair != address(varg1);

        if (_pair != address(varg1)) {

            v2 = v4 = stor_2_0_19 != address(varg1);

        }

        if (v2) {

            v5 = v6 = uint8(map_8[address(varg1)]);

            if (!v6) {

                v7 = _SafeAdd(_balanceOf[address(varg1)], varg0);

                v5 = v8 = v7 <= __maxWalletAmount;

            }

            require(v5, Error('Transfer amount exceeds the bag size.'));

        }

        v9 = 0xf1a(varg1, varg2);

        if (v9) {

            varg2 = v10 = 3058;

            stor_12_0_0 = 1;

            varg0 = v11 = _swapThreshold;

            varg0 = v12 = stor_b;

            varg0 = v13 = 0;

            varg0 = v14 = 4078;

            varg0 = v15 = 2;

            varg0 = v16 = 7956;

            varg0 = v17 = 0x148a(stor_9, v11);

            while (1) {

                varg0 = _SafeDiv(varg0, varg0);

            }

            varg0 = v18 = _SafeSub('SafeMath: subtraction overflow', varg0, varg0);

            varg0 = v19 = new uint256[](2);

            CALLDATACOPY(v19.data, msg.data.length, 64);

            require(0 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v20 = v19.data;

            v19[0][0] = address(this);

            require(bool(_router.code.size));

            v21, /* address */ v22 = _router.WETH().gas(msg.gas);

            require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v22 == address(v22));

            require(1 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v19[1][32][32] = address(v22);

            varg0 = v23 = this.balance;

            v24 = new array[](v19.length);

            v25 = v26 = v24.data;

            v27 = v28 = v19.data;

            v29 = v30 = 0;

            while (v29 < v19.length) {

                MEM[v25] = address(MEM[v27]);

                v27 += 32;

                v25 += 32;

                v29 += 1;

            }

            require(bool(_router.code.size));

            v31 = _router.swapExactTokensForETHSupportingFeeOnTransferTokens(v18, 0, v24, address(this), block.timestamp, v32, address(this)).gas(msg.gas);

            require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            varg0 = v33 = _SafeSub('SafeMath: subtraction overflow', v23, this.balance);

            v34 = _SafeDiv(2, stor_9);

            varg0 = v35 = _SafeSub('SafeMath: subtraction overflow', v34, stor_b);

            varg0 = v36 = 0;

            varg0 = v37 = 4526;

            varg0 = v38 = 2;

            varg0 = v39 = 7993;

            v40 = v41 = 0x148a(stor_9, v33);

            while (1) {

                v40 = _SafeDiv(varg0, v40);

            }

            v42 = 0x148a(stor_a, varg0);

            v43 = _SafeDiv(varg0, v42);

            v44 = _SafeSub('SafeMath: subtraction overflow', _liquidityProvider.balance, v43);

            v45, v46 = _marketingFeeReceiver.call().value(v44).gas(30000);

            if (RETURNDATASIZE() != 0) {

                v47 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v47.data, 0, RETURNDATASIZE());

            }

            require(v45, Error('receiver rejected ETH transfer'));

            if (varg0) {

                require(bool(_router.code.size));

                v48, v49, v50, v51 = _router.addLiquidityETH(this, varg0, 0, 0, _liquidityProvider, block.timestamp).value(v40).gas(msg.gas);

                require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                emit AutoLiquify(v40, varg0);

            }

            v52 = bytes31(STORAGE[18]);

            stor_12_0_0 = 0;

            goto 0xbf2;

        }

        v53 = _SafeSub('Insufficient Balance', varg0, _balanceOf[address(varg2)]);

        v54 = address(varg2);

        _balanceOf[v54] = v53;

        if (!uint8(owner_7[v54])) {

            v55 = 0x148a(stor_b, varg0);

            v56 = _SafeDiv(stor_c, v55);

            v57 = 0x142b(v56, _balanceOf[this]);

            _balanceOf[this] = v57;

            emit Transfer(address(varg2), this, v56);

            varg0 = v58 = _SafeSub('SafeMath: subtraction overflow', v56, varg0);

            goto 0xc830xae4;

        }

        v59 = 0x142b(varg0, _balanceOf[address(varg0)]);

        _balanceOf[address(varg0)] = v59;

        emit Transfer(address(varg2), address(varg0), varg0);

        return 1;

    } else {

        v60 = _SafeSub('Insufficient Balance', varg0, _balanceOf[address(varg2)]);

        _balanceOf[address(varg2)] = v60;

        v61 = 0x142b(varg0, _balanceOf[address(varg1)]);

        _balanceOf[address(varg1)] = v61;

        emit Transfer(address(varg2), address(varg1), varg0);

        return 1;

    }

}
