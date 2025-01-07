function isLiquidatable((address[] varg0, address[] varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= uint64.max);

    require(msg.data.length - (4 + varg0) >= 192);

    v0 = new struct(6);

    require(!((v0 + 192 < v0) | (v0 + 192 > uint64.max)));

    require(msg.data[4 + varg0] <= uint64.max);

    v1 = varg0.word0;

    require(varg0.word0 + 31 < msg.data.length);

    require(v1.length <= uint64.max);

    v2 = new address[](v1.length);

    require(!((v2 + ((v1.length << 5) + 32) < v2) | (v2 + ((v1.length << 5) + 32) > uint64.max)));

    v3 = v4 = v2.data;

    v5 = v6 = v1.data;

    require(msg.data.length >= 32 + (varg0.word0 + (v1.length << 5)));

    v7 = v8 = 0;

    while (v7 < v1.length) {

        require(msg.data[v5] == address(msg.data[v5]));

        MEM[v3] = msg.data[v5];

        v3 += 32;

        v5 += 32;

        v7 += 1;

    }

    v0.word0 = v2;

    require(msg.data[4 + varg0 + 32] <= uint64.max);

    v9 = varg0.word1;

    require(varg0.word1 + 31 < msg.data.length);

    require(v9.length <= uint64.max);

    v10 = new address[](v9.length);

    require(!((v10 + ((v9.length << 5) + 32) < v10) | (v10 + ((v9.length << 5) + 32) > uint64.max)));

    v11 = v12 = v10.data;

    v13 = v14 = v9.data;

    require(msg.data.length >= 32 + (varg0.word1 + (v9.length << 5)));

    v15 = v16 = 0;

    while (v15 < v9.length) {

        require(msg.data[v13] == address(msg.data[v13]));

        MEM[v11] = msg.data[v13];

        v11 += 32;

        v13 += 32;

        v15 += 1;

    }

    v0.word1 = v10;

    require(msg.data[4 + varg0 + 64] <= uint64.max);

    v17 = varg0.word2;

    require(varg0.word2 + 31 < msg.data.length);

    require(v17.length <= uint64.max);

    v18 = new address[](v17.length);

    require(!((v18 + ((v17.length << 5) + 32) < v18) | (v18 + ((v17.length << 5) + 32) > uint64.max)));

    v19 = v20 = v18.data;

    v21 = v22 = v17.data;

    require(msg.data.length >= 32 + (varg0.word2 + (v17.length << 5)));

    v23 = v24 = 0;

    while (v23 < v17.length) {

        require(msg.data[v21] == address(msg.data[v21]));

        MEM[v19] = msg.data[v21];

        v19 += 32;

        v21 += 32;

        v23 += 1;

    }

    v0.word2 = v18;

    require(msg.data[4 + varg0 + 96] <= uint64.max);

    v25 = varg0.word3;

    require(varg0.word3 + 31 < msg.data.length);

    require(v25.length <= uint64.max);

    v26 = new uint256[](v25.length);

    require(!((v26 + ((v25.length << 5) + 32) < v26) | (v26 + ((v25.length << 5) + 32) > uint64.max)));

    v27 = v28 = v26.data;

    v29 = v30 = v25.data;

    require(msg.data.length >= 32 + (varg0.word3 + (v25.length << 5)));

    v31 = v32 = 0;

    while (v31 < v25.length) {

        MEM[v27] = msg.data[v29];

        v27 += 32;

        v29 += 32;

        v31 += 1;

    }

    v0.word3 = v26;

    require(msg.data[4 + varg0 + 128] <= uint64.max);

    v33 = varg0.word4;

    require(varg0.word4 + 31 < msg.data.length);

    require(v33.length <= uint64.max);

    v34 = new uint256[](v33.length);

    require(!((v34 + ((v33.length << 5) + 32) < v34) | (v34 + ((v33.length << 5) + 32) > uint64.max)));

    v35 = v36 = v34.data;

    v37 = v38 = v33.data;

    require(msg.data.length >= 32 + (varg0.word4 + (v33.length << 5)));

    v39 = v40 = 0;

    while (v39 < v33.length) {

        MEM[v35] = msg.data[v37];

        v35 += 32;

        v37 += 32;

        v39 += 1;

    }

    v0.word4 = v34;

    require(msg.data[4 + varg0 + 160] <= uint64.max);

    v41 = varg0.word5;

    require(varg0.word5 + 31 < msg.data.length);

    require(v41.length <= uint64.max);

    v42 = new uint256[](v41.length);

    require(!((v42 + ((v41.length << 5) + 32) < v42) | (v42 + ((v41.length << 5) + 32) > uint64.max)));

    v43 = v44 = v42.data;

    v45 = v46 = v41.data;

    require(msg.data.length >= 32 + (varg0.word5 + (v41.length << 5)));

    v47 = v48 = 0;

    while (v47 < v41.length) {

        MEM[v43] = msg.data[v45];

        v43 += 32;

        v45 += 32;

        v47 += 1;

    }

    v0.word5 = v42;

    require(1 == varg1, Error('MarginCalculator: invalid vault type to liquidate'));

    MEM[64] = MEM[64] + 608;

    MEM[MEM[64]] = 0;

    MEM[MEM[64] + 32] = 0;

    MEM[MEM[64] + 64] = 0;

    MEM[MEM[64] + 96] = 0;

    MEM[MEM[64] + 128] = 0;

    MEM[MEM[64] + 160] = 0;

    MEM[MEM[64] + 192] = 0;

    MEM[MEM[64] + 224] = 0;

    MEM[MEM[64] + (uint8.max + 1)] = 0;

    MEM[MEM[64] + 288] = 0;

    MEM[MEM[64] + 320] = 0;

    MEM[MEM[64] + 352] = 0;

    MEM[MEM[64] + 384] = 0;

    MEM[MEM[64] + 416] = 0;

    MEM[MEM[64] + 448] = 0;

    MEM[MEM[64] + 480] = 0;

    MEM[MEM[64] + 512] = 0;

    MEM[MEM[64] + 544] = 0;

    MEM[MEM[64] + 576] = 0;

    v49 = 0x12a5(varg1);

    if (MEM[544 + v49]) {

        require(block.timestamp < MEM[224 + v49], Error('MarginCalculator: can not liquidate expired position'));

        require(bool(_oracle.code.size));

        v50, /* uint256 */ v51 = _oracle.getPrice(address(MEM[v49])).gas(msg.gas);

        require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v52 = v53 = 0x331c();

        v52 = v54 = new struct(3);

        v55 = v56 = 1256;

        assert(0 < MEM[MEM[96 + varg1]]);

        v57 = MEM[32 + MEM[96 + varg1]];

        v58 = 8;

        while (1) {

            MEM[64] += 32;

            MEM[MEM[64]] = 0;

            MEM[MEM[64]] = 0;

            if (v58 != 27) {

                if (v58 <= 27) {

                    v59 = v60 = new struct(1);

                    v61 = _SafeMul(10 ** (27 - v58), v57);

                    v62 = 0x11be(v61);

                    v60.word0 = v62;

                } else {

                    v63 = _SafeSub(27, v58);

                    v59 = v64 = new struct(1);

                    v65 = _SafeDiv(10 ** v63, v57);

                    v66 = 0x11be(v65);

                    v64.word0 = v66;

                }

            } else {

                v59 = v67 = new struct(1);

                v68 = 0x11be(v57);

                v67.word0 = v68;

            }

            // Unknown jump to Block {'0x4e8B0x1aa', '0x2c540x3afB0x1aa', '0x5610x3afB0x1aa'}. Refer to 3-address code (TAC);

            MEM[v52] = v59;

            v69 = 0x10fe(8, MEM[192 + v49]);

            MEM[32 + v52] = v69;

            v70 = 0x10fe(8, v51);

            MEM[64 + v52] = v70;

            MEM[32 + MEM[64]] = address(MEM[v49]);

            MEM[32 + MEM[64] + 32] = address(MEM[32 + v49]);

            MEM[32 + MEM[64] + 64] = address(MEM[64 + v49]);

            MEM[32 + MEM[64] + 96] = bool(MEM[448 + v49]);

            MEM[64] += 160;

            v52 = v71 = keccak256(MEM[32 + MEM[64]:32 + MEM[64] + 128]);

            v52 = MEM[64];

            MEM[v52] = 0;

            v55 = v72 = 1377;

            assert(0 < MEM[MEM[160 + varg1]]);

            v57 = v73 = MEM[32 + MEM[160 + varg1]];

            v58 = v74 = MEM[384 + v49];

        }

        v75 = 0x1b9e(MEM[v49], MEM[64 + v49], MEM[448 + v49]);

        MEM[64] += 32;

        MEM[MEM[64]] = 0;

        v76 = 0x1db7(v75, MEM[224 + v49], v52, v52);

        if (v76.word0 > MEM[v59]) {

            v77 = v78 = 0x20ea(MEM[384 + v49], MEM[v52], v59);

            v77 = v79 = _getCollateralDust[address(MEM[64 + v49])];

            v77 = v80 = 1;

            // Unknown jump to Block 0x1af. Refer to 3-address code (TAC);

        } else {

            v77 = v81 = 0;

            // Unknown jump to Block 0x1af. Refer to 3-address code (TAC);

        }

        // Unknown jump to Block 0x1af. Refer to 3-address code (TAC);

    } else {

        v77 = v82 = 0;

    }

    return bool(v77), v77, v77;

}
