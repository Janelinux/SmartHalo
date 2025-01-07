function executeAction(bytes[] _callData, bytes[] _subData, uint8[] _paramMapping, bytes32[] _returnValues) public payable { 

    v0 = v1 = 0;

    require(msg.data.length - 4 >= 128, v1, v1);

    require(_callData <= uint64.max, v1, v1);

    v2 = 0;

    require(4 + _callData + 31 < msg.data.length, v2, v2);

    assert(_callData.length <= uint64.max);

    v3 = new uint256[](_callData.length);

    assert(!((v3 + ((_callData.length << 5) + 32) < v3) | (v3 + ((_callData.length << 5) + 32) > uint64.max)));

    v4 = v5 = v3.data;

    v6 = v7 = _callData.data;

    while (v2 < _callData.length) {

        require(4 + _callData + msg.data[v6] + 63 < msg.data.length, v2, v2);

        assert(msg.data[4 + _callData + msg.data[v6] + 32] <= uint64.max);

        v8 = new bytes[](msg.data[4 + _callData + msg.data[v6] + 32]);

        assert(!((v8 + (32 + (~0x1f & 31 + msg.data[4 + _callData + msg.data[v6] + 32])) < v8) | (v8 + (32 + (~0x1f & 31 + msg.data[4 + _callData + msg.data[v6] + 32])) > uint64.max)));

        require(4 + _callData + msg.data[v6] + msg.data[4 + _callData + msg.data[v6] + 32] + 64 <= msg.data.length, v2, v2);

        CALLDATACOPY(v8.data, 4 + _callData + msg.data[v6] + 64, msg.data[4 + _callData + msg.data[v6] + 32]);

        v8[msg.data[4 + _callData + msg.data[v6] + 32]] = v2;

        MEM[v4] = v8;

        v4 += 32;

        v6 += 32;

        v2 += 1;

    }

    require(_subData <= uint64.max, v1, v1);

    v9 = 0;

    require(4 + _subData + 31 < msg.data.length, v9, v9);

    assert(_subData.length <= uint64.max);

    v10 = new uint256[](_subData.length);

    assert(!((v10 + ((_subData.length << 5) + 32) < v10) | (v10 + ((_subData.length << 5) + 32) > uint64.max)));

    v11 = v12 = v10.data;

    v13 = v14 = _subData.data;

    while (v9 < _subData.length) {

        require(4 + _subData + msg.data[v13] + 63 < msg.data.length, v9, v9);

        assert(msg.data[4 + _subData + msg.data[v13] + 32] <= uint64.max);

        v15 = new bytes[](msg.data[4 + _subData + msg.data[v13] + 32]);

        assert(!((v15 + (32 + (~0x1f & 31 + msg.data[4 + _subData + msg.data[v13] + 32])) < v15) | (v15 + (32 + (~0x1f & 31 + msg.data[4 + _subData + msg.data[v13] + 32])) > uint64.max)));

        require(4 + _subData + msg.data[v13] + msg.data[4 + _subData + msg.data[v13] + 32] + 64 <= msg.data.length, v9, v9);

        CALLDATACOPY(v15.data, 4 + _subData + msg.data[v13] + 64, msg.data[4 + _subData + msg.data[v13] + 32]);

        v15[msg.data[4 + _subData + msg.data[v13] + 32]] = v9;

        MEM[v11] = v15;

        v11 += 32;

        v13 += 32;

        v9 += 1;

    }

    require(_paramMapping <= uint64.max, v1, v1);

    require(msg.data.length > 4 + _paramMapping + 31, v1, v1);

    assert(_paramMapping.length <= uint64.max);

    v16 = new uint8[](_paramMapping.length);

    assert(!((v16 + ((_paramMapping.length << 5) + 32) < v16) | (v16 + ((_paramMapping.length << 5) + 32) > uint64.max)));

    v17 = v18 = v16.data;

    v19 = v20 = _paramMapping.data;

    require(msg.data.length >= 32 + (4 + _paramMapping + (_paramMapping.length << 5)), v1, v1);

    while (v0 < _paramMapping.length) {

        require(msg.data[v19] == uint8(msg.data[v19]), v1, v1);

        MEM[v17] = msg.data[v19];

        v0 += 1;

        v17 += 32;

        v19 += 32;

    }

    require(_returnValues <= uint64.max, v1, v1);

    v21 = v22 = 0;

    require(4 + _returnValues + 31 < msg.data.length, v22, v22);

    assert(_returnValues.length <= uint64.max);

    v23 = new uint256[](_returnValues.length);

    assert(!((v23 + ((_returnValues.length << 5) + 32) < v23) | (v23 + ((_returnValues.length << 5) + 32) > uint64.max)));

    v24 = v25 = v23.data;

    v26 = v27 = _returnValues.data;

    require(msg.data.length >= 32 + (4 + _returnValues + (_returnValues.length << 5)), v22, v22);

    while (v21 < _returnValues.length) {

        MEM[v24] = msg.data[v26];

        v24 += 32;

        v26 += 32;

        v21 += 1;

    }

    v28 = 0x63b(v3);

    v29 = v30 = 1263;

    v31 = v32 = v28.word0;

    v33 = v34 = 0;

    assert(v34 < v16.length);

    while (1) {

        if (bool(!uint8(v16[v33]))) {

            // Unknown jump to Block {'0x4efB0x1fb', '0x513B0x1fb'}. Refer to 3-address code (TAC);

        } else {

            v35 = 0xdf3(v16[v33]);

            if (!v35) {

                v36 = 0xe7a(v16[v33]);

                assert(uint8(v36) < v10.length);

                require(32 + v10[uint8(v36)] + MEM[v10[uint8(v36)]] - (32 + v10[uint8(v36)]) >= 32);

                v31 = MEM[32 + v10[uint8(v36)]];

                require(v31 == address(v31));

            } else {

                v37 = 0xe12(v16[v33]);

                assert(uint8(v37) < v23.length);

                v31 = v38 = v23[uint8(v37)] >> 96;

                // Unknown jump to Block {'0x4efB0x1fb', '0x513B0x1fb'}. Refer to 3-address code (TAC);

            }

        }

        // Unknown jump to Block {'0x54aB0x1fb', '0x4efB0x1fb', '0x56dB0x1fb', '0x58fB0x1fb', '0x513B0x1fb'}. Refer to 3-address code (TAC);

        v28.word0 = address(v31);

        v31 = v39 = v28.word1;

        v29 = v40 = 1299;

        v33 = v41 = 1;

        assert(v41 < v16.length);

        v28.word1 = address(v31);

        v31 = v42 = MEM[v28.word2];

        v29 = v43 = 1354;

        v44 = v45 = 2;

        assert(v45 < v16.length);

        if (bool(!uint8(v16[v44]))) {

            // Unknown jump to Block {'0x54aB0x1fb', '0x56dB0x1fb', '0x58fB0x1fb'}. Refer to 3-address code (TAC);

        } else {

            v46 = 0xdf3(v16[v44]);

            if (!v46) {

                v47 = 0xe7a(v16[v44]);

                assert(uint8(v47) < v10.length);

                require(32 + v10[uint8(v47)] + MEM[v10[uint8(v47)]] - (32 + v10[uint8(v47)]) >= 32);

                v31 = v48 = MEM[32 + v10[uint8(v47)]];

            } else {

                v49 = 0xe12(v16[v44]);

                assert(uint8(v49) < v23.length);

                v31 = v50 = v23[uint8(v49)];

                // Unknown jump to Block {'0x54aB0x1fb', '0x56dB0x1fb', '0x58fB0x1fb'}. Refer to 3-address code (TAC);

            }

        }

        MEM[v28.word2] = v31;

        v31 = v51 = MEM[32 + v28.word2];

        v29 = v52 = 1389;

        v44 = v53 = 3;

        assert(v53 < v16.length);

        MEM[32 + v28.word2] = v31;

        v31 = v54 = v28.word3;

        v29 = v55 = 1423;

        v44 = 4;

        assert(v44 < v16.length);

    }

    v28.word3 = v31;

    v56 = 0x671(v28);

    return v56;

}
