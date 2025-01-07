function 0x1ccd(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) != address(0x0), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = _isExcluded[address(varg2)];

    if (v1) {

        v0 = v2 = !_isExcluded[address(varg1)];

    }

    if (!v0) {

        v3 = v4 = !_isExcluded[address(varg2)];

        if (!_isExcluded[address(varg2)]) {

            v3 = v5 = _isExcluded[address(varg1)];

        }

        if (!v3) {

            v6 = v7 = !_isExcluded[address(varg2)];

            if (!_isExcluded[address(varg2)]) {

                v6 = v8 = !_isExcluded[address(varg1)];

            }

            if (!v6) {

                v9 = v10 = _isExcluded[address(varg2)];

                if (v10) {

                    v9 = v11 = _isExcluded[address(varg1)];

                }

                if (!v9) {

                    0x282b(varg0, varg1, varg2);

                } else {

                    v12, v13, v14, v15, v16 = 0x21e6(varg0);

                    v17 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[address(varg2)]);

                    _balanceOf[address(varg2)] = v17;

                    v18 = _SafeSub('SafeMath: subtraction overflow', v16, owner_1[address(varg2)]);

                    owner_1[address(varg2)] = v18;

                    v19 = _SafeAdd(v13, _balanceOf[address(varg1)]);

                    _balanceOf[address(varg1)] = v19;

                    v20 = _SafeAdd(v15, owner_1[address(varg1)]);

                    owner_1[address(varg1)] = v20;

                    0x30d8(v12, v14);

                    emit Transfer(address(varg2), address(varg1), v13);

                }

            } else {

                0x282b(varg0, varg1, varg2);

            }

        } else {

            v21, v22, v23, v24, v25 = 0x21e6(varg0);

            v26 = _SafeSub('SafeMath: subtraction overflow', v25, owner_1[address(varg2)]);

            owner_1[address(varg2)] = v26;

            v27 = _SafeAdd(v22, _balanceOf[address(varg1)]);

            _balanceOf[address(varg1)] = v27;

            v28 = _SafeAdd(v24, owner_1[address(varg1)]);

            owner_1[address(varg1)] = v28;

            0x30d8(v21, v23);

            emit Transfer(address(varg2), address(varg1), v22);

        }

    } else {

        v29, v30, v31, v32, v33 = 0x21e6(varg0);

        v34 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[address(varg2)]);

        _balanceOf[address(varg2)] = v34;

        v35 = _SafeSub('SafeMath: subtraction overflow', v33, owner_1[address(varg2)]);

        owner_1[address(varg2)] = v35;

        v36 = _SafeAdd(v32, owner_1[address(varg1)]);

        owner_1[address(varg1)] = v36;

        0x30d8(v29, v31);

        emit Transfer(address(varg2), address(varg1), v30);

    }

    return ;

}
