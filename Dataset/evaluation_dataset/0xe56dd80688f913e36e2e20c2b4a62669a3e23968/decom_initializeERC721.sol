function initializeERC721(string name_, string symbol_) public payable { 

    require(msg.data.length - 4 >= 64);

    require(name_ <= uint64.max);

    require(4 + name_ + 31 < msg.data.length);

    require(name_.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](name_.length);

    require(!((v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & name_.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0) | (v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & name_.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    require(name_.data + name_.length <= msg.data.length);

    CALLDATACOPY(v0.data, name_.data, name_.length);

    v0[name_.length] = 0;

    require(symbol_ <= uint64.max);

    require(4 + symbol_ + 31 < msg.data.length);

    require(symbol_.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v1 = new bytes[](symbol_.length);

    require(!((v1 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & symbol_.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1) | (v1 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & symbol_.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    require(symbol_.data + symbol_.length <= msg.data.length);

    CALLDATACOPY(v1.data, symbol_.data, symbol_.length);

    v1[symbol_.length] = 0;

    require(msg.sender == _owner, CallerIsNotTheContractOwner());

    require(!_initializeERC721, AlreadyInitializedERC721());

    v2 = v3 = v0.data;

    v4 = v5 = _name.length >> 1;

    if (!(_name.length & 0x1)) {

        v4 = v6 = v5 & 0x7f;

    }

    require(_name.length & 0x1 != v4 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v7 = v8 = _name.data;

    if (v0.length) {

        if (31 < v0.length) {

            _name.length = 1 + (v0.length + v0.length);

            if (v0.length) {

                while (v3 + v0.length > v2) {

                    STORAGE[v7] = MEM[v2];

                    v2 += 32;

                    v7 += 1;

                }

            }

        } else {

            _name.length = v0.length + v0.length | bytes31(MEM[v3]);

        }

    } else {

        _name.length = 0;

    }

    while (v8 + (31 + v4 >> 5) > v7) {

        STORAGE[v7] = 0;

        v7 += 1;

    }

    v9 = v10 = v1.data;

    v11 = v12 = _symbol.length >> 1;

    if (!(_symbol.length & 0x1)) {

        v11 = v13 = v12 & 0x7f;

    }

    require(_symbol.length & 0x1 != v11 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v14 = v15 = _symbol.data;

    if (v1.length) {

        if (31 < v1.length) {

            _symbol.length = 1 + (v1.length + v1.length);

            if (v1.length) {

                while (v10 + v1.length > v9) {

                    STORAGE[v14] = MEM[v9];

                    v9 += 32;

                    v14 += 1;

                }

            }

        } else {

            _symbol.length = v1.length + v1.length | bytes31(MEM[v10]);

        }

    } else {

        _symbol.length = 0;

    }

    while (v15 + (31 + v11 >> 5) > v14) {

        STORAGE[v14] = 0;

        v14 += 1;

    }

    _initializeERC721 = 1;

}
