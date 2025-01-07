function distributeMnt(address[] varg0, address[] varg1, bool varg2, bool varg3) public payable { 

    require(msg.data.length - 4 >= 128);

    require(varg0 <= uint64.max);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= uint64.max);

    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);

    require(varg1 <= uint64.max);

    require(4 + varg1 + 31 < msg.data.length);

    require(varg1.length <= uint64.max);

    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);

    require(varg2 == varg2);

    require(varg3 == varg3);

    require(_distributeAllMnt - 2, Error('ReentrancyGuard: reentrant call'));

    _distributeAllMnt = 2;

    v0 = 0x1ed4();

    v1 = v2 = 0;

    while (v1 < varg1.length) {

        require(v1 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require((v1 << 5) + varg1.data + 32 - ((v1 << 5) + varg1.data) >= 32);

        require(varg1[v1] == address(varg1[v1]));

        v3, /* bool */ v4 = address(v0).isMarketListed(address(varg1[v1])).gas(msg.gas);

        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v4 == bool(v4));

        if (v4) {

            v1 = 0x459d(v1);

        } else {

            v5 = new uint256[](v6.length);

            v7 = v8 = 0;

            while (v7 < v6.length) {

                MEM[v7 + v5.data] = MEM[v7 + v6.data];

                v7 += 32;

            }

            MEM[v6.length + v5.data] = 0;

            revert(Error(v5, v9, 0x4532303400000000000000000000000000000000000000000000000000000000));

        }

    }

    v10 = v11 = 0;

    while (v10 < varg0.length) {

        require(v10 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require((v10 << 5) + varg0.data + 32 - ((v10 << 5) + varg0.data) >= 32);

        require(varg0[v10] == address(varg0[v10]));

        v12 = new uint256[](varg1.length);

        CALLDATACOPY(v12.data, varg1.data, varg1.length << 5);

        v12[varg1.length] = 0;

        MEM[64] += 256;

        MEM[MEM[64]] = address(0x0);

        MEM[32 + MEM[64]] = address(0x0);

        MEM[64 + MEM[64]] = 0;

        MEM[96 + MEM[64]] = 0;

        MEM[128 + MEM[64]] = 0;

        MEM[160 + MEM[64]] = 0;

        MEM[64] = MEM[64] + 96;

        MEM[MEM[64]] = 0;

        MEM[MEM[64] + 32] = 0;

        MEM[MEM[64] + 64] = 0;

        MEM[192 + MEM[64]] = MEM[64];

        MEM[MEM[64]] = 0;

        MEM[32 + MEM[64]] = 0;

        MEM[MEM[64] + 64] = 0;

        MEM[192 + MEM[64] + 32] = MEM[64];

        if (!uint8(_isOperationPaused[address(0x0)]['MntDistribution'])) {

            v13 = address(varg0[v10]);

            MEM[MEM[64]] = uint32(_getDelayInfo[v13]);

            MEM[MEM[64] + 32] = uint32(_getDelayInfo[v13] >> 32);

            MEM[64 + MEM[64]] = uint192(_getDelayInfo[v13] >> 64);

            v14, /* uint256 */ v15, /* uint256 */ v16, /* uint32 */ v17, /* address */ v18 = _bdSystem.providerToAgreement(v13).gas(msg.gas);

            require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 128);

            require(v17 == uint32(v17));

            require(v18 == address(v18));

            MEM[MEM[64] + 64] = v16;

            if (address(v18)) {

                MEM[MEM[64]] = uint32(_getDelayInfo[address(address(v18))]);

                MEM[MEM[64] + 32] = uint32(_getDelayInfo[address(address(v18))] >> 32);

                MEM[MEM[64] + 64] = uint192(_getDelayInfo[address(address(v18))] >> 64);

                MEM[MEM[64] + 224] = MEM[64];

            }

            v19 = 0x2232(MEM[64], varg0[v10]);

            MEM[MEM[64] + 160] = v19;

            v20 = 0;

            while (v20 < v12.length) {

                require(v20 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v21 = v12[v20];

                if (varg2) {

                    v22 = address(v21).borrowBalanceStored(address(varg0[v10])).gas(msg.gas);

                    require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    if (MEM[MEM[64]]) {

                        v23 = address(v21).borrowIndex().gas(msg.gas);

                        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                        require(MEM[MEM[64]] <= uint224.max, Error("SafeCast: value doesn't fit in 224 bits"));

                        0x360b(MEM[MEM[64]], v21);

                        v24 = _SafeMul(MEM[MEM[64]], 0xde0b6b3a7640000);

                        v25 = _SafeDiv(v24, uint224(MEM[MEM[64]]));

                        v26 = 0x3c63(block.number);

                        v27 = v28 = uint224(_mntBorrowerState[address(address(v21))][address(address(varg0[v10]))]);

                        v26 = v29 = uint32(_mntBorrowerState[address(address(v21))][address(address(varg0[v10]))] >> 224);

                        v30 = v31 = !v28;

                        if (!bool(v28)) {

                            v30 = uint224(_mntBorrowState[address(address(v21))]) >= 0xc097ce7bc90715b34b9f1000000000;

                        }

                        if (v30) {

                            v27 = 0xc097ce7bc90715b34b9f1000000000;

                        }

                        _mntBorrowerState[address(v21)][address(varg0[v10])] = uint32(v26) << 224 | uint224(_mntBorrowState[address(address(v21))]);

                        MEM[64] = MEM[64] + 53;

                        require(uint224(_mntBorrowState[address(address(v21))]) - uint224(v27) <= uint224.max, Panic(17)); // arithmetic overflow or underflow

                        if (0 - uint224(uint224(_mntBorrowState[address(address(v21))]) - uint224(v27))) {

                            if (!address(v18)) {

                                v32 = _emissionBooster.calculateEmissionBoost(address(v21), address(v13), uint224(v27), uint32(v26), uint224(_mntBorrowState[address(address(v21))]), bool(0)).gas(msg.gas);

                                require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                                v33 = _SafeAdd(uint224(uint224(_mntBorrowState[address(address(v21))]) - uint224(v27)), MEM[MEM[64]]);

                            } else {

                                v34 = _SafeMul(uint224(uint224(_mntBorrowState[address(address(v21))]) - uint224(v27)), v15);

                                v35 = _SafeDiv(v34, 0xde0b6b3a7640000);

                                v33 = v36 = _SafeAdd(uint224(uint224(_mntBorrowState[address(address(v21))]) - uint224(v27)), v35);

                            }

                            v37 = _SafeMul(v25, v33);

                            v38 = _SafeDiv(v37, 0xc097ce7bc90715b34b9f1000000000);

                            v39 = _SafeAdd(MEM[128 + MEM[64]], v38);

                            MEM[128 + MEM[64]] = v39;

                            v40 = 0x23bf(v38, keccak256(keccak256(bytes20(v21 << 96), bool(0)), 16), MEM[64], v13);

                            v41 = _SafeAdd(MEM[160 + MEM[64]], v40);

                            MEM[160 + MEM[64]] = v41;

                            if (!0) {

                                MEM[MEM[64]] = address(v21);

                                MEM[MEM[64] + 32] = address(v13);

                                MEM[MEM[64] + 64] = v38;

                                MEM[MEM[64] + 96] = uint224(_mntBorrowState[address(address(v21))]);

                                emit DistributedBorrowerMnt();

                            } else {

                                MEM[MEM[64]] = address(v21);

                                MEM[MEM[64] + 32] = address(v13);

                                MEM[MEM[64] + 64] = v38;

                                MEM[MEM[64] + 96] = uint224(_mntBorrowState[address(address(v21))]);

                                emit DistributedSupplierMnt();

                            }

                        } else {

                            v42 = 0x23bf(0, keccak256(keccak256(bytes20(v21 << 96), bool(0)), 16), MEM[64], v13);

                        }

                    }

                }

                if (varg3) {

                    v43 = address(v21).balanceOf(address(varg0[v10])).gas(msg.gas);

                    require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    if (MEM[MEM[64]]) {

                        0x2c2c(v21);

                        v44 = 0x3c63(block.number);

                        v45 = v46 = uint224(_mntSupplierState[address(v21)][address(varg0[v10])]);

                        v44 = v47 = uint32(_mntSupplierState[address(v21)][address(varg0[v10])] >> 224);

                        v48 = v49 = !v46;

                        if (!bool(v46)) {

                            v48 = uint224(_mntSupplyState[address(v21)]) >= 0xc097ce7bc90715b34b9f1000000000;

                        }

                        if (v48) {

                            v45 = 0xc097ce7bc90715b34b9f1000000000;

                        }

                        _mntSupplierState[address(v21)][address(varg0[v10])] = uint32(v44) << 224 | uint224(_mntSupplyState[address(v21)]);

                        MEM[64] = MEM[64] + 53;

                        require(uint224(_mntSupplyState[address(v21)]) - uint224(v45) <= uint224.max, Panic(17)); // arithmetic overflow or underflow

                        if (0 - uint224(uint224(_mntSupplyState[address(v21)]) - uint224(v45))) {

                            if (!address(v18)) {

                                v50 = _emissionBooster.calculateEmissionBoost(address(v21), address(v13), uint224(v45), uint32(v44), uint224(_mntSupplyState[address(v21)]), bool(1)).gas(msg.gas);

                                require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                                v51 = _SafeAdd(uint224(uint224(_mntSupplyState[address(v21)]) - uint224(v45)), MEM[MEM[64]]);

                            } else {

                                v52 = _SafeMul(uint224(uint224(_mntSupplyState[address(v21)]) - uint224(v45)), v15);

                                v53 = _SafeDiv(v52, 0xde0b6b3a7640000);

                                v51 = v54 = _SafeAdd(uint224(uint224(_mntSupplyState[address(v21)]) - uint224(v45)), v53);

                            }

                            v55 = _SafeMul(MEM[MEM[64]], v51);

                            v56 = _SafeDiv(v55, 0xc097ce7bc90715b34b9f1000000000);

                            v57 = _SafeAdd(MEM[128 + MEM[64]], v56);

                            MEM[128 + MEM[64]] = v57;

                            v58 = 0x23bf(v56, keccak256(keccak256(bytes20(v21 << 96), bool(1)), 16), MEM[64], v13);

                            v59 = _SafeAdd(MEM[160 + MEM[64]], v58);

                            MEM[160 + MEM[64]] = v59;

                            if (!1) {

                                MEM[MEM[64]] = address(v21);

                                MEM[MEM[64] + 32] = address(v13);

                                MEM[MEM[64] + 64] = v56;

                                MEM[MEM[64] + 96] = uint224(_mntSupplyState[address(v21)]);

                                emit DistributedBorrowerMnt();

                            } else {

                                MEM[MEM[64]] = address(v21);

                                MEM[MEM[64] + 32] = address(v13);

                                MEM[MEM[64] + 64] = v56;

                                MEM[MEM[64] + 96] = uint224(_mntSupplyState[address(v21)]);

                                emit DistributedSupplierMnt();

                            }

                        } else {

                            v60 = 0x23bf(0, keccak256(keccak256(bytes20(v21 << 96), bool(1)), 16), MEM[64], v13);

                        }

                        goto 0x21cc0x314;

                    }

                }

                v20 = 0x459d(v20);

            }

            0x329a(MEM[64]);

            v10 = 0x459d(v10);

        } else {

            v61 = new uint256[](v62.length);

            v63 = v64 = 0;

            while (v63 < v62.length) {

                MEM[v63 + v61.data] = MEM[v63 + v62.data];

                v63 += 32;

            }

            MEM[v62.length + v61.data] = 0;

            revert(Error(v61, v9, 0x45313033));

        }

    }

    _distributeAllMnt = 1;

}
