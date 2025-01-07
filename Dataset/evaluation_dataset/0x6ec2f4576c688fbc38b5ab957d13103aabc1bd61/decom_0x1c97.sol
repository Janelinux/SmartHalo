function 0x1c97(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = address(v0);

    v2 = v3 = 0xff & _isExcluded[v1];

    if (v3) {

        v4 = address(varg1);

        v2 = v5 = !(0xff & _isExcluded[v4]);

    }

    if (!v2) {

        v6 = address(v0);

        v7 = v8 = !(0xff & _isExcluded[v6]);

        if (v8) {

            v9 = address(varg1);

            v7 = v10 = 0xff & _isExcluded[v9];

        }

        if (!v7) {

            v11 = address(v0);

            v12 = v13 = !(0xff & _isExcluded[v11]);

            if (v13) {

                v14 = address(varg1);

                v12 = v15 = !(0xff & _isExcluded[v14]);

            }

            if (!v12) {

                v16 = address(v0);

                v17 = v18 = 0xff & _isExcluded[v16];

                if (v18) {

                    v19 = address(varg1);

                    v17 = v20 = 0xff & _isExcluded[v19];

                }

                if (!v17) {

                    0x2708(varg0, varg1);

                } else {

                    v21, v22, v23, v24, v25 = 0x19cc();

                    v26 = 0x1a24(0, _balanceOf[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

                    _balanceOf[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v26;

                    v27 = 0x1a24(v25, _balanceOf[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

                    _excludeAccount[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v27;

                    v28 = address(varg0);

                    v29 = 0x1a6e(v22, _balanceOf[v28]);

                    v30 = address(varg0);

                    _balanceOf[v30] = v29;

                    v31 = address(varg0);

                    v32 = 0x1a6e(v24, _balanceOf[v31]);

                    v33 = address(varg0);

                    _excludeAccount[v33] = v32;

                    0x3194(v21, v23);

                    emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), address(varg0), v22);

                    goto 0x20a6;

                }

            } else {

                0x2708(varg0, varg1);

            }

        } else {

            v34, v35, v36, v37, v38 = 0x19cc();

            v39 = 0x1a24(v38, _excludeAccount[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

            _excludeAccount[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v39;

            v40 = address(varg0);

            v41 = 0x1a6e(v35, _balanceOf[v40]);

            v42 = address(varg0);

            _balanceOf[v42] = v41;

            v43 = address(varg0);

            v44 = 0x1a6e(v37, _balanceOf[v43]);

            v45 = address(varg0);

            _excludeAccount[v45] = v44;

            0x3194(v34, v36);

            emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), address(varg0), v35);

            goto 0x20a8;

        }

    } else {

        v46, v47, v48, v49, v50 = 0x19cc();

        v51 = 0x1a24(0, _balanceOf[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

        _balanceOf[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v51;

        v52 = 0x1a24(v50, _balanceOf[address(0xffffffffffffffffffffffffffffffffffffffff & (?))]);

        _excludeAccount[address(0xffffffffffffffffffffffffffffffffffffffff & (?))] = v52;

        v53 = address(varg0);

        v54 = 0x1a6e(v49, _excludeAccount[v53]);

        v55 = address(varg0);

        _excludeAccount[v55] = v54;

        0x3194(v46, v48);

        emit Transfer(0xffffffffffffffffffffffffffffffffffffffff & (?), address(varg0), v47);

        goto 0x20a90x1c97;

    }

    return ;

}
