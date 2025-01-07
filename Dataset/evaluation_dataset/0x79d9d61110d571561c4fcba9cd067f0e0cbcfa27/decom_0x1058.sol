function 0x1058(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = address(varg2);

    require(!(0xff & _isBot[v0]));

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = 0;

    v3 = _owner == address(varg2);

    v4 = v5 = _owner != address(varg2);

    if (_owner != address(varg2)) {

        v4 = v6 = _owner != address(varg1);

    }

    if (v4) {

        v7 = v8 = _uniswapV2Pair == address(varg2);

        if (v8) {

            v7 = v9 = stor_6_0_19 != address(varg1);

        }

        if (v7) {

            v10 = address(varg1);

            v7 = v11 = !(0xff & owner_4[v10]);

        }

        if (v7) {

            require(stor_e_0_0, Error('Trading not yet enabled.'));

            v12 = _SafeAdd(180, __launchedAt);

            if (v12 > block.timestamp) {

                v13 = address(varg1);

                v14 = _SafeAdd(varg0, _manualswap[v13]);

                require(v14 <= __maxHeldTokens);

            }

            v1 = v15 = 1;

        }

        v16 = v17 = !stor_e_1_1;

        if (!stor_e_1_1) {

            v16 = v18 = stor_e_0_0;

        }

        if (v16) {

            v16 = v19 = _uniswapV2Pair != address(varg2);

        }

        if (v16) {

            v20 = v21 = _manualswap[address(this)];

            if (v21) {

                if (__useImpactFeeSetter) {

                    v22 = _SafeMul(_manualswap[_uniswapV2Pair], stor_b);

                    require(100, Panic(18));

                    if (v21 > v22 / 100) {

                        v23 = _SafeMul(_manualswap[_uniswapV2Pair], stor_b);

                        require(100, Panic(18));

                        v20 = v23 / 100;

                    }

                }

                require(4, Panic(18));

                v24 = _SafeSub(v20, v20 >> 2);

                stor_e_1_1 = 1;

                if (v20 >> 2) {

                    0x1058(v20 >> 2, 57005, this);

                }

                stor_e_1_1 = 0;

                0x1460(v24);

            }

            if (this.balance) {

                v25 = __FeeCollectionADD.call().value(this.balance).gas(2300 * !this.balance);

                require(v25); // checks call status, propagates error data on error

                goto 0x13c0;

            }

            v1 = v26 = 0;

        }

    }

    v27 = address(varg2);

    v28 = v29 = 1;

    v30 = v31 = 0xff & owner_4[v27];

    if (!v31) {

        v32 = address(varg1);

        v30 = v33 = 0xff & owner_4[v32];

    }

    if (v30) {

        v28 = v34 = 0;

    }

    v35 = v36 = 0;

    if (v28) {

        if (!v1) {

            v35 = v37 = __sellFee;

        } else {

            v35 = v38 = __buyFee;

        }

    }

    v39 = _SafeMul(varg0, v35);

    require(100, Panic(18));

    v40 = _SafeSub(varg0, v39 / 100);

    v41 = address(varg2);

    v42 = _SafeSub(_manualswap[v41], varg0);

    v43 = address(varg2);

    _manualswap[v43] = v42;

    v44 = address(varg1);

    v45 = _SafeAdd(_manualswap[v44], v40);

    v46 = address(varg1);

    _manualswap[v46] = v45;

    v47 = _SafeAdd(_manualswap[this], v39 / 100);

    _manualswap[this] = v47;

    emit Transfer(address(varg2), address(varg1), v40);

    return ;

}
