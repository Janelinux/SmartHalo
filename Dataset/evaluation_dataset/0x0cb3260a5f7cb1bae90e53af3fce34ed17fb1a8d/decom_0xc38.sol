function 0xc38(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = _owner == address(v0);

    v2 = v3 = _owner != address(v0);

    if (_owner != address(v0)) {

        v2 = v4 = _owner != address(varg1);

    }

    if (v2) {

        if (0xff & owner_f >> 184) {

            v5 = this == address(v0);

            v6 = v7 = this != address(v0);

            if (this != address(v0)) {

                v6 = v8 = this != address(varg1);

            }

            if (v6) {

                v6 = v9 = owner_e_0_19 != address(v0);

            }

            if (v6) {

                v6 = v10 = owner_e_0_19 != address(varg1);

            }

            if (v6) {

                v11 = v12 = msg.sender == owner_e_0_19;

                if (msg.sender != owner_e_0_19) {

                    v11 = v13 = msg.sender == address(owner_f);

                }

                require(v11, Error('ERR: Uniswap only'));

            }

        }

        require(varg0 <= stor_10);

        v14 = address(v0);

        v15 = v16 = !(0xff & owner_a[v14]);

        if (v16) {

            v17 = address(varg1);

            v15 = v18 = !(0xff & owner_a[v17]);

        }

        require(v15);

        v19 = v20 = address(owner_f) == address(v0);

        if (v20) {

            v19 = v21 = owner_e_0_19 != address(varg1);

        }

        if (v19) {

            v22 = address(varg1);

            v19 = v23 = !(0xff & owner_5[v22]);

        }

        if (v19) {

            v19 = v24 = 0xff & owner_f >> 184;

        }

        if (v19) {

            v25 = address(varg1);

            require(block.timestamp > map_b[v25]);

            v26 = _SafeAdd(60, block.timestamp);

            v27 = address(varg1);

            map_b[v27] = v26;

        }

        v28 = 0x4ff(this);

        v29 = v30 = !(0xff & owner_f >> 168);

        if (v30) {

            v29 = v31 = address(owner_f) != address(v0);

        }

        if (v29) {

            v29 = v32 = 0xff & owner_f >> 176;

        }

        if (v29) {

            0x1197(v28);

            if (this.balance) {

                v33, v34, varg0 = v35 = 0x1084(this.balance, 4073, this.balance, v28, varg0, varg1, v0);

            }

        }

    }

    v36 = address(v0);

    v37 = v38 = 1;

    v39 = v40 = 0xff & owner_5[v36];

    if (!v40) {

        v41 = address(varg1);

        v39 = v42 = 0xff & owner_5[v41];

    }

    if (v39) {

        v37 = v43 = 0;

    }

    if (!v37) {

        v44 = v45 = !stor_8;

        if (v45) {

            v44 = !stor_9;

        }

        if (!v44) {

            stor_8 = 0;

            stor_9 = 0;

        } else {

            goto 0x140aB0x1038;

        }

    }

    v46, v47, v48 = 0x173f(12, stor_8, varg0, 5616, 0, 0);

    v49, v50 = 0x1594();

    v51 = _SafeDiv(v49, v50);

    v52, v53, v54, v55 = 0x178e(v51, v46, v47, v56);

    v57 = v56 & 0xffffffffffffffffffffffffffffffffffffffff;

    v58 = 0x1630(v54, map_2[v57]);

    v59 = v56 & 0xffffffffffffffffffffffffffffffffffffffff;

    map_2[v59] = v58;

    v60 = 0x1672(v53, map_2[address(varg0)]);

    map_2[address(varg0)] = v60;

    v61, v62 = 0x1594();

    v63 = _SafeDiv(v61, v62);

    v64 = _SafeMul(v63, v51);

    v65 = 0x1672(v64, map_2[this]);

    map_2[this] = v65;

    v66 = 0x1630(v52, stor_6);

    stor_6 = v66;

    v67 = 0x1672(v46, stor_7);

    stor_7 = v67;

    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), address(varg0), v47);

    if (!varg1) {

        stor_8 = 2;

        stor_9 = 10;

        goto 0x10440x13fdB0x1038;

    }

    return ;

}
