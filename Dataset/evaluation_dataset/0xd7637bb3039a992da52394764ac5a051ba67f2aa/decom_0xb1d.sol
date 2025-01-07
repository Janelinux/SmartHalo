function 0xb1d(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    stor_a = 0;

    stor_b = 5;

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = _owner != address(varg1);

    }

    if (v1) {

        v4 = address(v0);

        v5 = v6 = !(0xff & owner_6[v4]);

        if (v6) {

            v7 = address(varg1);

            v5 = v8 = !(0xff & owner_6[v7]);

        }

        require(v5);

        v9 = v10 = address(owner_f) == address(v0);

        if (v10) {

            v9 = v11 = owner_e_0_19 != address(varg1);

        }

        if (v9) {

            v12 = address(varg1);

            v9 = v13 = !(0xff & owner_5[v12]);

        }

        if (v9) {

            v9 = v14 = 0xff & owner_f >> 184;

        }

        if (v9) {

            require(varg0 <= stor_10);

            v15 = address(varg1);

            require(block.timestamp > map_7[v15]);

            v16 = _SafeAdd(30, block.timestamp);

            v17 = address(varg1);

            map_7[v17] = v16;

        }

        v18 = v19 = address(owner_f) == address(varg1);

        if (v19) {

            v18 = v20 = owner_e_0_19 != address(v0);

        }

        if (v18) {

            v21 = address(v0);

            v18 = v22 = !(0xff & owner_5[v21]);

        }

        if (v18) {

            stor_a = 0;

            stor_b = 5;

        }

        v23 = 0x4bc(this);

        v24 = v25 = !(0xff & owner_f >> 168);

        if (v25) {

            v24 = v26 = address(owner_f) != address(v0);

        }

        if (v24) {

            v24 = v27 = 0xff & owner_f >> 176;

        }

        if (v24) {

            0xfc2(v23);

            if (this.balance) {

                0xeb9(this.balance);

            }

        }

    }

    v28, v29, v30 = 0x14a6(stor_b, stor_a, varg0, 4951, 0, 0);

    v31, v32 = 0x12fc();

    v33 = _SafeDiv(v31, v32);

    v34, v35, v36, v37 = 0x14fb(v33, v28, v29, v38);

    v39 = address(v0);

    v40 = 0x1397(v36, owner_2[v39]);

    v41 = address(v0);

    owner_2[v41] = v40;

    v42 = address(varg1);

    v43 = 0x13d9(v35, owner_2[v42]);

    v44 = address(varg1);

    owner_2[v44] = v43;

    v45, v46 = 0x12fc();

    v47 = _SafeDiv(v45, v46);

    v48 = _SafeMul(v47, v33);

    v49 = 0x13d9(v48, owner_2[this]);

    owner_2[this] = v49;

    v50 = 0x1397(v34, stor_8);

    stor_8 = v50;

    v51 = 0x13d9(v28, stor_9);

    stor_9 = v51;

    emit Transfer(address(v0), address(varg1), v29);

    return ;

}
