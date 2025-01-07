function cloneAndInit(address varg0, address varg1, string varg2, string varg3, address varg4, address varg5, string varg6, string varg7) public payable { 

    require(msg.data.length - 4 >= 256);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 <= 0xffffffffffffffff);

    require(4 + varg2 + 31 < msg.data.length);

    require(varg2.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg2.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg2.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg2 + varg2.length + 32 <= msg.data.length);

    CALLDATACOPY(v0.data, 4 + varg2 + 32, varg2.length);

    v0[varg2.length] = 0;

    require(varg3 <= 0xffffffffffffffff);

    require(4 + varg3 + 31 < msg.data.length);

    require(varg3.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg3.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg3.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg3 + varg3.length + 32 <= msg.data.length);

    CALLDATACOPY(v1.data, 4 + varg3 + 32, varg3.length);

    v1[varg3.length] = 0;

    require(varg4 == varg4);

    require(varg5 == varg5);

    require(varg6 <= 0xffffffffffffffff);

    require(4 + varg6 + 31 < msg.data.length);

    require(varg6.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg6.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg6.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg6 + varg6.length + 32 <= msg.data.length);

    CALLDATACOPY(v2.data, 4 + varg6 + 32, varg6.length);

    v2[varg6.length] = 0;

    require(varg7 <= 0xffffffffffffffff);

    require(4 + varg7 + 31 < msg.data.length);

    require(varg7.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg7.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg7.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg7 + varg7.length + 32 <= msg.data.length);

    CALLDATACOPY(v3.data, 4 + varg7 + 32, varg7.length);

    v3[varg7.length] = 0;

    v4 = new array[](v4.data + v0.length + v1.length + 40 - MEM[64] - 32);

    MEM[v4.data] = varg1 << 96 & ~0xffffffffffffffffffffffff;

    v5 = v6 = 0;

    while (v5 < v0.length) {

        MEM[v5 + (v4.data + 20)] = v0[v5];

        v5 += 32;

    }

    if (v5 > v0.length) {

        MEM[v4.data + 20 + v0.length] = 0;

    }

    v7 = v8 = 0;

    while (v7 < v1.length) {

        MEM[v7 + (v4.data + v0.length + 20)] = v1[v7];

        v7 += 32;

    }

    if (v7 > v1.length) {

        MEM[v4.data + v0.length + 20 + v1.length] = 0;

    }

    MEM[v4.data + v0.length + v1.length + 20] = varg4 << 96 & ~0xffffffffffffffffffffffff;

    v9 = v10.length;

    v11 = v4.data;

    MEM[MEM[64]] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000;

    MEM[MEM[64] + 20] = _vaultImpl << 96;

    MEM[MEM[64] + 40] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000;

    v12 = CREATE2(0, MEM[64], 55, keccak256(~0xffffffffffffffffffffffff & varg0 << 96, keccak256(v4)));

    require(address(v12), Error('ERC1167: create2 failed', 23));

    v13 = new array[](varg0);

    MEM[v13.data] = _vaultImpl;

    emit VaultDeployed(varg0, varg0);

    v14 = new array[](v0.length);

    v15 = v16 = 0;

    while (v15 < v0.length) {

        v14[v15] = v0[v15];

        v15 += 32;

    }

    if (v15 > v0.length) {

        v14[v0.length] = 0;

    }

    v17 = new array[](v1.length);

    v14[~0x1f & 31 + v0.length] = v1.length;

    v18 = v19 = 0;

    while (v18 < v1.length) {

        MEM[v18 + v17.data] = v1[v18];

        v18 += 32;

    }

    if (v18 > v1.length) {

        MEM[v17.data + v1.length] = 0;

    }

    require((address(v12)).code.size);

    v20 = address(v12).init(varg0, address(this), v14, v17, varg4).gas(msg.gas);

    require(v20); // checks call status, propagates error data on error

    v21 = new array[](20 + (v3.length + (v21.data + v2.length)) - MEM[64] - 32);

    MEM[v21.data] = varg5 << 96 & ~0xffffffffffffffffffffffff;

    v22 = v23 = 0;

    while (v22 < v2.length) {

        MEM[v22 + (v21.data + 20)] = v2[v22];

        v22 += 32;

    }

    if (v22 > v2.length) {

        MEM[v21.data + 20 + v2.length] = 0;

    }

    v24 = v25 = 0;

    while (v24 < v3.length) {

        MEM[v24 + (v21.data + v2.length + 20)] = v3[v24];

        v24 += 32;

    }

    if (v24 > v3.length) {

        MEM[v21.data + v2.length + 20 + v3.length] = 0;

    }

    v26 = v27.length;

    v28 = v21.data;

    MEM[MEM[64]] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000;

    MEM[MEM[64] + 20] = _gaugeImpl << 96;

    MEM[MEM[64] + 40] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000;

    require(address(CREATE2(0x0, MEM[64], 0x37, keccak256(~0xffffffffffffffffffffffff & v12 << 96, keccak256(v21)))), Error('ERC1167: create2 failed', 23));

    v29 = new array[](address(v12));

    MEM[v29.data] = _gaugeImpl;

    emit GaugeDeployed(address(v12), address(v12));

    v30 = new array[](v2.length);

    v31 = v32 = 0;

    while (v31 < v2.length) {

        v30[v31] = v2[v31];

        v31 += 32;

    }

    if (v31 > v2.length) {

        v30[v2.length] = 0;

    }

    v33 = new array[](v3.length);

    v30[~0x1f & 31 + v2.length] = v3.length;

    v34 = v35 = 0;

    while (v34 < v3.length) {

        MEM[v34 + v33.data] = v3[v34];

        v34 += 32;

    }

    if (v34 > v3.length) {

        MEM[v33.data + v3.length] = 0;

    }

    require((address(CREATE2(0x0, MEM[64], 0x37, keccak256(~0xffffffffffffffffffffffff & v12 << 96, keccak256(v21))))).code.size);

    v36 = address(CREATE2(0x0, MEM[64], 0x37, keccak256(~0xffffffffffffffffffffffff & v12 << 96, keccak256(v21)))).init(address(v12), address(v12), varg5, v30, v33).gas(msg.gas);

    require(v36); // checks call status, propagates error data on error

    require((address(v12)).code.size);

    v37 = address(v12).setGaugeMultiRewards(address(CREATE2(0x0, MEM[64], 0x37, keccak256(~0xffffffffffffffffffffffff & v12 << 96, keccak256(v21))))).gas(msg.gas);

    require(v37); // checks call status, propagates error data on error

    require((address(v12)).code.size);

    v38 = address(v12).setGovernance(varg1).gas(msg.gas);

    require(v38); // checks call status, propagates error data on error

}
