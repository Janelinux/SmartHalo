function 0xb69(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = _owner == address(v0);

    v2 = v3 = _owner != address(v0);

    if (_owner != address(v0)) {

        v2 = v4 = _owner != address(varg1);

    }

    if (!v2) {

        stor_a = 0;

        stor_b = 0;

    } else {

        v5 = address(v0);

        v6 = v7 = !(0xff & owner_6[v5]);

        if (v7) {

            v8 = address(varg1);

            v6 = v9 = !(0xff & owner_6[v8]);

        }

        require(v6);

        stor_a = 0;

        if (!stor_e) {

            v10 = v11 = stor_d;

        } else {

            v10 = v12 = stor_c;

        }

        stor_b = v10;

        v13 = v14 = address(owner_11) == address(v0);

        if (v14) {

            v13 = v15 = stor_10_0_19 != address(varg1);

        }

        if (v13) {

            v16 = address(varg1);

            v13 = v17 = !(0xff & map_5[v16]);

        }

        if (v13) {

            v13 = v18 = 0xff & owner_11 >> 184;

        }

        if (v13) {

            require(varg0 <= stor_12, Error('Exceeds the _maxTxAmount.'));

            v19 = 0x57b(varg1);

            v20 = _SafeAdd(v19, varg0);

            require(v20 <= stor_13, Error('Exceeds the maxWalletSize.'));

            if (stor_e) {

                require(stor_e, Panic(17));

                stor_e += ~0;

            }

        }

        v21 = 0x57b(this);

        v22 = v23 = !(0xff & owner_11 >> 168);

        if (v23) {

            v22 = v24 = address(owner_11) != address(v0);

        }

        if (v22) {

            v22 = v25 = 0xff & owner_11 >> 176;

        }

        if (v22) {

            v22 = v26 = v21 > 0;

        }

        if (v22) {

            v22 = v27 = stor_e < 40;

        }

        if (v22) {

            0x1006(v21);

            if (this.balance) {

                v28 = _manualswap.call().value(this.balance).gas(2300 * !this.balance);

                require(v28); // checks call status, propagates error data on error

                goto 0xeeb;

            }

        }

    }

    v29, v30, v31 = 0x14ce(stor_b, stor_a, varg0, 4991, 0, 0);

    v32, v33 = 0x12f6();

    v34 = _SafeDiv(v32, v33);

    v35, v36, v37, v38 = 0x1523(v34, v29, v30, v39);

    v40 = address(v0);

    v41 = 0x13bf(v37, owner_2[v40]);

    v42 = address(v0);

    owner_2[v42] = v41;

    v43 = address(varg1);

    v44 = 0x1401(v36, owner_2[v43]);

    v45 = address(varg1);

    owner_2[v45] = v44;

    v46, v47 = 0x12f6();

    v48 = _SafeDiv(v46, v47);

    v49 = _SafeMul(v48, v34);

    v50 = 0x1401(v49, owner_2[this]);

    owner_2[this] = v50;

    v51 = 0x13bf(v35, stor_8);

    stor_8 = v51;

    v52 = 0x1401(v29, stor_9);

    stor_9 = v52;

    emit Transfer(address(v0), address(varg1), v30);

    return ;

}
