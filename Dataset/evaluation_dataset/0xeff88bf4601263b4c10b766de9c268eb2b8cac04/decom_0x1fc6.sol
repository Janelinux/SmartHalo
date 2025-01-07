function 0x1fc6(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = address(varg2);

    v1 = v2 = 0xff & _isExcluded[v0];

    if (v2) {

        v3 = address(varg1);

        v1 = v4 = !(0xff & _isExcluded[v3]);

    }

    if (!v1) {

        v5 = address(varg2);

        v6 = v7 = !(0xff & _isExcluded[v5]);

        if (v7) {

            v8 = address(varg1);

            v6 = v9 = 0xff & _isExcluded[v8];

        }

        if (!v6) {

            v10 = address(varg2);

            v11 = v12 = !(0xff & _isExcluded[v10]);

            if (v12) {

                v13 = address(varg1);

                v11 = v14 = !(0xff & _isExcluded[v13]);

            }

            if (!v11) {

                v15 = address(varg2);

                v16 = v17 = 0xff & _isExcluded[v15];

                if (v17) {

                    v18 = address(varg1);

                    v16 = v19 = 0xff & _isExcluded[v18];

                }

                if (!v16) {

                    0x2d1f(varg0, varg1, varg2);

                } else {

                    v20, v21, v22, v23, v24, v25, v26, v27 = 0x1ac1(varg0);

                    v28 = address(varg2);

                    v29 = 0x1cfd(varg0, owner_2[v28]);

                    v30 = address(varg2);

                    owner_2[v30] = v29;

                    v31 = address(varg2);

                    v32 = 0x1cfd(v27, owner_2[v31]);

                    v33 = address(varg2);

                    owner_1[v33] = v32;

                    v34 = address(varg1);

                    require(owner_2[v34] + v24 >= owner_2[v34], Error('SafeMath: addition overflow'));

                    v35 = address(varg1);

                    owner_2[v35] = owner_2[v34] + v24;

                    v36 = address(varg1);

                    require(owner_2[v36] + v26 >= owner_2[v36], Error('SafeMath: addition overflow'));

                    v37 = address(varg1);

                    owner_1[v37] = owner_2[v36] + v26;

                    0x35f2(v20, v21, v22, v23, v25);

                    emit Transfer(address(varg2), address(varg1), v24);

                }

            } else {

                0x2d1f(varg0, varg1, varg2);

            }

        } else {

            v38, v39, v40, v41, v42, v43, v44, v45 = 0x1ac1(varg0);

            v46 = address(varg2);

            v47 = 0x1cfd(v45, owner_1[v46]);

            v48 = address(varg2);

            owner_1[v48] = v47;

            v49 = address(varg1);

            require(owner_2[v49] + v42 >= owner_2[v49], Error('SafeMath: addition overflow'));

            v50 = address(varg1);

            owner_2[v50] = owner_2[v49] + v42;

            v51 = address(varg1);

            require(owner_2[v51] + v44 >= owner_2[v51], Error('SafeMath: addition overflow'));

            v52 = address(varg1);

            owner_1[v52] = owner_2[v51] + v44;

            0x35f2(v38, v39, v40, v41, v43);

            emit Transfer(address(varg2), address(varg1), v42);

        }

    } else {

        v53, v54, v55, v56, v57, v58, v59, v60 = 0x1ac1(varg0);

        v61 = address(varg2);

        v62 = 0x1cfd(varg0, owner_2[v61]);

        v63 = address(varg2);

        owner_2[v63] = v62;

        v64 = address(varg2);

        v65 = 0x1cfd(v60, owner_2[v64]);

        v66 = address(varg2);

        owner_1[v66] = v65;

        v67 = address(varg1);

        require(owner_1[v67] + v59 >= owner_1[v67], Error('SafeMath: addition overflow'));

        v68 = address(varg1);

        owner_1[v68] = owner_1[v67] + v59;

        0x35f2(v53, v54, v55, v56, v58);

        emit Transfer(address(varg2), address(varg1), v57);

    }

    return ;

}
