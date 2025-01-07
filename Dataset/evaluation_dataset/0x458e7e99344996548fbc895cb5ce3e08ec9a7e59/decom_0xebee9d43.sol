function 0xebee9d43(uint256 varg0, uint256 varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff);

    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    require(varg1.length <= 0xffffffffffffffff);

    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);

    if (_distributor) {

        v0, v1 = _distributor.lockedSupply().gas(msg.gas);

        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        if (!v1) {

            0x14e1();

            require(varg0.length, Error('accounts array must not be empty'));

            require(varg1.length, Error('balancesBatch array must not be empty'));

            require(varg1.length == varg0.length, Error('accounts and balances array must be the same length'));

            v2 = v3 = 0;

            while (v2 < varg0.length) {

                require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require((v2 << 5) + varg0.data + 32 - ((v2 << 5) + varg0.data) >= 32);

                require(varg0[v2 << 5][v2] == address(varg0[v2 << 5][v2]));

                if (_accountBalances[address(varg0[v2 << 5][v2])].field0) {

                    _accountBalances[address(varg0[v2 << 5][v2])].field0.length = 0;

                    v4 = v5 = _accountBalances[address(varg0[v2 << 5][v2])].field0.data;

                    while (v5 + (_accountBalances[address(varg0[v2 << 5][v2])].field0.length << 1) > v4) {

                        STORAGE[v4] = 0;

                        STORAGE[v4 + 1] = 0;

                        v4 += 2;

                    }

                    goto 0x12b8B0x29f;

                }

                require(v2 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(varg1[v2 << 5][v2] < msg.data.length - varg1.data + ~30);

                require(varg1[varg1[v2 << 5][v2]] <= 0xffffffffffffffff);

                require(32 + (varg1.data + varg1[v2 << 5][v2]) <= msg.data.length - (varg1[varg1[v2 << 5][v2]] << 6));

                v6 = new uint256[](varg1[varg1[v2 << 5][v2]]);

                v7 = v8 = v6.data;

                v9 = v10 = 0;

                while (v9 < varg1[varg1[v2 << 5][v2]]) {

                    require(32 + (varg1.data + varg1[v2 << 5][v2]) + (v9 << 6) + (msg.data.length - (32 + (varg1.data + varg1[v2 << 5][v2]) + (v9 << 6))) - (32 + (varg1.data + varg1[v2 << 5][v2]) + (v9 << 6)) >= 64);

                    require(!((MEM[64] + 64 > 0xffffffffffffffff) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)

                    MEM[64] = MEM[64] + 64;

                    MEM[MEM[64]] = msg.data[32 + (varg1.data + varg1[v2 << 5][v2]) + (v9 << 6)];

                    MEM[MEM[64] + 32] = msg.data[32 + (32 + (varg1.data + varg1[v2 << 5][v2]) + (v9 << 6))];

                    MEM[v7] = MEM[64];

                    v7 += 32;

                    v9 += 1;

                }

                v11 = v12 = 0;

                while (v11 < v6.length) {

                    require(v11 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    _accountBalances[address(varg0[v2 << 5][v2])].field0.length += 1;

                    _accountBalances[address(varg0[v2 << 5][v2])].field0[_accountBalances[address(varg0[v2 << 5][v2])].field0.length].field0 = MEM[v6[v11 << 5][v11]];

                    _accountBalances[address(varg0[v2 << 5][v2])].field0[_accountBalances[address(varg0[v2 << 5][v2])].field0.length].field1 = MEM[32 + v6[v11 << 5][v11]];

                    v11 = 0x1a4d(v11);

                }

                if (!(0 - _accountsIndexes[address(varg0[v2 << 5][v2])])) {

                    _accountsLength = _accountsLength.length + 1;

                    _accountsLength[_accountsLength.length].field0 = address(varg0[v2 << 5][v2]) | bytes12(_accountsLength[_accountsLength.length].field0);

                    _accountsIndexes[address(varg0[v2 << 5][v2])] = _accountsLength.length;

                }

                v2 = 0x1a4d(v2);

            }

            exit;

        } else {

            goto 0x2f20x106bB0x29f;

        }

    }

    revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, 'distributor is zero address', 'distributor is active'));

}
