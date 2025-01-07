function setName(string _symbol, string _name) public payable { 

    require(msg.data.length - 4 >= 64);

    require(_symbol <= uint64.max);

    require(4 + _symbol + 31 < msg.data.length);

    require(_symbol.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](_symbol.length);

    require(!((v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & _symbol.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0) | (v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & _symbol.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    require(4 + _symbol + _symbol.length + 32 <= msg.data.length);

    CALLDATACOPY(v0.data, _symbol.data, _symbol.length);

    v0[_symbol.length] = 0;

    require(_name <= uint64.max);

    require(4 + _name + 31 < msg.data.length);

    require(_name.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v1 = new bytes[](_name.length);

    require(!((v1 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & _name.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1) | (v1 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & _name.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    require(4 + _name + _name.length + 32 <= msg.data.length);

    CALLDATACOPY(v1.data, _name.data, _name.length);

    v1[_name.length] = 0;

    require(msg.sender == _getClaimDeleter, Error('not owner'));

    v2 = v3 = v0.data;

    v4 = v5 = _symbol.length >> 1;

    if (!(_symbol.length & 0x1)) {

        v4 = v6 = v5 & 0x7f;

    }

    require(_symbol.length & 0x1 != v4 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v7 = v8 = _symbol.data;

    if (v0.length) {

        if (31 < v0.length) {

            _symbol.length = 1 + (v0.length + v0.length);

            if (v0.length) {

                while (v3 + v0.length > v2) {

                    STORAGE[v7] = MEM[v2];

                    v2 += 32;

                    v7 += 1;

                }

            }

        } else {

            _symbol.length = v0.length + v0.length | bytes31(MEM[v3]);

        }

    } else {

        _symbol.length = 0;

    }

    while (v8 + (31 + v4 >> 5) > v7) {

        STORAGE[v7] = 0;

        v7 += 1;

    }

    v9 = v10 = v1.data;

    v11 = v12 = _name.length >> 1;

    if (!(_name.length & 0x1)) {

        v11 = v13 = v12 & 0x7f;

    }

    require(_name.length & 0x1 != v11 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v14 = v15 = _name.data;

    if (v1.length) {

        if (31 < v1.length) {

            _name.length = 1 + (v1.length + v1.length);

            if (v1.length) {

                while (v10 + v1.length > v9) {

                    STORAGE[v14] = MEM[v9];

                    v9 += 32;

                    v14 += 1;

                }

            }

        } else {

            _name.length = v1.length + v1.length | bytes31(MEM[v10]);

        }

    } else {

        _name.length = 0;

    }

    while (v15 + (31 + v11 >> 5) > v14) {

        STORAGE[v14] = 0;

        v14 += 1;

    }

    v16 = new bytes[](v1.length);

    v17 = 0;

    while (v17 < v1.length) {

        v16[v17] = v1[v17];

        v17 += 32;

    }

    if (v17 > v1.length) {

        v16[v1.length] = 0;

    }

    v18 = new bytes[](v0.length);

    v16[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1.length] = v0.length;

    v19 = 0;

    while (v19 < v0.length) {

        v18[v19] = v0[v19];

        v19 += 32;

    }

    if (v19 > v0.length) {

        v18[v0.length] = 0;

    }

    emit NameChanged(v16, v18);

}
