function addItems((uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= uint64.max);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= uint64.max);

    require(4 + varg0 + varg0.length * 160 + 32 <= msg.data.length);

    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));

    v0 = v1 = 0;

    while (varg0.length > uint8(v0)) {

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(address(_listDetails[varg0[uint8(v0)]].field1) == 0, Error('NFT already listed.'));

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(32 + (160 * uint8(v0) + varg0.data) + 32 - (32 + (160 * uint8(v0) + varg0.data)) >= 32);

        require(msg.data[32 + (160 * uint8(v0) + varg0.data)] == address(msg.data[32 + (160 * uint8(v0) + varg0.data)]));

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(bool((address(msg.data[32 + (160 * uint8(v0) + varg0.data)])).code.size));

        v2 = address(msg.data[32 + (160 * uint8(v0) + varg0.data)]).transferFrom(msg.sender, address(this), msg.data[160 * uint8(v0) + varg0.data + 64]).gas(msg.gas);

        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        _listDetails[varg0[uint8(v0)]].field0 = varg0[uint8(v0)];

        require(msg.data[160 * uint8(v0) + varg0.data + 32] == address(msg.data[160 * uint8(v0) + varg0.data + 32]));

        _listDetails[varg0[uint8(v0)]].field1 = address(msg.data[160 * uint8(v0) + varg0.data + 32]) | bytes12(_listDetails[varg0[uint8(v0)]].field1);

        _listDetails[varg0[uint8(v0)]].field2 = msg.data[160 * uint8(v0) + varg0.data + 64];

        _listDetails[varg0[uint8(v0)]].field3 = msg.data[160 * uint8(v0) + varg0.data + 96];

        require(msg.data[160 * uint8(v0) + varg0.data + 128] == bool(msg.data[160 * uint8(v0) + varg0.data + 128]));

        _listDetails[varg0[uint8(v0)]].field4 = bytes31(_listDetails[varg0[uint8(v0)]].field4) | uint8(bool(msg.data[160 * uint8(v0) + varg0.data + 128]));

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(32 + (160 * uint8(v0) + varg0.data) + 32 - (32 + (160 * uint8(v0) + varg0.data)) >= 32);

        require(msg.data[32 + (160 * uint8(v0) + varg0.data)] == address(msg.data[32 + (160 * uint8(v0) + varg0.data)]));

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(128 + (160 * uint8(v0) + varg0.data) + 32 - (128 + (160 * uint8(v0) + varg0.data)) >= 32);

        require(msg.data[128 + (160 * uint8(v0) + varg0.data)] == bool(msg.data[128 + (160 * uint8(v0) + varg0.data)]));

        emit ItemAdded(varg0[uint8(v0)], address(msg.data[32 + (160 * uint8(v0) + varg0.data)]), msg.data[64 + (160 * uint8(v0) + varg0.data)], msg.data[96 + (160 * uint8(v0) + varg0.data)], bool(msg.data[128 + (160 * uint8(v0) + varg0.data)]));

        require(uint8(v0) != uint8.max, Panic(17)); // arithmetic overflow or underflow

        v0 = 1 + uint8(v0);

    }

}
