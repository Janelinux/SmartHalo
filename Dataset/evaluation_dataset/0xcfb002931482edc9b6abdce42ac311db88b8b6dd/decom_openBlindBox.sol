function openBlindBox(uint256 blindBoxIndex, bytes signature, uint256[] ids, uint256[] amounts) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 128);

    require(signature <= uint64.max);

    require(4 + signature + 31 < 4 + (msg.data.length - 4));

    require(signature.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](signature.length);

    require(!((v0 + ((signature.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((signature.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)

    require(signature.data + signature.length <= 4 + (msg.data.length - 4));

    CALLDATACOPY(v0.data, signature.data, signature.length);

    v0[signature.length] = 0;

    require(ids <= uint64.max);

    require(4 + ids + 31 < 4 + (msg.data.length - 4));

    require(ids.length <= uint64.max);

    require(ids.data + (ids.length << 5) <= 4 + (msg.data.length - 4));

    require(amounts <= uint64.max);

    require(4 + amounts + 31 < 4 + (msg.data.length - 4));

    require(amounts.length <= uint64.max);

    require(amounts.data + (amounts.length << 5) <= 4 + (msg.data.length - 4));

    require(!_paused, Error('Pausable: paused'));

    require(block.timestamp >= _releaseTime, Error('not release'));

    require(msg.sender == address(tx.origin), Error('No bots'));

    require(msg.value == _openBlindBoxPrice, Error('price incorrect'));

    v1 = v2 = _maxPerWallet == 0;

    if (_maxPerWallet != 0) {

        v1 = owner_8[msg.sender] < _maxPerWallet;

    }

    require(v1, Error('exceed max'));

    require(_blindBoxesOpened[blindBoxIndex] == False, Error('opened'));

    v3 = new uint256[](v3.data + 20 + 20 + 32 + (ids.length << 5) + (amounts.length << 5) - MEM[64] - 32);

    MEM[v3.data] = address(this) << 96;

    MEM[v3.data + 20] = msg.sender << 96;

    MEM[v3.data + 20 + 20] = blindBoxIndex;

    require(ids.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

    CALLDATACOPY(v3.data + 20 + 20 + 32, ids.data, ids.length << 5);

    MEM[v3.data + 20 + 20 + 32 + (ids.length << 5)] = 0;

    require(amounts.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

    CALLDATACOPY(v3.data + 20 + 20 + 32 + (ids.length << 5), amounts.data, amounts.length << 5);

    MEM[v3.data + 20 + 20 + 32 + (ids.length << 5) + (amounts.length << 5)] = 0;

    MEM[64] = v3.data + 20 + 20 + 32 + (ids.length << 5) + (amounts.length << 5);

    v4 = v3.length;

    v5 = v3.data;

    v6 = @recover_577(v0, keccak256('\x19Ethereum Signed Message:\n32', keccak256(v3)));

    v7 = 'console.log'.staticcall(uint224(address(v6)) | bytes4(0xdaf0d4aa00000000000000000000000000000000000000000000000000000000), uint224(address(v6)) | bytes4(0xdaf0d4aa00000000000000000000000000000000000000000000000000000000), address(v6), _verifier).gas(msg.gas);

    require(address(v6) == _verifier, Error('not verified'));

    v8 = v9 = 0;

    while (v8 < ids.length) {

        require(v8 < amounts.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v8 < ids.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v10 = _SafeAdd(map_9[ids[v8]], amounts[v8]);

        map_9[ids[v8]] = v10;

        require(v8 < ids.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v8 < ids.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(map_9[ids[v8]] <= _preset[ids[v8]], Error('exceed limit amount'));

        require(v8 < ids.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v8 < amounts.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

        v11 = new bytes[](0);

        if (0) {

            CALLDATACOPY(v11.data, msg.data.length, 0);

            v12 = v11.data;

        }

        v13 = new bytes[](v11.length);

        MEM[4 + MEM[64]] = msg.sender;

        v14 = v15 = 0;

        while (v14 < v11.length) {

            v13[v14] = v11[v14];

            v14 = v14 + 32;

        }

        if (v14 > v11.length) {

            v16 = v13.data;

            v13[v11.length] = 0;

        }

        require(bool(_dagenItems.code.size));

        v17 = _dagenItems.mint(msg.sender, ids[v8], amounts[v8], v13).gas(msg.gas);

        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(v8 - uint256.max, Panic(17)); // arithmetic overflow or underflow

        v8 = v8 + 1;

    }

    _blindBoxesOpened[blindBoxIndex] = 1;

    v18 = new uint256[](ids.length);

    require(ids.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

    CALLDATACOPY(v18.data, ids.data, ids.length << 5);

    v18[ids.length] = 0;

    emit BlindBoxOpened(blindBoxIndex, v18);

    v19 = _SafeAdd(owner_8[msg.sender], 1);

    owner_8[msg.sender] = v19;

    if (msg.value != 0) {

        v20 = _beneficiary.call().value(msg.value).gas(!msg.value * 2300);

        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

}
