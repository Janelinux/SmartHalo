function 0x1614() private { 

    v0 = new struct(2);

    v0.word0 = 11;

    v1 = v0.data;

    v0.word1 = 'computation';

    v2 = 0x1b05(_provableGasLimit, v0);

    require(v2 < this.balance, Error('Provable query was NOT sent, please add some ETH to cover for the query fee'));

    v3 = new bytes[](_oracleIpfsHash.length);

    v4 = v5 = v3.data;

    if (_oracleIpfsHash.length) {

        if (31 < _oracleIpfsHash.length) {

            do {

                MEM[v4] = STORAGE[v6];

                v6 += 1;

                v4 += 32;

            } while (v5 + _oracleIpfsHash.length <= v4);

        } else {

            MEM[v5] = _oracleIpfsHash.length >> 8 << 8;

        }

    }

    v7 = 0x9ca(_lotteryGame);

    v8 = v9 = stor_98_0_19 == 0;

    if (stor_98_0_19 != 0) {

        v8 = v10 = stor_98_0_19.code.size == 0;

    }

    if (v8) {

        v11 = 0x2b3d(0);

    }

    require(stor_98_0_19.code.size);

    v12, v13 = stor_98_0_19.getAddress().gas(msg.gas);

    require(v12); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    0x4a81(v13);

    if (owner_97_0_19 != address(v13)) {

        require(stor_98_0_19.code.size);

        v14, v15 = stor_98_0_19.getAddress().gas(msg.gas);

        require(v14); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x4a81(v15);

        owner_97_0_19 = v15;

    }

    v16 = v17 = 2;

    v18 = new struct(3);

    v18.word0 = v17;

    if (v17) {

        v19 = v20 = v18.data;

        do {

            MEM[v19] = 96;

            v19 += 32;

            v16 = v16 - 1;

        } while (!v16);

    }

    assert(0 < v18.word0);

    v21 = v18.data;

    v18.word1 = v3;

    assert(1 < v18.word0);

    v18.word2 = v7;

    v22 = v23 = stor_98_0_19 == 0;

    if (stor_98_0_19 != 0) {

        v22 = stor_98_0_19.code.size == 0;

    }

    if (v22) {

        v24 = 0x2b3d(0);

    }

    require(stor_98_0_19.code.size);

    v25, v26 = stor_98_0_19.getAddress().gas(msg.gas);

    require(v25); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    0x4a81(v26);

    if (owner_97_0_19 != address(v26)) {

        require(stor_98_0_19.code.size);

        v27, v28 = stor_98_0_19.getAddress().gas(msg.gas);

        require(v27); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x4a81(v28);

        owner_97_0_19 = v28;

    }

    v29 = new array[](v30.length);

    v31 = v32 = 0;

    while (v31 < v30.length) {

        v29[v31] = v30[v31];

        v31 = v31 + 32;

    }

    if (v31 > v30.length) {

        v29[v30.length] = 0;

    }

    require(owner_97_0_19.code.size);

    v33, v34 = owner_97_0_19.getPrice(v29, _provableGasLimit, v35, 'computation').gas(msg.gas);

    require(v33); // checks call status, propagates error data on error

    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    0x4ac6(v34);

    if (v34 <= 0xde0b6b3a7640000 + msg.gas * _provableGasLimit) {

        v36, v37, v38, v39 = 0x3834(v18);

        v40 = new array[](MEM[0]);

        v41 = v42 = 0;

        while (v41 < MEM[0]) {

            v40[v41] = MEM[32 + v41];

            v41 = v41 + 32;

        }

        if (v41 > MEM[0]) {

            v40[MEM[0]] = 0;

        }

        v40[MEM[0] + 31 & ~0x1f] = MEM[v36];

        v43 = v44 = 0;

        while (v43 < MEM[v36]) {

            v45[v43] = MEM[v36 + 32 + v43];

            v43 = v43 + 32;

        }

        if (v43 > MEM[v36]) {

            v45[MEM[v36]] = 0;

        }

        require(owner_97_0_19.code.size);

        v46, v47 = owner_97_0_19.queryN_withGasLimit(_provableGasLimit, v40, v40.data + (MEM[0] + 31 & ~0x1f), 96).value(v38).gas(msg.gas);

        require(v46); // checks call status, propagates error data on error

        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x4aaf(v47);

    } else {

        v47 = v48 = 0;

    }

    return v47, v49;

}
