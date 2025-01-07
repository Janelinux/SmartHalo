function unlockAndMigrate(address _newPool, uint256[] _ids, bytes _data) public payable { 

    require(msg.data.length - 4 >= 96);

    require(_ids <= uint32.max + 1);

    require(_ids.data <= 4 + (msg.data.length - 4));

    require(!((_ids.length > uint32.max + 1) | (_ids.data + (_ids.length << 5) > 4 + (msg.data.length - 4))));

    require(_data <= uint32.max + 1);

    require(_data.data <= 4 + (msg.data.length - 4));

    require(!((_data.length > uint32.max + 1) | (_data.data + _data.length > 4 + (msg.data.length - 4))));

    v0 = v1 = 0;

    v2 = v3 = 0;

    require(bool((address(0xae9aca5d20f5b139931935378c4489308394ca2c)).code.size));

    v4, v5 = address(0xae9aca5d20f5b139931935378c4489308394ca2c).isSwapStarted().gas(msg.gas);

    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v6 = v7 = 0;

    while (v6 < _ids.length) {

        assert(v6 < _ids.length);

        MEM[MEM[64]] = uint8(0);

        MEM[32 + MEM[64]] = uint120(0);

        MEM[64 + MEM[64]] = uint32(0);

        MEM[96 + MEM[64]] = uint32(0);

        MEM[128 + MEM[64]] = uint32(0);

        MEM[160 + MEM[64]] = uint32(0);

        v8 = msg.sender;

        v9 = new struct(6);

        v9.word0 = _locks[v8][_ids[v6]].field0_0_0;

        v9.word1 = _locks[v8][_ids[v6]].field0_1_15;

        v9.word2 = _locks[v8][_ids[v6]].field0_16_19;

        v9.word3 = _locks[v8][_ids[v6]].field0_20_23;

        v9.word4 = _locks[v8][_ids[v6]].field0_24_27;

        v9.word5 = _locks[v8][_ids[v6]].field0_28_31;

        require(uint32(v9.word5) == 0, Error('DepositAlreadyWithdrawn'));

        require(block.timestamp >= uint32(v9.word3), Error('DepositLocked'));

        if (uint120(v9.word1) != 0) {

            _locks[msg.sender][_ids[v6]].field0_28_31 = block.timestamp;

            v10 = v11 = 0x24b7(uint32(v9.word4), uint120(v9.word1));

            v10 = uint120(v9.word1);

            v2 = v12 = uint8(v9.word0);

        } else {

            v10 = v13 = 0;

            v2 = v14 = 0;

        }

        if (v10 != 0) {

            if (v2 != 0) {

                if (v2 != v2) {

                    v15 = v16 = v2 == uint8(4);

                    if (v16) {

                        v15 = v2 == uint8(2);

                    }

                    require(v15, Error('batch unlock possible only for the same tokens'));

                }

            } else {

                if (v2 != uint8(4)) {

                    if (v2 != uint8(2)) {

                        if (v2 != uint8(1)) {

                            v0 = v17 = 0;

                            // Unknown jump to Block 0x595aB0x46e6B0x3008. Refer to 3-address code (TAC);

                        } else {

                            v0 = v18 = 0x6fc13eace26590b80cccab1ba5d51890577d83b2;

                        }

                    } else {

                        v0 = v19 = 0x1b17dbb40fbed8735e7fe8c9eb02c20984fadfd6;

                    }

                } else {

                    v0 = v20 = 0xae9aca5d20f5b139931935378c4489308394ca2c;

                }

                v5 = v21 = address(v0) == address(0x1b17dbb40fbed8735e7fe8c9eb02c20984fadfd6);

                if (v5) {

                    v0 = v22 = 0xae9aca5d20f5b139931935378c4489308394ca2c;

                    v2 = v23 = uint8(4);

                }

            }

            assert(v6 < _ids.length);

            emit UnlockedTokens(msg.sender, address(v0), _ids[v6], v10);

            v0 = v0 + v10;

            v2 = v2 + v10;

        }

        v6 += 1;

    }

    require(v0 != 0, Error('nothing to unlock'));

    0x595f(v2, v0, _newPool, v0, msg.sender);

    v24 = new bytes[](_data.length);

    CALLDATACOPY(v24.data, _data.data, _data.length);

    v24[_data.length] = 0;

    require(bool(_newPool.code.size));

    v25 = _newPool.call(uint32(0x3f2bd924), address(v0), msg.sender, v0, v24).gas(msg.gas);

    require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

}
