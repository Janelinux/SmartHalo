function 0x1f3d(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) != address(0x0), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = address(varg2) != _owner;

    if (address(varg2) != _owner) {

        v0 = v2 = address(varg1) != _owner;

    }

    if (v0) {

        require(varg0 <= __maxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

    }

    v3 = v4 = uint8(_isExcluded[address(address(varg2))]);

    if (v4) {

        v3 = v5 = !uint8(_isExcluded[address(address(varg1))]);

    }

    if (!v3) {

        v6 = v7 = !uint8(_isExcluded[address(address(varg2))]);

        if (!bool(_isExcluded[address(address(varg2))])) {

            v6 = v8 = uint8(_isExcluded[address(address(varg1))]);

        }

        if (!v6) {

            v9 = v10 = !uint8(_isExcluded[address(address(varg2))]);

            if (!bool(_isExcluded[address(address(varg2))])) {

                v9 = v11 = !uint8(_isExcluded[address(address(varg1))]);

            }

            if (!v9) {

                v12 = v13 = uint8(_isExcluded[address(address(varg2))]);

                if (v13) {

                    v12 = v14 = uint8(_isExcluded[address(address(varg1))]);

                }

                if (!v12) {

                    0x2b7e(varg0, varg1, varg2);

                } else {

                    v15, v16, v17, v18, v19 = 0x1c1c(varg0);

                    v20 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[address(varg2)]);

                    _balanceOf[address(varg2)] = v20;

                    v21 = _SafeSub('SafeMath: subtraction overflow', v19, owner_1[address(varg2)]);

                    owner_1[address(varg2)] = v21;

                    if (_balanceOf[address(varg1)] + v16 >= _balanceOf[address(varg1)]) {

                        _balanceOf[address(varg1)] = _balanceOf[address(varg1)] + v16;

                        if (owner_1[address(varg1)] + v18 >= owner_1[address(varg1)]) {

                            owner_1[address(varg1)] = owner_1[address(varg1)] + v18;

                            0x339f(v15, v17);

                            emit Transfer(address(varg2), address(varg1), v16);

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

                0x2b7e(varg0, varg1, varg2);

            }

        } else {

            v22, v23, v24, v25, v26 = 0x1c1c(varg0);

            v27 = _SafeSub('SafeMath: subtraction overflow', v26, owner_1[address(varg2)]);

            owner_1[address(varg2)] = v27;

            require(_balanceOf[address(varg1)] + v23 >= _balanceOf[address(varg1)], Error('SafeMath: addition overflow'));

            _balanceOf[address(varg1)] = _balanceOf[address(varg1)] + v23;

            require(owner_1[address(varg1)] + v25 >= owner_1[address(varg1)], Error('SafeMath: addition overflow'));

            owner_1[address(varg1)] = owner_1[address(varg1)] + v25;

            0x339f(v22, v24);

            emit Transfer(address(varg2), address(varg1), v23);

        }

    } else {

        v28, v29, v30, v31, v32 = 0x1c1c(varg0);

        v33 = _SafeSub('SafeMath: subtraction overflow', varg0, _balanceOf[address(varg2)]);

        _balanceOf[address(varg2)] = v33;

        v34 = _SafeSub('SafeMath: subtraction overflow', v32, owner_1[address(varg2)]);

        owner_1[address(varg2)] = v34;

        if (owner_1[address(varg1)] + v31 >= owner_1[address(varg1)]) {

            owner_1[address(varg1)] = owner_1[address(varg1)] + v31;

            0x339f(v28, v30);

            emit Transfer(address(varg2), address(varg1), v29);

        } else {

            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64]] = 32;

            revert(Error('SafeMath: addition overflow'));

        }

    }

    return ;

}
