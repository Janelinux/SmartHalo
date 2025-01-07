function 0xe90(uint256 varg0, uint256 varg1) private { 

    v0 = address(v1);

    v2 = v3 = !(0xff & owner_5[v0]);

    if (v3) {

        v4 = address(varg1);

        v2 = v5 = !(0xff & owner_5[v4]);

    }

    require(v2);

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v6 = address(varg1);

    v7 = v8 = !(0xff & owner_4[v6]);

    if (v8) {

        v9 = address(v1);

        v7 = v10 = !(0xff & owner_4[v9]);

    }

    if (v7) {

        stor_d = 0;

        stor_e = stor_b;

    }

    v11 = address(owner_12) == address(varg1);

    v12 = v13 = address(owner_12) != address(varg1);

    if (address(owner_12) != address(varg1)) {

        v14 = address(varg1);

        v12 = v15 = !(0xff & owner_4[v14]);

    }

    if (v12) {

        v16 = address(v1);

        v12 = v17 = !(0xff & owner_4[v16]);

    }

    if (v12) {

        v18 = 0x797(varg1);

        v19 = _SafeAdd(varg0, v18);

        require(v19 <= __maxWalletSize, Error('Over max wallet size.'));

        require(varg0 <= __maxTxn, Error('Buy transfer amount exceeds the maxTransactionAmount.'));

    }

    v20 = v21 = address(owner_12) == address(varg1);

    if (v21) {

        v20 = v22 = owner_11_0_19 != address(v1);

    }

    if (v20) {

        v23 = address(v1);

        v20 = v24 = !(0xff & owner_4[v23]);

    }

    if (v20) {

        v25 = address(v1);

        v26 = v27 = !(0xff & owner_5[v25]);

        if (v27) {

            v28 = address(varg1);

            v26 = v29 = !(0xff & owner_5[v28]);

        }

        require(v26);

        stor_d = 0;

        stor_e = stor_a;

    }

    v30 = address(v1);

    v31 = v32 = 0xff & owner_4[v30];

    if (!v32) {

        v33 = address(varg1);

        v31 = v34 = 0xff & owner_4[v33];

    }

    if (v31) {

        stor_d = 0;

        stor_e = 0;

    }

    v35 = 0x797(this);

    v36 = v37 = !(0xff & owner_12 >> 168);

    if (v37) {

        v36 = v38 = address(owner_12) != address(v1);

    }

    if (v36) {

        v36 = v39 = 0xff & owner_12 >> 176;

    }

    if (v36) {

        if (v35 > _sWAPamount) {

            0x13e1(v35);

        }

        if (this.balance) {

            0x1278(this.balance);

        }

    }

    0x17b4();

    v40 = v41 & 0xffffffffffffffffffffffffffffffffffffffff;

    v42 = 0x1811(0, map_1[v40]);

    v43 = v41 & 0xffffffffffffffffffffffffffffffffffffffff;

    map_1[v43] = v42;

    v44 = v41 & 0xffffffffffffffffffffffffffffffffffffffff;

    v45 = 0x1853(0, map_1[v44]);

    v46 = v41 & 0xffffffffffffffffffffffffffffffffffffffff;

    map_1[v46] = v45;

    v47 = 0x162a();

    v48 = _SafeMul(v47, 5727);

    v49 = 0x1853(v48, map_1[this]);

    map_1[this] = v49;

    v50 = 0x1811(0, stor_8);

    stor_8 = v50;

    v51 = 0x1853(0, stor_9);

    stor_9 = v51;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), 0xffffffffffffffffffffffffffffffffffffffff & (?), 0);

    return ;

}
