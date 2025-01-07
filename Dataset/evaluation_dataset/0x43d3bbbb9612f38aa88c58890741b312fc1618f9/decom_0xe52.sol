function 0xe52(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0);

    require(address(varg1) != 0);

    v1 = v2 = 0x1a16(varg1);

    if (!v2) {

        v1 = v3 = 0xff & owner_4[msg.sender];

    }

    if (v1) {

        v1 = v4 = address(v0) == address(varg1);

    }

    if (!v1) {

        if (!stor_c_0_0) {

            v5 = address(v0);

            require(_balanceOf[v5] >= varg0);

        }

        v6 = v7, v8, v9 = 0x16e2(v0);

        v10 = 0x1873();

        v11 = v12 = address(v9) == address(v10);

        if (v12) {

            v11 = v13 = 0xff & owner_4[0];

        }

        if (!v11) {

            v14 = 0x1873();

            v11 = v15 = 0 == address(v14);

            if (v15) {

                v11 = v16 = 0xff & owner_4[address(v9)];

            }

        }

        v17 = v18 = !(0xff & owner_4[0]);

        if (v18) {

            v17 = v19 = !(0xff & owner_4[address(v9)]);

        }

        if (v17) {

            v20 = 0x1a16(v9);

            v17 = v21 = !v20;

        }

        if (v17) {

            v17 = v22 = address(v9) != address(this);

        }

        if (v17) {

            v17 = v23 = !v11;

        }

        if (v17) {

            v17 = v24 = !stor_c_0_0;

        }

        if (v17) {

            if (v8 != 0) {

                require(!(v8 & (__totalFee > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v8)), Panic(17));

                v25 = v26 = v8 * __totalFee;

                v27 = _SafeDiv(v26, v8);

                require(v27 == __totalFee, Error('SafeMath: multiplication overflow'));

            } else {

                v25 = v28 = 0;

            }

            v29.word0 = 26;

            v30 = v29.data;

            v29.word1 = 'SafeMath: division by zero';

            v6 = 0x1c18('SafeMath: division by zero', 100, v25);

            v31 = 0x1873();

            if (address(v31) != address(v9)) {

                MEM[64] += 64;

                array_e.length = array_e.length + 1;

                STORAGE[0 + ((array_e.length + 1 - 1 << 1) + keccak256(14))] = address(v9) | ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[0 + ((array_e.length + 1 - 1 << 1) + keccak256(14))];

                STORAGE[1 + ((array_e.length + 1 - 1 << 1) + keccak256(14))] = v8;

            }

        }

        v32 = _SafeSub(v8, v6);

        v33 = _SafeAdd(_balanceOf[address(this)], v6);

        _balanceOf[address(this)] = v33;

        v34 = _SafeSub(_balanceOf[0], v8);

        _balanceOf[0] = v34;

        v35 = _SafeAdd(_balanceOf[address(v9)], v32);

        _balanceOf[address(v9)] = v35;

        emit Transfer(0, address(v9), v8);

    } else {

        0xc87(varg0, stor_d_0_19, this);

        _balanceOf[address(this)] = varg0;

        v36 = new uint256[](2);

        if (2) {

            CALLDATACOPY(v36.data, msg.data.length, 64);

        }

        require(0 < v36.length, Panic(50));

        v37 = v36.data;

        v36[0] = address(this);

        v38, v39 = stor_d_0_19.WETH().gas(msg.gas);

        require(v38); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x1dd7(v39);

        require(1 < v36.length, Panic(50));

        v36[1] = address(v39);

        stor_c_0_0 = 1;

        v40 = _SafeAdd(block.timestamp, 20);

        v41 = new array[](v36.length);

        v42 = v43 = v41.data;

        v44 = v45 = v36.data;

        v46 = v47 = 0;

        while (v46 < v36.length) {

            MEM[v42] = address(MEM[v44]);

            v42 = v42 + 32;

            v44 = v44 + 32;

            v46 = v46 + 1;

        }

        v48 = address(varg1);

        require(stor_d_0_19.code.size);

        v49 = stor_d_0_19.swapExactTokensForETHSupportingFeeOnTransferTokens(varg0, 0, v41, v48, v40).gas(msg.gas);

        require(v49); // checks call status, propagates error data on error

        stor_c_0_0 = 0;

    }

    return ;

}
