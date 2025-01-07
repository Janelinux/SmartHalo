function 0x1067(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = uint8(_isExcluded[address(varg2)]);

    if (v1) {

        v0 = v2 = !uint8(_isExcluded[address(varg1)]);

    }

    if (!v0) {

        v3 = v4 = !uint8(_isExcluded[address(varg2)]);

        if (!bool(_isExcluded[address(varg2)])) {

            v3 = v5 = uint8(_isExcluded[address(varg1)]);

        }

        if (!v3) {

            v6 = v7 = !uint8(_isExcluded[address(varg2)]);

            if (!bool(_isExcluded[address(varg2)])) {

                v6 = v8 = !uint8(_isExcluded[address(varg1)]);

            }

            if (!v6) {

                v9 = v10 = uint8(_isExcluded[address(varg2)]);

                if (v10) {

                    v9 = v11 = uint8(_isExcluded[address(varg1)]);

                }

                if (!v9) {

                    0x15ee(varg0, varg1, varg2);

                    return ;

                } else {

                    v12, v13, v14, v15, v16 = 0xe8c(varg0);

                    v17 = _SafeSub('SafeMath: subtraction overflow', varg0, owner_2[address(varg2)]);

                    owner_2[address(varg2)] = v17;

                    v18 = _SafeSub('SafeMath: subtraction overflow', v16, owner_1[address(varg2)]);

                    owner_1[address(varg2)] = v18;

                    if (v13 + owner_2[address(varg1)] >= owner_2[address(varg1)]) {

                        owner_2[address(varg1)] += v13;

                        if (v15 + owner_1[address(varg1)] >= owner_1[address(varg1)]) {

                            owner_1[address(varg1)] += v15;

                            0x1904(v12, v14);

                            emit Transfer(address(varg2), address(varg1), v13);

                        } else {

                            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                            MEM[MEM[64] + 4] = 32;

                            revert(Error('SafeMath: addition overflow'));

                        }

                    } else {

                        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                        MEM[MEM[64] + 4] = 32;

                        revert(Error('SafeMath: addition overflow'));

                    }

                }

            } else {

                0x15ee(varg0, varg1, varg2);

            }

        } else {

            v19, v20, v21, v22, v23 = 0xe8c(varg0);

            v24 = _SafeSub('SafeMath: subtraction overflow', v23, owner_1[address(varg2)]);

            owner_1[address(varg2)] = v24;

            require(v20 + owner_2[address(varg1)] >= owner_2[address(varg1)], Error('SafeMath: addition overflow'));

            owner_2[address(varg1)] += v20;

            require(v22 + owner_1[address(varg1)] >= owner_1[address(varg1)], Error('SafeMath: addition overflow'));

            owner_1[address(varg1)] += v22;

            0x1904(v19, v21);

            emit Transfer(address(varg2), address(varg1), v20);

        }

    } else {

        v25, v26, v27, v28, v29 = 0xe8c(varg0);

        v30 = _SafeSub('SafeMath: subtraction overflow', varg0, owner_2[address(varg2)]);

        owner_2[address(varg2)] = v30;

        v31 = _SafeSub('SafeMath: subtraction overflow', v29, owner_1[address(varg2)]);

        owner_1[address(varg2)] = v31;

        if (v28 + owner_1[address(varg1)] >= owner_1[address(varg1)]) {

            owner_1[address(varg1)] += v28;

            0x1904(v25, v27);

            emit Transfer(address(varg2), address(varg1), v26);

        } else {

            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

            MEM[MEM[64] + 4] = 32;

            revert(Error('SafeMath: addition overflow'));

        }

    }

    return ;

}
