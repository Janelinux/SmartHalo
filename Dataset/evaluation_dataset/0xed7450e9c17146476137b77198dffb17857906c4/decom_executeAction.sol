function executeAction(bytes varg0, bytes32[] varg1, uint8[] varg2, bytes32[] varg3) public payable { 

    require(msg.data.length - 4 >= 128);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    v0 = new bytes[](varg0.length);

    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg0 + varg0.length + 32 <= msg.data.length);

    CALLDATACOPY(v0.data, 4 + varg0 + 32, varg0.length);

    v0[varg0.length] = 0;

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    v1 = 0x11e2(varg1.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1 + 31) > 0xffffffffffffffff)), Panic(65));

    v2 = v3 = MEM[64] + 32;

    require(32 + (4 + varg1 + (varg1.length << 5)) <= msg.data.length);

    v4 = v5 = 4 + varg1 + 32;

    while (v4 < 32 + (4 + varg1 + (varg1.length << 5))) {

        MEM[v2] = msg.data[v4];

        v2 += 32;

        v4 += 32;

    }

    require(varg2 <= 0xffffffffffffffff);

    require(msg.data.length > 4 + varg2 + 31);

    v6 = 0x11e2(varg2.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) > 0xffffffffffffffff)), Panic(65));

    v7 = v8 = MEM[64] + 32;

    require(32 + (4 + varg2 + (varg2.length << 5)) <= msg.data.length);

    v9 = v10 = 36 + varg2;

    while (v9 < 32 + (4 + varg2 + (varg2.length << 5))) {

        require(msg.data[v9] == msg.data[v9] & 0xff);

        MEM[v7] = msg.data[v9];

        v9 += 32;

        v7 += 32;

    }

    require(varg3 <= 0xffffffffffffffff);

    require(4 + varg3 + 31 < msg.data.length);

    v11 = 0x11e2(varg3.length);

    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v11 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v11 + 31) > 0xffffffffffffffff)), Panic(65));

    v12 = v13 = MEM[64] + 32;

    require(32 + (4 + varg3 + (varg3.length << 5)) <= msg.data.length);

    v14 = v15 = 4 + varg3 + 32;

    while (v14 < 32 + (4 + varg3 + (varg3.length << 5))) {

        MEM[v12] = msg.data[v14];

        v12 += 32;

        v14 += 32;

    }

    MEM[MEM[64]] = 0;

    MEM[MEM[64] + 32] = 0;

    MEM[MEM[64] + 64] = 0;

    MEM[MEM[64] + 96] = 0;

    MEM[MEM[64] + 128] = 0;

    require(32 + (v0 + v0.length) - v0.data >= 160);

    v16 = new struct(5);

    require(!((v16 + 160 > 0xffffffffffffffff) | (v16 + 160 < v16)), Panic(65));

    require(MEM[v0.data] == address(MEM[v0.data]));

    v16.word0 = MEM[v0.data];

    require(v0[32] == address(v0[32]));

    v16.word1 = v0[32];

    require(v0[64] == address(v0[64]));

    v16.word2 = v0[64];

    require(v0[96] == address(v0[96]));

    v16.word3 = v0[96];

    v16.word4 = v0[128];

    v17 = v18 = 1243;

    v19 = v20 = v16.word0;

    require(0 < varg2.length, Panic(50));

    v21 = v22 = MEM[32 + MEM[64]];

    while (1) {

        if (!(v21 & 0xff)) {

            goto 0x1cacB0x1f9;

        }

        v23 = 0xd93(v21);

        if (!v23) {

            if (254 != 0xff & v21) {

                if (255 == 0xff & v21) {

                    v24, v19 = address(this).owner().gas(msg.gas);

                    require(v24); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v19 == address(v19));

                    goto {'0x54cB0x1f9', '0x586B0x1f9', '0x4dbB0x1f9', '0x512B0x1f9'};

                }

            } else {

                v19 = v25 = this;

                goto {'0x54cB0x1f9', '0x586B0x1f9', '0x4dbB0x1f9', '0x512B0x1f9'};

            }

        } else {

            v26 = 0xdb2(v21);

            require(0xff & v26 < varg3.length, Panic(50));

            v19 = v27 = MEM[32 + ((0xff & v26) << 5) + MEM[64]] >> 96;

            goto {'0x54cB0x1f9', '0x586B0x1f9', '0x4dbB0x1f9', '0x512B0x1f9'};

        }

        require(v21 & 0xff >= 128, ReturnIndexValueError());

        require(v21 & 0xff >= 128, Panic(17));

        require(0xff & (v21 & 0xff) - 128 < varg1.length, Panic(50));

        v19 = v28 = MEM[32 + ((0xff & (v21 & 0xff) - 128) << 5) + MEM[64]];

        goto {'0x54cB0x1f9', '0x512B0x1f9', '0x586B0x1f9', '0x4dbB0x1f9', '0x5cfB0x1f9'};

        goto {'0x54cB0x1f9', '0x586B0x1f9', '0x4dbB0x1f9', '0x512B0x1f9'};

        v16.word0 = address(v19);

        v19 = v29 = v16.word1;

        v17 = v30 = 1298;

        require(1 < varg2.length, Panic(50));

        v21 = v31 = MEM[64 + MEM[64]];

        continue;

        v16.word1 = address(v19);

        v19 = v32 = v16.word2;

        v17 = v33 = 1356;

        require(2 < varg2.length, Panic(50));

        v21 = v34 = MEM[96 + MEM[64]];

        continue;

        v16.word2 = address(v19);

        v19 = v35 = v16.word3;

        v17 = v36 = 1414;

        require(3 < varg2.length, Panic(50));

        v21 = v37 = MEM[128 + MEM[64]];

        continue;

        v16.word3 = address(v19);

        v19 = v38 = v16.word4;

        v17 = v39 = 1487;

        require(4 < varg2.length, Panic(50));

        v21 = v40 = MEM[160 + MEM[64]];

        if (v40 & 0xff) {

            v41 = 0xd93(v40);

            if (v41) {

                v42 = 0xdb2(v40);

                require(0xff & v42 < varg3.length, Panic(50));

                v19 = v43 = MEM[32 + ((0xff & v42) << 5) + MEM[64]];

            }

        }

    }

    v16.word4 = v19;

    v44 = v45 = v16.word1;

    v46 = v47 = v16.word4;

    require(address(v16.word2), CompV3TransferError());

    if (!address(v45)) {

        v44 = v48 = this;

    }

    if (v47 == 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {

        v49, v50 = address(v16.word0).baseToken().gas(msg.gas);

        require(v49); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v50 == address(v50));

        if (address(v16.word3) != address(v50)) {

            v51, v52 = address(v16.word0).collateralBalanceOf(address(v44), address(v16.word3)).gas(msg.gas);

            require(v51); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v52 == uint128(v52));

            v46 = v53 = uint128(v52);

        } else {

            v54, v46 = address(v16.word0).balanceOf(address(v44)).gas(msg.gas);

            require(v54); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        }

    }

    require((address(v16.word0)).code.size);

    v55 = address(v16.word0).transferAssetFrom(address(v44), address(v16.word2), address(v16.word3), v46).gas(msg.gas);

    require(v55); // checks call status, propagates error data on error

    v56 = new array[](address(v16.word3));

    MEM[v56.data] = v46;

    v57 = new array[](v58);

    v59 = v60 = 0;

    while (v59 < v58) {

        v57[v59] = MEM[v59 + (MEM[64] + 32)];

        v59 += 32;

    }

    if (v59 <= v58) {

        goto 0x142bB0x14f7B0x5fcB0x1f9;

    } else {

        v57[v58] = 0;

    }

    emit ActionEvent(keccak256('CompV3Transfer'), v57, v56, address(v16.word0), address(v44), address(v16.word2));

    return v46;

}
