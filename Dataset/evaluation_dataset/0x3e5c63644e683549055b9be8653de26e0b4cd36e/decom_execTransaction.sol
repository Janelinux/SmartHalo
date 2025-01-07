function execTransaction(address to, uint256 value, bytes data, uint8 operation, uint256 safeTxGas, uint256 baseGas, uint256 gasPrice, address gasToken, address refundReceiver, bytes signatures) public payable { 

    require(msg.data.length - 4 >= 320);

    require(data <= uint32.max + 1);

    require(data.data <= 4 + (msg.data.length - 4));

    require(!((data.length > uint32.max + 1) | (data.data + data.length > 4 + (msg.data.length - 4))));

    require(signatures <= uint32.max + 1);

    require(signatures.data <= 4 + (msg.data.length - 4));

    require(!((signatures.length > uint32.max + 1) | (signatures.data + signatures.length > 4 + (msg.data.length - 4))));

    v0 = new bytes[](signatures.length);

    CALLDATACOPY(v0.data, signatures.data, signatures.length);

    v0[signatures.length] = 0;

    MEM[32 + MEM[64]] = _nonce;

    MEM[64 + MEM[64]] = msg.sender;

    MEM[96 + MEM[64]] = _getThreshold;

    assert(operation <= 1);

    v1 = new bytes[](data.length);

    CALLDATACOPY(v1.data, data.data, data.length);

    v1[data.length] = 0;

    v2 = new bytes[](v0.length);

    v1[data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v0.length;

    v3 = v4 = 0;

    while (v3 < v0.length) {

        v2[v3] = v0[v3];

        v3 = v3 + 32;

    }

    if (0x1f & v0.length) {

        MEM[v0.length + v2.data - (0x1f & v0.length)] = ~((uint8.max + 1) ** (32 - (0x1f & v0.length)) - 1) & MEM[v0.length + v2.data - (0x1f & v0.length)];

    }

    v5 = new uint256[](96);

    v6 = v7 = 0;

    while (v6 < 96) {

        MEM[v5.data + v6] = MEM[32 + MEM[64] + v6];

        v6 = v6 + 32;

    }

    v8 = v9 = 96 + v5.data;

    if (0) {

        MEM[v9 - 0] = uint256(MEM[v9 - 0]);

    }

    emit SafeMultiSigTransaction(to, value, v1, operation, safeTxGas, baseGas, gasPrice, gasToken, refundReceiver, v2, v5);

    CALLDATACOPY(v10.data, data.data, data.length);

    assert(operation <= 1);

    v11 = keccak256(0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8, to, value, keccak256(v10.data), operation, safeTxGas, baseGas, gasPrice, gasToken, refundReceiver, _nonce);

    _nonce += 1;

    require(_getThreshold > 0, Error('GS001'));

    0x1bbe(_getThreshold, v0, MEM[64], keccak256(bytes1(0x1900000000000000000000000000000000000000000000000000000000000000), bytes1(uint248.max + 1), keccak256(0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218, CHAINID(), address(this)), v11));

    if (address(_setGuard) != address(0x0)) {

        assert(operation <= 1);

        v12 = new bytes[](data.length);

        CALLDATACOPY(v12.data, data.data, data.length);

        v12[data.length] = 0;

        v13 = new bytes[](v0.length);

        v12[data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v0.length;

        v14 = v15 = 0;

        while (v14 < v0.length) {

            v13[v14] = v0[v14];

            v14 = v14 + 32;

        }

        v16 = v17 = v0.length + v13.data;

        if (0x1f & v0.length) {

            MEM[v17 - (0x1f & v0.length)] = ~((uint8.max + 1) ** (32 - (0x1f & v0.length)) - 1) & MEM[v17 - (0x1f & v0.length)];

        }

        require(bool((address(_setGuard)).code.size));

        v18 = address(_setGuard).checkTransaction(to, value, v12, operation, safeTxGas, baseGas, gasPrice, gasToken, refundReceiver, v13, msg.sender).gas(msg.gas);

        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    v19 = v20 = safeTxGas + 2500;

    assert(63);

    v19 = (safeTxGas << 6) / 63;

    if (v19 < v20) {

    }

    require(msg.gas >= v19 + 500, Error('GS010'));

    v21 = new bytes[](data.length);

    CALLDATACOPY(v22.data, data.data, data.length);

    v21[data.length] = 0;

    if (gasPrice == 0) {

        v23 = v24 = msg.gas - 2500;

    }

    assert(1 <= 1);

    assert(operation <= 1);

    if (operation != 1) {

        v25 = v21.length;

        v26 = to.call(v22.data, v27, v27, v27, v27, v27, v27, v27, v27, v27, msg.sender, data.length).value(value).gas(v23);

    } else {

        v28 = v21.length;

        v26 = v29 = to.delegatecall(v22.data, v27, v27, v27, v27, v27, v27, v27, v27, v27, msg.sender, data.length).gas(v23);

    }

    require(msg.gas <= msg.gas);

    if (!v26) {

        v26 = v30 = safeTxGas != 0;

    }

    if (!v26) {

        v26 = v31 = gasPrice != 0;

    }

    require(v26, Error('GS013'));

    v32 = v33 = 0;

    if (gasPrice > v33) {

        v32 = v34 = 0x5941(refundReceiver, gasToken, gasPrice, baseGas, msg.gas - msg.gas);

    }

    if (!v26) {

        emit ExecutionFailure(keccak256(bytes1(0x1900000000000000000000000000000000000000000000000000000000000000), bytes1(uint248.max + 1), keccak256(0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218, CHAINID(), address(this)), v11), v32);

    } else {

        emit ExecutionSuccess(keccak256(bytes1(0x1900000000000000000000000000000000000000000000000000000000000000), bytes1(uint248.max + 1), keccak256(0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218, CHAINID(), address(this)), v11), v32);

    }

    if (address(_setGuard) != address(0x0)) {

        require(bool((address(_setGuard)).code.size));

        v35 = address(_setGuard).checkAfterExecution(keccak256(bytes1(0x1900000000000000000000000000000000000000000000000000000000000000), bytes1(uint248.max + 1), keccak256(0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218, CHAINID(), address(this)), v11), bool(v26)).gas(msg.gas);

        require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    return bool(v26);

}
