function 0x1393(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (!v1) {

        stor_a = 0;

        stor_b = 0;

    } else {

        v4 = address(v0);

        v5 = v6 = !(0xff & owner_6[v4]);

        if (v6) {

            v7 = address(varg1);

            v5 = v8 = !(0xff & owner_6[v7]);

        }

        require(v5);

        stor_a = 0;

        if (stor_e == 0) {

            v9 = v10 = stor_d;

        } else {

            v9 = v11 = stor_c;

        }

        stor_b = v9;

        v12 = v13 = address(v0) == owner_11_0_19;

        if (v13) {

            v12 = v14 = address(varg1) != stor_10_0_19;

        }

        if (v12) {

            v15 = address(varg1);

            v12 = v16 = !(0xff & map_5[v15]);

        }

        if (v12) {

            v12 = v17 = stor_11_23_23;

        }

        if (v12) {

            require(varg0 <= stor_12, Error('Exceeds the _maxTxAmount.'));

            v18 = 0x76f(varg1);

            v19 = _SafeAdd(v18, varg0);

            require(v19 <= stor_13, Error('Exceeds the maxWalletSize.'));

            if (stor_e > 0) {

                require(stor_e != 0, Panic(17));

                stor_e = stor_e - 1;

            }

        }

        v20 = 0x76f(this);

        v21 = v22 = !stor_11_21_21;

        if (!stor_11_21_21) {

            v21 = v23 = address(v0) != owner_11_0_19;

        }

        if (v21) {

            v21 = v24 = stor_11_22_22;

        }

        if (v21) {

            v21 = v25 = v20 > 0;

        }

        if (v21) {

            0x1a0b(v20);

            if (this.balance > 0) {

                v26 = _manualswap.call().value(this.balance).gas(!this.balance * 2300);

                require(v26); // checks call status, propagates error data on error

            }

        }

    }

    0x1fa2();

    v27 = 0x200a(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v27;

    v28 = 0x2054(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v28;

    v29 = 0x1ca3();

    v30 = 0x22c8(v29, 7466);

    v31 = 0x2054(v30, map_2[address(this)]);

    map_2[address(this)] = v31;

    v32 = 0x200a(0, stor_8);

    stor_8 = v32;

    v33 = 0x2054(0, stor_9);

    stor_9 = v33;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    return ;

}
