function swapTokensForExactETH(uint256 varg0, uint256 varg1, address[] varg2, address varg3, uint256 varg4, address varg5, bytes varg6) public nonPayable { 

    require(msg.data.length - 4 >= 224);

    require(varg2 <= 0xffffffffffffffff);

    require(4 + varg2 + 31 < msg.data.length);

    require(varg2.length <= 0xffffffffffffffff);

    v0 = v1 = 4 + varg2 + 32;

    require(4 + varg2 + (varg2.length << 5) + 32 <= msg.data.length);

    require(varg3 == varg3);

    require(varg5 == varg5);

    require(varg6 <= 0xffffffffffffffff);

    require(4 + varg6 + 31 < msg.data.length);

    require(varg6.length <= 0xffffffffffffffff);

    require(4 + varg6 + varg6.length + 32 <= msg.data.length);

    require(0xff & _routers[varg5], Error('Router not accepted'));

    require(varg2.length >= 1, Panic(17));

    require(varg2.length - 1 < varg2.length, Panic(50));

    require((varg2.length - 1 << 5) + v1 + 32 - ((varg2.length - 1 << 5) + v1) >= 32);

    require(varg2[varg2.length - 1 << 5] == address(varg2[varg2.length - 1 << 5]));

    require(address(varg2[varg2.length - 1 << 5]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Error('UniswapV2Router: INVALID_PATH'));

    v2 = new array[](varg2.length);

    v3 = v2.data;

    v4 = 0;

    while (v4 < varg2.length) {

        require(msg.data[v0] == address(msg.data[v0]));

        MEM[v3] = address(msg.data[v0]);

        v3 += 32;

        v0 += 32;

        v4 += 1;

    }

    require(varg5.code.size);

    v5, v6 = varg5.fullExit(varg0, v2).gas(msg.gas);

    require(v5); // checks call status, propagates error data on error

    RETURNDATACOPY(v6, 0, RETURNDATASIZE());

    MEM[64] = v6 + (~0x1f & RETURNDATASIZE() + 31);

    require(v6 + RETURNDATASIZE() - v6 >= 32);

    require(MEM[v6] <= 0xffffffffffffffff);

    require(v6 + MEM[v6] + 31 < v6 + RETURNDATASIZE());

    require(MEM[v6 + MEM[v6]] <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + ((MEM[v6 + MEM[v6]] << 5) + 63 & ~0x1f) > 0xffffffffffffffff) | (MEM[64] + ((MEM[v6 + MEM[v6]] << 5) + 63 & ~0x1f) < MEM[64])), Panic(65));

    MEM[64] = MEM[64] + ((MEM[v6 + MEM[v6]] << 5) + 63 & ~0x1f);

    v7 = v8 = MEM[64] + 32;

    v9 = v10 = 32 + (v6 + MEM[v6]);

    require(v6 + RETURNDATASIZE() >= 32 + (v6 + MEM[v6] + (MEM[v6 + MEM[v6]] << 5)));

    v11 = v12 = 0;

    while (v11 < MEM[v6 + MEM[v6]]) {

        MEM[v7] = MEM[v9];

        v11 += 1;

        v7 += 32;

        v9 += 32;

    }

    require(0 < MEM[v6 + MEM[v6]], Panic(50));

    require(MEM[32 + MEM[64]] <= varg1, Error('UniswapV2Router: EXCESSIVE_INPUT_AMOUNT'));

    require(0 < varg2.length, Panic(50));

    require(0 + v1 + 32 - (0 + v1) >= 32);

    require(varg2[0] == address(varg2[0]));

    require(0 < MEM[v6 + MEM[v6]], Panic(50));

    MEM[MEM[64] + 68] = address(this);

    MEM[MEM[64] + 100] = MEM[32 + MEM[64]];

    MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff & msg.sender;

    v13 = v14 = 0;

    while (v13 < 100) {

        MEM[v13 + MEM[64]] = MEM[32 + (MEM[64] + v13)];

        v13 += 32;

    }

    if (v13 > 100) {

        MEM[MEM[64] + 100] = 0;

    }

    v15 = v16, v17, v18 = address(varg2[0]).call(MEM[(MEM[64]) len 100], MEM[(MEM[64]) len 0]).gas(msg.gas);

    if (RETURNDATASIZE() == 0) {

        v19 = 96;

    } else {

        v19 = v20 = new bytes[](RETURNDATASIZE());

        RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());

    }

    if (v16) {

        v15 = v21 = !MEM[v19];

        if (MEM[v19]) {

            require(32 + v19 + MEM[v19] - (32 + v19) >= 32);

            v15 = MEM[32 + v19];

            require(v15 == v15);

            goto 0x15630xc4dB0x2db;

        }

    }

    require(v15, Error('TransferHelper: TRANSFER_FROM_FAILED', 'TransferHelper: TRANSFER_FROM_FAILED'));

    require(0 < varg2.length, Panic(50));

    require(0 + v1 + 32 - (0 + v1) >= 32);

    require(varg2[0] == address(varg2[0]));

    require(0 < MEM[v6 + MEM[v6]], Panic(50));

    require((address(varg2[0])).code.size);

    v22, v23 = address(varg2[0]).allowance(this, varg5).gas(msg.gas);

    require(v22); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    if (v23 < MEM[32 + MEM[64]]) {

        require((address(varg2[0])).code.size);

        v24, v25 = address(varg2[0]).approve(varg5, ~0).gas(msg.gas);

        require(v24); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v25 == v25);

    }

    v26 = new array[](varg2.length);

    v27 = v26.data;

    v28 = 0;

    while (v28 < varg2.length) {

        require(msg.data[v0] == address(msg.data[v0]));

        MEM[v27] = address(msg.data[v0]);

        v27 += 32;

        v0 += 32;

        v28 += 1;

    }

    require(varg5.code.size);

    v29, v30 = varg5.swapTokensForExactETH(varg0, varg1, v26, varg3, varg4).gas(msg.gas);

    require(v29); // checks call status, propagates error data on error

    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());

    MEM[64] = MEM[64] + (~0x1f & RETURNDATASIZE() + 31);

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(MEM[MEM[64]] <= 0xffffffffffffffff);

    require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());

    require(MEM[MEM[64] + MEM[MEM[64]]] <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + ((MEM[MEM[64] + MEM[MEM[64]]] << 5) + 63 & ~0x1f) > 0xffffffffffffffff) | (MEM[64] + ((MEM[MEM[64] + MEM[MEM[64]]] << 5) + 63 & ~0x1f) < MEM[64])), Panic(65));

    MEM[64] = MEM[64] + ((MEM[MEM[64] + MEM[MEM[64]]] << 5) + 63 & ~0x1f);

    MEM[MEM[64]] = MEM[MEM[64] + MEM[MEM[64]]];

    v31 = v32 = MEM[64] + 32;

    v33 = v34 = 32 + (MEM[64] + MEM[MEM[64]]);

    require(MEM[64] + RETURNDATASIZE() >= 32 + (MEM[64] + MEM[MEM[64]] + (MEM[MEM[64] + MEM[MEM[64]]] << 5)));

    v35 = v36 = 0;

    while (v35 < MEM[MEM[64] + MEM[MEM[64]]]) {

        MEM[v31] = MEM[v33];

        v35 += 1;

        v31 += 32;

        v33 += 32;

    }

    if (varg6.length <= 8) {

        emit EventMessage('Non Profit Txn');

    } else {

        v37 = new array[](varg6.length);

        v37[varg6.length] = 0;

        require(_wchainMaster.code.size);

        v38 = _wchainMaster.call(0x7f8ddf59, v37, msg.sender, _dexAgent, _exchangeProfitShare).gas(msg.gas);

        if (v38) {

            v38 = v39 = 1;

        }

        if (!v38) {

            emit EventMessage('Profit Capturing Error');

        }

    }

    v40 = new array[](MEM[v6 + MEM[v6]]);

    v41 = v42 = 0;

    v43 = v44 = 32 + MEM[64];

    v45 = v46 = v40.data;

    while (v41 < MEM[v6 + MEM[v6]]) {

        MEM[v45] = MEM[v43];

        v43 += 32;

        v45 += 32;

        v41 += 1;

    }

    return v40, v47, 'Non Profit Txn';

}
