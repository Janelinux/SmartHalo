function 0xce796136(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) public nonPayable { 

    require(msg.data.length - 4 >= 320);

    require(msg.data.length - 4 >= 288);

    v0 = new struct(9);

    require(!((v0 + 288 < v0) | (v0 + 288 > 0xffffffffffffffff)));

    require(varg0 == address(varg0));

    v0.word0 = varg0;

    require(varg1 == address(varg1));

    v0.word1 = varg1;

    require(varg2 == address(varg2));

    v0.word2 = varg2;

    v0.word3 = varg3;

    v0.word4 = varg4;

    v0.word5 = varg5;

    v0.word6 = varg6;

    v0.word7 = varg7;

    v0.word8 = varg8;

    require(varg9 <= 0xffffffffffffffff);

    require(4 + varg9 + 31 < msg.data.length);

    require(varg9.length <= 0xffffffffffffffff);

    v1 = new uint256[](varg9.length);

    require(!((v1 + ((varg9.length << 5) + 32) < v1) | (v1 + ((varg9.length << 5) + 32) > 0xffffffffffffffff)));

    v2 = v3 = v1.data;

    v4 = v5 = 36 + varg9;

    require(msg.data.length >= 32 + (4 + varg9 + (varg9.length << 5)));

    v6 = v7 = 0;

    while (v6 < varg9.length) {

        require(msg.data[v4] == address(msg.data[v4]));

        MEM[v2] = msg.data[v4];

        v6 += 1;

        v2 += 32;

        v4 += 32;

    }

    if (_owner == msg.sender) {

        v8 = v9 = !0;

        if (0) {

            require((address(v0.word1)).code.size);

            v10, v11 = address(v0.word1).allowance(address(this), address(this)).gas(msg.gas);

            require(v10); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v8 = !v11;

        }

        require(v8, Error('SafeERC20: approve from non-zero to non-zero allowance'));

        if (this.balance >= 0) {

            if ((address(v0.word1)).code.size) {

                v12 = v13 = 0;

                while (v12 < 68) {

                    MEM[v12 + MEM[64]] = MEM[v12 + (MEM[64] + 32)];

                    v12 += 32;

                }

                if (v12 > 68) {

                    MEM[68 + MEM[64]] = 0;

                    goto 0x1dcaB0x1948B0x18b9B0x12d00x14a9B0x8e8;

                }

                v14, v15, v16, v17 = address(v0.word1).approve(address(this), 0).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v18 = v19 = 96;

                } else {

                    v18 = v20 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());

                }

                if (!v14) {

                    require(!MEM[v18]v17, MEM[v18]);

                    v21 = new array[](v22.length);

                    v23 = v24 = 0;

                    while (v23 < v22.length) {

                        v21[v23] = v22[v23];

                        v23 += 32;

                    }

                    if (v23 > v22.length) {

                        v21[v22.length] = 0;

                        goto 0x1eb0B0x1a05B0x1948B0x18b9B0x12d00x14a9B0x8e8;

                    }

                    revert(Error(v21, v25, 'SafeERC20: low-level call failed'));

                } else {

                    if (MEM[v18]) {

                        require(32 + v18 + MEM[v18] - (32 + v18) >= 32);

                        require(MEM[32 + v18] == MEM[32 + v18]);

                        require(MEM[32 + v18], Error('SafeERC20: ERC20 operation did not succeed'));

                    }

                    _enableWhiteList[_getPoolCount.length] = 0x0 | ~0xff & _enableWhiteList[_getPoolCount.length];

                    0x1423(v1, _getPoolCount.length);

                    v26 = new struct(8);

                    v26.word0 = 0;

                    v26.word1 = 0;

                    v26.word2 = 0;

                    v26.word3 = 0;

                    v26.word4 = 0;

                    v26.word5 = 0;

                    v26.word6 = 0;

                    v26.word7 = 0;

                    if (address(v0.word1) != address(v0.word2)) {

                        if (v0.word3) {

                            if (v0.word4) {

                                v27 = new struct(8);

                                v27.word0 = 0;

                                v27.word1 = 0;

                                v27.word2 = 0;

                                v27.word3 = 0;

                                v27.word4 = 0;

                                v27.word5 = 0;

                                v27.word6 = 0;

                                v27.word7 = 0;

                                v27.word0 = address(v0.word0);

                                v27.word1 = address(v0.word1);

                                v27.word2 = address(v0.word2);

                                v27.word3 = v0.word3;

                                v27.word4 = v0.word4;

                                v27.word5 = v0.word5;

                                v27.word6 = 0;

                                v27.word7 = 0;

                                _getPoolCount.length = _getPoolCount.length + 1;

                                MEM[0] = 3;

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b] = ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b] | address(v27.word0);

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85c] = ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85c] | address(v27.word1);

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85d] = ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85d] | address(v27.word2);

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85e] = v27.word3;

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85f] = v27.word4;

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f860] = v27.word5;

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f861] = v27.word6;

                                STORAGE[(_getPoolCount.length << 3) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f862] = v27.word7;

                                v28 = new struct(3);

                                v28.word0 = 0;

                                v28.word1 = 0;

                                v28.word2 = 0;

                                if (v0.word6 >= block.timestamp) {

                                    if (v0.word7 >= v0.word6) {

                                        v29 = v30 = !v0.word8;

                                        if (v0.word8) {

                                            v29 = v0.word8 >= v0.word7;

                                        }

                                        if (v29) {

                                            v31 = new struct(3);

                                            v31.word0 = 0;

                                            v31.word1 = 0;

                                            v31.word2 = 0;

                                            v31.word0 = v0.word6;

                                            v31.word1 = v0.word7;

                                            v31.word2 = v0.word8;

                                            _timeInfos[_getPoolCount.length] = v31.word0;

                                            _timeInfos[_getPoolCount.length][1] = v31.word1;

                                            _timeInfos[_getPoolCount.length][2] = v31.word2;

                                            emit Created(_getPoolCount.length, msg.sender, address(v0.word0), address(v0.word1), address(v0.word2), v0.word3, v0.word4, v0.word5, v0.word6, v0.word7, v0.word8);

                                            exit;

                                        }

                                    }

                                }

                                revert(Error('INVALID CLAIM_AT'));

                            }

                        }

                    }

                }

            } else {

                MEM[4 + MEM[64]] = 32;

            }

        } else {

            MEM[4 + MEM[64]] = 32;

        }

        revert(Error('Address: call to non-contract'));

    }

    revert(Error('Ownable: caller is not the owner'));

}
