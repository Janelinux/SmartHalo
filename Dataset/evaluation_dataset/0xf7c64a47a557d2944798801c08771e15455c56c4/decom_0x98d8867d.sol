function 0x98d8867d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 

    require(msg.data.length - 4 >= 224);

    require(varg1 <= 0xffffffffffffffff);

    require(msg.data.length - (4 + varg1) >= 160);

    v0 = new struct(5);

    assert(!((v0 + 160 > 0xffffffffffffffff) | (v0 + 160 < v0)));

    v0.word0 = varg1.length;

    v0.word1 = msg.data[4 + varg1 + 32];

    v0.word2 = msg.data[4 + varg1 + 64];

    v0.word3 = msg.data[4 + varg1 + 96];

    require(msg.data[4 + varg1 + 128] <= 0xffffffffffffffff);

    require(4 + varg1 + msg.data[4 + varg1 + 128] + 31 < msg.data.length);

    assert(msg.data[4 + varg1 + msg.data[4 + varg1 + 128]] <= 0xffffffffffffffff);

    v1 = new bytes[](msg.data[4 + varg1 + msg.data[4 + varg1 + 128]]);

    assert(!((v1 + (32 + (~0x1f & msg.data[4 + varg1 + msg.data[4 + varg1 + 128]] + 31)) < v1) | (v1 + (32 + (~0x1f & msg.data[4 + varg1 + msg.data[4 + varg1 + 128]] + 31)) > 0xffffffffffffffff)));

    require(4 + varg1 + msg.data[4 + varg1 + 128] + 32 + msg.data[4 + varg1 + msg.data[4 + varg1 + 128]] <= msg.data.length);

    CALLDATACOPY(v1.data, 4 + varg1 + msg.data[4 + varg1 + 128] + 32, msg.data[4 + varg1 + msg.data[4 + varg1 + 128]]);

    v1[msg.data[4 + varg1 + msg.data[4 + varg1 + 128]]] = 0;

    v0.word4 = v1;

    require(varg2 <= 0xffffffffffffffff);

    require(msg.data.length - (4 + varg2) >= 64);

    v2 = new struct(2);

    assert(!((v2 + 64 > 0xffffffffffffffff) | (v2 + 64 < v2)));

    v2.word0 = varg2.length;

    require(msg.data[4 + varg2 + 32] <= 0xffffffffffffffff);

    require(msg.data.length > 4 + varg2 + msg.data[4 + varg2 + 32] + 31);

    assert(msg.data[4 + varg2 + msg.data[4 + varg2 + 32]] <= 0xffffffffffffffff);

    v3 = new uint256[](msg.data[4 + varg2 + msg.data[4 + varg2 + 32]]);

    assert(!((v3 + ((msg.data[4 + varg2 + msg.data[4 + varg2 + 32]] << 5) + 32) < v3) | (v3 + ((msg.data[4 + varg2 + msg.data[4 + varg2 + 32]] << 5) + 32) > 0xffffffffffffffff)));

    v4 = v5 = v3.data;

    v6 = v7 = 32 + (4 + varg2 + msg.data[4 + varg2 + 32]);

    require(msg.data.length >= 32 + (4 + varg2 + msg.data[4 + varg2 + 32] + (msg.data[4 + varg2 + msg.data[4 + varg2 + 32]] << 5)));

    v8 = v9 = 0;

    while (v8 < msg.data[4 + varg2 + msg.data[4 + varg2 + 32]]) {

        MEM[v4] = msg.data[v6];

        v8 += 1;

        v4 += 32;

        v6 += 32;

    }

    v2.word1 = v3;

    require(varg3 <= 0xffffffffffffffff);

    require(msg.data.length - (4 + varg3) >= 224);

    v10 = new struct(7);

    assert(!((v10 + 224 < v10) | (v10 + 224 > 0xffffffffffffffff)));

    v10.word0 = varg3.length;

    v10.word1 = msg.data[4 + varg3 + 32];

    require(msg.data[4 + varg3 + 64] < 2);

    v10.word2 = msg.data[4 + varg3 + 64];

    require(msg.data[4 + varg3 + 96] == address(msg.data[4 + varg3 + 96]));

    v10.word3 = msg.data[4 + varg3 + 96];

    require(msg.data[4 + varg3 + 128] == address(msg.data[4 + varg3 + 128]));

    v10.word4 = msg.data[4 + varg3 + 128];

    v10.word5 = msg.data[4 + varg3 + 160];

    require(msg.data[4 + varg3 + 192] <= 0xffffffffffffffff);

    require(4 + varg3 + msg.data[4 + varg3 + 192] + 31 < msg.data.length);

    assert(msg.data[4 + varg3 + msg.data[4 + varg3 + 192]] <= 0xffffffffffffffff);

    v11 = new bytes[](msg.data[4 + varg3 + msg.data[4 + varg3 + 192]]);

    assert(!((v11 + (32 + (~0x1f & msg.data[4 + varg3 + msg.data[4 + varg3 + 192]] + 31)) < v11) | (v11 + (32 + (~0x1f & msg.data[4 + varg3 + msg.data[4 + varg3 + 192]] + 31)) > 0xffffffffffffffff)));

    require(4 + varg3 + msg.data[4 + varg3 + 192] + 32 + msg.data[4 + varg3 + msg.data[4 + varg3 + 192]] <= msg.data.length);

    CALLDATACOPY(v11.data, 4 + varg3 + msg.data[4 + varg3 + 192] + 32, msg.data[4 + varg3 + msg.data[4 + varg3 + 192]]);

    v11[msg.data[4 + varg3 + msg.data[4 + varg3 + 192]]] = 0;

    v10.word6 = v11;

    require(varg4 <= 0xffffffffffffffff);

    require(msg.data.length - (4 + varg4) >= 160);

    v12 = new struct(5);

    assert(!((v12 + 160 > 0xffffffffffffffff) | (v12 + 160 < v12)));

    require(varg4.length == varg4.length);

    v12.word0 = varg4.length;

    v12.word1 = msg.data[4 + varg4 + 32];

    v12.word2 = msg.data[4 + varg4 + 64];

    v12.word3 = msg.data[4 + varg4 + 96];

    require(msg.data[4 + varg4 + 128] <= 0xffffffffffffffff);

    require(4 + varg4 + msg.data[4 + varg4 + 128] + 31 < msg.data.length);

    assert(msg.data[4 + varg4 + msg.data[4 + varg4 + 128]] <= 0xffffffffffffffff);

    v13 = new bytes[](msg.data[4 + varg4 + msg.data[4 + varg4 + 128]]);

    assert(!((v13 + (32 + (~0x1f & msg.data[4 + varg4 + msg.data[4 + varg4 + 128]] + 31)) < v13) | (v13 + (32 + (~0x1f & msg.data[4 + varg4 + msg.data[4 + varg4 + 128]] + 31)) > 0xffffffffffffffff)));

    require(4 + varg4 + msg.data[4 + varg4 + 128] + 32 + msg.data[4 + varg4 + msg.data[4 + varg4 + 128]] <= msg.data.length);

    CALLDATACOPY(v13.data, 4 + varg4 + msg.data[4 + varg4 + 128] + 32, msg.data[4 + varg4 + msg.data[4 + varg4 + 128]]);

    v13[msg.data[4 + varg4 + msg.data[4 + varg4 + 128]]] = 0;

    v12.word4 = v13;

    require(varg5 <= 0xffffffffffffffff);

    require(msg.data.length - (4 + varg5) >= 160);

    v14 = new struct(5);

    assert(!((v14 + 160 > 0xffffffffffffffff) | (v14 + 160 < v14)));

    v14.word0 = varg5.length;

    v14.word1 = msg.data[4 + varg5 + 32];

    v14.word2 = msg.data[4 + varg5 + 64];

    v14.word3 = msg.data[4 + varg5 + 96];

    require(msg.data[4 + varg5 + 128] <= 0xffffffffffffffff);

    require(4 + varg5 + msg.data[4 + varg5 + 128] + 31 < msg.data.length);

    assert(msg.data[4 + varg5 + msg.data[4 + varg5 + 128]] <= 0xffffffffffffffff);

    v15 = new bytes[](msg.data[4 + varg5 + msg.data[4 + varg5 + 128]]);

    assert(!((v15 + (32 + (~0x1f & msg.data[4 + varg5 + msg.data[4 + varg5 + 128]] + 31)) < v15) | (v15 + (32 + (~0x1f & msg.data[4 + varg5 + msg.data[4 + varg5 + 128]] + 31)) > 0xffffffffffffffff)));

    require(4 + varg5 + msg.data[4 + varg5 + 128] + 32 + msg.data[4 + varg5 + msg.data[4 + varg5 + 128]] <= msg.data.length);

    CALLDATACOPY(v15.data, 4 + varg5 + msg.data[4 + varg5 + 128] + 32, msg.data[4 + varg5 + msg.data[4 + varg5 + 128]]);

    v15[msg.data[4 + varg5 + msg.data[4 + varg5 + 128]]] = 0;

    v14.word4 = v15;

    require(varg6 <= 0xffffffffffffffff);

    require(msg.data.length - (4 + varg6) >= 64);

    v16 = new struct(2);

    assert(!((v16 + 64 > 0xffffffffffffffff) | (v16 + 64 < v16)));

    v16.word0 = varg6.length;

    require(msg.data[4 + varg6 + 32] <= 0xffffffffffffffff);

    require(msg.data.length > 4 + varg6 + msg.data[4 + varg6 + 32] + 31);

    assert(msg.data[4 + varg6 + msg.data[4 + varg6 + 32]] <= 0xffffffffffffffff);

    v17 = new uint256[](msg.data[4 + varg6 + msg.data[4 + varg6 + 32]]);

    assert(!((v17 + ((msg.data[4 + varg6 + msg.data[4 + varg6 + 32]] << 5) + 32) < v17) | (v17 + ((msg.data[4 + varg6 + msg.data[4 + varg6 + 32]] << 5) + 32) > 0xffffffffffffffff)));

    v18 = v19 = v17.data;

    v20 = v21 = 32 + (4 + varg6 + msg.data[4 + varg6 + 32]);

    require(msg.data.length >= 32 + (4 + varg6 + msg.data[4 + varg6 + 32] + (msg.data[4 + varg6 + msg.data[4 + varg6 + 32]] << 5)));

    v22 = v23 = 0;

    while (v22 < msg.data[4 + varg6 + msg.data[4 + varg6 + 32]]) {

        MEM[v18] = msg.data[v20];

        v22 += 1;

        v18 += 32;

        v20 += 32;

    }

    v16.word1 = v17;

    v24 = 0x90a(v10);

    v25 = 0x90a(v10);

    v26 = new struct(3);

    v26.word1 = varg0;

    v26.word2 = v25;

    v26.word0 = 64;

    v27 = v26.word0;

    if (address(_getStateTransitioner[keccak256(varg0, v25)]) == 0) {

        v28.word0 = 24;

        v29 = v28.data;

        v28.word1 = 'OVM_StateCommitmentChain';

        v30 = 0xd7('OVM_StateCommitmentChain\x00\x00\x00\x00\x00\x00\x00\x00\x1dOVM_CanonicalTransactionChain');

        v31.word0 = 29;

        v32 = v31.data;

        v31.word1 = 'OVM_CanonicalTransactionChain';

        v33 = 0xd7(0x4f564d5f43616e6f6e6963616c5472616e73616374696f6e436861696e0000004d69ee5700000000000000000000000000000000000000000000000000000000);

        MEM[4 + MEM[64]] = varg0;

        v34 = new array[](v0.word0);

        MEM[v34.data] = v0.word1;

        v34[96] = 160;

        v35 = v36 = 0;

        while (v35 < MEM[v0.word4]) {

            MEM[v35 + (v34 + 160 + 32)] = MEM[v35 + (v0.word4 + 32)];

            v35 += 32;

        }

        if (v35 > MEM[v0.word4]) {

            MEM[v34 + 160 + 32 + MEM[v0.word4]] = 0;

        }

        v37 = new array[](v2.word0);

        v38 = v39 = 0;

        MEM[v37.data] = 64;

        MEM[v37 + 64] = MEM[v2.word1];

        v40 = v41 = v37 + 96;

        v42 = v43 = v2.word1 + 32;

        while (v38 < MEM[v2.word1]) {

            MEM[v40] = MEM[v42];

            v42 += 32;

            v38 += 1;

            v40 += 32;

        }

        require((address(v30)).code.size);

        v44, v45 = address(v30).staticcall(0x4d69ee57, varg0, v34, v37, v46, v46, v0.word2, v0.word3, v46, MEM[v0.word4]).gas(msg.gas);

        require(v44); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v45 == v45);

        if (v45) {

            v47 = new array[](v10.word0);

            MEM[v47.data] = v10.word1;

            assert(v10.word2 < 2);

            v48 = v49 = 0;

            while (v48 < MEM[v10.word6]) {

                MEM[v48 + (4 + MEM[64] + 352 + 32)] = MEM[v48 + (v10.word6 + 32)];

                v48 += 32;

            }

            if (v48 > MEM[v10.word6]) {

                MEM[4 + MEM[64] + 352 + 32 + MEM[v10.word6]] = 0;

            }

            v50 = new array[](v12.word0);

            MEM[v50.data] = v12.word1;

            MEM[v50 + 64] = v12.word2;

            MEM[v50 + 96] = v12.word3;

            MEM[v50 + 128] = 160;

            MEM[v50 + 160] = MEM[v12.word4];

            v51 = v52 = 0;

            while (v51 < MEM[v12.word4]) {

                MEM[v51 + (v50 + 160 + 32)] = MEM[v51 + (v12.word4 + 32)];

                v51 += 32;

            }

            if (v51 > MEM[v12.word4]) {

                MEM[v50 + 160 + 32 + MEM[v12.word4]] = 0;

            }

            v53 = new array[](v14.word0);

            MEM[v53.data] = v14.word1;

            MEM[v53 + 64] = v14.word2;

            MEM[v53 + 96] = v14.word3;

            MEM[v53 + 128] = 160;

            MEM[v53 + 160] = MEM[v14.word4];

            v54 = v55 = 0;

            while (v54 < MEM[v14.word4]) {

                MEM[v54 + (v53 + 160 + 32)] = MEM[v54 + (v14.word4 + 32)];

                v54 += 32;

            }

            if (v54 > MEM[v14.word4]) {

                MEM[v53 + 160 + 32 + MEM[v14.word4]] = 0;

            }

            v56 = new array[](v16.word0);

            v57 = v58 = 0;

            MEM[v56.data] = 64;

            MEM[v56 + 64] = MEM[v16.word1];

            v59 = v60 = v56 + 96;

            v61 = v62 = v16.word1 + 32;

            while (v57 < MEM[v16.word1]) {

                MEM[v59] = MEM[v61];

                v61 += 32;

                v57 += 1;

                v59 += 32;

            }

            require((address(v33)).code.size);

            v63, v64 = address(v33).staticcall(0x4de569ce00000000000000000000000000000000000000000000000000000000, v47, v50, v53, v56, v46, v46, v10.word2, address(v10.word3), address(v10.word4), v10.word5, 224, MEM[v10.word6]).gas(msg.gas);

            require(v63); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v64 == v64);

            if (v64) {

                if (1 + (v0.word3 + v2.word0) == v14.word3 + v16.word0) {

                    v65.word0 = 28;

                    v66 = v65.data;

                    v65.word1 = 'OVM_StateTransitionerFactory';

                    v67 = 0xd7(0x4f564d5f53746174655472616e736974696f6e6572466163746f72790000000022d1470200000000000000000000000000000000000000000000000000000000);

                    MEM[4 + MEM[64]] = _libAddressManager;

                    require((address(v67)).code.size);

                    v68, v69 = address(v67).create(_libAddressManager, v2.word0, varg0, v25).gas(msg.gas);

                    require(v68); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v69 == address(v69));

                    v70 = new struct(3);

                    v70.word1 = varg0;

                    v70.word2 = v25;

                    v70.word0 = 64;

                    v71 = v70.word0;

                    _getStateTransitioner[keccak256(varg0, v25)] = address(v69) | ~0xffffffffffffffffffffffffffffffffffffffff & _getStateTransitioner[keccak256(varg0, v25)];

                    emit FraudProofInitialized(varg0, v2.word0, v25, msg.sender);

                }

            }

        }

        revert(Error('Invalid pre-state root inclusion proof.'));

    }

    v72.word0 = 15;

    v73 = v72.data;

    v72.word1 = 'OVM_BondManager';

    v74 = 0xd7(0x4f564d5f426f6e644d616e6167657200000000000000000000000000000000001e16e92f00000000000000000000000000000000000000000000000000000000);

    MEM[4 + MEM[64]] = varg0;

    require((address(v74)).code.size);

    v75 = address(v74).recordGasSpent(varg0, v24, msg.sender, msg.gas - msg.gas).gas(msg.gas);

    require(v75); // checks call status, propagates error data on error

}
