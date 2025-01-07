function getNFTInfo(address varg0, uint256 varg1, uint256 varg2) public payable { 

    require(msg.data.length - 4 >= 96);

    require(varg0 == varg0);

    v0 = v1 = 105;

    v0 = v2 = 0;

    require(varg2 <= 0xffffffffffffffff, Panic(65));

    v0 = v3 = new uint256[](varg2);

    if (varg2) {

        v4 = v3.data;

        do {

            v5 = new struct(3);

            v5.word0 = 0;

            v5.word1 = 0;

            v5.word2 = 96;

            MEM[v4] = v5;

            v4 += 32;

            v0 = v0 - 1;

        } while (!v0);

    }

    while (v0 > ~v0) {

        require(v0 <= ~v0, Panic(17));

        if (v0 >= v0 + v0) {

            break;

        }

        if (v0 >= v0 + v0) {

            if (0 != v6) {

                v7 = v8 = 0;

                require(v6 <= 0xffffffffffffffff, Panic(65));

                v9 = v10 = new uint256[](v6);

                if (v6) {

                    v11 = v10.data;

                    do {

                        v12 = new struct(3);

                        v12.word0 = 0;

                        v12.word1 = 0;

                        v12.word2 = 96;

                        MEM[v11] = v12;

                        v11 += 32;

                        v0 = v0 - 1;

                    } while (!v0);

                }

                v13 = v14 = 0;

                while (v13 < varg2) {

                    if (v13 < MEM[v0]) {

                        break;

                    }

                    require(v13 < MEM[v0], Panic(50));

                    if (0 != MEM[0 + MEM[32 + (v13 << 5) + v0]]) {

                        require(v13 < MEM[v0], Panic(50));

                        v7 = 0x6e0(v7);

                        require(v7 < v10.length, Panic(50));

                        v10[v7] = MEM[32 + (v13 << 5) + v0];

                    }

                    v13 = 0x6e0(v13);

                }

            } else {

                v9 = v15 = new struct(1);

                v15.word0 = 0;

            }

            v16 = v17 = 0;

            v18 = new array[](MEM[v9]);

            v19 = v20 = v18.data;

            v21 = v22 = MEM[64] + (MEM[v9] << 5) + 64;

            v23 = v24 = v9 + 32;

            while (v16 < MEM[v9]) {

                MEM[v19] = ~63 + (v21 - MEM[64]);

                MEM[v21] = MEM[MEM[v23]];

                MEM[v21 + 32] = address(MEM[MEM[v23] + 32]);

                MEM[v21 + 64] = 96;

                v25 = MEM[MEM[64 + MEM[v23]]];

                MEM[v21 + 96] = v25;

                v26 = v27 = 0;

                while (v26 < v25) {

                    MEM[v26 + (v21 + 128)] = MEM[v26 + (32 + MEM[64 + MEM[v23]])];

                    v26 += 32;

                }

                if (v26 > v25) {

                    MEM[v21 + 128 + v25] = 0;

                }

                v19 += 32;

                v21 = 128 + ((~0x1f & 31 + v25) + v21);

                v23 += 32;

                v16 += 1;

            }

            return v18;

        }

        if ((address(v0)).code.size) {

            break;

        }

        require((address(v0)).code.size);

        v28 = v29 = address(v0).ownerOf(v0).gas(msg.gas);

        if (v29) {

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v0 = MEM[MEM[64]];

            require(v0 == address(v0));

            v28 = 1;

        }

        if (v28) {

            MEM[MEM[64]] = v0;

            require((address(v0)).code.size);

            v30 = address(v0).ownerOf(v0).gas(msg.gas);

            require(v30); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(MEM[MEM[64]] == address(MEM[MEM[64]]));

            MEM[MEM[64] + 32] = address(MEM[MEM[64]]);

            MEM[MEM[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64]] = v0;

            require((address(v0)).code.size);

            v31, v32, v33 = address(v0).staticcall(MEM[(MEM[64]) len (36 + MEM[64] - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);

            require(v31); // checks call status, propagates error data on error

            RETURNDATACOPY(v33, 0, RETURNDATASIZE());

            MEM[64] = v33 + (~0x1f & RETURNDATASIZE() + 31);

            require(v33 + RETURNDATASIZE() - v33 >= 32);

            require(MEM[v33] <= 0xffffffffffffffff);

            require(v33 + MEM[v33] + 31 < v33 + RETURNDATASIZE());

            require(MEM[v33 + MEM[v33]] <= 0xffffffffffffffff, Panic(65));

            0x6b3(MEM[64], 32 + (~0x1f & MEM[v33 + MEM[v33]] + 31));

            MEM[MEM[64]] = MEM[v33 + MEM[v33]];

            require(v33 + MEM[v33] + MEM[v33 + MEM[v33]] + 32 <= v33 + RETURNDATASIZE());

            v34 = v35 = 0;

            while (v34 < MEM[v33 + MEM[v33]]) {

                MEM[v34 + (MEM[64] + 32)] = MEM[v34 + (v33 + MEM[v33] + 32)];

                v34 += 32;

            }

            if (v34 > MEM[v33 + MEM[v33]]) {

                MEM[MEM[64] + 32 + MEM[v33 + MEM[v33]]] = 0;

            }

            MEM[32 + (MEM[64] + 32)] = MEM[64];

            require(v0 >= v0, Panic(17));

            require(v0 - v0 < MEM[v0], Panic(50));

            MEM[32 + (v0 - v0 << 5) + v0] = MEM[64];

            v0 = 0x6e0(v0);

        } else {

            v36 = v37 = 0;

            if (RETURNDATASIZE() > 3) {

                RETURNDATACOPY(v37, v37, 4);

                v36 = v38 = MEM[v37] >> 224;

            }

            if (0x8c379a0 == v36) {

                v39 = 0x73f();

                if (!v39) {

                }

            }

            if (RETURNDATASIZE()) {

                v40 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v40.data, 0, RETURNDATASIZE());

            }

            goto 0x489B0x59B0x3e;

        }

        v0 = 0x6e0(v0);

    }

}
