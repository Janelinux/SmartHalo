function allocate(address[] varg0, uint256[] varg1) public payable { 

    v0 = v1 = 0;

    require(msg.data.length - 4 >= 64v1, v1);

    require(varg0 <= 0xffffffffffffffffv1, v1);

    require(4 + varg0 + 31 < msg.data.lengthv1, v1);

    v2 = 0xcb4(varg0.length);

    require(!((MEM[64] + v2 < MEM[64]) | (MEM[64] + v2 > 0xffffffffffffffff)), Panic(65));

    v3 = v4 = MEM[64] + 32;

    v5 = v6 = 36 + varg0;

    require(msg.data.length >= 32 + (4 + varg0 + (varg0.length << 5))v1, v1);

    while (v0 < varg0.length) {

        require(msg.data[v5] == address(msg.data[v5]));

        MEM[v3] = msg.data[v5];

        v0 += 1;

        v3 += 32;

        v5 += 32;

    }

    require(varg1 <= 0xffffffffffffffffv1, v1);

    v7 = v8 = 0;

    require(4 + varg1 + 31 < msg.data.lengthv8, v8);

    v9 = 0xcb4(varg1.length);

    require(!((MEM[64] + v9 < MEM[64]) | (MEM[64] + v9 > 0xffffffffffffffff)), Panic(65));

    v10 = v11 = MEM[64] + 32;

    v12 = v13 = 36 + varg1;

    require(msg.data.length >= 32 + (4 + varg1 + (varg1.length << 5))v8, v8);

    while (v7 < varg1.length) {

        MEM[v10] = msg.data[v12];

        v10 += 32;

        v12 += 32;

        v7 += 1;

    }

    if (_owner == msg.sender) {

        if (varg0.length == varg1.length) {

            v14 = v15 = 0;

            while (varg0.length < 1) {

                require(varg0.length >= 1, Panic(17));

                if (v14 > varg0.length - 1) {

                    break;

                }

                if (v14 > varg0.length - 1) {

                    exit;

                }

                if (v14 < varg1.length) {

                    break;

                }

                require(v14 < varg1.length, Panic(50));

                if (v14 < varg0.length) {

                    break;

                }

                require(v14 < varg0.length, Panic(50));

                require(_getPendings[address(MEM[32 + (v14 << 5) + MEM[64]])] <= ~MEM[32 + (v14 << 5) + MEM[64]], Panic(17));

                require(v14 < varg0.length, Panic(50));

                _getPendings[address(MEM[32 + (v14 << 5) + MEM[64]])] = _getPendings[address(MEM[32 + (v14 << 5) + MEM[64]])] + MEM[32 + (v14 << 5) + MEM[64]];

                require(v14 != ~0, Panic(17));

                v14 += 1;

            }

        }

    }

    revert(Error('Ownable: caller is not the owner'));

}
