function 0xb30(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    stor_a = 2;

    stor_b = 8;

    v1 = _owner == address(v0);

    v2 = v3 = _owner != address(v0);

    if (_owner != address(v0)) {

        v2 = v4 = _owner != address(varg1);

    }

    if (v2) {

        v5 = address(v0);

        v6 = v7 = !(0xff & owner_6[v5]);

        if (v7) {

            v8 = address(varg1);

            v6 = v9 = !(0xff & owner_6[v8]);

        }

        require(v6);

        v10 = v11 = address(owner_f) == address(v0);

        if (v11) {

            v10 = v12 = owner_e_0_19 != address(varg1);

        }

        if (v10) {

            v13 = address(varg1);

            v10 = v14 = !(0xff & owner_5[v13]);

        }

        if (v10) {

            v10 = v15 = 0xff & owner_f >> 184;

        }

        if (v10) {

            require(varg0 <= stor_10);

            v16 = address(varg1);

            require(block.timestamp > map_7[v16]);

            v17 = _SafeAdd(30, block.timestamp);

            v18 = address(varg1);

            map_7[v18] = v17;

        }

        v19 = v20 = address(owner_f) == address(varg1);

        if (v20) {

            v19 = v21 = owner_e_0_19 != address(v0);

        }

        if (v19) {

            v22 = address(v0);

            v19 = v23 = !(0xff & owner_5[v22]);

        }

        if (v19) {

            stor_a = 2;

            stor_b = 10;

        }

        v24 = 0x4c6(this);

        v25 = v26 = !(0xff & owner_f >> 168);

        if (v26) {

            v25 = v27 = address(owner_f) != address(v0);

        }

        if (v25) {

            v25 = v28 = 0xff & owner_f >> 176;

        }

        if (v25) {

            0xfc0(v24);

            if (this.balance) {

                0xeb7(this.balance);

            }

        }

    }

    v29, v30, v31 = 0x14ae(stor_b, stor_a, varg0, 4959, 0, 0);

    v32, v33 = 0x12fa();

    v34 = _SafeDiv(v32, v33);

    v35, v36, v37, v38 = 0x1503(v34, v29, v30, v39);

    v40 = address(v0);

    v41 = 0x139f(v37, owner_2[v40]);

    v42 = address(v0);

    owner_2[v42] = v41;

    v43 = address(varg1);

    v44 = 0x13e1(v36, owner_2[v43]);

    v45 = address(varg1);

    owner_2[v45] = v44;

    v46, v47 = 0x12fa();

    v48 = _SafeDiv(v46, v47);

    v49 = _SafeMul(v48, v34);

    v50 = 0x13e1(v49, owner_2[this]);

    owner_2[this] = v50;

    v51 = 0x139f(v35, stor_8);

    stor_8 = v51;

    v52 = 0x13e1(v29, stor_9);

    stor_9 = v52;

    emit Transfer(address(v0), address(varg1), v30);

    return ;

}
