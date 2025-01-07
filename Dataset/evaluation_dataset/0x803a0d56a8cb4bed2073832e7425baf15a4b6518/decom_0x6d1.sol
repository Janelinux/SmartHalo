function 0x6d1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 

    if (stor_0_20_20) {

        v0 = v1 = 0x515(varg0, varg1, varg2, varg3, varg4);

    } else {

        v0 = v2 = 0;

    }

    v3 = 0xd29(varg4);

    require(v3);

    if (stor_0_20_20) {

        v4 = _SafeAdd(_commitments[v0], _minCommitmentAge);

        require(v4 <= block.timestamp);

        v5 = _SafeAdd(_commitments[v0], _maxCommitmentAge);

        require(v5 > block.timestamp);

        _commitments[v0] = 0;

    }

    v6 = 0xf92(varg4);

    require(msg.value >= v6);

    v7 = varg4.length;

    v8 = varg4.data;

    v9 = keccak256(varg4);

    if (!address(varg1)) {

        require(!address(varg0));

        require(bool(stor_1_0_19.code.size));

        v10 = stor_1_0_19.register(v9, address(varg3)).gas(msg.gas);

        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    } else {

        require(bool(stor_1_0_19.code.size));

        v11 = stor_1_0_19.register(v9, this).gas(msg.gas);

        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(bool(stor_1_0_19.code.size));

        v12, v13 = stor_1_0_19.baseNode().gas(msg.gas);

        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(stor_1_0_19.code.size));

        v14, /* address */ v15 = stor_1_0_19.ens().gas(msg.gas);

        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v15 == address(v15));

        require(bool((address(v15)).code.size));

        v16 = address(v15).setResolver(keccak256(v13, v9), address(varg1)).gas(msg.gas);

        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        if (address(varg0)) {

            require(bool((address(varg1)).code.size));

            v17 = address(varg1).setAddr(keccak256(v13, v9), address(varg0)).gas(msg.gas);

            require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        }

        require(bool(stor_1_0_19.code.size));

        v18 = stor_1_0_19.reclaim(v9, address(varg3)).gas(msg.gas);

        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(bool(stor_1_0_19.code.size));

        v19 = stor_1_0_19.transferFrom(this, address(varg3), v9).gas(msg.gas);

        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    v20 = new bytes[](varg4.length);

    v21 = 0;

    while (v21 < varg4.length) {

        v20[v21] = varg4[v21];

        v21 += 32;

    }

    if (v21 > varg4.length) {

        v20[varg4.length] = v21;

    }

    emit 0x667086d08417333ce63f40d5bc2ef6fd330e25aaaf317b7c489541f8fe600fa(v9, address(varg3), v20, v6, v9, varg4.length);

    if (msg.value > v6) {

        require(msg.value >= v6, Panic(17)); // arithmetic overflow or underflow

        v22 = msg.sender.call().value(msg.value - v6).gas(2300 * !(msg.value - v6));

        require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    return ;

}
