function 0xcc4(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    stor_a = 0;

    stor_b = 3;

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

        v9 = v10 = owner_e_0_19 == address(v0);

        if (v10) {

            v9 = v11 = owner_d_0_19 != address(varg1);

        }

        if (v9) {

            v12 = address(varg1);

            v9 = v13 = !(0xff & owner_5[v12]);

        }

        if (v9) {

            v9 = v14 = stor_e_23_23;

        }

        if (v9) {

            require(varg0 <= stor_f, Error('Exceeds the _maxTxAmount.'));

            v15 = 0x599(varg1);

            v16 = _SafeAdd(v15, varg0);

            require(v16 <= stor_10, Error('Exceeds the maxWalletSize.'));

            v17 = address(varg1);

            require(block.timestamp > map_7[v17]);

            v18 = _SafeAdd(30, block.timestamp);

            v19 = address(varg1);

            map_7[v19] = v18;

        }

        v20 = v21 = owner_e_0_19 == address(varg1);

        if (v21) {

            v20 = v22 = owner_d_0_19 != address(v0);

        }

        if (v20) {

            v23 = address(v0);

            v20 = v24 = !(0xff & owner_5[v23]);

        }

        if (v20) {

            stor_a = 0;

            stor_b = 3;

        }

        v25 = 0x599(this);

        v26 = v27 = !stor_e_21_21;

        if (!stor_e_21_21) {

            v26 = v28 = owner_e_0_19 != address(v0);

        }

        if (v26) {

            v26 = v29 = stor_e_22_22;

        }

        if (v26) {

            0x1287(v25);

            if (this.balance) {

                v30 = _manualswap.call().value(this.balance).gas(2300 * !this.balance);

                require(v30); // checks call status, propagates error data on error

                goto 0x10ba;

            }

        }

    }

    v31, v32, v33 = 0x1713(stor_b, stor_a, varg0, 5572, 0, 0);

    v34, v35 = 0x1563();

    v36 = _SafeDiv(v34, v35);

    v37, v38, v39, v40 = 0x1762(v36, v31, v32, v41);

    v42 = address(v0);

    v43 = 0x1604(v39, owner_2[v42]);

    v44 = address(v0);

    owner_2[v44] = v43;

    v45 = address(varg1);

    v46 = 0x1646(v38, owner_2[v45]);

    v47 = address(varg1);

    owner_2[v47] = v46;

    v48, v49 = 0x1563();

    v50 = _SafeDiv(v48, v49);

    v51 = _SafeMul(v50, v36);

    v52 = 0x1646(v51, owner_2[this]);

    owner_2[this] = v52;

    v53 = 0x1604(v37, stor_8);

    stor_8 = v53;

    v54 = 0x1646(v31, stor_9);

    stor_9 = v54;

    emit Transfer(address(v0), address(varg1), v32);

    return ;

}
