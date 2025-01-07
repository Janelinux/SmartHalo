function 0x1474(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (v1) {

        if (stor_e_23_23) {

            v4 = v5 = address(v0) != address(this);

            if (v5) {

                v4 = v6 = address(varg1) != address(this);

            }

            if (v4) {

                v4 = v7 = address(v0) != owner_d_0_19;

            }

            if (v4) {

                v4 = v8 = address(varg1) != owner_d_0_19;

            }

            if (v4) {

                v9 = v10 = msg.sender == owner_d_0_19;

                if (msg.sender != owner_d_0_19) {

                    v9 = v11 = msg.sender == owner_e_0_19;

                }

                require(v9, Error('ERR: Uniswap only'));

            }

        }

        require(varg0 <= stor_f);

        v12 = address(v0);

        v13 = v14 = !(0xff & owner_a[v12]);

        if (v14) {

            v15 = address(varg1);

            v13 = v16 = !(0xff & owner_a[v15]);

        }

        require(v13);

        v17 = v18 = address(v0) == owner_e_0_19;

        if (v18) {

            v17 = v19 = address(varg1) != owner_d_0_19;

        }

        if (v17) {

            v20 = address(varg1);

            v17 = v21 = !(0xff & owner_5[v20]);

        }

        if (v17) {

            v17 = v22 = stor_e_23_23;

        }

        if (v17) {

            v23 = address(varg1);

            require(map_b[v23] < block.timestamp);

            v24 = _SafeAdd(block.timestamp, 60);

            v25 = address(varg1);

            map_b[v25] = v24;

        }

        v26 = 0x783(this);

        v27 = v28 = !stor_e_21_21;

        if (!stor_e_21_21) {

            v27 = v29 = address(v0) != owner_e_0_19;

        }

        if (v27) {

            v27 = v30 = stor_e_22_22;

        }

        if (v27) {

            0x1d71(v26);

            if (this.balance > 0) {

                v31 = _manualswap.call().value(this.balance).gas(!this.balance * 2300);

                require(v31); // checks call status, propagates error data on error

            }

        }

    }

    v32 = address(v0);

    v33 = v34 = 0xff & owner_5[v32];

    if (!v34) {

        v35 = address(varg1);

        v33 = v36 = 0xff & owner_5[v35];

    }

    if (v33) {

    }

    if (?) {

        goto 0x213eB0x1c21;

    }

    v37 = v38 = stor_8 == 0;

    if (v38) {

        v37 = stor_9 == 0;

    }

    if (!v37) {

        stor_8 = 0;

        stor_9 = 0;

    }

    0x245b();

    v39 = 0x24c2(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v39;

    v40 = 0x250c(0, map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

    map_2[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v40;

    v41 = 0x215d();

    v42 = 0x206b(v41, 8750);

    v43 = 0x250c(v42, map_2[address(this)]);

    map_2[address(this)] = v43;

    v44 = 0x24c2(0, stor_6);

    stor_6 = v44;

    v45 = 0x250c(0, stor_7);

    stor_7 = v45;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    if (?) {

        goto 0x21570x2130B0x1c21;

    }

    return ;

    stor_8 = 5;

    stor_9 = 10;

}
