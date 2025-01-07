function 0x12fb(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    stor_a = 2;

    stor_b = 8;

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

        v9 = v10 = address(v0) == owner_f_0_19;

        if (v10) {

            v9 = v11 = address(varg1) != owner_e_0_19;

        }

        if (v9) {

            v12 = address(varg1);

            v9 = v13 = !(0xff & owner_5[v12]);

        }

        if (v9) {

            v9 = v14 = stor_f_23_23;

        }

        if (v9) {

            require(varg0 <= stor_10);

            v15 = address(varg1);

            require(map_7[v15] < block.timestamp);

            v16 = _SafeAdd(block.timestamp, 30);

            v17 = address(varg1);

            map_7[v17] = v16;

        }

        v18 = v19 = address(varg1) == owner_f_0_19;

        if (v19) {

            v18 = v20 = address(v0) != owner_e_0_19;

        }

        if (v18) {

            v21 = address(v0);

            v18 = v22 = !(0xff & owner_5[v21]);

        }

        if (v18) {

            stor_a = 3;

            stor_b = 3;

        }

        v23 = 0x750(this);

        v24 = v25 = !stor_f_21_21;

        if (!stor_f_21_21) {

            v24 = v26 = address(v0) != owner_f_0_19;

        }

        if (v24) {

            v24 = v27 = stor_f_22_22;

        }

        if (v24) {

            0x1acd(v23);

            if (this.balance > 0) {

                0x1964(this.balance);

            }

        }

    }

    0x20df();

    v28 = 0x2147(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v28;

    v29 = 0x2191(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v29;

    v30 = 0x1e21();

    v31 = 0x2405(v30, 7774);

    v32 = 0x2191(v31, map_2[address(this)]);

    map_2[address(this)] = v32;

    v33 = 0x2147(0, stor_8);

    stor_8 = v33;

    v34 = 0x2191(0, stor_9);

    stor_9 = v34;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    return ;

}
