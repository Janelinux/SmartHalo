function buyBox(uint256 varg0, bool varg1, uint256 varg2, address varg3, string varg4, bytes32 varg5) public nonPayable { 

    require(msg.data.length - 4 >= 192);

    require(varg1 == varg1);

    require(varg3 == varg3);

    require(varg4 <= 0xffffffffffffffff);

    require(4 + varg4 + 31 < msg.data.length);

    require(varg4.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg4.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg4.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg4 + varg4.length + 32 <= msg.data.length);

    CALLDATACOPY(v0.data, 4 + varg4 + 32, varg4.length);

    v0[varg4.length] = 0;

    if (!varg1) {

        v1 = v2 = 0;

        while (v1 < _buyBox[varg0]) {

            require(v1 < _buyBox[varg0], Panic(50));

            if (STORAGE[keccak256(keccak256(varg0, 27)) + v1] == varg2) {

                v1 = v3 = 1;

            }

            v1 = 0x1fed(v1);

        }

        if (v1) {

            if (v2) {

                v1 = v4 = 1 == varg2;

            }

            if (!v1) {

                v1 = varg2 < 1;

            }

            if (v1) {

                v5 = v6 = !(0xff & map_27[varg0]);

                if (0xff & map_27[varg0]) {

                    v5 = 0xff & owner_2d[msg.sender];

                }

                if (v5) {

                    v7 = v8 = 0;

                    v9 = 0x1fb2(_nonGenSeries[varg0][1]);

                    if (!(0x1 & _nonGenSeries[varg0][1])) {

                        MEM[32 + MEM[64]] = _nonGenSeries[varg0][1] & ~0xff;

                        v7 = v10 = 32 + MEM[64] + v9;

                        goto 0x1a52B0x1073B0xd1fB0x398;

                    } else if (0x1 & _nonGenSeries[varg0][1] == 1) {

                        while (v7 < v9) {

                            MEM[v7 + (32 + MEM[64])] = STORAGE[v11];

                            v11 += 1;

                            v7 += 32;

                        }

                        v7 = v12 = 32 + MEM[64] + v9;

                    }

                    if (v7 - MEM[64] - 32 > 0) {

                        if (_nonGenSeries[varg0][7] > _nonGenSeries[varg0][10]) {

                            if (block.timestamp >= _nonGenSeries[varg0][5]) {

                                if (block.timestamp <= _nonGenSeries[varg0][6]) {

                                    if (_nonGenSeries[varg0][7] > _nonGenSeries[varg0][10]) {

                                        _nonGenSeries[varg0][10] += 1;

                                        stor_d += 1;

                                        v13 = 0x1fb2(_nonGenSeries[varg0][3]);

                                        v14 = 0x1fb2(_boxesNonGen[stor_d][0]);

                                        if (v13) {

                                            if (31 < v13) {

                                                _boxesNonGen[stor_d][0] = 1 + (v13 + v13);

                                                if (v13) {

                                                    while (v15 + (31 + v13 >> 5) > v16) {

                                                        STORAGE[v17] = STORAGE[v16];

                                                        v16 += 1;

                                                        v17 += 1;

                                                    }

                                                }

                                            } else {

                                                _boxesNonGen[stor_d][0] = _nonGenSeries[varg0][3];

                                            }

                                        } else {

                                            _boxesNonGen[stor_d][0] = 0;

                                        }

                                        while (v18 + (31 + v14 >> 5) > v17) {

                                            STORAGE[v17] = 0;

                                            v17 += 1;

                                        }

                                        v19 = 0x1fb2(_nonGenSeries[varg0][4]);

                                        v20 = 0x1fb2(_boxesNonGen[stor_d][1]);

                                        if (v19) {

                                            if (31 < v19) {

                                                _boxesNonGen[stor_d][1] = 1 + (v19 + v19);

                                                if (v19) {

                                                    while (v21 + (31 + v19 >> 5) > v22) {

                                                        STORAGE[v23] = STORAGE[v22];

                                                        v22 += 1;

                                                        v23 += 1;

                                                    }

                                                }

                                            } else {

                                                _boxesNonGen[stor_d][1] = _nonGenSeries[varg0][4];

                                            }

                                        } else {

                                            _boxesNonGen[stor_d][1] = 0;

                                        }

                                        while (v24 + (31 + v20 >> 5) > v23) {

                                            STORAGE[v23] = 0;

                                            v23 += 1;

                                        }

                                        _boxesNonGen[stor_d][2] = varg0;

                                        _boxesNonGen[stor_d][3] = _nonGenSeries[stor_d][8];

                                        emit BoxMintNonGen(stor_d, varg0);

                                        stor_c_0_19 = stor_7_0_19;

                                        v25 = 0xd54(varg2, _baseCurrency[varg0], _nonGenSeries[varg0][9]);

                                        v26 = _SafeDiv(0xe8d4a51000, v25);

                                        require(stor_c_0_19.code.size);

                                        v27, v28 = stor_c_0_19.transferFrom(msg.sender, address(_bankAddress[varg0]), v26).gas(msg.gas);

                                        require(v27); // checks call status, propagates error data on error

                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                                        require(v28 == v28);

                                        _nonGenBoxOwner[stor_d] = msg.sender | ~0xffffffffffffffffffffffffffffffffffffffff & _nonGenBoxOwner[stor_d];

                                        if (owner_28[msg.sender] < owner_2a[varg0]) {

                                            require(stor_a_0_19.code.size);

                                            v29, v30, v31 = stor_a_0_19.mintBlindbox(varg3, msg.sender, _boxesGen[stor_d][3], address(_boxesGen[stor_d]), _boxesGen[stor_d], _boxesGen[stor_d][2]).gas(msg.gas);

                                            require(v29); // checks call status, propagates error data on error

                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);

                                            _boxesNonGen[stor_d][4] = 0x1 | ~0xff & _boxesNonGen[stor_d][0x4];

                                            emit 0x9989d50e19a921fa4e76e5a843cbffa112dbe3c9dc490abd281c8d59569c758(stor_d, _boxesGen[stor_d][2], v30, v31, 0, _boxesNonGen[stor_d][3]);

                                            v32 = 0x1fed(owner_28[msg.sender]);

                                            owner_28[msg.sender] = v32;

                                            v33 = v34 = 0;

                                            while (v33 < v0.length) {

                                                MEM[v33 + v35.data] = v0[v33];

                                                v33 += 32;

                                            }

                                            if (v33 > v0.length) {

                                                MEM[v35.data + v0.length] = 0;

                                            }

                                            MEM[v0.length + v35.data] = 41;

                                            v36 = 0x1fed(STORAGE[keccak256(varg0, keccak256(v35.data))]);

                                            STORAGE[keccak256(varg0, keccak256(v35.data))] = v36;

                                            v37 = v38 = 0;

                                            v39 = 0x1fb2(_nonGenSeries[varg0]);

                                            v40 = new array[](v39);

                                            if (!(0x1 & _nonGenSeries[varg0])) {

                                                MEM[v40.data] = _nonGenSeries[varg0] & ~0xff;

                                                goto 0x1f16B0xd1fB0x398;

                                            } else if (0x1 & _nonGenSeries[varg0] == 1) {

                                                while (v37 < v39) {

                                                    v40[v37] = STORAGE[v41];

                                                    v41 += 1;

                                                    v37 += 32;

                                                }

                                            }

                                            emit BuyBoxNonGen(stor_d, varg0, _nonGenSeries[varg0][9], varg2, v40, msg.sender, _baseCurrency[varg0], v26);

                                            goto 0xd2cB0x398;

                                        }

                                    }

                                }

                            }

                        }

                    }

                }

            }

        }

        revert(Error('Limit reach'));

    }

}
