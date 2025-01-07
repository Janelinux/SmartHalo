function 0x15d0(uint256 varg0, uint256 varg1) private { 

    require(address(v0) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    stor_a = 0;

    stor_b = 7;

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (v1) {

        v4 = address(v0);

        v5 = v6 = !(0xff & owner_6[v4]);

        if (v6) {

            v7 = address(varg1);

            v5 = v8 = !(0xff & owner_6[v7]);

        }

        require(v5);

        v9 = v10 = address(v0) == owner_e_0_19;

        if (v10) {

            v9 = v11 = address(varg1) != owner_d_0_19;

        }

        if (v9) {

            v12 = address(varg1);

            v9 = v13 = !(0xff & owner_5[v12]);

        }

        if (v9) {

            v9 = v14 = stor_e_23_23;

        }

        if (v9) {

            require(varg0 <= stor_f, Error('Exceeds the _maxTxAmount.'));

            v15 = 0x8b1(varg1);

            v16 = _SafeAdd(v15, varg0);

            require(v16 <= stor_10, Error('Exceeds the maxWalletSize.'));

            v17 = address(varg1);

            require(map_7[v17] < block.timestamp);

            v18 = _SafeAdd(block.timestamp, 30);

            v19 = address(varg1);

            map_7[v19] = v18;

        }

        v20 = v21 = address(varg1) == owner_e_0_19;

        if (v21) {

            v20 = v22 = address(v0) != owner_d_0_19;

        }

        if (v20) {

            v23 = address(v0);

            v20 = v24 = !(0xff & owner_5[v23]);

        }

        if (v20) {

            stor_a = 0;

            stor_b = 7;

        }

        v25 = 0x8b1(this);

        v26 = v27 = !stor_e_21_21;

        if (!stor_e_21_21) {

            v26 = v28 = address(v0) != owner_e_0_19;

        }

        if (v26) {

            v26 = v29 = stor_e_22_22;

        }

        if (v26) {

            0x1e63(v25);

            if (this.balance > 0) {

                v30 = _manualswap.call().value(this.balance).gas(!this.balance * 2300);

                require(v30); // checks call status, propagates error data on error

            }

        }

    }

    0x23a4();

    v31 = 0x240c(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v31;

    v32 = 0x2456(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v32;

    v33 = 0x214f();

    v34 = 0x1cc5(v33, 8588);

    v35 = 0x2456(v34, map_2[address(this)]);

    map_2[address(this)] = v35;

    v36 = 0x240c(0, stor_8);

    stor_8 = v36;

    v37 = 0x2456(0, stor_9);

    stor_9 = v37;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    return ;

}
