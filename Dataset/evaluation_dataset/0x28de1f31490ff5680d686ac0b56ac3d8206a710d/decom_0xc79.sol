function 0xc79(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = address(v0);

    require(!(0xff & owner_6[v1]));

    v2 = address(v0);

    v3 = v4 = !(0xff & owner_5[v2]);

    if (v4) {

        v5 = address(varg1);

        v3 = v6 = !(0xff & owner_5[v5]);

    }

    if (v3) {

        stor_9 = 0;

        stor_a = stor_c;

        v7 = v8 = address(owner_f) == address(v0);

        if (v8) {

            v7 = v9 = owner_e_0_19 != address(varg1);

        }

        if (v7) {

            v10 = address(varg1);

            v7 = v11 = !(0xff & owner_5[v10]);

        }

        if (v7) {

            v7 = v12 = 0xff & owner_f >> 184;

        }

        if (v7) {

            v13 = 0x592(varg1);

            require(varg0 <= stor_10);

            v14 = _SafeAdd(v13, varg0);

            require(v14 <= stor_11);

        }

        v15 = v16 = address(owner_f) == address(varg1);

        if (v16) {

            v15 = v17 = owner_e_0_19 != address(v0);

        }

        if (v15) {

            v18 = address(v0);

            v15 = v19 = !(0xff & owner_5[v18]);

        }

        if (v15) {

            stor_9 = 0;

            stor_a = stor_b;

        }

        v20 = 0x592(this);

        v21 = v22 = !(0xff & owner_f >> 168);

        if (v22) {

            v21 = v23 = address(owner_f) != address(v0);

        }

        if (v21) {

            v21 = v24 = 0xff & owner_f >> 176;

        }

        if (v21) {

            require(4, Panic(18));

            varg0 = v25 = _SafeSub(v20, v20 >> 2);

            owner_f = 0x1000000000000000000000000000000000000000000 | ~0xff000000000000000000000000000000000000000000 & owner_f;

            if (v20 >> 2) {

                0xc79(v20 >> 2, 57005);

            }

            owner_f = ~0xff000000000000000000000000000000000000000000 & owner_f;

            0x10b4(v20 >> 2);

            if (this.balance) {

                v26 = stor_d_0_19.call().value(this.balance).gas(2300 * !this.balance);

                require(v26); // checks call status, propagates error data on error

                goto 0xfa7;

            }

        }

    }

    v27, v28, v29 = 0x15b4(stor_a, stor_9, varg0, 5316, 0, 0);

    v30, v31 = 0x1439();

    v32 = _SafeDiv(v30, v31);

    v33, v34, v35, v36 = 0x1609(v32, v27, v28, v37);

    v38 = 0x1504(v35, owner_2[address(varg0)]);

    owner_2[address(varg0)] = v38;

    v39 = _SafeAdd(v34, owner_2[address(varg0)]);

    owner_2[address(varg0)] = v39;

    v40, v41 = 0x1439();

    v42 = _SafeDiv(v40, v41);

    v43 = _SafeMul(v42, v32);

    v44 = _SafeAdd(v43, owner_2[this]);

    owner_2[this] = v44;

    v45 = 0x1504(v33, stor_7);

    stor_7 = v45;

    v46 = _SafeAdd(v27, stor_8);

    stor_8 = v46;

    emit Transfer(address(varg0), address(varg0), v28);

    return ;

}
