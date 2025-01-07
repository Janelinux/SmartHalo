function 0xf56(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) - 0);

    require(address(varg1) - 0);

    v0 = v1 = address(varg2) == address(varg1);

    if (v1) {

        v0 = v2 = 0x1a8a(varg1);

        if (!v2) {

            v0 = v3 = _uniswapV2Pair == msg.sender;

        }

    }

    if (!v0) {

        if (!stor_2_0_0) {

            v4 = address(varg2);

            require(_balanceOf[v4] >= varg0);

        }

        v5 = v6 = 0;

        v7 = 0x18e7();

        if (!(address(v7) - address(varg2))) {

            v8 = v9 = 0;

            while (v8 < array_1.length) {

                if (v8 < array_1.length) {

                    break;

                }

                require(v8 < array_1.length, Panic(50));

                _balanceOf[address(STORAGE[0 + (keccak256(1) + v8)])] = 0;

                require(v8 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17));

                v8 = v8 + 1;

            }

            array_1.length = 0;

            while (v10 + array_1.length > v11) {

                STORAGE[v11 + 0] = ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[v11 + 0];

                v11 += 1;

            }

        }

        v12 = 0x18e7();

        v13 = v14 = address(varg1) == address(v12);

        if (v14) {

            v13 = v15 = _uniswapV2Pair == address(varg2);

        }

        if (!v13) {

            v16 = 0x18e7();

            v13 = v17 = address(varg2) == address(v16);

            if (v17) {

                v13 = v18 = _uniswapV2Pair == address(varg1);

            }

        }

        v19 = v20 = _uniswapV2Pair != address(varg2);

        if (v20) {

            v21 = 0x1a8a(varg1);

            v19 = v22 = !v21;

        }

        if (v19) {

            v19 = v23 = address(varg1) != address(this);

        }

        if (v19) {

            v19 = v24 = !v13;

        }

        if (v19) {

            v19 = v25 = !stor_2_0_0;

        }

        if (v19) {

            v19 = v26 = _uniswapV2Pair != address(varg1);

        }

        if (v19) {

            v27 = 0x18e7();

            if (address(v27) - address(varg1)) {

                MEM[64] += 32;

                v28 = address(varg1);

                array_1.length = array_1.length + 1;

                STORAGE[0 + (keccak256(1) + (array_1.length + 1 - 1))] = address(v28) | ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[0 + (keccak256(1) + (array_1.length + 1 - 1))];

            }

            if (varg0 - 0) {

                require(!(varg0 & (__feePercent > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / varg0)), Panic(17));

                v29 = v30 = varg0 * __feePercent;

                v31 = _SafeDiv(v30, varg0);

                require(v31 == __feePercent, Error('SafeMath: multiplication overflow'));

            } else {

                v29 = v32 = 0;

            }

            require(100 > 0, Error('SafeMath: division by zero'));

            v5 = _SafeDiv(v29, 100);

        }

        v33 = _SafeSub(varg0, v5);

        v34 = _SafeAdd(_balanceOf[address(this)], v5);

        _balanceOf[address(this)] = v34;

        v35 = address(varg2);

        v36 = _SafeSub(_balanceOf[v35], varg0);

        v37 = address(varg2);

        _balanceOf[v37] = v36;

        v38 = address(varg1);

        v39 = _SafeAdd(_balanceOf[v38], v33);

        _balanceOf[v38] = v39;

        emit Transfer(address(varg2), address(varg1), varg0);

    } else {

        0xd8d(varg0, stor_b_0_19, this);

        _balanceOf[address(this)] = varg0;

        v40 = new uint256[](2);

        if (2) {

            CALLDATACOPY(v40.data, msg.data.length, 64);

        }

        require(0 < v40.length, Panic(50));

        v41 = v40.data;

        v40[0] = address(this);

        v42, v43 = stor_b_0_19.WETH().gas(msg.gas);

        require(v42); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x1d7e(v43);

        require(1 < v40.length, Panic(50));

        v40[1] = address(v43);

        stor_2_0_0 = 1;

        v44 = _SafeAdd(block.timestamp, 22);

        v45 = new array[](v40.length);

        v46 = v47 = v45.data;

        v48 = v49 = v40.data;

        v50 = v51 = 0;

        while (v50 < v40.length) {

            MEM[v46] = address(MEM[v48]);

            v46 = v46 + 32;

            v48 = v48 + 32;

            v50 = v50 + 1;

        }

        v52 = address(varg1);

        require(stor_b_0_19.code.size);

        v53 = stor_b_0_19.swapExactTokensForETHSupportingFeeOnTransferTokens(varg0, 0, v45, v52, v44).gas(msg.gas);

        require(v53); // checks call status, propagates error data on error

        stor_2_0_0 = 0;

    }

    return ;

}
