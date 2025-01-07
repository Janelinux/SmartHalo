function 0xc17(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    stor_a = 5;

    stor_b = stor_d;

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

        v10 = v11 = address(owner_11) == address(v0);

        if (v11) {

            v10 = v12 = owner_10_0_19 != address(varg1);

        }

        if (v10) {

            v13 = address(varg1);

            v10 = v14 = !(0xff & owner_5[v13]);

        }

        if (v10) {

            v10 = v15 = 0xff & owner_11 >> 184;

        }

        if (v10) {

            require(varg0 <= stor_12);

            v16 = address(varg1);

            require(block.timestamp > map_7[v16]);

            v17 = _SafeAdd(40, block.timestamp);

            v18 = address(varg1);

            map_7[v18] = v17;

        }

        v19 = v20 = address(owner_11) == address(varg1);

        if (v20) {

            v19 = v21 = owner_10_0_19 != address(v0);

        }

        if (v19) {

            v22 = address(v0);

            v19 = v23 = !(0xff & owner_5[v22]);

        }

        if (v19) {

            stor_a = 5;

            stor_b = stor_c;

        }

        v24 = 0x61e(this);

        v25 = v26 = !(0xff & owner_11 >> 168);

        if (v26) {

            v25 = v27 = address(owner_11) != address(v0);

        }

        if (v25) {

            v25 = v28 = 0xff & owner_11 >> 176;

        }

        if (v25) {

            0x105e(v24);

            if (this.balance) {

                v29 = stor_f_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(v29); // checks call status, propagates error data on error

                goto 0xf52;

            }

        }

    }

    v30, v31, v32 = 0x152a(stor_b, stor_a, varg0, 5083, 0, 0);

    v33, v34 = 0x134e();

    v35 = _SafeDiv(v33, v34);

    v36, v37, v38, v39 = 0x157f(v35, v30, v31, v40);

    v41 = address(v0);

    v42 = 0x141b(v38, owner_2[v41]);

    v43 = address(v0);

    owner_2[v43] = v42;

    v44 = address(varg1);

    v45 = 0x145d(v37, owner_2[v44]);

    v46 = address(varg1);

    owner_2[v46] = v45;

    v47, v48 = 0x134e();

    v49 = _SafeDiv(v47, v48);

    v50 = _SafeMul(v49, v35);

    v51 = 0x145d(v50, owner_2[this]);

    owner_2[this] = v51;

    v52 = 0x141b(v36, stor_8);

    stor_8 = v52;

    v53 = 0x145d(v30, stor_9);

    stor_9 = v53;

    emit Transfer(address(v0), address(varg1), v31);

    return ;

}
