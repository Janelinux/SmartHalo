function @_verifyStorageProof_1152(struct(5) varg0, uint256 varg1) private { 

    v0 = new uint256[](20 + (varg1.length + v0.data) - MEM[64] - 32);

    v1 = v2 = 0;

    while (v1 < varg1.length) {

        MEM[v1 + v0.data] = MEM[v1 + varg1.data];

        v1 += 32;

    }

    if (v1 > varg1.length) {

        MEM[v0.data + varg1.length] = 0;

    }

    MEM[varg1.length + v0.data] = bytes20(0x4200000000000000000000000000000000000007000000000000000000000000);

    v3 = v0.length;

    v4 = v0.data;

    MEM[20 + (varg1.length + v0.data) + 32] = keccak256(v0);

    MEM[20 + (varg1.length + v0.data) + 64] = 0;

    v5 = new uint256[](116 + (varg1.length + v0.data) - v5 - 32);

    v6 = v5.length;

    v7 = v5.data;

    MEM[116 + (varg1.length + v0.data) + 32] = 0x4200000000000000000000000000000000000000000000000000000000000000;

    v8 = new uint256[](168 + (varg1.length + v0.data) - v8 - 32);

    v9 = varg0.word3;

    v10 = v11 = varg0.word0;

    v12 = v8.length;

    v13 = v8.data;

    MEM[32 + MEM[64]] = keccak256(v8);

    MEM[MEM[64]] = 32;

    v14 = @_parseProof_4379(varg0.word3);

    v15 = 0;

    v16 = @toNibbles_5566(MEM[64]);

    v17 = v18 = 0;

    MEM[MEM[64]] = 96;

    MEM[32 + MEM[64]] = 96;

    v19 = v20 = 0;

    while (v19 < v14.length) {

        require(v19 < v14.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v17 = _SafeAdd(v17, v17);

        v15 = _SafeAdd(v15, 1);

        if (v17) {

            if (32 > MEM[MEM[v14[v19]]]) {

                if (MEM[MEM[v14[v19]]] >= 32) {

                    require(32 + MEM[v14[v19]] + MEM[MEM[v14[v19]]] - (32 + MEM[v14[v19]]) >= 32);

                    v21 = v22 = MEM[32 + MEM[v14[v19]]];

                } else {

                    v21 = MEM[32 + MEM[v14[v19]]];

                }

                require(v21 == v10, Error('Invalid internal node hash'));

            } else {

                require(v10 == keccak256(MEM[MEM[v1dd6_0x0V0x1c94V0x1acb[v3b3dV0x2555V0x1dd7B0x1c94B0x1acb]] + 32:MEM[v1dd6_0x0V0x1c94V0x1acb[v3b3dV0x2555V0x1dd7B0x1c94B0x1acb]] + 32 + MEM[MEM[v1dd6_0x0V0x1c94V0x1acb[v3b3dV0x2555V0x1dd7B0x1c94B0x1acb]]]]), Error('Invalid large internal hash'));

            }

        } else {

            require(v10 == keccak256(MEM[MEM[v1dd6_0x0V0x1c94V0x1acb[v3b3dV0x2555V0x1dd7B0x1c94B0x1acb]] + 32:MEM[v1dd6_0x0V0x1c94V0x1acb[v3b3dV0x2555V0x1dd7B0x1c94B0x1acb]] + 32 + MEM[MEM[v1dd6_0x0V0x1c94V0x1acb[v3b3dV0x2555V0x1dd7B0x1c94B0x1acb]]]]), Error('Invalid root hash'));

        }

        v23 = _SafeAdd(1, 16);

        if (MEM[MEM[32 + v14[v19]]] != v23) {

            require(MEM[MEM[32 + v14[v19]]] == 2, Error('Received an unparseable node.'));

            v24 = @_getNodePath_4439(v14[v19]);

            require(0 < v24.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v25 = mod_t_uint8(v24[0] >> 248, 2);

            require(uint8(2) >= uint8(v25), Panic(17)); // arithmetic overflow or underflow

            if (uint8(uint8(2) - uint8(v25)) < v24.length) {

                v26 = _SafeSub(v24.length, uint8(uint8(2) - uint8(v25)));

                v27 = v28 = @slice_5428(v26, uint8(uint8(2) - uint8(v25)), v24);

            } else {

                v27 = MEM[64];

                MEM[v27] = 0;

            }

            if (v17 < v16.length) {

                v29 = _SafeSub(v16.length, v17);

                v30 = v31 = @slice_5428(v29, v17, v16);

            } else {

                v30 = MEM[64];

                MEM[v30] = 0;

            }

            v17 = @_getSharedNibbleLength_4612(v30, v27);

            v32 = v33 = 2 == uint8(v24[0] >> 248);

            if (2 != uint8(v24[0] >> 248)) {

                v32 = 3 == uint8(v24[0] >> 248);

            }

            if (!v32) {

                v34 = v35 = !uint8(v24[0] >> 248);

                if (uint8(v24[0] >> 248)) {

                    v34 = 1 == uint8(v24[0] >> 248);

                }

                require(v34, Error('Received a node with an unknown prefix'));

                if (v17 == MEM[v27]) {

                    require(1 < MEM[MEM[32 + v14[v19]]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v10 = v36 = @_getNodeID_4418(MEM[64 + MEM[32 + v14[v19]]]);

                } else {

                    v10 = int256.min;

                }

            } else {

                v37 = v38 = MEM[v27] == v17;

                if (v38) {

                    v37 = MEM[v30] == v17;

                }

                if (v37) {

                    v17 = v39 = _SafeAdd(v17, v17);

                }

                v10 = v40 = int256.min;

            }

        } else if (v17 != v16.length) {

            require(v17 < v16.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            require(uint8(v16[v17] >> 248 << 248 >> 248) < MEM[MEM[32 + v14[v19]]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v10 = v41 = @_getNodeID_4418(MEM[32 + (uint8(v16[v17] >> 248 << 248 >> 248) << 5) + MEM[32 + v14[v19]]]);

            v17 = v42 = 1;

        }

        require(v19 != uint256.max, Panic(17)); // arithmetic overflow or underflow

        v19 += 1;

    }

    v43 = v10 == int256.min;

    if (v17 < v16.length) {

        v44 = _SafeSub(v16.length, v17);

        v45 = v46 = @slice_5428(v44, v17, v16);

    } else {

        v45 = MEM[64];

        MEM[v45] = 0;

    }

    v43 = v47 = !MEM[v45];

    require(v43, Error('Provided proof is invalid.'));

    if (v47) {

        v48 = _SafeSub(v15, 1);

        require(v48 < v14.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v49 = _SafeSub(MEM[MEM[v14[v48] + 32]], 1);

        require(v49 < MEM[MEM[v14[v48] + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v50, v51, v52 = @_decodeLength_2522(MEM[32 + (v49 << 5) + MEM[v14[v48] + 32]]);

        require(v50 <= 1, Panic(33)); // failed convertion to enum type

        require(v50 == 0, Error('Invalid RLP bytes value.'));

        v53 = @_copy_2604(v51, v52, MEM[32 + MEM[32 + (v49 << 5) + MEM[v14[v48] + 32]]]);

    } else {

        v53 = v54 = MEM[64];

        MEM[64] = 32 + v54;

        MEM[v54] = 0;

    }

    require(bool(v43) == 1, Error('Message passing predeploy has not been initialized or invalid proof provided.'));

    MEM[MEM[64]] = 0;

    MEM[MEM[64] + 32] = 0;

    MEM[MEM[64] + 64] = 0;

    MEM[MEM[64] + 96] = 0;

    v55 = @readList_2046(v53);

    require(0 < v55.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

    v56 = v55.data;

    v57 = @readBytes32_2179(v55.word1);

    MEM[MEM[64]] = v57;

    require(1 < v55.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

    v58 = @readBytes32_2179(v55.word2);

    MEM[32 + MEM[64]] = v58;

    require(2 < v55.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

    v59 = @readBytes32_2179(v55.word3);

    require(3 < v55.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

    v60 = @readBytes32_2179(v55.word4);

    MEM[96 + MEM[64]] = v60;

    MEM[64 + MEM[64] + 32] = uint248.max + 1;

    v61 = new uint256[](97 + MEM[64] - v61 - 32);

    v62 = varg0.word4;

    MEM[32 + MEM[64]] = keccak256(keccak256(v5));

    MEM[MEM[64]] = 32;

    v63 = @_parseProof_4379(varg0.word4);

    v64 = 0;

    v65 = @toNibbles_5566(MEM[64]);

    v66 = v67 = 0;

    MEM[MEM[64]] = 96;

    MEM[32 + MEM[64]] = 96;

    v68 = v69 = 0;

    while (v68 < v63.length) {

        require(v68 < v63.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v66 = _SafeAdd(v66, v66);

        v64 = _SafeAdd(v64, 1);

        if (v66) {

            if (32 > MEM[MEM[v63[v68]]]) {

                if (MEM[MEM[v63[v68]]] >= 32) {

                    require(32 + MEM[v63[v68]] + MEM[MEM[v63[v68]]] - (32 + MEM[v63[v68]]) >= 32);

                    v70 = v71 = MEM[32 + MEM[v63[v68]]];

                } else {

                    v70 = MEM[32 + MEM[v63[v68]]];

                }

                require(v70 == v72, Error('Invalid internal node hash'));

            } else {

                require(v72 == keccak256(MEM[MEM[v1dd6_0x0V0x1fdfV0x1d7eV0x1c09[v3b3dV0x2555V0x1dd7B0x1fdfB0x1d7eV0x1c09]] + 32:MEM[v1dd6_0x0V0x1fdfV0x1d7eV0x1c09[v3b3dV0x2555V0x1dd7B0x1fdfB0x1d7eV0x1c09]] + 32 + MEM[MEM[v1dd6_0x0V0x1fdfV0x1d7eV0x1c09[v3b3dV0x2555V0x1dd7B0x1fdfB0x1d7eV0x1c09]]]]), Error('Invalid large internal hash'));

            }

        } else {

            require(v72 == keccak256(MEM[MEM[v1dd6_0x0V0x1fdfV0x1d7eV0x1c09[v3b3dV0x2555V0x1dd7B0x1fdfB0x1d7eV0x1c09]] + 32:MEM[v1dd6_0x0V0x1fdfV0x1d7eV0x1c09[v3b3dV0x2555V0x1dd7B0x1fdfB0x1d7eV0x1c09]] + 32 + MEM[MEM[v1dd6_0x0V0x1fdfV0x1d7eV0x1c09[v3b3dV0x2555V0x1dd7B0x1fdfB0x1d7eV0x1c09]]]]), Error('Invalid root hash'));

        }

        v73 = _SafeAdd(1, 16);

        if (MEM[MEM[32 + v63[v68]]] != v73) {

            require(MEM[MEM[32 + v63[v68]]] == 2, Error('Received an unparseable node.'));

            v74 = @_getNodePath_4439(v63[v68]);

            require(0 < v74.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v75 = mod_t_uint8(v74[0] >> 248, 2);

            require(uint8(2) >= uint8(v75), Panic(17)); // arithmetic overflow or underflow

            if (uint8(uint8(2) - uint8(v75)) < v74.length) {

                v76 = _SafeSub(v74.length, uint8(uint8(2) - uint8(v75)));

                v77 = v78 = @slice_5428(v76, uint8(uint8(2) - uint8(v75)), v74);

            } else {

                v77 = MEM[64];

                MEM[v77] = 0;

            }

            if (v66 < v65.length) {

                v79 = _SafeSub(v65.length, v66);

                v80 = v81 = @slice_5428(v79, v66, v65);

            } else {

                v80 = MEM[64];

                MEM[v80] = 0;

            }

            v66 = @_getSharedNibbleLength_4612(v80, v77);

            v82 = v83 = 2 == uint8(v74[0] >> 248);

            if (2 != uint8(v74[0] >> 248)) {

                v82 = 3 == uint8(v74[0] >> 248);

            }

            if (!v82) {

                v84 = v85 = !uint8(v74[0] >> 248);

                if (uint8(v74[0] >> 248)) {

                    v84 = 1 == uint8(v74[0] >> 248);

                }

                require(v84, Error('Received a node with an unknown prefix'));

                if (v66 == MEM[v77]) {

                    require(1 < MEM[MEM[32 + v63[v68]]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v72 = v86 = @_getNodeID_4418(MEM[64 + MEM[32 + v63[v68]]]);

                } else {

                    v72 = int256.min;

                }

            } else {

                v87 = v88 = MEM[v77] == v66;

                if (v88) {

                    v87 = MEM[v80] == v66;

                }

                if (v87) {

                    v66 = v89 = _SafeAdd(v66, v66);

                }

                v72 = v90 = int256.min;

            }

        } else if (v66 != v65.length) {

            require(v66 < v65.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            require(uint8(v65[v66] >> 248 << 248 >> 248) < MEM[MEM[32 + v63[v68]]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v72 = v91 = @_getNodeID_4418(MEM[32 + (uint8(v65[v66] >> 248 << 248 >> 248) << 5) + MEM[32 + v63[v68]]]);

            v66 = v92 = 1;

        }

        require(v68 != uint256.max, Panic(17)); // arithmetic overflow or underflow

        v68 += 1;

    }

    v93 = v72 == int256.min;

    if (v66 < v65.length) {

        v94 = _SafeSub(v65.length, v66);

        v95 = v96 = @slice_5428(v94, v66, v65);

    } else {

        v95 = MEM[64];

        MEM[v95] = 0;

    }

    v93 = v97 = !MEM[v95];

    require(v93, Error('Provided proof is invalid.'));

    if (v97) {

        v98 = _SafeSub(v64, 1);

        require(v98 < v63.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v99 = _SafeSub(MEM[MEM[v63[v98] + 32]], 1);

        require(v99 < MEM[MEM[v63[v98] + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v100, v101, v102 = @_decodeLength_2522(MEM[32 + (v99 << 5) + MEM[v63[v98] + 32]]);

        require(v100 <= 1, Panic(33)); // failed convertion to enum type

        require(v100 == 0, Error('Invalid RLP bytes value.'));

        v103 = @_copy_2604(v101, v102, MEM[32 + MEM[32 + (v99 << 5) + MEM[v63[v98] + 32]]]);

    } else {

        v103 = v104 = MEM[64];

        MEM[64] = 32 + v104;

        MEM[v104] = 0;

    }

    if (v105) {

        v106 = v61.length;

        v107 = v61.data;

        v93 = v108 = keccak256(v61) == keccak256(MEM[v1dc80x2bab_0x0V0x1fdfV0x1d7eV0x1c09 + 32:v1dc80x2bab_0x0V0x1fdfV0x1d7eV0x1c09 + 32 + MEM[v1dc80x2bab_0x0V0x1fdfV0x1d7eV0x1c09]]);

    }

    return v93;

}
