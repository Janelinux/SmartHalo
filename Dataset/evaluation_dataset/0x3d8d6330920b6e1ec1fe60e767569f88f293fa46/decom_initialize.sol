function initialize() public nonPayable { 

    if (stor_0_1_1) {

        v0 = !(address(this)).code.size;

        goto 0x17cfB0x703;

    } else {

        v0 = v1 = !_initialize;

    }

    require(v0, Error('Initializable: contract is already initialized'));

    if (!stor_0_1_1) {

        stor_0_0_1 = 257;

    }

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    v2 = v3 = v4.data;

    v5 = 0x3ea7(_name.length);

    if (v4.length) {

        if (31 < v4.length) {

            _name.length = 33;

            if (v4.length) {

                while (v3 + v4.length > v2) {

                    STORAGE[v6] = MEM[v2];

                    v2 += 32;

                    v6 += 1;

                }

            }

        } else {

            _name.length = 0x20 | ~0xff & 'CryptoCommanders';

        }

    } else {

        _name.length = 0;

    }

    while (v7 + (31 + v5 >> 5) > v6) {

        STORAGE[v6] = 0;

        v6 += 1;

    }

    v8 = v9 = v10.data;

    v11 = 0x3ea7(_symbol.length);

    if (v10.length) {

        if (31 < v10.length) {

            _symbol.length = 9;

            if (v10.length) {

                while (v9 + v10.length > v8) {

                    STORAGE[v12] = MEM[v8];

                    v8 += 32;

                    v12 += 1;

                }

            }

        } else {

            _symbol.length = 0x4352434f00000000000000000000000000000000000000000000000000000008;

        }

    } else {

        _symbol.length = 0;

    }

    while (v13 + (31 + v11 >> 5) > v12) {

        STORAGE[v12] = 0;

        v12 += 1;

    }

    0x293f();

    0x293f();

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    _paused = 0;

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    _owner = msg.sender;

    emit OwnershipTransferred(_owner, msg.sender);

    0x293f();

    0x293f();

    _maxCommanders = 11111;

    _reservePrice = 0x3635c9adc5dea00000;

    _giveawayAllocation = 1111;

    _giveawayReserved = 0;

    _maxMint = 20;

    _commanderPrice = 0xb1a2bc2ec50000;

    _discountPrice = 0x8e1bc9bf040000;

    _aSLTAddress = 0x2b8b09ce791a4b1036137cf8ac8260cd1e619f29;

    v14 = v15 = v16.data;

    v17 = 0x3ea7(_baseURI.length);

    if (v16.length) {

        if (31 < v16.length) {

            _baseURI.length = 109;

            if (v16.length) {

                while (v15 + v16.length > v14) {

                    STORAGE[v18] = MEM[v14];

                    v14 += 32;

                    v18 += 1;

                }

            }

        } else {

            _baseURI.length = 0x6c | ~0xff & MEM[v15];

        }

    } else {

        _baseURI.length = 0;

    }

    while (v19 + (31 + v17 >> 5) > v18) {

        STORAGE[v18] = 0;

        v18 += 1;

    }

    _earlyIsActive = ~0xffffff & _earlyIsActive;

    stor_203 = 0;

    stor_204 = 1111;

    if (!stor_0_1_1) {

        stor_0_1_1 = 0;

        goto 0x3710x6f7;

    }

}
