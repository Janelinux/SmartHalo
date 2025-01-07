function 0xba53e9f2(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    v0 = 4 + varg0;

    require(msg.data.length - v0 >= 256);

    0x4985();

    0x4cbc(0, msg.data[128 + v0]);

    v1, v2 = address(0x65d66c76447ccb45daf1e8044e918fa786a483a1).getTwap(address(0x8ad599c3a0ff1de082011efddc58f1908eb6e6d8), address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48), uint32(_isAuctionLive >> 168), bool(1)).gas(msg.gas);

    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    v3 = _SafeSub(0xde0b6b3a7640000, _otcPriceTolerance);

    v4 = _SafeMul(varg0.length, v3);

    v5 = _SafeMul(0xe8d4a51000, v4);

    require(v2, Panic(18)); // division by zero

    require(v5 / v2 < msg.data[varg0.data], Error(0x4e31310000000000000000000000000000000000000000000000000000000000));

    v6, v7 = address(0x3b960e47784150f5a63777201ee2b15253d713e8).balanceOf(this).gas(msg.gas);

    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    v8 = 0x54cc();

    v9, /* address */ v10, v11, v12, v13 = address(0x3b960e47784150f5a63777201ee2b15253d713e8).getVaultDetails().gas(msg.gas);

    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 128);

    require(v10 == address(v10));

    v14 = _SafeMul(v13, v8);

    require(0xde0b6b3a7640000, Panic(18)); // division by zero

    v15 = _SafeAdd(v12, v14 / 0xde0b6b3a7640000);

    v16 = _SafeMul(msg.data[v0 + 64], v13);

    require(v15, Panic(18)); // division by zero

    v17 = v16 / v15;

    v18 = v19 = 0;

    while (1) {

        require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

        require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

        require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

        if (v18 < msg.data[v0 + msg.data[v0 + 96]]) {

            require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

            require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

            require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

            require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            require(128 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (128 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

            require(msg.data[128 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))] == bool(msg.data[128 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))]));

            require(msg.data[128 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))], Error(0x4e31320000000000000000000000000000000000000000000000000000000000));

            require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

            require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

            require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

            require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            require(msg.data[96 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))] >= msg.data[v0 + 128], Error(0x4e31330000000000000000000000000000000000000000000000000000000000));

            require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

            require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

            require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

            require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v20 = 320 * v18 + (32 + (v0 + msg.data[v0 + 96]));

            require(v20 + (msg.data.length - v20) - v20 >= 320);

            require(!((MEM[64] + 320 < MEM[64]) | (MEM[64] + 320 > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

            require(msg.data[v20 + 32] == address(msg.data[v20 + 32]));

            require(msg.data[v20 + 128] == bool(msg.data[v20 + 128]));

            require(msg.data[v20 + 224] == uint8(msg.data[v20 + 224]));

            v21 = keccak256(0xc8aea8e60353611f3ed5409dad2d3173390bd252431198e7300eda67fefb66b1, msg.data[v20], address(msg.data[v20 + 32]), msg.data[v20 + 64], msg.data[v20 + 96], bool(msg.data[v20 + 128]), msg.data[v20 + 160], msg.data[v20 + 192]);

            v22 = 0x49df();

            if (msg.data[288 + v20] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0) {

                v23 = ecrecover(keccak256(6401, v22, v21), uint8(msg.data[v20 + 224]), msg.data[256 + v20], msg.data[288 + v20]);

                MEM[MEM[64]] = 0;

                require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v24 = v25 = MEM[~31 + MEM[64]];

                if (address(v25)) {

                    v26 = v27 = 0;

                } else {

                    v24 = v28 = 0;

                    v26 = v29 = 1;

                }

            } else {

                v24 = 0;

                v26 = 3;

            }

            require(v26 <= 4, Panic(33)); // failed convertion to enum type

            if (v26 - 0) {

                require(v26 <= 4, Panic(33)); // failed convertion to enum type

                require(v26 - 1, Error('ECDSA: invalid signature'));

                require(v26 <= 4, Panic(33)); // failed convertion to enum type

                require(v26 - 2, Error('ECDSA: invalid signature length'));

                require(v26 <= 4, Panic(33)); // failed convertion to enum type

                require(v26 - 3, Error("ECDSA: invalid signature 's' value"));

                goto 0x54c2B0x4bc20x801;

            }

            require(address(v24) == address(msg.data[v20 + 32]), Error(0x4e39000000000000000000000000000000000000000000000000000000000000));

            require(msg.data[v20 + 160] >= block.timestamp, Error(0x4e31300000000000000000000000000000000000000000000000000000000000));

            require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

            require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

            require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

            require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            require(32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

            require(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))] == address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))]));

            require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

            require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

            require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

            require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v30 = msg.data[192 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))];

            require(!uint8(_nonces[address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))])][v30]), Error(0x4e32300000000000000000000000000000000000000000000000000000000000));

            _nonces[address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))])][v30] = 0x1 | bytes31(_nonces[address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))])][v30]);

            require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

            require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

            require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

            require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            if (msg.data[64 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))] < v17) {

                require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

                require(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))] == address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))]));

                require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v31 = _SafeMul(msg.data[64 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))], msg.data[v0 + 128]);

                require(0xde0b6b3a7640000, Panic(18)); // division by zero

                MEM[MEM[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;

                MEM[4 + MEM[64]] = address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))]);

                MEM[4 + MEM[64] + 32] = address(this);

                MEM[4 + MEM[64] + 64] = v31 / 0xde0b6b3a7640000;

                v32 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(v33, uint8(msg.data[v20 + 224]), msg.data[256 + v20]).gas(msg.gas);

                require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(MEM[MEM[64]] == bool(MEM[MEM[64]]));

                require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v17 = _SafeSub(v17, msg.data[64 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))]);

                v18 = 0x5baa(v18);

            } else {

                require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                require(v18 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

                require(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))] == address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))]));

                v34 = _SafeMul(v17, msg.data[v0 + 128]);

                require(0xde0b6b3a7640000, Panic(18)); // division by zero

                v35, /* bool */ v36 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transferFrom(address(msg.data[32 + (320 * v18 + (32 + (v0 + msg.data[v0 + 96])))]), address(this), v34 / 0xde0b6b3a7640000).gas(msg.gas);

                require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v36 == bool(v36));

                v17 = v37 = 0;

            }

        }

        require(!v17, Error(0x4e31340000000000000000000000000000000000000000000000000000000000));

        MEM[64] = MEM[64] + 256;

        require(v0 + 224 - (v0 + 192) >= 32);

        require(msg.data[v0 + 192] == uint24(msg.data[v0 + 192]));

        v38, v39 = address(0xe592427a0aece92de3edee1f18e0157c05861564).exactInputSingle(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48), address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), uint24(msg.data[v0 + 192]), address(this), block.timestamp, msg.data[0 + v0], msg.data[varg0.data], address(0x0)).gas(msg.gas);

        require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v40, v41 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);

        require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));

        v42 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v41).gas(msg.gas);

        require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(bool((address(0x3b960e47784150f5a63777201ee2b15253d713e8)).code.size));

        v43 = address(0x3b960e47784150f5a63777201ee2b15253d713e8).deposit().value(msg.data[64 + v0]).gas(msg.gas);

        require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        MEM[MEM[64]] = 0;

        MEM[32 + MEM[64]] = 0;

        MEM[64 + MEM[64]] = 0;

        v44 = _SafeSub(this.balance, this.balance);

        v45 = v46 = bool(v44);

        if (v44) {

            v45 = v47 = msg.data[160 + v0] > 0;

        }

        if (v45) {

            if (v44 <= msg.data[160 + v0]) {

                require(v0 + 256 - (v0 + 224) >= 32);

                require(msg.data[v0 + 224] == uint24(msg.data[v0 + 224]));

                require(bool((address(0x3b960e47784150f5a63777201ee2b15253d713e8)).code.size));

                v48 = address(0x3b960e47784150f5a63777201ee2b15253d713e8).flashDeposit(msg.data[v0 + 160], uint24(msg.data[v0 + 224])).value(v44).gas(msg.gas);

                require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

        }

        v49, v50 = address(0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b).balanceOf(this).gas(msg.gas);

        require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        MEM[MEM[64] + 64] = v50;

        v51 = v52 = 0;

        while (1) {

            require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

            require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

            require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

            if (v51 < msg.data[v0 + msg.data[v0 + 96]]) {

                require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                if (msg.data[64 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))] >= v50) {

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    require(32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

                    require(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))] == address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]));

                    v53, /* bool */ v54 = address(0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b).transfer(address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]), v50).gas(msg.gas);

                    require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v54 == bool(v54));

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    require(32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

                    require(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))] == address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]));

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    emit BidTraded(msg.data[320 * v51 + (32 + (v0 + msg.data[v0 + 96]))], address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]), v50, msg.data[v0 + 128], 1);

                } else {

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    require(32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

                    require(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))] == address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]));

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v55, /* bool */ v56 = address(0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b).transfer(address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]), msg.data[64 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]).gas(msg.gas);

                    require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v56 == bool(v56));

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v50 = _SafeSub(v50, msg.data[64 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]);

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    require(32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96]))) + 32 - (32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))) >= 32);

                    require(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))] == address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]));

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    require(msg.data[v0 + 96] < msg.data.length - v0 + ~30);

                    require(msg.data[v0 + msg.data[v0 + 96]] <= 0xffffffffffffffff);

                    require(32 + (v0 + msg.data[v0 + 96]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 96]] * 320);

                    require(v51 < msg.data[v0 + msg.data[v0 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    emit BidTraded(msg.data[320 * v51 + (32 + (v0 + msg.data[v0 + 96]))], address(msg.data[32 + (320 * v51 + (32 + (v0 + msg.data[v0 + 96])))]), msg.data[64 + (v51 * 320 + (32 + (v0 + msg.data[v0 + 96])))], msg.data[v0 + 128], 1);

                    v51 = 0x5baa(v51);

                }

            }

            v57 = v58 = _depositsIndex;

            v59 = v60 = varg0.length;

            v61, v62 = address(0x3b960e47784150f5a63777201ee2b15253d713e8).balanceOf(this).gas(msg.gas);

            require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            v63 = _SafeSub(v62, v7);

            v64 = _SafeSub(this.balance, this.balance);

            require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));

            v65 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v64).gas(msg.gas);

            require(bool(v65), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            while (v59) {

                require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                MEM[64] += 96;

                MEM[MEM[64]] = 0;

                MEM[32 + MEM[64]] = 0;

                MEM[64 + MEM[64]] = 0;

                if (0 - _depositsQueued[v57].field1) {

                    if (_depositsQueued[v57].field1 > v59) {

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        v66 = _SafeSub(_usdBalance[address(_depositsQueued[v57].field0)], v59);

                        _usdBalance[address(_depositsQueued[v57].field0)] = v66;

                        v67 = _SafeMul(v59, v63);

                        require(varg0.length, Panic(18)); // division by zero

                        MEM[MEM[64]] = v67 / varg0.length;

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        MEM[MEM[64]] = bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);

                        MEM[4 + MEM[64]] = address(_depositsQueued[v57].field0);

                        MEM[4 + MEM[64] + 32] = MEM[MEM[64]];

                        v68 = address(0x3b960e47784150f5a63777201ee2b15253d713e8).call(MEM[(MEM[64]) len (68 + MEM[64] - MEM[64])], MEM[(MEM[64]) len 32]).gas(msg.gas);

                        require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                        require(MEM[MEM[64]] == bool(MEM[MEM[64]]));

                        v69 = _SafeMul(v59, v64);

                        require(varg0.length, Panic(18)); // division by zero

                        MEM[MEM[64] + 32] = v69 / varg0.length;

                        if (0xe8d4a51000 >= v69 / varg0.length) {

                            MEM[MEM[64] + 32] = 0;

                        } else {

                            require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                            MEM[MEM[64]] = bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);

                            MEM[4 + MEM[64]] = address(_depositsQueued[v57].field0);

                            MEM[4 + MEM[64] + 32] = MEM[MEM[64] + 32];

                            v70 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(MEM[(MEM[64]) len (68 + MEM[64] - MEM[64])], MEM[(MEM[64]) len 32]).gas(msg.gas);

                            require(bool(v70), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                            require(MEM[MEM[64]] == bool(MEM[MEM[64]]));

                        }

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        emit USDCDeposited(address(_depositsQueued[v57].field0), v57, v59, MEM[MEM[64]], MEM[32 + MEM[64]]);

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        v71 = _SafeSub(_depositsQueued[v57].field1, v59);

                        _depositsQueued[v57].field1 = v71;

                        v59 = v72 = 0;

                    } else {

                        v59 = _SafeSub(v59, _depositsQueued[v57].field1);

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        v73 = _SafeSub(_usdBalance[address(_depositsQueued[v57].field0)], _depositsQueued[v57].field1);

                        _usdBalance[address(_depositsQueued[v57].field0)] = v73;

                        v74 = _SafeMul(_depositsQueued[v57].field1, v63);

                        require(varg0.length, Panic(18)); // division by zero

                        MEM[MEM[64]] = v74 / varg0.length;

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        MEM[MEM[64]] = bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);

                        MEM[4 + MEM[64]] = address(_depositsQueued[v57].field0);

                        MEM[4 + MEM[64] + 32] = MEM[MEM[64]];

                        v75 = address(0x3b960e47784150f5a63777201ee2b15253d713e8).call(MEM[(MEM[64]) len (68 + MEM[64] - MEM[64])], MEM[(MEM[64]) len 32]).gas(msg.gas);

                        require(bool(v75), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                        require(MEM[MEM[64]] == bool(MEM[MEM[64]]));

                        v76 = _SafeMul(_depositsQueued[v57].field1, v64);

                        require(varg0.length, Panic(18)); // division by zero

                        MEM[MEM[64] + 32] = v76 / varg0.length;

                        if (0xe8d4a51000 >= v76 / varg0.length) {

                            MEM[MEM[64] + 32] = 0;

                        } else {

                            require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                            MEM[MEM[64]] = bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);

                            MEM[4 + MEM[64]] = address(_depositsQueued[v57].field0);

                            MEM[4 + MEM[64] + 32] = MEM[MEM[64] + 32];

                            v77 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(MEM[(MEM[64]) len (68 + MEM[64] - MEM[64])], MEM[(MEM[64]) len 32]).gas(msg.gas);

                            require(bool(v77), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                            require(MEM[MEM[64]] == bool(MEM[MEM[64]]));

                        }

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        emit USDCDeposited(address(_depositsQueued[v57].field0), v57, _depositsQueued[v57].field1, MEM[MEM[64]], MEM[32 + MEM[64]]);

                        require(v57 < _depositsQueued.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        _depositsQueued[v57].field0 = bytes12(_depositsQueued[v57].field0);

                        _depositsQueued[v57].field1 = 0;

                        _depositsQueued[v57].field2 = 0;

                        v57 = 0x5baa(v57);

                    }

                } else {

                    v57 = 0x5baa(v57);

                }

            }

            _depositsIndex = v57;

            _isAuctionLive = ~0xff0000000000000000000000000000000000000000 & _isAuctionLive;

            exit;

        }

    }

}
