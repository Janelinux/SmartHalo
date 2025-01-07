function removeBridge(address bridge) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(msg.sender == _governor, Error('Caller is not the governor'));

    v0 = new bytes[](((!(0x1 & _assetHashes[bridge].length) << 8) - 1 & _assetHashes[bridge].length) >> 1);

    v1 = v2 = v0.data;

    if (((!(0x1 & _assetHashes[bridge].length) << 8) - 1 & _assetHashes[bridge].length) >> 1) {

        if (31 < ((!(0x1 & _assetHashes[bridge].length) << 8) - 1 & _assetHashes[bridge].length) >> 1) {

            v3 = v4 = _assetHashes[bridge].data;

            do {

                MEM[v1] = STORAGE[v3];

                v3 += 1;

                v1 += 32;

            } while (v2 + (((!(0x1 & _assetHashes[bridge].length) << 8) - 1 & _assetHashes[bridge].length) >> 1) <= v1);

        } else {

            MEM[v2] = _assetHashes[bridge].length >> 8 << 8;

        }

    }

    require(v0.length != 0);

    v5 = v6 = v6.data;

    v7 = v8 = v0.length;

    v9 = v10 = v0.data;

    while (v7 >= 32) {

        MEM[v5] = MEM[v9];

        v5 = v5 + 32;

        v9 = v9 + 32;

        v7 = v7 - 32;

    }

    MEM[v5] = MEM[v9] & ~((uint8.max + 1) ** (32 - v7) - 1) | MEM[v5] & (uint8.max + 1) ** (32 - v7) - 1;

    MEM[v8 + v6] = 1;

    require(address(STORAGE[keccak256(v6)]) == bridge);

    v11 = v12 = v12.data;

    v13 = v14 = v0.length;

    v15 = v16 = v0.data;

    while (v13 >= 32) {

        MEM[v11] = MEM[v15];

        v11 = v11 + 32;

        v15 = v15 + 32;

        v13 = v13 - 32;

    }

    MEM[v11] = MEM[v15] & ~((uint8.max + 1) ** (32 - v13) - 1) | MEM[v11] & (uint8.max + 1) ** (32 - v13) - 1;

    MEM[v14 + v12] = 3;

    require(((!(0x1 & STORAGE[keccak256(v12)]) << 8) - 1 & STORAGE[keccak256(v12)]) >> 1 != 0);

    require(bool(bridge.code.size));

    v17, /* uint256 */ v18 = bridge.balanceOf(address(this)).gas(msg.gas);

    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v19 = v20 = v18 == 0;

    if (v18 != 0) {

        require(bool(bridge.code.size));

        v21, /* uint256 */ v22 = bridge.totalSupply().gas(msg.gas);

        require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        v22 = v23.length;

        v19 = v18 == v22;

    }

    require(v19);

    v24 = v23 = v23.data;

    v25 = v26 = v0.length;

    v27 = v28 = v0.data;

    while (v25 >= 32) {

        MEM[v24] = MEM[v27];

        v24 = v24 + 32;

        v27 = v27 + 32;

        v25 = v25 - 32;

    }

    MEM[v24] = MEM[v27] & ~((uint8.max + 1) ** (32 - v25) - 1) | MEM[v24] & (uint8.max + 1) ** (32 - v25) - 1;

    MEM[v26 + v23] = 1;

    STORAGE[keccak256(v23.data, v23)] = bytes12(STORAGE[keccak256(v23.data, v23)]);

    _assetHashes[bridge].length = 0;

    if (31 < ((!(0x1 & _assetHashes[bridge].length) << 8) - 1 & _assetHashes[bridge].length) >> 1) {

        v29 = v30 = _assetHashes[bridge].data;

        while (v30 + (31 + (((!(0x1 & _assetHashes[bridge].length) << 8) - 1 & _assetHashes[bridge].length) >> 1) >> 5) > v29) {

            STORAGE[v29] = 0;

            v29 += 1;

        }

    }

    v31 = v32 = v32.data;

    v33 = v34 = v0.length;

    v35 = v36 = v0.data;

    while (v33 >= 32) {

        MEM[v31] = MEM[v35];

        v31 = v31 + 32;

        v35 = v35 + 32;

        v33 = v33 - 32;

    }

    MEM[v31] = MEM[v35] & ~((uint8.max + 1) ** (32 - v33) - 1) | MEM[v31] & (uint8.max + 1) ** (32 - v33) - 1;

    MEM[v34 + v32] = 3;

    STORAGE[keccak256(v32)] = 0;

    if (31 < ((!(0x1 & STORAGE[keccak256(v32)]) << 8) - 1 & STORAGE[keccak256(v32)]) >> 1) {

        while (v37 + (31 + (((!(0x1 & STORAGE[keccak256(v32)]) << 8) - 1 & STORAGE[keccak256(v32)]) >> 1) >> 5) > v38) {

            STORAGE[v38] = 0;

            v38 += 1;

        }

    }

}
