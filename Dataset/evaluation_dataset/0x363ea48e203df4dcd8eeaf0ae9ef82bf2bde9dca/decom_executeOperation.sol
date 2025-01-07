function executeOperation(address _reserve, uint256 _amount, uint256 _fee, bytes _params) public nonPayable { 

    require(msg.data.length - 4 >= 128);

    require(_params <= uint64.max);

    require(4 + _params + 31 < msg.data.length);

    v0 = v1 = msg.data[4 + _params];

    require(v1 <= uint64.max);

    v2 = _params.word0;

    require(v2.data <= msg.data.length);

    v0 = v3 = 36 + _params;

    v4 = 0x2ebe(_reserve, this);

    require(_amount <= v4, Error('Invalid balance for the contract'));

    require(v3 + v1 - v3 >= 160);

    require(_params.word1 <= uint64.max);

    require(v3 + _params.word1 + 31 < v3 + v1);

    require(msg.data[v3 + _params.word1] <= uint64.max);

    v5 = new bytes[](msg.data[v3 + _params.word1]);

    require(!((v5 + (32 + (~0x1f & 31 + msg.data[v3 + _params.word1])) < v5) | (v5 + (32 + (~0x1f & 31 + msg.data[v3 + _params.word1])) > uint64.max)));

    require(v3 + _params.word1 + msg.data[v3 + _params.word1] + 32 <= v3 + v1);

    CALLDATACOPY(v5.data, v3 + _params.word1 + 32, msg.data[v3 + _params.word1]);

    v5[msg.data[v3 + _params.word1]] = 0;

    require(_params.word4 == address(_params.word4));

    require(_params.word5 == bool(_params.word5));

    v6 = new struct(10);

    v6.word0 = address(0x0);

    v6.word1 = address(0x0);

    v6.word2 = 0;

    v6.word3 = 0;

    v6.word4 = 0;

    v6.word5 = 0;

    v6.word6 = address(0x0);

    v6.word7 = address(0x0);

    v6.word8 = 96;

    v7 = new struct(6);

    v7.word0 = address(0x0);

    v7.word1 = address(0x0);

    v7.word2 = address(0x0);

    v7.word3 = 0;

    v7.word4 = 0;

    v7.word5 = 96;

    v6.word9 = v7;

    v8 = v9 = 0x10b4(v5);

    MEM[MEM[64]] = 0;

    MEM[32 + MEM[64]] = 0;

    MEM[64 + MEM[64]] = 0;

    MEM[96 + MEM[64]] = 0;

    MEM[128 + MEM[64]] = address(0x0);

    v10 = v11 = new struct(5);

    v11.word0 = _params.word2;

    v11.word1 = _params.word3;

    v11.word2 = _amount;

    v11.word3 = _fee;

    v11.word4 = address(_params.word4);

    if (!_params.word5) {

        v8 = v12 = 0x7f7(v11.word0, 0x5ef30b9986345249bc32d8928b7ee64de9435e39);

        v10 = v13 = 0;

        require(bool(0x5ef30b9986345249bc32d8928b7ee64de9435e39.code.size));

        v14, /* uint256 */ v15 = 0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39.ilks(v11.word0).gas(msg.gas);

        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v16 = 0x90b();

        require(bool(0x65c79fcb50ca1594b025960e539ed7a9a6d434a3.code.size));

        v17, /* address */ v18, /* uint256 */ v19 = 0x65c79fcb50ca1594b025960e539ed7a9a6d434a3.ilks(0).gas(msg.gas);

        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);

        require(v18 == address(v18));

        v20, v21 = 0xb8c(0, v15, 0x5ef30b9986345249bc32d8928b7ee64de9435e39);

        v22 = 0x2e7f(v16, v21);

        assert(v19);

        require(v22 / v19 - v20 <= v22 / v19);

        v8 = v22 / v19 - v20 - 10;

        require(v8 <= v22 / v19 - v20);

        v23 = v24 = MEM[v12];

        v10 = v25 = 0;

        v26 = v27 = 12938;

        require(bool(0x5ef30b9986345249bc32d8928b7ee64de9435e39.code.size));

        v28, /* uint256 */ v29 = 0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39.ilks(v24).gas(msg.gas);

        require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        while (1) {

            v8 = v30 = 0;

            require(bool(0x19c0976f590d67707e62397c87829d896dc0f1f1.code.size));

            v31, /* uint256 */ v32 = 0x19c0976f590d67707e62397c87829d896dc0f1f1.drip(v29).gas(msg.gas);

            if (bool(v31)) {

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(bool(0x5ef30b9986345249bc32d8928b7ee64de9435e39.code.size));

                v33, /* address */ v34 = 0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39.urns(v23).gas(msg.gas);

                if (bool(v33)) {

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v34 == address(v34));

                    require(bool(0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b.code.size));

                    v35, /* uint256 */ v36 = 0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b.dai(address(v34)).gas(msg.gas);

                    if (bool(v35)) {

                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                        v37 = 0x17dd(v29);

                        if (v30 >= v37) {

                            v8 = v38 = v37 - 1;

                            require(v38 <= v37);

                        }

                        v39 = 0x3555(0, v36, v8);

                        require(bool(0x5ef30b9986345249bc32d8928b7ee64de9435e39.code.size));

                        v40 = 0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39.frob(v29, 0, v39).gas(msg.gas);

                        if (bool(v40)) {

                            v41 = 0x2e7f(10 ** 27, v8);

                            require(bool((address(0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39)).code.size));

                            v42 = address(0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39).move(v29, address(this), v41).gas(msg.gas);

                            if (bool(v42)) {

                                require(bool(0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b.code.size));

                                v43, /* uint256 */ v44 = 0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b.can(address(this), address(0x9759a6ac90977b93b58547b4a71c78317f391a28)).gas(msg.gas);

                                if (bool(v43)) {

                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                                    if (!v44) {

                                        MEM[MEM[64]] = 0xa3b22fc400000000000000000000000000000000000000000000000000000000;

                                        MEM[4 + MEM[64]] = address(0x9759a6ac90977b93b58547b4a71c78317f391a28);

                                        require(bool(0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b.code.size));

                                        v45 = 0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b.call(MEM[MEM[64]:MEM[64] + 36 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);

                                        if (!bool(v45)) {

                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());

                                            revert(0, RETURNDATASIZE());

                                        }

                                    }

                                    MEM[MEM[64]] = 0xef693bed00000000000000000000000000000000000000000000000000000000;

                                    MEM[4 + MEM[64]] = address(this);

                                    require(bool(0x9759a6ac90977b93b58547b4a71c78317f391a28.code.size));

                                    v46 = 0x9759a6ac90977b93b58547b4a71c78317f391a28.call(v47, v47, v8).gas(msg.gas);

                                    if (bool(v46)) {

                                        // Unknown jump to Block {'0x3395B0x197aB0x6e3', '0x328aB0x197aB0x6e3'}. Refer to 3-address code (TAC);

                                        v48 = 0x1fb4(v8 + MEM[64 + v10], MEM[32 + v10]);

                                        MEM[v8 + 64] = v8 + MEM[v10 + 64] - v48;

                                        MEM[v8 + 192] = address(v8);

                                        v49 = 0x1f25();

                                        if (v49) {

                                            v50 = v51 = 333;

                                        } else {

                                            v50 = v52 = 400;

                                        }

                                        MEM[v8 + 160] = v50;

                                        v10 = v53, v54 = 0x2132(v8);

                                        0x2479(v53, MEM[128 + v10], MEM[v10]);

                                        v23 = v55 = MEM[v10];

                                        v26 = v56 = 13205;

                                        require(bool(0x5ef30b9986345249bc32d8928b7ee64de9435e39.code.size));

                                        v57, /* uint256 */ v29 = 0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39.ilks(v55).gas(msg.gas);

                                        if (bool(v57)) {

                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                                        } else {

                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());

                                            revert(0, RETURNDATASIZE());

                                        }

                                        v58 = new uint256[](128);

                                        v59 = v60 = 0;

                                        while (v59 < 128) {

                                            MEM[v59 + v58.data] = MEM[v59 + (MEM[64] + 32)];

                                            v59 += 32;

                                        }

                                        if (v59 > 128) {

                                            MEM[v58.data + 128] = 0;

                                        }

                                        require(bool((address(0x5c55b921f590a89c1ebe84df170e655a82b62126)).code.size));

                                        v61 = address(0x5c55b921f590a89c1ebe84df170e655a82b62126).Log(address(this), msg.sender, 'MCDFlashBoost', v58, v47, v47, v47, MEM[v8], address(v10), MEM[64 + v10], v26).gas(msg.gas);

                                        require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                                        // Unknown jump to Block 0x1984B0x6e3. Refer to 3-address code (TAC);

                                    } else {

                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());

                                        revert(0, RETURNDATASIZE());

                                    }

                                } else {

                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());

                                    revert(0, RETURNDATASIZE());

                                }

                            } else {

                                RETURNDATACOPY(0, 0, RETURNDATASIZE());

                                revert(0, RETURNDATASIZE());

                            }

                        } else {

                            RETURNDATACOPY(0, 0, RETURNDATASIZE());

                            revert(0, RETURNDATASIZE());

                        }

                    } else {

                        RETURNDATACOPY(0, 0, RETURNDATASIZE());

                        revert(0, RETURNDATASIZE());

                    }

                } else {

                    RETURNDATACOPY(0, 0, RETURNDATASIZE());

                    revert(0, RETURNDATASIZE());

                }

            } else {

                RETURNDATACOPY(0, 0, RETURNDATASIZE());

                revert(0, RETURNDATASIZE());

            }

        }

    } else {

        v62 = 0x7f7(v11.word0, 0x5ef30b9986345249bc32d8928b7ee64de9435e39);

        require(bool(0x5ef30b9986345249bc32d8928b7ee64de9435e39.code.size));

        v63, v64 = 0x0000000000000000000000005ef30b9986345249bc32d8928b7ee64de9435e39.ilks(v11.word0).gas(msg.gas);

        require(bool(v63), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v65 = 0x1667(v11.word4, v64);

        v66 = 0x27d4(v65, MEM[128 + v62], MEM[v62]);

        v11.word2 = v66 + MEM[v62 + 64];

        MEM[v11 + 192] = address(v64);

        v67 = 0x1f25();

        if (v67) {

            v68 = v69 = 333;

        } else {

            v68 = v70 = 400;

        }

        MEM[v11 + 160] = v68;

        v71, v72 = 0x2132(v11);

        v73 = 0x1fb4(v71, MEM[32 + v62]);

        v74 = 0x424a(v64, v71 - v73, 0, MEM[v62]);

        0x2aee(v64, v74, 0, MEM[v62]);

        v75 = 0x27d4(MEM[64 + v62] + MEM[96 + v62], MEM[128 + v62], MEM[v62]);

        v76 = new uint256[](128);

        v77 = v78 = 0;

        while (v77 < 128) {

            MEM[v77 + v76.data] = MEM[v77 + (MEM[64] + 32)];

            v77 += 32;

        }

        if (v77 > 128) {

            MEM[v76.data + 128] = 0;

        }

        require(bool((address(0x5c55b921f590a89c1ebe84df170e655a82b62126)).code.size));

        v79 = address(0x5c55b921f590a89c1ebe84df170e655a82b62126).Log(address(this), msg.sender, 'MCDFlashRepay', v76, v47, v47, v47, MEM[v62], address(v64), v11.word2, v74).gas(msg.gas);

        require(bool(v79), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    require(v0 + v0 >= v0, Error('SafeMath: addition overflow'));

    require(bool(_addressesProvider.code.size));

    v80, /* address */ v81 = _addressesProvider.getLendingPoolCore().gas(msg.gas);

    require(bool(v80), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v81 == address(v81));

    if (address(v0) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {

        0x1a3e(v0 + v0, v81, address(v0));

    } else {

        v82, /* uint256 */ v83 = address(v81).call().value(v0 + v0).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v84 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v84.data, 0, RETURNDATASIZE());

        }

    }

    if (!this.balance) {

        // Unknown jump to Block 0x15c93. Refer to 3-address code (TAC);

    } else {

        v85 = tx.origin.call().value(this.balance).gas(2300 * !this.balance);

        require(bool(v85), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

}
