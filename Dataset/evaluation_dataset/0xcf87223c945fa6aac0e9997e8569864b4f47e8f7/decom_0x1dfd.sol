function 0x1dfd(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) != address(0x0), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = uint8(_isExcluded[address(address(varg2))]);

    if (v1) {

        v0 = v2 = !uint8(_isExcluded[address(address(varg1))]);

    }

    if (!v0) {

        v3 = v4 = !uint8(_isExcluded[address(address(varg2))]);

        if (!bool(_isExcluded[address(address(varg2))])) {

            v3 = v5 = uint8(_isExcluded[address(address(varg1))]);

        }

        if (!v3) {

            v6 = v7 = !uint8(_isExcluded[address(address(varg2))]);

            if (!bool(_isExcluded[address(address(varg2))])) {

                v6 = v8 = !uint8(_isExcluded[address(address(varg1))]);

            }

            if (!v6) {

                v9 = v10 = uint8(_isExcluded[address(address(varg2))]);

                if (v10) {

                    v9 = v11 = uint8(_isExcluded[address(address(varg1))]);

                }

                if (!v9) {

                    0x28e1(varg0, varg1, varg2);

                } else {

                    v12, v13, v14, v15, v16 = 0x1adc(varg0);

                    v17 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[address(varg2)]);

                    _balanceOf[address(varg2)] = v17;

                    v18 = _SafeSub('SafeMath: subtraction overflow', v16, owner_1[address(varg2)]);

                    owner_1[address(varg2)] = v18;

                    if (_balanceOf[address(varg1)] + v13 >= _balanceOf[address(varg1)]) {

                        _balanceOf[address(varg1)] = _balanceOf[address(varg1)] + v13;

                        if (owner_1[address(varg1)] + v15 >= owner_1[address(varg1)]) {

                            owner_1[address(varg1)] = owner_1[address(varg1)] + v15;

                            0x3183(v12, v14);

                            emit Transfer(address(varg2), address(varg1), v13);

                        } else {

                            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                            MEM[4 + MEM[64]] = 32;

                            revert(Error('SafeMath: addition overflow'));

                        }

                    } else {

                        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                        MEM[4 + MEM[64]] = 32;

                        revert(Error('SafeMath: addition overflow'));

                    }

                }

            } else {

                0x28e1(varg0, varg1, varg2);

            }

        } else {

            v19, v20, v21, v22, v23 = 0x1adc(varg0);

            v24 = _SafeSub('SafeMath: subtraction overflow', v23, owner_1[address(varg2)]);

            owner_1[address(varg2)] = v24;

            require(_balanceOf[address(varg1)] + v20 >= _balanceOf[address(varg1)], Error('SafeMath: addition overflow'));

            _balanceOf[address(varg1)] = _balanceOf[address(varg1)] + v20;

            require(owner_1[address(varg1)] + v22 >= owner_1[address(varg1)], Error('SafeMath: addition overflow'));

            owner_1[address(varg1)] = owner_1[address(varg1)] + v22;

            0x3183(v19, v21);

            emit Transfer(address(varg2), address(varg1), v20);

        }

    } else {

        v25, v26, v27, v28, v29 = 0x1adc(varg0);

        v30 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[address(varg2)]);

        _balanceOf[address(varg2)] = v30;

        v31 = _SafeSub('SafeMath: subtraction overflow', v29, owner_1[address(varg2)]);

        owner_1[address(varg2)] = v31;

        if (owner_1[address(varg1)] + v28 >= owner_1[address(varg1)]) {

            owner_1[address(varg1)] = owner_1[address(varg1)] + v28;

            0x3183(v25, v27);

            emit Transfer(address(varg2), address(varg1), v26);

        } else {

            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64]] = 32;

            revert(Error('SafeMath: addition overflow'));

        }

    }

    return ;

}
