function 0xc1f(uint256 varg0, uint256 varg1) private { 

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

        stor_b = stor_c;

        v10 = v11 = address(owner_f) == address(v0);

        if (v11) {

            v10 = v12 = stor_e_0_19 != address(varg1);

        }

        if (v10) {

            v13 = address(varg1);

            v10 = v14 = !(0xff & map_5[v13]);

        }

        if (v10) {

            v10 = v15 = 0xff & owner_f >> 184;

        }

        if (v10) {

            require(varg0 <= stor_10, Error('Exceeds the _maxTxAmount.'));

            v16 = 0x496(varg1);

            v17 = _SafeAdd(v16, varg0);

            require(v17 <= stor_11, Error('Exceeds the maxWalletSize.'));

        }

        v18 = 0x496(this);

        v19 = v20 = !(0xff & owner_f >> 168);

        if (v20) {

            v19 = v21 = address(owner_f) != address(v0);

        }

        if (v19) {

            v19 = v22 = 0xff & owner_f >> 176;

        }

        if (v19) {

            v19 = v23 = v18 > 0;

        }

        if (v19) {

            0x1078(v18);

            if (this.balance) {

                v24 = _manualswap.call().value(this.balance).gas(2300 * !this.balance);

                require(v24); // checks call status, propagates error data on error

                goto 0xf64;

            }

        }

    }

    v25, v26, v27 = 0x14fe(stor_b, stor_a, varg0, 5039, 0, 0);

    v28, v29 = 0x1354();

    v30 = _SafeDiv(v28, v29);

    v31, v32, v33, v34 = 0x1553(v30, v25, v26, v35);

    v36 = address(v0);

    v37 = 0x13ef(v33, owner_2[v36]);

    v38 = address(v0);

    owner_2[v38] = v37;

    v39 = address(varg1);

    v40 = 0x1431(v32, owner_2[v39]);

    v41 = address(varg1);

    owner_2[v41] = v40;

    v42, v43 = 0x1354();

    v44 = _SafeDiv(v42, v43);

    v45 = _SafeMul(v44, v30);

    v46 = 0x1431(v45, owner_2[this]);

    owner_2[this] = v46;

    v47 = 0x13ef(v31, stor_8);

    stor_8 = v47;

    v48 = 0x1431(v25, stor_9);

    stor_9 = v48;

    emit Transfer(address(v0), address(varg1), v26);

    return ;

}
