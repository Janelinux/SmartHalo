function 0x31b573d0(uint256 varg0) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < 4 + (msg.data.length - 4));

    v0 = v1 = 4 + varg0 + 32;

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    v2 = new uint256[](varg0.length);

    require(!((v2 + ((varg0.length << 5) + 32) > 0xffffffffffffffff) | (v2 + ((varg0.length << 5) + 32) < v2)), Panic(65));

    v3 = v4 = v2.data;

    v5 = v6 = 0;

    while (v5 < varg0.length) {

        v7 = v1 + msg.data[v0];

        if (4 + (msg.data.length - 4) - v7 >= 160) {

            break;

        }

        require(4 + (msg.data.length - 4) - v7 >= 160);

        v8 = new struct(5);

        if (!((v8 + 160 > 0xffffffffffffffff) | (v8 + 160 < v8))) {

            break;

        }

        require(!((v8 + 160 > 0xffffffffffffffff) | (v8 + 160 < v8)), Panic(65));

        if (msg.data[v7 + 0] <= 0xffffffffffffffff) {

            break;

        }

        require(msg.data[v7 + 0] <= 0xffffffffffffffff);

        if (v7 + msg.data[v7 + 0] + 31 < 4 + (msg.data.length - 4)) {

            break;

        }

        require(v7 + msg.data[v7 + 0] + 31 < 4 + (msg.data.length - 4));

        if (msg.data[v7 + msg.data[v7 + 0]] <= 0xffffffffffffffff) {

            break;

        }

        require(msg.data[v7 + msg.data[v7 + 0]] <= 0xffffffffffffffff, Panic(65));

        v9 = new bytes[](msg.data[v7 + msg.data[v7 + 0]]);

        if (!((v9 + ((msg.data[v7 + msg.data[v7 + 0]] + 31 & ~0x1f) + 32) > 0xffffffffffffffff) | (v9 + ((msg.data[v7 + msg.data[v7 + 0]] + 31 & ~0x1f) + 32) < v9))) {

            break;

        }

        require(!((v9 + ((msg.data[v7 + msg.data[v7 + 0]] + 31 & ~0x1f) + 32) > 0xffffffffffffffff) | (v9 + ((msg.data[v7 + msg.data[v7 + 0]] + 31 & ~0x1f) + 32) < v9)), Panic(65));

        require(v7 + msg.data[v7 + 0] + 32 + msg.data[v7 + msg.data[v7 + 0]] <= 4 + (msg.data.length - 4));

        CALLDATACOPY(v9.data, v7 + msg.data[v7 + 0] + 32, msg.data[v7 + msg.data[v7 + 0]]);

        v9[msg.data[v7 + msg.data[v7 + 0]]] = 0;

        v8.word0 = v9;

        require(msg.data[v7 + 32] <= 0xffffffffffffffff);

        require(v7 + msg.data[v7 + 32] + 31 < 4 + (msg.data.length - 4));

        require(msg.data[v7 + msg.data[v7 + 32]] <= 0xffffffffffffffff, Panic(65));

        v10 = new bytes[](msg.data[v7 + msg.data[v7 + 32]]);

        require(!((v10 + ((msg.data[v7 + msg.data[v7 + 32]] + 31 & ~0x1f) + 32) > 0xffffffffffffffff) | (v10 + ((msg.data[v7 + msg.data[v7 + 32]] + 31 & ~0x1f) + 32) < v10)), Panic(65));

        require(v7 + msg.data[v7 + 32] + 32 + msg.data[v7 + msg.data[v7 + 32]] <= 4 + (msg.data.length - 4));

        CALLDATACOPY(v10.data, v7 + msg.data[v7 + 32] + 32, msg.data[v7 + msg.data[v7 + 32]]);

        v10[msg.data[v7 + msg.data[v7 + 32]]] = 0;

        v8.word1 = v10;

        require(msg.data[v7 + 64] <= 0xffffffffffffffff);

        require(v7 + msg.data[v7 + 64] + 31 < 4 + (msg.data.length - 4));

        require(msg.data[v7 + msg.data[v7 + 64]] <= 0xffffffffffffffff, Panic(65));

        v11 = new bytes[](msg.data[v7 + msg.data[v7 + 64]]);

        require(!((v11 + ((msg.data[v7 + msg.data[v7 + 64]] + 31 & ~0x1f) + 32) > 0xffffffffffffffff) | (v11 + ((msg.data[v7 + msg.data[v7 + 64]] + 31 & ~0x1f) + 32) < v11)), Panic(65));

        require(v7 + msg.data[v7 + 64] + 32 + msg.data[v7 + msg.data[v7 + 64]] <= 4 + (msg.data.length - 4));

        CALLDATACOPY(v11.data, v7 + msg.data[v7 + 64] + 32, msg.data[v7 + msg.data[v7 + 64]]);

        v11[msg.data[v7 + msg.data[v7 + 64]]] = 0;

        v8.word2 = v11;

        require(msg.data[v7 + 96] <= 0xffffffffffffffff);

        require(v7 + msg.data[v7 + 96] + 31 < 4 + (msg.data.length - 4));

        require(msg.data[v7 + msg.data[v7 + 96]] <= 0xffffffffffffffff, Panic(65));

        v12 = new bytes[](msg.data[v7 + msg.data[v7 + 96]]);

        require(!((v12 + ((msg.data[v7 + msg.data[v7 + 96]] + 31 & ~0x1f) + 32) > 0xffffffffffffffff) | (v12 + ((msg.data[v7 + msg.data[v7 + 96]] + 31 & ~0x1f) + 32) < v12)), Panic(65));

        require(v7 + msg.data[v7 + 96] + 32 + msg.data[v7 + msg.data[v7 + 96]] <= 4 + (msg.data.length - 4));

        CALLDATACOPY(v12.data, v7 + msg.data[v7 + 96] + 32, msg.data[v7 + msg.data[v7 + 96]]);

        v12[msg.data[v7 + msg.data[v7 + 96]]] = 0;

        v8.word3 = v12;

        require(msg.data[v7 + 128] == msg.data[v7 + 128]);

        v8.word4 = msg.data[v7 + 128];

        MEM[v3] = v8;

        v3 = v3 + 32;

        v0 = v0 + 32;

        v5 = v5 + 1;

    }

    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));

    v13 = v14 = 0;

    while (v13 < v2.length) {

        if (v13 < v2.length) {

            break;

        }

        require(v13 < v2.length, Panic(50));

        v15 = MEM[128 + v2[v13]];

        require(v13 < v2.length, Panic(50));

        v16 = v17 = 32 + MEM[0 + v2[v13]];

        v18 = 0x4c27(_blocksForBlocker[v15][0]);

        if (MEM[MEM[0 + v2[v13]]]) {

            if (31 < MEM[MEM[0 + v2[v13]]]) {

                _blocksForBlocker[v15][0] = 1 + (MEM[MEM[0 + v2[v13]]] + MEM[MEM[0 + v2[v13]]]);

                if (MEM[MEM[0 + v2[v13]]]) {

                    while (v17 + MEM[MEM[0 + v2[v13]]] > v16) {

                        STORAGE[v19] = MEM[v16];

                        v16 += 32;

                        v19 += 1;

                    }

                }

            } else {

                _blocksForBlocker[v15][0] = MEM[MEM[0 + v2[v13]]] + MEM[MEM[0 + v2[v13]]] | ~0xff & MEM[v17];

            }

        } else {

            _blocksForBlocker[v15][0] = 0;

        }

        while (v20 + (31 + v18 >> 5) > v19) {

            STORAGE[v19] = 0;

            v19 += 1;

        }

        require(v13 < v2.length, Panic(50));

        v21 = v22 = 32 + MEM[32 + v2[v13]];

        v23 = 0x4c27(_blocksForBlocker[v15][1]);

        if (MEM[MEM[32 + v2[v13]]]) {

            if (31 < MEM[MEM[32 + v2[v13]]]) {

                _blocksForBlocker[v15][1] = 1 + (MEM[MEM[32 + v2[v13]]] + MEM[MEM[32 + v2[v13]]]);

                if (MEM[MEM[32 + v2[v13]]]) {

                    while (v22 + MEM[MEM[32 + v2[v13]]] > v21) {

                        STORAGE[v24] = MEM[v21];

                        v21 += 32;

                        v24 += 1;

                    }

                }

            } else {

                _blocksForBlocker[v15][1] = MEM[MEM[32 + v2[v13]]] + MEM[MEM[32 + v2[v13]]] | ~0xff & MEM[v22];

            }

        } else {

            _blocksForBlocker[v15][1] = 0;

        }

        while (v25 + (31 + v23 >> 5) > v24) {

            STORAGE[v24] = 0;

            v24 += 1;

        }

        require(v13 < v2.length, Panic(50));

        v26 = v27 = 32 + MEM[64 + v2[v13]];

        v28 = 0x4c27(_blocksForBlocker[v15][2]);

        if (MEM[MEM[64 + v2[v13]]]) {

            if (31 < MEM[MEM[64 + v2[v13]]]) {

                _blocksForBlocker[v15][2] = 1 + (MEM[MEM[64 + v2[v13]]] + MEM[MEM[64 + v2[v13]]]);

                if (MEM[MEM[64 + v2[v13]]]) {

                    while (v27 + MEM[MEM[64 + v2[v13]]] > v26) {

                        STORAGE[v29] = MEM[v26];

                        v26 += 32;

                        v29 += 1;

                    }

                }

            } else {

                _blocksForBlocker[v15][2] = MEM[MEM[64 + v2[v13]]] + MEM[MEM[64 + v2[v13]]] | ~0xff & MEM[v27];

            }

        } else {

            _blocksForBlocker[v15][2] = 0;

        }

        while (v30 + (31 + v28 >> 5) > v29) {

            STORAGE[v29] = 0;

            v29 += 1;

        }

        require(v13 < v2.length, Panic(50));

        v31 = v32 = 32 + MEM[96 + v2[v13]];

        v33 = 0x4c27(_blocksForBlocker[v15][3]);

        if (MEM[MEM[96 + v2[v13]]]) {

            if (31 < MEM[MEM[96 + v2[v13]]]) {

                _blocksForBlocker[v15][3] = 1 + (MEM[MEM[96 + v2[v13]]] + MEM[MEM[96 + v2[v13]]]);

                if (MEM[MEM[96 + v2[v13]]]) {

                    while (v32 + MEM[MEM[96 + v2[v13]]] > v31) {

                        STORAGE[v34] = MEM[v31];

                        v31 += 32;

                        v34 += 1;

                    }

                }

            } else {

                _blocksForBlocker[v15][3] = MEM[MEM[96 + v2[v13]]] + MEM[MEM[96 + v2[v13]]] | ~0xff & MEM[v32];

            }

        } else {

            _blocksForBlocker[v15][3] = 0;

        }

        while (v35 + (31 + v33 >> 5) > v34) {

            STORAGE[v34] = 0;

            v34 += 1;

        }

        if (!(0xff & _blocksForBlocker[v15][4])) {

            _blocksForBlocker[v15][4] = 0x1 | ~0xff & _blocksForBlocker[v15][0x4];

            _blocksForBlocker[v15][6] = 0;

        }

        v13 = 0x4c59(v13);

    }

}
