function mint(uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(!(_price & (varg0 > ~0 / _price)), Panic(17));

    require(_price * varg0 <= msg.value, Error('NOT_ENOUGH_PAID'));

    v0 = _SafeAdd(stor_a, varg0);

    require(v0 <= _maxSupply, Error('EXCEED_MAX_SUPPLY'));

    require(_totalSupply.code.size);

    v1, v2 = _totalSupply.balanceOf(msg.sender).gas(msg.gas);

    require(v1); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v2 >= varg0, Error('NOT_ENOUGH_WHALE_MAKER'));

    require(varg0 <= 0xffffffffffffffff, Panic(65));

    v3 = new uint256[](varg0);

    if (varg0) {

        CALLDATACOPY(v3.data, msg.data.length, varg0 << 5);

    }

    require(varg0 <= 0xffffffffffffffff, Panic(65));

    v4 = new uint256[](varg0);

    if (varg0) {

        CALLDATACOPY(v4.data, msg.data.length, varg0 << 5);

    }

    v5 = v6 = 0;

    while (0xff & v5 < v2) {

        if (_totalSupply.code.size) {

            break;

        }

        require(_totalSupply.code.size);

        v7, v8 = _totalSupply.tokenOfOwnerByIndex(msg.sender, v5 & 0xff).gas(msg.gas);

        if (v7) {

            break;

        }

        require(v7); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        if (!(0xff & _uri[v8])) {

            _uri[v8] = 0x1 | ~0xff & _uri[v8];

            require(v5 < v3.length, Panic(50));

            v3[v5] = v8;

            require(v5 < v4.length, Panic(50));

            v4[v5] = 1;

            v5 = 0x2052(v5);

        }

        if (v5 < varg0) {

            require(v5 & 0xff != 255, Panic(17));

            v5 = 1 + (v5 & 0xff);

        } else {

            break;

        }

    }

    require(v5 > 0, Error('NO_PASSES_REMAINING'));

    require(v5 == varg0, Error('NOT_ENOUGH_UNCLAIMED'));

    v9 = new struct(1);

    v9.word0 = 0;

    require(msg.sender, Error('ERC1155: mint to the zero address'));

    require(v3.length == v4.length, Error('ERC1155: ids and amounts length mismatch'));

    v10 = v11 = 0;

    while (v10 < v3.length) {

        if (v10 < v4.length) {

            break;

        }

        require(v10 < v4.length, Panic(50));

        require(v10 < v3.length, Panic(50));

        v12 = _SafeAdd(_balanceOf[msg.sender], v4[v10]);

        _balanceOf[msg.sender] = v12;

        v10 = 0x2052(v10);

    }

    v13 = new array[](v3.length);

    v14 = v15 = v13.data;

    v16 = v17 = v3.data;

    v18 = v19 = 0;

    while (v18 < v3.length) {

        MEM[v14] = MEM[v16];

        v14 += 32;

        v16 += 32;

        v18 += 1;

    }

    v20 = v21 = v14.data;

    v22 = v23 = v4.data;

    v24 = v25 = 0;

    while (v24 < v4.length) {

        MEM[v20] = MEM[v22];

        v20 += 32;

        v22 += 32;

        v24 += 1;

    }

    emit TransferBatch(msg.sender, 0, msg.sender, v13, v14);

    0x147a(v9, v4, v3, msg.sender, 0, msg.sender);

    v26 = new array[](v3.length);

    v27 = v28 = v26.data;

    v29 = v30 = v3.data;

    v31 = v32 = 0;

    while (v31 < v3.length) {

        MEM[v27] = MEM[v29];

        v27 += 32;

        v29 += 32;

        v31 += 1;

    }

    emit TokenMinted(msg.sender, v26);

}
